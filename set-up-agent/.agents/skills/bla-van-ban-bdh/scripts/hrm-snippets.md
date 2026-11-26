# Đoạn JS thao tác HRM (chạy bằng javascript_tool của Claude in Chrome)

Lưu ý chung:
- Kết quả trả về có chứa URL kèm `_token`/cookie sẽ bị chặn ("BLOCKED: Cookie/query string data") → chỉ trả về chuỗi tự tạo (trạng thái, số đếm), không trả URL có tham số.
- Lệnh bấm nút gây chuyển trang → dùng `setTimeout(()=>btn.click(),50)` và trả về ngay, không `await` qua lúc chuyển trang.

## 1. Tải PDF lên HRM
```js
// (a) chèn ô chọn file tạm, rồi dùng find("claude temp pdf upload") + file_upload(paths=[...])
const i=document.createElement('input'); i.type='file'; i.multiple=true; i.id='claudeTmpUpload';
i.setAttribute('aria-label','claude temp pdf upload'); i.style.cssText='position:fixed;top:5px;left:5px;z-index:99999';
document.body.appendChild(i); 'ok'
```
```js
// (b) gửi từng file lên trình tải của CKEditor, nhận link /upload/...pdf
const c=CKEDITOR.instances.inputContent.config, inp=document.getElementById('claudeTmpUpload'), out={};
for(const f of inp.files){const fd=new FormData(); fd.append('upload',f);
  const j=await (await fetch(c.filebrowserUploadUrl+'&responseType=json',{method:'POST',body:fd})).json();
  out[f.name]=j.url;}
inp.remove(); JSON.stringify(out)
```
Kiểm tra: `fetch(url,{method:'HEAD',credentials:'omit'})` → 200, `application/pdf`.

## 2. Điền form tạo bài (`/hrm-new-create`)
```js
const q=n=>document.querySelector('[name="'+n+'"]');
q('title').value=TITLE; q('type').value='announcement'; q('status').value='published'; q('priority').value='High';
q('issued_at').value='YYYY-MM-DD'; q('notify_status').value='True'; q('short_description').value=SD;
q('audience_type').value='Department'; // hoặc 'Company' / 'Employee'
q('audience_type').dispatchEvent(new Event('change',{bubbles:true}));
CKEDITOR.instances.inputContent.setData(HTML);
// phòng ban
const want=['1','2','10','11','12','13','14' /* ... */];
document.querySelectorAll('input[name="departments[]"]').forEach(c=>{const w=want.includes(c.value); if(c.checked!==w) c.click();});
[...document.querySelector('input[name="departments[]"]').closest('.modal').querySelectorAll('button')]
  .find(b=>b.innerText.trim()==='Xong').click();
// ảnh bìa bắt buộc
const b=await (await fetch('/images/logo-bla.png')).blob(); const dt=new DataTransfer();
dt.items.add(new File([b],'logo-bla.png',{type:'image/png'})); q('photo').files=dt.files;
q('photo').dispatchEvent(new Event('change',{bubbles:true}));
(document.body.innerText.match(/Bạn đã chọn \d+ (phòng ban|nhân viên)/)||['?'])[0]
```
Gửi riêng một nhân viên (VD bài nháp cho người dùng xem): `audience_type='Employee'`, tick `employees[]` có nhãn tên người dùng, bấm "Xong" → ô ẩn `employee_ids` thành `;<mã>;`.

Mẫu HTML nội dung:
```html
<p style="text-align:center"><strong>THÔNG BÁO</strong><br><em>V/v …</em><br>Số: 000/2026/TB-BĐH – Hà Nội, ngày … tháng … năm 2026</p>
<p>Đoạn mở đầu…</p>
<p><strong>I. …</strong></p><ul><li><strong>Nhãn:</strong> nội dung</li></ul>
<table style="border-collapse:collapse;width:100%"><tr><th style="border:1px solid #000;padding:4px">…</th></tr>…</table>
<p><strong>Chi tiết Thông báo xem <a href="https://tiengduc.bla.vn/upload/…pdf" target="_blank">Tại đây</a></strong></p>
```

## 3. Bấm đăng / cập nhật
```js
setTimeout(()=>[...document.querySelectorAll('button')].find(b=>b.innerText.trim()==='Thêm bài viết').click(),50); 'clicked'
// trang sửa: 'Cập nhật bài viết'
```

## 4. Kiểm tra danh sách `/hrm/news`
```js
[...document.querySelectorAll('tr')].slice(1,5).map(r=>[0,1,4,5,6].map(i=>r.cells[i]?.innerText.replace(/\s+/g,' ').slice(0,120)).join(' || ')).join('\n')
```
Cột: 0 MS · 1 Tiêu đề · 4 Đối tượng · 5 Gửi thông báo · 6 Trạng thái.
