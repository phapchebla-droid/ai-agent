# SOP 3.3 · BÁO CÁO ĐỊNH KỲ & KIỂM SOÁT TUÂN THỦ

Trạng thái: **KHUNG – chờ chạy thử** (tạo 21/11/2026). Căn cứ nội bộ: QT.HCNS.PC.12 Báo cáo định kỳ (Doc `1MZhj2DijL-j5gq3d_u9tHUCaWbbPXuuJ`), QT.HCNS.PC.14 Kiểm soát tuân thủ (mở từ Bảng tổng hợp quy trình), QĐ 230/2026/QĐ-BĐH (KTKS tháng 8/2026), TB triển khai KSCL 24/09/2025.

## A. Báo cáo định kỳ
**Bảng gốc (đã dựng 25/11/2026):** Sheet "Báo cáo định kỳ - BLA" `1ghUBKVTH53U7gWkzSsXUU3GX2fg1bTykek_kLx4rcNA`
- Tab `Danh mục báo cáo` (gid 0): 1 dòng/nghĩa vụ, mã LĐ-xx (lao động), GD-xx (giáo dục), ĐT-xx (đầu tư ra nước ngoài), PC-xx (PCCC). **Ghi theo văn bản pháp luật**; cột F "Tình trạng căn cứ" – chưa đối chiếu Công báo thì ghi "Chưa xác minh".
- Tab `Năm YYYY`: 1 dòng/kỳ nộp (báo cáo năm nộp đầu năm sau vẫn thuộc tab năm báo cáo). Cột F = hạn riêng của địa phương năm đó; cột K = thay đổi/ghi chú trong năm; cột J = link bản đã nộp. Tên báo cáo lấy bằng VLOOKUP từ Danh mục.
- Tab `TÀI KHOẢN BÁO CÁO`: **không đọc, không sửa** (có thể chứa mật khẩu).
- Tab `Lưu - …` và tab 2024/2025: lưu trữ mẫu cũ, không sửa.
- Đầu mỗi năm: nhân bản tab năm trước → đổi tên `Năm YYYY` → cập nhật hạn, xóa trạng thái/link (xin xác nhận trước khi ghi).

**Nhắc lịch (người dùng chốt 25/11/2026):** mốc **20, 10, 5, 3 ngày** trước hạn.
- Google Calendar của phapche.bla@gmail.com: sự kiện cả ngày, lặp hằng năm/quý, tiêu đề `[BC định kỳ] <mã> …`. Báo cáo **lao động (LĐ-xx) mời thêm hr@bla.vn**; còn lại chỉ phapche.
- Todolist Pháp chế (Sheet `1pZZVTGRzqW6Txwb2Y2GgtJdL_KUwuLdJMDRk0ge2Iso`, tab nhật ký đang dùng): thêm dòng ngắn `[Nhắc BC] Còn N ngày (hạn dd/mm): …` – cột B ngày nhắc, C nội dung, D "High", E "Not Started". Ghi bằng `update_values` vào đúng hàng trống kế tiếp (không dùng `append_values`: bảng bị nhận diện ở cột E nên dữ liệu bị lệch cột). **Chỉ ghi nhắc vào đúng ngày đến mốc** (người dùng chốt 27/11/2026): mỗi sáng đọc tab `Năm YYYY`, báo cáo nào hôm nay còn đúng 20/10/5/3 ngày (theo hạn sớm hơn giữa cột E và F, bỏ dòng "Đã nộp"/"Không áp dụng") thì ghi 1 dòng; **không ghi trước** nhắc cho các ngày tương lai. Chạy tự động bằng lượt quét `p3-3-3-nhac-bao-cao-dinh-ky` (8h30 hằng ngày, tạo 27/11/2026).

**LĐ-01 Báo cáo tình hình sử dụng lao động (làm lần đầu 26/11/2026):**
- Hà Nội nộp qua Cổng việc làm `congvieclam.hanoi.gov.vn` (mỗi MST 1 tài khoản, người dùng tự đăng nhập/nộp). Lập **riêng BLA và BLA Academy**. Đính kèm PDF bản ký, đóng dấu; ≥10 NLĐ thì Import Excel theo mẫu tải từ cổng.
- Chỉ kê khai NLĐ **đang làm việc tại thời điểm lập** (nghỉ trong kỳ thì bỏ); không kê CTV/HĐDV. Danh sách gốc = file BHXH người dùng xuất từ phần mềm BH; số HĐ, loại, thời hạn **lấy theo HRM**, lệch thì tô vàng + ghi file đối chiếu nội bộ (không đưa ghi chú nội bộ vào cột 27 của file nộp).
- Mẫu Excel: dữ liệu từ **dòng 20**, xóa dòng mẫu, không sửa dòng tiêu đề/cột; chèn dòng trước dòng "…" khi >8 người, chừa 1 dòng trống trước "…". Ngày là giá trị ngày (hiển thị dd/mm/yyyy); CCCD, mã BHXH để dạng Text. Ngày bắt đầu đóng BHXH là ngày thực tế (không ghi 01/01, 01/07 hàng loạt).
- Kỹ thuật: máy không có Python → dùng Excel qua PowerShell COM; gán số qua chuỗi (gán số trực tiếp báo lỗi ép kiểu); file .ps1 có tiếng Việt phải lưu UTF-8 **có BOM**. Bảng HĐ HRM: đọc bằng `fetch('/hrm/hrm-working-contract?page=N')` trong trang, đối chiếu tên ngay trong trình duyệt, trả kết quả ngắn (công cụ cắt kết quả ~1.000 ký tự).

1. Mỗi lần rà soát: đối chiếu quy định mới (thay đổi bộ máy, nghị định thay thế) → trình người dùng danh sách thay đổi → ghi khi được đồng ý.
2. Mỗi kỳ: checklist số liệu cần lấy → dự thảo báo cáo → người dùng nộp → cập nhật trạng thái, ngày nộp, link trong tab năm.

## B. Kiểm soát tuân thủ (KTKS)
| Bước | Nội dung |
|---|---|
| 1. Kế hoạch | Phạm vi (phòng/quy trình/giấy phép), tiêu chí (quy trình đã ban hành, văn bản 00C còn hiệu lực, điều kiện giấy phép), thời gian, thành phần đoàn |
| 2. Chọn mẫu | Cỡ mẫu, cách chọn (ngẫu nhiên / rủi ro cao), nguồn dữ liệu (ERP CTR/HRM, Drive, CRM) |
| 3. Đối chiếu | Bảng: Điểm kiểm soát · Yêu cầu · Bằng chứng · Kết quả (Đạt / Không đạt / Chưa đủ bằng chứng) |
| 4. Phát hiện & kiến nghị | Mức Đỏ/Vàng/Xanh · Nguyên nhân · Kiến nghị · Người chịu trách nhiệm · Hạn khắc phục |
| 5. Theo dõi khắc phục | Bảng theo dõi đến khi đóng phát hiện |

Lưu hồ sơ: thư mục `07. Kiểm soát tuân thủ` `1eQB7H8-cUeHilmgrpIx_4LhN0Dxxrfqk` (tạo file → xin xác nhận).

## C. Ứng viên KTKS đầu tiên (từ bản đồ tri thức mục 8)
Số hiệu văn bản song song · trạng thái hiệu lực trong 00C · quy trình chưa có link (QT.TS.02, CRM.06, ADM.07) · tên file quy trình lệch mã · Sheet giấy phép chưa cập nhật từ 12/2024.
