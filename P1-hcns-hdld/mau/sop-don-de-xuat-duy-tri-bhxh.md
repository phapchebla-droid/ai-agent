# SOP · ĐƠN ĐỀ XUẤT DUY TRÌ ĐÓNG BHXH SAU KHI NGỪNG LÀM VIỆC

Người dùng chốt 27/11/2026. Làm **theo lệnh**. NLĐ nghỉ việc nhưng muốn công ty tiếp tục đóng BHXH theo HĐLĐ thêm một thời gian (VD chờ thai sản, NLĐ nước ngoài chờ chuyển đổi thị thực) → NLĐ nộp **Đơn đề xuất** làm căn cứ nội bộ, **tự chịu 100% tiền bảo hiểm** (phần công ty + phần NLĐ).

## 1. Đầu vào (PC cung cấp)
Họ tên · ngày làm việc thực tế cuối · ngày bắt đầu nghỉ · thời gian duy trì đóng (đến ngày) · mức lương căn cứ đóng BH · lý do · (NLĐ nước ngoài) hạn thị thực, có duy trì bảo lãnh không.

## 2. Mẫu & nơi lưu
- **Mẫu trống**: `Mẫu Đơn đề xuất duy trì đóng BHXH sau nghỉ việc (trống)` – Google Doc `1C-0kpsBCSBdfDSh-IGyrSRafJHxgWkcz3aJ0lRj82Vo`, thư mục `01. Mẫu BLA`. Có đoạn tùy chọn cho NLĐ nước ngoài (bảo lãnh thị thực) – xóa nếu không áp dụng.
- Không dùng đơn cũ của nhân sự khác làm mẫu (có số CCCD, mã BHXH thật; còn tính nhầm số tiền).
- Lưu vào thư mục đang chứa HĐLĐ của nhân sự (như SOP QĐ chấm dứt). Tên file: `[Họ tên]_Đơn đề xuất duy trì đóng BHXH[ và bảo lãnh thị thực]`.
- Cách tạo nhanh: soạn HTML (Times New Roman 13) rồi `create_file` `contentMimeType: text/html` → Drive tự chuyển Google Docs (tránh lỗi tìm–thay trong bảng).

## 3. Dữ liệu điền
| Trường | Nguồn |
|---|---|
| Ngày sinh, quốc tịch, phòng ban/vị trí | HRM hồ sơ + danh sách nhân sự (quốc tịch NLĐ nước ngoài: PC xác nhận nếu HRM không ghi) |
| Số HĐLĐ + ngày ký | HRM – HĐ chính thức đang hiệu lực |
| **Số CCCD/hộ chiếu, mã số BHXH** | **Để trống** – NLĐ/HCNS tự điền |
| Tiền BH/tháng | Tỷ lệ × lương căn cứ; ghi số + bằng chữ; tổng = số tháng × tiền/tháng (tính theo tháng dương lịch có đóng) |
| Ngày đơn | Trước ngày bắt đầu nghỉ |

Tỷ lệ: PC chốt **30,5%** (27/11/2026). Đơn cũ dùng 32% cho NLĐ Việt Nam.

## 4. Lưu ý pháp lý (chưa xác minh nguồn chính thức – ghi Todolist để PC cân nhắc)
1. BHXH bắt buộc gắn với HĐLĐ có làm việc, hưởng lương; NLĐ không làm việc và không hưởng lương từ 14 ngày làm việc trở lên trong tháng thì không đóng BHXH tháng đó (Luật BHXH) → duy trì đóng khi NLĐ thực tế đã nghỉ có rủi ro bị cơ quan BHXH không công nhận/thu hồi.
2. Tỷ lệ: NLĐ Việt Nam tổng 32% (gồm BHTN 2%); NLĐ nước ngoài thường **không** đóng BHTN → tổng có thể là 30% → kiểm tra lại mức 30,5%.
3. NLĐ nước ngoài: giấy phép lao động/thị thực lao động gắn với việc làm thực tế; tiếp tục bảo lãnh khi người nước ngoài không làm việc có rủi ro về xuất nhập cảnh cho doanh nghiệp bảo lãnh.
4. Hết thời gian duy trì → ra QĐ chấm dứt HĐLĐ (SOP `sop-qd-cham-dut-nld-xin-nghi.md`), ngày chấm dứt = ngày sau ngày cuối duy trì; báo giảm BHXH; (NLĐ nước ngoài) thông báo cơ quan xuất nhập cảnh/thu hồi GPLĐ theo quy định.

## 5. Báo cáo
Todolist (tab sheetId `1882124751`): `[Đơn duy trì BHXH] [Họ tên] – [Phòng] – nghỉ từ [dd/mm] – duy trì đến [dd/mm] – [tiền/tháng] × [n] tháng – [link] – Cần: điền số CCCD/hộ chiếu, mã BHXH; NLĐ ký; BGĐ duyệt` + lưu ý mục 4, trạng thái `AI đã làm - chờ kiểm tra`.
