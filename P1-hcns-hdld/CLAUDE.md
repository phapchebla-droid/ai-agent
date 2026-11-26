# P1 · HCNS & HỢP ĐỒNG LAO ĐỘNG

Kế thừa quy tắc chung tại `../CLAUDE.md`. Skill chính: `bla-hr-compliance`; luồng 1.2 tái ký có skill riêng `bla-tai-ky-hdld`.

## Phạm vi
Pháp lý lao động và hồ sơ nhân sự: HĐLĐ, HĐDV giảng dạy, phụ lục lương, NDA, cam kết chi phí đào tạo, tái ký/không tái ký, QĐ khen thưởng/kỷ luật, báo cáo sử dụng lao động & BHTN.

## Session
| Mã | Session | Nhiệm vụ | Tự động hóa |
|---|---|---|---|
| 1.1 | Nhân sự mới – HĐLĐ/HĐDV | Form → HRM → HĐ thử việc + Cam kết bảo mật → lưu đúng thư mục phòng ban → báo Todolist | **Tự động 9h00 hằng ngày** (tạm bỏ lượt 14h – người dùng chốt 20/11/2026) (SOP: `mau/sop-1.1-nhan-su-moi.md`) |
| 1.2 | Tái ký HĐ hết hạn | Lọc HĐ sắp hết hạn (HĐLĐ 30 ngày, thử việc 15 ngày) → TB review trên HRM → ghi Sheet theo dõi → PC điền kết quả → HĐ mới (không CKBM) / chuyển 1.3 nếu không tái ký | **Tự động 9h45 thứ Hai–thứ Bảy** (SOP: `mau/sop-1.2-tai-ky.md`); ủy quyền tự chạy sau khi PC duyệt chạy thử |
| 1.3 | QĐ nhân sự & báo cáo LĐ | QĐ khen thưởng, kỷ luật, chấm dứt; báo cáo lao động, BHTN | Theo lệnh |

## Ủy quyền tự động – luồng 1.1 (người dùng chốt 19/11/2026)
Ngoại lệ cho quy tắc 6.1 "Xác nhận trước khi ghi" của `../CLAUDE.md`, **chỉ trong luồng 1.1** và chỉ các thao tác theo `mau/sop-1.1-nhan-su-moi.md`:
- Được tự làm, không hỏi từng lần: thêm nhân sự và điền hồ sơ / Hợp đồng điện tử / Lương trên HRM; tạo thư mục, nhân bản mẫu, điền HĐ trong `01. Bản soạn thảo`; thêm dòng vào Todolist (`1pZZVTGRzqW6Txwb2Y2GgtJdL_KUwuLdJMDRk0ge2Iso`, tab sheetId `1882124751` – tên hiện tại `T11/2026`, trạng thái `AI đã làm - chờ kiểm tra`).
- Sau mỗi lần làm phải báo cáo (Todolist + `nhat-ky/`).
- Vẫn giữ nguyên quy tắc 6.2–6.5: Claude không gõ số CCCD/hộ chiếu, MST, số sổ BHXH, số tài khoản ngân hàng (để HCNS điền); không xóa; dữ liệu mật; HRM–Sheet lệch thì báo.
- Thao tác ngoài SOP (sửa Form, sửa mẫu, sửa Sheet phản hồi…) vẫn phải hỏi trước.

## Nguồn dữ liệu
- HRM: https://tiengduc.bla.vn/hrm/employees?status=active
- Thư mục `07. HỢP ĐỒNG LAO ĐỘNG`: `1mqd2Tq1Bg3rgoD-4vHQObd_h_tZRBilM` (mẫu: `00. Mẫu Hợp đồng, Cam kết` `1PdZHxQESOAVOd1GznM3hV0pTjlxAj5Vo`)
- Sheet `THÔNG TIN NHÂN SỰ MỚI`: `1cVomGHqKmhWB9Qwp5W9xShXEGwdj5kwfEYFazcH9vAo`
- Cây thư mục lưu HĐ theo phòng ban: xem skill `bla-hr-compliance` mục 3.3

## Thư mục cục bộ
- `mau/` – bảng ánh xạ trường, ghi chú mẫu
- `dau-ra/` – bản nháp xuất ra (nếu cần lưu cục bộ)
- `nhat-ky/` – nhật ký công việc theo ngày (`YYYY-MM-DD.md`)
