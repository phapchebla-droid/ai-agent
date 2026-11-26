---
name: bla-ctr-review
description: >-
  Rà soát (duyệt) hợp đồng học viên trên ERP CTR của BLA (tiengduc.bla.vn/ctr) ở bước
  "Chờ pháp chế rà": quét hàng đợi, đối chiếu gói/chính sách, giá & mã ưu đãi, lộ trình thu,
  thông tin học viên/phụ huynh với ảnh CCCD, rồi lập bảng đề xuất "Đã rà" / "Trả lại" kèm ghi chú.
  Dùng khi người dùng nói "quét 2.1", "duyệt HĐ CTR", "rà HĐ học viên", "xem hàng đợi pháp chế".
---

# KỸ NĂNG: RÀ SOÁT HĐ HỌC VIÊN TRÊN ERP CTR (SESSION P2 · 2.1)

SOP chi tiết và ghi chú kỹ thuật: `P2-hop-dong-doi-tac/mau/sop-2.1-duyet-hd-hoc-vien-ctr.md`. Quy tắc nhánh: `P2-hop-dong-doi-tac/CLAUDE.md`.

## 0. Quyền hạn (bắt buộc)
| Được tự làm | Chưa được tự làm |
|---|---|
| Mở CTR (Claude in Chrome, phiên đăng nhập của người dùng), đọc hàng đợi, mở từng HĐ, bấm "In" để đọc PDF, mở các mục thu gọn | Bấm **"Đã rà"**, **"Trả lại"**, sửa HĐ, sửa khoản thu, lập phụ lục, Xác thực, Tải file, Gắn tài khoản, sửa chính sách/mã giảm giá |
| Lập bảng đề xuất, ghi `P2-hop-dong-doi-tac/nhat-ky/YYYY-MM-DD.md` | Mọi thao tác ghi khác trên CTR |

→ Trình bảng đề xuất; người dùng chọn (a) tự bấm, hoặc (b) cho Claude bấm **theo đúng đề xuất của lượt đó** (mỗi lượt xác nhận riêng). Ủy quyền lâu dài chỉ khi người dùng chốt và ghi vào `CLAUDE.md`.

## 1. Bản đồ CTR
| Trang | URL | Dùng để |
|---|---|---|
| Hàng đợi pháp chế | `/ctr/work-queue/legal` | HĐ đã được Admin TS xác thực, chờ PC rà |
| Pháp chế trả lại | `/ctr/work-queue/legal-fix` | HĐ PC đã trả, chờ Admin TS sửa → theo dõi tồn |
| Chờ xác thực | `/ctr/work-queue/verify` | Chỉ xem (việc của Admin TS) |
| Danh sách HĐ | `/ctr/contracts` | Lọc trạng thái "Chờ phê duyệt", pháp nhân, kiểu HĐ |
| Chi tiết HĐ | `/sascontracts/{id}` (mở từ số HĐ, mở tab mới) | Nội dung rà |
| Chính sách hợp đồng | `/ctr/policies` (neo `#code-<MÃ GÓI>`) | Giá gốc, đợt thu, pháp nhân, mẫu Word của từng gói |
| Khuyến mại | `/ctr/promotions` | Mã giảm giá: số tiền, gói áp dụng, thời hạn, số lượt, văn bản căn cứ |
| Hướng dẫn | `/ctr/user-guide` | Quy trình chính thức của CTR |

Luồng: Mới → (Admin TS Xác thực) → **Chờ phê duyệt / Chờ pháp chế rà** → PC "Đã rà" → Đã duyệt, chờ ký → Đang hiệu lực. PC "Trả lại" (ghi chú bắt buộc) → Admin TS sửa (sai tiền/lịch thu thì lập phụ lục) → "Gửi rà lại".

Trên trang chi tiết HĐ, các mục thu gọn đọc được bằng `read_page`/`find` mà không cần bấm: **Chính sách đã chụp** (gói, phiên bản chính sách, giá gói, mã ưu đãi, giá trị HĐ, bảng đợt thu), **Xác thực, duyệt và phụ lục**, **Thông tin phụ huynh**, **Ảnh căn cước** (4 ô: HV trước/sau, PH trước/sau), **Lịch sử** (ghi chú, ví dụ kế toán đã nhập khoản thu).

## 2. Quy trình mỗi lượt
1. Lấy ngữ cảnh tab Chrome, mở tab mới tới `/ctr/work-queue/legal`. Hàng đợi trống → báo người dùng, liệt kê tồn ở `legal-fix` (số HĐ, ghi chú, ngày trả), dừng.
2. Đọc trước `/ctr/policies` và `/ctr/promotions` (một lần mỗi lượt) để có bảng gói & mã đang áp dụng **tại ngày tạo HĐ**.
3. Với từng HĐ trong hàng đợi: mở chi tiết, chạy checklist mục 3 **theo đúng thứ tự**; khi cần đọc toàn văn thì bấm "In" để xem PDF.
4. Lập bảng đề xuất (mục 4), trình người dùng. Không bấm gì khi chưa được đồng ý.
5. Sau khi người dùng chốt và cho phép: thao tác đúng HĐ, ghi đúng câu ghi chú đã duyệt. Tránh hộp thoại xác nhận của trình duyệt (cảnh báo người dùng trước nếu có).
6. Ghi nhật ký `nhat-ky/YYYY-MM-DD.md`: số HĐ, kết luận, lý do, việc tồn. Đóng tab đã mở.

## 3. Checklist (thứ tự ưu tiên do người dùng chốt 25/11/2026)
| # | Điểm kiểm tra | Cách kiểm | Không đạt → |
|---|---|---|---|
| 1 | **Gói / chính sách đúng chưa** (quan trọng nhất) | So ghi chú/khóa học thực tế, giá trị HĐ với mã gói trong "Chính sách đã chụp". Lỗi hay gặp: ghi chú chỉ học A1 nhưng chọn gói lộ trình trọn gói (ĐT.TG…) → phải chọn gói tiếng Đức A1 tương ứng; online/offline nhầm nhau; gói đã tắt | Trả lại: "Chọn lại gói chính sách: … (đúng: <mã gói>)" |
| 2 | Giá & mã ưu đãi | Giá gói = giá trong chính sách phiên bản đã chụp; mã ưu đãi đúng gói, **còn hạn tại ngày tạo HĐ**, còn lượt, có văn bản căn cứ; giá trị HĐ = giá gói − ưu đãi. Có ưu đãi đang chạy cho gói mà HĐ không áp (hoặc ngược lại) → ghi rõ | Trả lại: "Sửa chính sách/ưu đãi: …" |
| 3 | Lộ trình thanh toán | Số đợt, số tiền, hạn khớp chính sách; tổng các đợt = giá trị HĐ; đối chiếu số đã thu, ghi chú kế toán ở Lịch sử | Trả lại (Admin TS lập phụ lục nếu sai tiền/lịch thu) |
| 4 | Thông tin học viên | Họ tên, ngày sinh, số CCCD, ngày cấp, nơi cấp, giới tính, quê quán, địa chỉ khớp ảnh CCCD; ngày cấp/ngày sinh bất thường | Trả lại, nêu trường sai |
| 5 | Phụ huynh / người đại diện | HV dưới 18 tuổi → bắt buộc có thông tin phụ huynh khớp CCCD phụ huynh; phụ huynh ký → đủ 4 ảnh căn cước | Trả lại, nêu trường thiếu |
| 6 | Pháp nhân & mẫu | Pháp nhân ký đúng pháp nhân của gói (đào tạo thường là BLA Academy; tư vấn du học thường là Tập đoàn) — luôn đối chiếu chính sách, không suy đoán | Trả lại "Sai pháp nhân/mẫu" |
| 7 | Điều khoản sửa tay, cam kết ngoài mẫu | Khi đọc PDF: cam kết thành phố, đơn hàng, visa, miễn CMTC… | **Trả lại + báo người dùng** (rủi ro tư vấn sai) |
| 8 | Ngày ký, hiệu lực, địa điểm ký | Ngày ký hợp lý (không trước ngày tạo quá xa, không kiểu 01/01/2001) | Ghi chú / Trả lại |

Ngoài checklist hoặc không chắc → xếp "Cần PC xem", không tự kết luận.

## 4. Đầu ra
Bảng trong chat:

| Số HĐ | Gói (mã) | Kết luận | Điểm lỗi (#) | Ghi chú trả lại đề xuất |
|---|---|---|---|---|
| … | … | Đã rà / Trả lại / Cần PC xem | … | câu ngắn, cụ thể, Admin TS sửa được ngay |

Kèm mục "Tồn ở Pháp chế trả lại" và "Điểm lạ ngoài hàng đợi" (nếu thấy khi lướt).

## 5. Bảo mật
- Thông tin học viên/phụ huynh (tên, SĐT, CCCD, địa chỉ), giá trị HĐ, mức phí là **mật**: chỉ hiển thị trong chat khi cần, không ghi vào URL, không đưa ra dịch vụ ngoài. Nhật ký ở `nhat-ky/` (không đẩy GitHub), chỉ ghi số HĐ.
- Không chép giá gói, mã ưu đãi vào skill/SOP: luôn đọc trực tiếp từ CTR mỗi lượt (giá đổi theo tháng).
- Không nhập số CCCD, số tài khoản; không xử lý "Lệch đối soát" (việc của Kế toán); không tạo/sửa HĐ thay Admin TS.
