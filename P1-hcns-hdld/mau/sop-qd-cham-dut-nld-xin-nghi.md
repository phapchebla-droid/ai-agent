# SOP · QĐ CHẤM DỨT HĐLĐ KHI NLĐ XIN NGHỈ VIỆC

Người dùng chốt 27/11/2026. Thuộc phạm vi QĐ nhân sự (session 1.3), làm **theo lệnh** (không tự động). Chỉ soạn văn bản; Pháp chế in, trình ký và **gửi bản cứng** cho NLĐ (không đăng HRM/CRM).

## 1. Đầu vào (PC cung cấp)
Họ tên NLĐ · ngày nộp đơn xin nghỉ · ngày bắt đầu nghỉ (= ngày chấm dứt HĐLĐ).

## 2. Lấy dữ liệu
| Thông tin | Nguồn |
|---|---|
| Số HĐLĐ đang hiệu lực + ngày ký, pháp nhân | HRM `/hrm/hrm-working-contract?&employee_id=<ID>` (HĐ mới nhất, loại Chính thức) |
| Giới tính, ngày sinh, ngày cấp & nơi cấp CCCD, địa chỉ | HRM hồ sơ `/hrm-employees/<ID>/profile` → mục "Thông tin chi tiết" (đọc giá trị ô; **không** chép số CCCD) |
| Thư mục lưu | Thư mục đang chứa HĐLĐ của nhân sự trong `01. Bản soạn thảo` (tìm Drive theo tên). Có thư mục `[Họ tên] - [Vị trí]` thì lưu vào đó; hồ sơ nằm thẳng trong thư mục phòng ban thì lưu cùng chỗ |

## 3. Mẫu
- **Mẫu trống**: `Mẫu QĐ chấm dứt HĐLĐ - NLĐ xin nghỉ việc (trống)` – Google Doc `1pJQquy_cUi9TcBBganyb6457zVjlvHcTNpGx8-tvcIg`, thư mục `01. Mẫu BLA` (tạo 27/11/2026 từ QĐ cũ, đã xóa dữ liệu cá nhân). `copy_file` vào thư mục nhân sự.
- **Không dùng** file QĐ cũ `1nG5SAS2…` làm mẫu (chứa số CCCD thật).
- Mẫu là pháp nhân **BLA** (người ký: Tổng Giám đốc). NLĐ thuộc **BLA Academy** (Phòng Đào tạo toàn thời gian) → đổi tên pháp nhân ở tiêu đề, phần căn cứ, chức danh người ký theo mẫu HĐ Academy; ghi Todolist nhờ PC kiểm tra người ký.
- Tên file: `[Họ tên]_Quyết định chấm dứt HĐLĐ`.

## 4. Điền
| Chỗ trống | Giá trị |
|---|---|
| `Số: ddmmyyyy/QĐCDHĐLĐ-[viết tắt tên]` | ddmmyyyy = **ngày ra QĐ**; viết tắt = chữ cái đầu họ tên (VD Nguyễn Văn An → NVA) |
| "Hà Nội, ngày … tháng … năm 2026" | **Ngày ra QĐ**: sau ngày nộp đơn và **luôn sớm hơn ngày bắt đầu nghỉ** (mặc định = ngày soạn; nếu ngày soạn ≥ ngày bắt đầu nghỉ → hỏi PC) |
| `Ông/Bà [HỌ TÊN]` (5 chỗ) | Ông/Bà theo giới tính + họ tên |
| `[số HĐLĐ] ký kết ngày [dd/mm/yyyy]` | Số + ngày ký HĐLĐ đang hiệu lực |
| `kể từ ngày [dd/mm/yyyy]` | Ngày bắt đầu nghỉ |
| Bảng: Họ tên, Giới tính, Sinh ngày, cấp ngày, tại, Địa chỉ | Từ HRM; **số CCCD để trống** cho HCNS |

Kỹ thuật: dòng văn bản thường → `replaceAllText`; **ô ngày ký và bảng thông tin không khớp tìm–thay** → sửa theo vị trí ký tự (`read_doc` → trích index bằng PowerShell → `deleteContentRange` + `insertText` từ index lớn về nhỏ). Đọc lại file để kiểm tra.

## 5. Kiểm tra pháp lý & báo cáo
- Thời hạn báo trước khi NLĐ đơn phương chấm dứt (Điều 35 khoản 1 BLLĐ 2019 – chưa xác minh nguồn chính thức): HĐ KXĐTH ≥ 45 ngày; HĐ XĐTH 12–36 tháng ≥ 30 ngày; HĐ dưới 12 tháng ≥ 3 ngày làm việc. Khoảng cách đơn → ngày nghỉ ngắn hơn mức này → **vẫn soạn** (công ty đồng ý = chấm dứt theo thỏa thuận), ghi Todolist lưu ý PC.
- Todolist (tab sheetId `1882124751`): `[QĐ chấm dứt] [Họ tên] – [Phòng] – đơn [dd/mm] – nghỉ từ [dd/mm] – [link] – Cần HCNS điền số CCCD; PC in, trình ký, gửi bản cứng`, trạng thái `AI đã làm - chờ kiểm tra`.
- Sau khi chấm dứt: nhắc HCNS chuyển trạng thái nhân sự/HĐ trên HRM (AI không tự chuyển nếu PC chưa yêu cầu).
