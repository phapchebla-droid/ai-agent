# SOP 2.1 · DUYỆT HỢP ĐỒNG HỌC VIÊN TRÊN ERP CTR

Trạng thái: **KHUNG – chờ chạy thử** (tạo 21/11/2026; cập nhật 26/11/2026 sau khi khảo sát CTR). Skill thực thi: `bla-ctr-review` (checklist chi tiết, bản đồ trang CTR).

## 0. Phạm vi & quyền hạn
- Áp dụng cho HĐ học viên lập theo chính sách trên CTR (đào tạo tiếng Đức, TVDH, combo, KTX nếu có).
- **Claude được tự làm:** đọc hàng đợi, mở từng HĐ, đối chiếu, ghi kết quả vào nhật ký và bảng đề xuất.
- **Claude chưa được tự làm:** bấm *Đã rà*, *Trả lại*, sửa nội dung HĐ. → Trình bảng đề xuất, người dùng chọn: (a) người dùng tự bấm; hoặc (b) cho phép Claude bấm theo đề xuất **của lượt đó**.
- Khi người dùng muốn ủy quyền tự động lâu dài: ghi rõ phạm vi, ngày chốt vào `../CLAUDE.md` (như P1 · 1.1).

## 1. Nguồn
| Thứ | Vị trí |
|---|---|
| Hàng đợi | CTR → Việc cần xử lý → "Chờ pháp chế rà" (`/ctr/work-queue/legal`); tồn trả lại: `/ctr/work-queue/legal-fix` |
| Chính sách & mẫu đang áp dụng | CTR → Chính sách & mẫu → Chính sách hợp đồng (`/ctr/policies`), Khuyến mại (`/ctr/promotions`); BLA Wiki → "Chính sách giá sản phẩm năm 2026", "HĐ Đào tạo & TVDH năm 2026" |
| Văn bản ưu đãi/học bổng theo tháng | Sổ 00C, lọc nhóm "Hoạt động tư vấn, CSKH" + "Đào tạo & giảng dạy, TVDH", văn bản mới nhất còn hiệu lực |
| Quy trình | QT.TS.04 (ghi danh, ký HĐ, nhập học), QT.TS.ADM.10 (quản lý HĐ học viên) |

## 2. Luồng trạng thái (để biết mình đứng ở đâu)
Mới → Chờ xác thực (Admin TS) → **Chờ phê duyệt / Chờ pháp chế rà** (PC: In → "Đã rà" hoặc "Trả lại" kèm ghi chú bắt buộc) → Đã duyệt, chờ ký & scan hoặc ký online (Admin TS) → Đang hiệu lực → Chờ kết thúc/tất toán → Hoàn thành. Nhánh: *Pháp chế trả lại* → Admin TS sửa → quay lại hàng đợi.

## 3. Checklist duyệt từng HĐ (thứ tự ưu tiên người dùng chốt 25/11/2026)
| # | Điểm kiểm tra | Đạt khi | Nếu không đạt |
|---|---|---|---|
| 1 | **Gói / chính sách** (kiểm đầu tiên) | Mã gói trong "Chính sách đã chụp" khớp khóa học thực tế (ghi chú) và giá trị HĐ. Lỗi hay gặp: ghi chú học A1 nhưng chọn gói lộ trình trọn gói ĐT.TG → phải là gói tiếng Đức A1 | Trả lại – "Chọn lại gói chính sách" |
| 2 | Giá & ưu đãi/học bổng | Giá khớp chính sách phiên bản đã chụp; mã ưu đãi đúng gói, còn hạn tại ngày tạo HĐ, có văn bản căn cứ; không cộng dồn trái quy định | Trả lại – "Sửa chính sách/ưu đãi", dẫn mã/văn bản |
| 3 | Lộ trình thanh toán | Số đợt, hạn, số tiền khớp chính sách; tổng khớp giá trị HĐ | Trả lại (Admin TS lập phụ lục) |
| 4 | Thông tin học viên | Họ tên, ngày sinh, CCCD (số, ngày cấp, nơi cấp), địa chỉ… khớp ảnh CCCD | Trả lại – nêu trường sai |
| 5 | Phụ huynh / đại diện | **HV chưa đủ 18 tuổi → có thông tin phụ huynh khớp CCCD phụ huynh**; phụ huynh ký → đủ 4 ảnh căn cước | Trả lại – nêu trường thiếu |
| 6 | Pháp nhân & mẫu | Đúng pháp nhân, đúng mẫu HĐ hiện hành của gói | Trả lại – "Sai mẫu/pháp nhân" |
| 7 | Điều khoản sửa tay | Không có điều khoản/cam kết thêm ngoài mẫu (VD cam kết thành phố, đơn hàng, visa, miễn chứng minh tài chính) | **Trả lại + báo người dùng** (rủi ro tư vấn sai – QĐ 11/06/2024) |
| 8 | Hoàn phí/bảo lưu | Điều khoản hoàn phí, bảo lưu phí ghi danh theo văn bản hiện hành | Trả lại |
| 9 | Ngày ký, chữ ký/thẩm quyền BLA | Ngày ký hợp lý; người ký phía BLA đúng thẩm quyền/ủy quyền | Ghi chú cho người dùng |

## 4. Đầu ra mỗi lượt
1. Bảng đề xuất trong chat: Số HĐ · Gói · Kết luận (Duyệt / Trả lại / Cần PC xem) · Lý do ngắn (dẫn điểm checklist). **Không ghi họ tên học viên vào nhật ký đẩy GitHub** (nhật ký nằm trong `nhat-ky/` – đã loại trừ).
2. Sau khi người dùng chốt: thực hiện thao tác được cho phép, ghi lý do trả lại đúng câu đã duyệt.
3. Ghi `../nhat-ky/YYYY-MM-DD.md`: số HĐ đã xử lý, kết quả, việc tồn.

## 5. Giới hạn
- Không sửa giá trị HĐ, không tạo HĐ thay Admin TS, không xử lý "Lệch đối soát" (của Kế toán).
- HĐ cũ không có bản chụp → chỉ xem, không đưa vào checklist.
- Gặp tình huống ngoài checklist → đưa vào mục "Cần PC xem", không tự kết luận.

## 6. Ghi chú kỹ thuật
Khảo sát 25/11/2026 (chỉ đọc):
- Tab Việc cần xử lý: Chờ xác thực `/ctr/work-queue/verify` · Chờ pháp chế rà `/legal` · Pháp chế trả lại `/legal-fix` · Chờ hiệu lực · Chưa gắn tài khoản.
- Chi tiết HĐ mở tab mới `/sascontracts/{id}`. Các mục thu gọn (Chính sách đã chụp, Xác thực/duyệt/phụ lục, Thông tin phụ huynh, Ảnh căn cước, Lịch sử) đọc được bằng `read_page`/`find` mà không cần bấm.
- Nút trên hàng đợi pháp chế: **In**, **Đã rà**, **Trả lại** (ghi chú bắt buộc). Vị trí ô ghi chú: *bổ sung khi chạy thử lần đầu* (lúc khảo sát hàng đợi trống).
- Danh sách HĐ phân trang 30 dòng; lọc theo Trạng thái, Pháp nhân, Kiểu HĐ.
*(Còn bổ sung sau lần chạy thử: vị trí ô ghi chú khi Trả lại, hộp thoại xác nhận nếu có.)*
