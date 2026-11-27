---
name: bla-nhan-su-moi
description: >-
  Quy trình tiếp nhận nhân sự mới của BLA (luồng P1 · 1.1): đọc phản hồi Google Form "Thông tin nhân sự mới",
  thêm/cập nhật nhân sự trên HRM tiengduc.bla.vn, soạn bộ hồ sơ ký (HĐ thử việc + Cam kết bảo mật, hoặc
  HĐ dịch vụ giảng dạy + Cam kết bảo mật cho giáo viên parttime/online Phòng Đào tạo) từ mẫu trên Drive,
  lưu đúng thư mục phòng ban, tạo HĐ điện tử trên HRM và báo Todolist. Dùng khi quét nhân sự mới (lịch 9h),
  khi người dùng nhờ "làm hồ sơ/HĐ cho nhân sự mới", hoặc khi sửa/kiểm tra luồng onboarding.
---

# KỸ NĂNG: TIẾP NHẬN NHÂN SỰ MỚI (LUỒNG 1.1)

> **Nguồn chi tiết duy nhất**: `H:\ai-agent\P1-hcns-hdld\mau\sop-1.1-nhan-su-moi.md` (ID mẫu, ID thư mục, ánh xạ trường, ghi chú kỹ thuật HRM/Docs).
> Skill này là khung quy trình; khi số liệu/ID trong skill khác SOP → **theo SOP** và báo người dùng để đồng bộ lại.

## 0. Trước khi làm – bắt buộc đọc
1. `H:\ai-agent\CLAUDE.md` (quy tắc chung, mục 6) và `H:\ai-agent\P1-hcns-hdld\CLAUDE.md` (mục **Ủy quyền tự động – luồng 1.1**).
2. SOP 1.1 (đường dẫn trên).
3. `H:\ai-agent\P1-hcns-hdld\nhat-ky\1.1-theo-doi.md`: mốc bắt đầu, dòng đã xử lý, dòng `CHỜ HRM`/`CHỜ HCNS`, dòng TEST (bỏ qua).

## 1. Phạm vi được tự làm (ủy quyền 19/11/2026)
Không cần hỏi từng lần, **chỉ trong phạm vi SOP**: thêm/cập nhật nhân sự, hồ sơ, HĐ điện tử, Lương trên HRM; tạo thư mục, nhân bản mẫu, điền HĐ trong `01. Bản soạn thảo`; ghi Todolist. Ngoài SOP (sửa Form, sửa mẫu gốc, sửa Sheet phản hồi, xóa bất cứ gì) → **hỏi trước**.

## 2. Giới hạn cố định (không ngoại lệ)
- **Không gõ** số CCCD/hộ chiếu, MST, số sổ BHXH, số tài khoản ngân hàng vào HRM hay HĐ → để trống, ghi Todolist nhờ HCNS. Ô CCCD bắt buộc trên HRM: ký tự giữ chỗ `.` (thử `0` nếu không nhận) – người dùng cho phép, đến khi IT gỡ bắt buộc.
- **Không đưa dữ liệu cá nhân lên URL** (kể cả ô lọc của HRM) → kiểm tra trùng bằng cách duyệt trang danh sách/`fetch` rồi tìm trong nội dung.
- Không xóa; nhân sự sai/thừa → chuyển trạng thái, báo người dùng.
- Đọc Sheet phản hồi **theo tên cột**, không theo vị trí. Không đổi tên câu hỏi Form.

## 3. Phân nhánh

| Điều kiện (từ Form) | Pháp nhân | Bộ hồ sơ | Thư mục lưu | HRM: Kiểu NV / Loại HĐ điện tử |
|---|---|---|---|---|
| Phòng ban ≠ Đào tạo | BLA | HĐTV + CKBM (mẫu BLA) | Thư mục phòng ban (Địa điểm HCM → Chi nhánh HCM; Đà Nẵng → Chi nhánh Đà Nẵng) | Nhân sự thử việc / Thử việc, 2 tháng |
| Phòng Đào tạo + Toàn thời gian | BLA Academy | HĐTV + CKBM (mẫu Academy) | Phòng Đào tạo | Nhân sự thử việc / Thử việc, 2 tháng |
| Phòng Đào tạo + **Bán thời gian** hoặc **Làm việc Online** | BLA Academy | **HĐDV giảng dạy + CKBM bên cung cấp dịch vụ** | Phòng Đào tạo › `00A. Part time` | **Nhân sự bán thời gian** / **Chính thức**, 1 năm |

## 4. Các bước

1. **Phát hiện**: dòng Form sau mốc, chưa có trong file theo dõi, không phải TEST; cộng các dòng `CHỜ HRM`/`CHỜ HCNS` để thử lại. Không có gì → ghi 1 dòng nhật ký ngày, dừng.
2. **HRM – nhân sự**:
   - Kiểm tra trùng (không dùng URL). Đã có → không thêm, chỉ cập nhật (đổi Kiểu NV qua biểu tượng "Cập nhật trạng thái Nhân viên").
   - Chưa có → "Thêm" → nhập SĐT: ô Mã người dùng trống = **chưa đăng ký** → nhánh `CHỜ HRM` (vẫn làm HĐ, để trống mã NV, báo Todolist nhờ NLĐ đăng ký).
   - Tên NV = họ tên trên Form (ghi đè tên tài khoản; lệch thì báo). Phòng ban, Kiểu NV theo bảng mục 3, CCCD giữ chỗ, giới tính, ngày sinh, ngày bắt đầu (ô ngày nhập ngày-tháng-năm).
   - Hồ sơ cá nhân (`/hrm-employees/<id>/profile`): liên hệ khẩn cấp, địa chỉ, ngày/nơi cấp CCCD, **tình trạng hôn nhân** (cột Form; phản hồi cũ → `Khác`), học vấn. Không làm mục MST/ngân hàng/BHXH.
3. **Drive** (làm trước HĐ điện tử vì cần link): tạo thư mục `[Họ tên] - [Vị trí]` → nhân bản mẫu thành Google Docs (`HĐTV|HĐDV - [Họ tên]`, `CKBM - [Họ tên]`) → **chỉ điền chỗ trống**, không sửa nội dung mẫu → đọc lại kiểm tra.
   - Số văn bản `ddmmyy` = ngày bắt đầu, phần cuối = **phần số** mã NV (`BLA-0163` → `0163`).
   - HĐTV: thử việc 02 tháng; tổng thu nhập = lương thử việc; lương cơ bản = mức BH (**5.400.000**, vị trí từ Trưởng phòng trở lên **6.000.000**); thưởng hiệu quả = tổng − mức BH; kèm bằng chữ. Kiểm tra lương thử việc ≥ **85%** lương chính thức (Điều 26 BLLĐ 2019) – thiếu thì cảnh báo.
   - HĐDV: thời hạn 12 tháng; phí/giờ lấy từ cột "Mức lương chính thức" (200,000/250,000/350,000 thường gặp – khác/không đọc được thì cảnh báo); CKBM dịch vụ ghi số HĐDV ở dòng căn cứ.
4. **HRM – Tạo mới HĐ**: Mã HĐ = số HĐ; Ngày ký = Ngày bắt đầu; `Chờ ký / Chờ duyệt`; Loại/Thời hạn theo mục 3; Link scan = Google Doc HĐ; Ghi chú "AI tạo tự động (luồng 1.1)… Pháp nhân… Thư mục…".
   - **Bắt buộc gán thẳng ô lương ẩn** (`salary_basic`, `salary_kpi`, `allowance_total`, `salary_insurance`, `salary_official`, `salary_probation`) ngay trước khi bấm "Thêm mới" – ô hiển thị không tự đồng bộ. HĐTV: basic = official = lương chính thức, insurance = mức BH, probation = lương thử việc. HĐDV: basic = official = phí/giờ, còn lại 0.
   - Tạo xong mở `/hrm-working-contract/<id>` kiểm tra; "Lương đóng BHXH" có thể vẫn 0 → ghi Todolist.
5. **HRM – Lương**: đã có quyền (27/11/2026) → AI tự "Tạo mới lương" theo SOP mục 6a (cơ bản = lương thử việc, KPI 0, BH = mức BH, phụ cấp 0, hiệu lực = ngày bắt đầu). Bị báo không có quyền → ghi Todolist số liệu để HCNS tạo.
6. **Báo cáo**: Todolist (Sheet `1pZZVTGRzqW6Txwb2Y2GgtJdL_KUwuLdJMDRk0ge2Iso`, tab theo **sheetId `1882124751`** – tên tab có thể đổi; đọc lại dòng trống cuối ngay trước khi ghi vì luồng 1.2 cũng ghi) – trạng thái `AI đã làm - chờ kiểm tra`, mô tả `[1.1] … – [Họ tên] – [Phòng] – Mã NV – [link thư mục]` + cảnh báo + "Cần HCNS điền: số CCCD, STK ngân hàng". Cập nhật file theo dõi và `nhat-ky/YYYY-MM-DD.md`.

## 5. Kỹ thuật hay vấp (chi tiết ở SOP mục 6a)
- Google Docs: chỗ "…" không khớp khi tìm nguyên văn → `replaceAllText` dạng **regex**; ô bảng trống → `insertText` theo index (đọc `read_doc`, chèn từ index lớn về nhỏ).
- Mẫu Word (.docx) → tải về, `create_file` với mime docx để Drive tự chuyển Google Docs. Mẫu đã là Google Doc → `copy_file`.
- Hộp chọn file Google Form không thao tác được → không tự gửi Form thay NLĐ; dữ liệu thử ghi thẳng vào Sheet (dòng TEST, đánh dấu trong file theo dõi).
- Gặp lỗi/tình huống ngoài SOP → dừng phần đó, ghi `LỖI` + lý do vào file theo dõi và Todolist, **không đoán**.

## 6. Tiêu chí hoàn thành
HRM có hồ sơ + mã NV + HĐ điện tử đúng lương · Drive có đủ 2 file đúng mẫu, đúng thư mục, đã đọc lại · Todolist có dòng "AI đã làm - chờ kiểm tra" kèm link và cảnh báo · File theo dõi + nhật ký đã cập nhật.
