---
name: bla-van-ban-bdh
description: >-
  Quy trình trọn gói văn bản điều hành Ban điều hành BLA (Thông báo / Quyết định / Công văn – BĐH):
  soạn dự thảo Google Doc từ ý tưởng BLĐ, ghi dòng vào sổ 00C, chờ ký – scan, rồi tải bản scan lên HRM,
  đăng bài thông báo cho đúng phòng ban và hoàn tất sổ. Dùng khi người dùng nhắn "soạn thông báo…",
  "làm TB/QĐ…", "lịch nghỉ lễ", "chính sách ưu đãi/thưởng/tuyển sinh…", "đã có scan", "gửi thông báo HRM",
  hoặc nhắc tới sổ 00C, số hiệu …/2026/TB-BĐH, bài đăng HRM tin tức/thông báo.
---

# KỸ NĂNG: VĂN BẢN ĐIỀU HÀNH BĐH (session P3 · 3.1)

Nguồn chuẩn chi tiết: `P3-quan-tri-dieu-hanh/mau/sop-3.1-van-ban-bdh.md` (ID thư mục, cột sổ 00C, thư viện mẫu,
quy ước nội dung theo loại văn bản). **Đọc SOP trước khi làm**; skill này là trình tự thao tác + công cụ.
SOP và skill mâu thuẫn → theo SOP, rồi sửa skill cho khớp.

## 0. Quy tắc cứng
- Thẩm quyền ban hành thuộc BLĐ: Claude chỉ dự thảo. **Không tự lấy số hiệu** (2026: người dùng cấp từ sổ công văn ngoài; từ 2027 theo sổ số sẽ chốt).
- Ghi Drive/Sheet/HRM theo đúng luồng đã chốt dưới đây; việc ngoài luồng → hỏi trước.
- Không ghi số liệu kinh doanh tự đặt: chỗ chưa rõ đánh dấu **[cần chị xác nhận]**.
- Viện dẫn luật phải ghi điều, văn bản; chưa tra nguồn chính thức → "chưa xác minh".
- Luôn **đọc lại Doc trước khi sửa** (người dùng hay tự sửa trực tiếp) và giữ phần họ đã sửa.
- Không đưa mức phí, tên/mã nhân sự vào file đẩy GitHub.

## 1. Luồng 6 bước
| Bước | Kích hoạt | Claude làm |
|---|---|---|
| 1. Nhận yêu cầu | Người dùng nhắn ý tưởng BLĐ (có thể kèm ảnh, link Canva, văn bản cũ) | Xác định loại văn bản, đối tượng, hiệu lực; hỏi lại tối đa vài điểm thật sự thiếu |
| 2. Soạn | — | Chọn khung (mục 2) → sao chép vào đúng thư mục con trong thư mục soạn thảo → soạn nội dung → để trống số `     /2026/TB-BĐH` |
| 3. Ghi sổ | Dự thảo xong | Thêm dòng 00C: B "Chờ duyệt", C tên (số trống), D, E, F tóm tắt, G link Doc, H ghi chú trao đổi, J/K hiệu lực → báo người dùng link + các điểm cần xác nhận/rủi ro |
| 4. Ký – scan | Người dùng tự làm | Người dùng ghi số vào C, gắn scan cột L, đổi B → "Đã ký – chờ HRM" |
| 5. Đăng HRM | Người dùng nhắn "đã có scan / gửi thông báo HRM" | Đối chiếu scan với dự thảo → **tải PDF lên HRM** → đăng bài **Đã xuất bản + Gửi thông báo ngay** (không làm nháp, trừ khi người dùng muốn xem trước) |
| 6. Hoàn tất | Đăng xong | 00C: B "Hoàn tất", I ngày ký trên scan, M "ngày đăng · MS bài · đối tượng · link" → báo bảng kết quả |

## 2. Soạn dự thảo
1. **Khung**: văn bản lặp lại → thư mục "00. Mẫu thường xuyên dùng" (danh sách mẫu 00–10 trong SOP mục 3a); văn bản mới → chép văn bản gần nhất cùng loại làm khung (giữ letterhead, bảng Nơi nhận, chữ ký), xóa thân bài.
2. **Nội dung** dựa trên tri thức công ty (Knowledge Base, văn bản còn hiệu lực trong 00C), sản phẩm/thị trường, pháp lý (SOP mục 2a). Đối chiếu tài liệu Marketing (Canva…) nếu có; lệch với chỉ đạo → theo chỉ đạo và báo người dùng.
3. **Quy ước theo loại** (chi tiết SOP mục 6): TB tuyển sinh đơn hàng/chương trình chỉ nêu tiền – ưu đãi – chính sách, chi tiết đơn hàng để Phụ lục, không ghi tiến độ/phân công; văn bản chính sách thưởng không liệt kê vị trí tuyển dụng; lịch nghỉ lễ lưu ý CBNV làm sáng Thứ Bảy, học viên không học Thứ Bảy.
4. **Thao tác Doc** (Docs API `update_doc`, luôn kèm `writeControl.requiredRevisionId` từ lần `read_doc` gần nhất):
   - Viết thân bài vào file JSON mảng `[{"k":"H|S|B|N|P","t":"…"}]` (H tiêu đề mục La Mã, S mục con 2.1, B gạch đầu dòng – nhãn trước dấu ":" tự in đậm, N đoạn thường, P đoạn mở đầu thụt dòng).
   - `scripts/build-reqs.ps1 -paras <json> -at <chỉ số chèn> -out <reqs.json> [-pre <các lệnh xóa.json>]` → sinh lệnh chèn + định dạng Times New Roman 12, căn đều, bullet.
   - Bảng: `scripts/build-tables.ps1 -doc <read_doc đã lưu> -spec <tables.json> -out <reqs.json>`; spec `[{"anchor":"tiêu đề đoạn neo","rows":[["Tiêu đề 1","Tiêu đề 2"],["…","…"]]}]` – bảng chèn sau đoạn neo, hàng 1 in đậm căn giữa.
   - Kết quả `read_doc` lớn được lưu ra file → đọc bằng PowerShell `ConvertFrom-Json` (máy không có Python). Xóa từ dưới lên. Sửa câu chữ lẻ dùng `replaceAllText`.
   - PowerShell 5.1 không phân biệt hoa thường tên biến (`$p` = `$P`) → đặt tên biến khác hẳn nhau. Chạy script bằng `powershell -NoProfile -ExecutionPolicy Bypass -File …` (máy chặn chạy script).
   - Không xóa được trọn đoạn nằm ngay trước một bảng (lỗi "Invalid deletion range") → chừa lại ký tự xuống dòng cuối (xóa đến end−1).
   - Xóa tab thừa (VD tab Phụ lục của văn bản gốc) bằng `{"deleteTab":{"tabId":"t.xxx"}}`; `replaceAllText` nên kèm `tabsCriteria`.
   - QĐ sửa đổi, bổ sung: chép QĐ gốc làm khung (giữ người ký), căn cứ thêm QĐ gốc, điều cuối ghi "là bộ phận không tách rời của QĐ số …; nội dung khác giữ nguyên", có điều khoản chuyển tiếp cho hợp đồng đã ký.

### 2a. Ảnh truyền thông cho TB quan trọng (người dùng yêu cầu 28/11/2026)
- Dựng poster HTML 1080×1350 trong `P3-quan-tri-dieu-hanh/dau-ra/<tên>/` (font Be Vietnam Pro, màu BLA đen – đỏ – vàng, logo `https://tiengduc.bla.vn/images/logo-bla.png`): tiêu đề lớn, ngày áp dụng, 2–3 ý chính, bảng/lịch trực quan, chân trang "Chi tiết: Thông báo số …".
- Xuất PNG: `chrome.exe --headless=new --hide-scrollbars --force-device-scale-factor=1 --window-size=1080,1350 --virtual-time-budget=6000 --screenshot=<png> file:///<html>` → mở ảnh kiểm tra tràn chữ → gửi người dùng. Khi đăng HRM dùng ảnh này làm ảnh bìa thay logo và chèn vào đầu nội dung; điền số TB vào chân ảnh sau khi có số.

## 3. Đăng HRM (Claude in Chrome, phiên đăng nhập của người dùng)
Chi tiết JS: `scripts/hrm-snippets.md`. Tóm tắt:
1. **Tải bản scan lên HRM** (không gắn link Drive – nhân sự không có quyền xem): `download_file_content` → chép PDF vào `P3-quan-tri-dieu-hanh/dau-ra/hrm-scan/<số>-2026-TB-BDH.pdf` (công cụ tải lên của Chrome chỉ đọc thư mục làm việc; `dau-ra/` không đẩy GitHub) → chèn tạm `<input type=file>` vào trang → `file_upload` → POST tới `/ckeditor/upload` → lấy `url` `/upload/YYYY/MM/DD/….pdf`. Chỉ khi cách này hỏng mới hỏi người dùng có mở công khai link Drive không.
2. **Tạo bài** tại `/hrm-new-create`: tiêu đề "Thông báo <số>/2026/TB-BĐH – <trích yếu>", Kiểu Thông báo, Đã xuất bản, Quan trọng, Ngày ban hành = ngày ký, mô tả ngắn 1–2 câu, nội dung = toàn văn TB (HTML, bảng có viền) + dòng "**Chi tiết Thông báo xem Tại đây**" gắn link PDF trên HRM, ảnh bìa logo, Gửi thông báo.
3. **Người nhận** theo mục "Nơi nhận" của văn bản:
   - "Các phòng ban trong Công ty"/toàn thể CBNV → Toàn công ty.
   - Phòng ban → tick cả **ban con**; **bài gửi Phòng Tuyển sinh luôn gửi kèm Ban Lãnh Đạo và Trợ lý Ban Lãnh Đạo**; bài tuyển sinh thêm Chi nhánh Đà Nẵng, Chi nhánh HCM.
   - Mã `departments[]`: 1 BLĐ · 2 Trợ lý BLĐ · 3 HCNS (16 Ban HCNS) · 6 HTQT (18 Ban Đối ngoại, 20 Ban Tư vấn & Kết nối) · 7 CTHV · 8 TCKT · 9 MKT · 10 Tuyển sinh (11–14 Ban Tuyển sinh 1–4) · 15 Đào tạo · 23 CN Đà Nẵng · 24 CN HCM · 25 BLA_Tech (kiểm tra lại nhãn trên form nếu HRM đổi).
4. Bấm nút bằng JS `setTimeout(()=>btn.click(),50)`; sau đó mở `/hrm/news` kiểm tra MS bài, đối tượng, "Đã xuất bản", "Có" gửi thông báo **trước khi bấm lại** (tránh đăng trùng).
5. Sửa bài đã đăng: `/hrm-news/<MS>/edit` → "Cập nhật bài viết"; chỉ để "Gửi thông báo" khi thay đổi cần báo lại (thêm người nhận, sửa nội dung quan trọng).

## 4. Báo cáo cho người dùng
Bảng: văn bản · bài HRM (MS + link) · người nhận · đã gửi thông báo. Kèm các điểm lệch/rủi ro phát hiện khi đối chiếu. Ghi nhật ký `P3-quan-tri-dieu-hanh/nhat-ky/YYYY-MM-DD.md`.
Khi người dùng chốt quy ước mới → cập nhật SOP (và skill nếu là thao tác), commit + push theo CLAUDE.md mục 7.
