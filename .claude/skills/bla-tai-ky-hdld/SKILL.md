---
name: bla-tai-ky-hdld
description: >-
  Quy trình review & tái ký hợp đồng khi hết hạn cho BLA (luồng P1 · 1.2): lọc HĐ sắp hết hạn trên HRM
  (HĐLĐ còn 30 ngày, HĐ thử việc còn 15 ngày, HĐ dịch vụ giảng dạy còn 30 ngày), đăng thông báo review trên HRM,
  ghi Sheet theo dõi, đọc kết quả review Pháp chế nhập để soạn HĐLĐ mới (XĐTH 12/24 tháng, KXĐTH) kèm phụ lục lương,
  tái ký HĐ dịch vụ giảng dạy theo thời hạn PC quyết định, hoặc soạn thông báo chấm dứt khi không tái ký;
  tạo HĐ điện tử trên HRM và báo Todolist. Dùng khi người dùng nói "tái ký", "hết hạn HĐ", "review sau thử việc",
  "quét 1.2", "HĐ sắp hết hạn", "không tái ký", "gia hạn HĐDV".
---

# KỸ NĂNG: REVIEW & TÁI KÝ HỢP ĐỒNG (BLA · luồng 1.2)

**Nguồn chi tiết (bắt buộc đọc trước khi làm):** `P1-hcns-hdld/mau/sop-1.2-tai-ky.md`. Skill này chỉ tóm tắt và trỏ tới các mục của SOP. Khi SOP và skill khác nhau thì **làm theo SOP**.
Đọc kèm: `P1-hcns-hdld/CLAUDE.md`, `../CLAUDE.md` (quy tắc 6.x), `P1-hcns-hdld/mau/sop-1.1-nhan-su-moi.md` (mức BH mục 2a, pháp nhân & thư mục mục 3, nhánh HĐDV mục 3a, kỹ thuật HRM/Drive mục 6a), `P1-hcns-hdld/nhat-ky/1.2-theo-doi.md` (người nhận cố định, trạng thái "PC đã duyệt", nhật ký lượt chạy – file chỉ lưu máy).

## 1. Ba loại hợp đồng – ba cách xử lý

| Loại HĐ hiện tại | Ngưỡng báo | HĐ tiếp theo | Căn cứ |
|---|---|---|---|
| Thử việc | còn ≤ 15 ngày | HĐLĐ XĐTH 12 tháng | Lộ trình BLA |
| HĐLĐ xác định thời hạn | còn ≤ 30 ngày | Lần 1 → XĐTH 24 tháng; lần 2 trở lên → **KXĐTH bắt buộc** | Khoản 2 Điều 20 BLLĐ 2019 (ngoại lệ luật định: chưa xác minh chi tiết) |
| HĐ dịch vụ giảng dạy (HĐDV) | còn ≤ 30 ngày | HĐDV mới – **thời hạn và phí/giờ theo quyết định review PC nhập**, không theo lộ trình HĐLĐ | Quan hệ dân sự, không áp dụng BLLĐ |

Nhận diện HĐDV trên HRM (HRM ghi loại "Chính thức"): mã HĐ có `HĐDV`, hoặc lương chính thức là phí/giờ (< 1 triệu), hoặc ghi chú HĐ có "HĐDV", hoặc nhân sự Phòng Đào tạo kiểu `part_time` → SOP mục 1.5.

## 2. Luồng mỗi lượt (SOP mục 1)

```
A. Kiểm tra nhanh: /hrm/hrm-working-contract?&expires_in=30 → so Số HĐ với cột J Sheet
      │ có HĐ mới vượt ngưỡng
      ▼
B. Với mỗi người: đếm số HĐ đã ký → đề xuất (cột R, S) → đăng TB review trên HRM → ghi Sheet → Todolist
      ▼
C. Đọc cột kết quả PC điền trên Sheet:
      Đồng ý ký tiếp → HĐLĐ mới (mục 6) | HĐDV mới (mục 6c)
      Không tái ký   → TB chấm dứt (mục 6b) – PC in, ký, scan, tự gửi HRM
      Quá hạn nộp    → đánh dấu "Quá hạn", nhắc HCNS
      ▼
D. (Thứ Hai) Lưới an toàn: báo trước HĐ còn 60 ngày; HĐ đã hết hạn mà chưa có HĐ mới
```

Lịch tự động: scheduled task `p1-1-2-tai-ky-hdld`, 9h45 thứ Hai–thứ Bảy (sau lượt 1.1). Người dùng có thể ra lệnh "quét 1.2" bất kỳ lúc nào.

## 3. Thông báo review trên HRM (SOP mục 3)

- Trang tạo tin `/hrm-new-create`; **đợi trang tải xong** mới điền; ảnh bìa bắt buộc (logo BLA); người nhận chọn trong hộp "Chọn nhân viên".
- Người nhận cố định: xem `nhat-ky/1.2-theo-doi.md`. Hạn nộp Phiếu Review = **ngày gửi + 5 ngày**.
- Mẫu nội dung HĐLĐ/thử việc: SOP mục 3b.
- **HĐDV dùng mẫu riêng (SOP mục 3c)**: không dùng từ NLĐ, nhân sự, CBNV, nhân viên, Trưởng phòng (cấp trên), phê duyệt, HĐLĐ. Dùng Ông/Bà, giảng viên, Bên cung ứng dịch vụ, Phòng Đào tạo nhận xét, "Công ty xem xét, thống nhất gia hạn/ký Hợp đồng mới".
- Chưa có dòng "PC đã duyệt" trong nhật ký → tin lưu **Nháp + Không gửi**, ghi Todolist nhờ PC xuất bản.

## 4. Sheet theo dõi (SOP mục 4)

"Rà soát HĐ nhân sự", tab `Theo dõi tái ký (AI)`: cột xanh A–S và Z–AA do AI điền; cột vàng T–Y do PC điền:
T kết quả review · U loại HĐ chốt · V tổng thu nhập mới (HĐDV: phí/giờ mới) · W ngày bắt đầu (trống = hết hạn + 1) · **X thời hạn HĐ mới (bắt buộc với HĐDV)** · Y ghi chú PC. Luôn đọc Y trước khi làm; mâu thuẫn thì hỏi, không đoán.

## 5. Soạn văn bản

| Việc | Mục SOP | Lưu ý chính |
|---|---|---|
| HĐLĐ XĐTH/KXĐTH + phụ lục lương | 6 | Lương cơ bản = mức BH (SOP 1.1 mục 2a); lương hiệu quả = tổng − mức BH; pháp nhân BLA/BLA Academy theo phòng ban; **không** ký lại CKBM |
| HĐDV tái ký | 6c | Mẫu HĐDV trống (Google Doc, `copy_file`); thời hạn từ cột X; phí từ cột V; lưu ở Phòng Đào tạo › `00A. Part time` hoặc thư mục HĐDV cũ |
| TB chấm dứt do hết hạn | 6b | Nhân bản mẫu đã ban hành (không sửa bản gốc); ngày = ngày soạn; số VB và số CCCD để trống; HĐDV đổi thuật ngữ, bỏ câu lương/BHXH |
| HĐ điện tử trên HRM | 6 (bước 4), 6c | Tìm dòng nhân sự theo mã NV (**không** lọc SĐT trên URL); gán trực tiếp ô ẩn lương; thời hạn không có trong danh sách → chọn gần nhất rồi sửa tay ngày kết thúc |

Kỹ thuật điền Google Docs (đã kiểm chứng qua 3 lần chạy thử): chèn ô bảng trống theo index (từ lớn về nhỏ, trước khi thay chữ); dòng có "…" dùng `replaceAllText` regex; một số chỗ (ngày ký đầu văn bản, điều thời hạn, ô CCCD/SĐT trong bảng) **không khớp tìm–thay** → sửa theo vị trí ký tự. Luôn đọc lại file để kiểm tra.

## 6. Báo cáo & giới hạn

- Mỗi việc làm xong → 1 dòng Todolist (tab theo sheetId `1882124751`), trạng thái `AI đã làm - chờ kiểm tra`; lượt không có gì mới chỉ ghi nhật ký.
- **Không** gõ số CCCD/hộ chiếu, MST, số sổ BHXH, số tài khoản ngân hàng (để trống, nhắc HCNS); **không** xóa nhân sự/hồ sơ/tin; dữ liệu nhân sự, lương là mật – không ghi vào URL; HRM và Sheet lệch thì báo, không tự sửa.
- Đã biết: HRM chưa lưu "Lương đóng BHXH" trên HĐ điện tử (hiện 0) → nhắc HCNS kiểm tra; "Tạo mới lương" đã có quyền (27/11/2026) → AI tự tạo (SOP 1.1 mục 6a). Kết quả review "Khác – chuyển vị trí bằng HĐ thử việc" → SOP 1.2 mục 5.3 (thử việc 60 ngày, tự đổi phòng ban, gộp hồ sơ soạn thảo).
