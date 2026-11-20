# SOP 1.2 · REVIEW & TÁI KÝ HĐLĐ (HẾT THỬ VIỆC / HẾT HẠN HĐ)

Người dùng chốt yêu cầu ngày 20/11/2026. **Ủy quyền**: sau khi chạy thử thành công, Claude tự chạy toàn bộ luồng (đăng TB review, ghi Sheet, tạo HĐ/TB chấm dứt, HĐ điện tử HRM) **không hỏi từng lần** – ngoại lệ cho quy tắc 6.1 của `../../CLAUDE.md`, chỉ trong phạm vi SOP này; vẫn giữ quy tắc 6.2–6.5. Trạng thái chạy thử: xem `../nhat-ky/1.2-theo-doi.md`.
Kế thừa thao tác HRM/Drive/Docs của `sop-1.1-nhan-su-moi.md` (mục 2a mức BH, 3 pháp nhân & thư mục, 6a ghi chú kỹ thuật, 7 giới hạn).

## 0. Nguồn & đích

| Thứ | Vị trí |
|---|---|
| Danh sách HĐ trên HRM | https://tiengduc.bla.vn/hrm/hrm-working-contract |
| Tạo tin tức HRM | https://tiengduc.bla.vn/hrm/news → Thêm mới (form giống `/hrm-news/<id>/edit`) |
| Sheet theo dõi | "Rà soát HĐ nhân sự" `1mnj0ZeKNep2rrk8PLPn6cbwkxC4-TwhOhoaBuWwLf6g`, tab **`Theo dõi tái ký (AI)`** (sheetId `1202611`; tạo 20/11/2026). Tab cũ "Rà soát nhân sự ký HĐ hàng tháng" giữ làm lịch sử, chỉ đọc để đối chiếu số lần ký. |
| Phiếu Review – sau thử việc | Google Doc `1-7k8me_T1H4lrnX-KFSbmc3LK97HLqQK` |
| Phiếu Review – tái ký HĐLĐ | Google Doc `1DPYjlz07aJFWLM6UfeKSgvDyyAVlMScN` |
| Mẫu HĐ – BLA | XĐTH `1iiJ8CEz8Vw_r6YlcynkJN6jCpbbFwhqz` (03. HĐ lao động xác định thời hạn.docx) · KXĐTH `1eqRhRzLBoHxvUtSca06NwRHaYMeBaV74` |
| Mẫu HĐ – BLA Academy | XĐTH `1EmUyKCvgjCeTNmbI0At34efRLlBskliC` (HĐ xác định thời hạn.docx) · KXĐTH `1wRT_6arBZQ_SJn6T6DZVE4d-69TtMdOS` |
| Thư mục lưu HĐ | Như 1.1: `01. Bản soạn thảo` → phòng ban → `[Họ và tên] - [Vị trí]` (đã có thì dùng lại) |
| Todolist | Như 1.1 (tab `T11/2026` (sheetId `1882124751` – tên tab có thể đổi, tìm theo sheetId)), tiền tố `[1.2]` |
| Mẫu TB chấm dứt HĐLĐ do hết hạn | Google Doc `1sLP5LUAWfLmeWUf2LXzx1mXFesNZeo0N9EBn4Tk6TRY` (là văn bản đã ban hành → **chỉ nhân bản, không sửa bản gốc**) |

**Không** ký lại Cam kết bảo mật.

## 1. Cơ chế quét (tự động 9h45, thứ Hai – thứ Bảy – scheduled task `p1-1-2-tai-ky-hdld`)
Chạy sau lượt 1.1 (9h00, thực tế ~9h14 do trễ ngẫu nhiên) để không tranh trình duyệt. Chưa có "PC đã duyệt" trong `../nhat-ky/1.2-theo-doi.md` → tin review lưu Nháp + "Không gửi", nhờ PC xuất bản. Mỗi lượt gồm:

| Bước | Việc | Chi phí |
|---|---|---|
| A. Kiểm tra nhanh | Mở 1 trang lọc `expires_in=30`, so Số HĐ với cột J của Sheet. Không có HĐ mới vượt ngưỡng → chuyển bước C | 1 lần tải trang |
| B. Xử lý HĐ mới | Chỉ khi bước A thấy HĐ mới: mục 1.1–1.4, 2, 3, 4 | theo số người |
| C. Quét kết quả | Đọc cột T của Sheet (dòng trạng thái 1, 2) → mục 5 | 1 lần đọc Sheet |
| D. Lưới an toàn (chỉ thứ Hai) | Lọc `expires_in=60` báo trước trong Todolist các HĐ sắp vào ngưỡng tuần tới; lọc trạng thái `Hết hạn` + nhân sự còn đang làm (HĐ đã hết hạn mà chưa có HĐ mới) → cảnh báo Todolist | 2 lần tải trang |

Không có gì mới → chỉ ghi 1 dòng nhật ký. Người dùng cũng có thể ra lệnh "quét 1.2" bất kỳ lúc nào (VD sau khi điền xong kết quả review).

### 1.1–1.4. Lấy danh sách
1. Mở `/hrm/hrm-working-contract?&expires_in=30` (bộ lọc "Sắp hết hạn – Còn 30 ngày"; có thể thêm `&page=N`).
2. Lấy các dòng trạng thái `Đang hiệu lực` hoặc `Chờ ký / Chờ duyệt`:
   - Loại HĐ `Chính thức` → lấy nếu còn **≤ 30 ngày**.
   - Loại HĐ `Thử việc` → lấy nếu còn **≤ 15 ngày**.
3. Bỏ qua dòng đã có trong Sheet (so theo **Số HĐ hiện tại**, cột J). Trước khi đăng TB, kiểm tra danh sách tin `/hrm/news` đã có tin "[Họ tên]_Thông báo … review" cho HĐ này chưa (HCNS có thể đã gửi tay) → có rồi thì chỉ ghi Sheet, Q = link tin cũ, ghi chú "TB do HCNS gửi".
   - Tham khảo thêm: chuông thông báo HRM tự báo lúc 8h05 khi HĐ còn 90 ngày và 15 ngày (không có mốc 30) → chỉ dùng để đối chiếu.
4. Với mỗi người mới: mở `/hrm/hrm-working-contract?&employee_id=<ID>` để đếm số HĐ đã ký; mở hồ sơ để lấy Mã NV, phòng ban, vị trí, lương hiện tại.

## 2. Đề xuất loại HĐ tiếp theo (cột R, S)
Quy trình BLA: Thử việc → XĐTH 12 tháng → XĐTH 24 tháng → Không xác định thời hạn.

| HĐ hiện tại | Đề xuất |
|---|---|
| Thử việc | HĐLĐ XĐTH 12 tháng |
| XĐTH lần 1 (HRM có 1 HĐ chính thức, hoặc HĐ hiện tại ≈12 tháng) | HĐLĐ XĐTH 24 tháng |
| XĐTH lần 2 trở lên (HRM có ≥ 2 HĐ chính thức, hoặc HĐ hiện tại ≈24 tháng) | HĐLĐ không xác định thời hạn – **bắt buộc** khi đã ký 2 lần HĐ XĐTH (khoản 2 Điều 20 BLLĐ 2019; có một số ngoại lệ luật định – chưa xác minh chi tiết, gặp trường hợp đặc biệt thì ghi S để PC xem) |

- Lịch sử HRM thiếu (HĐ cũ chưa nhập) → đối chiếu tab cũ (cột "Hợp đồng" ghi "lần 1/lần 2") và ghi rõ vào cột S "chưa chắc số lần ký, PC kiểm tra".
- Cột S ghi thêm: lương hiện tại, mức BH dự kiến (theo 2a SOP 1.1), cảnh báo (VD đang nghỉ thai sản, thiếu dữ liệu).

## 3. Đăng thông báo review trên HRM
Mỗi nhân sự **một tin**. Các trường:

| Trường | Giá trị |
|---|---|
| Tiêu đề | `[Họ tên]_Thông báo review ký HĐLĐ sau thời gian thử việc` hoặc `[Họ tên]_Thông báo review tái ký hợp đồng lao động` |
| Kiểu | Thông báo · Ưu tiên: Bình thường · Trạng thái: Đã xuất bản · Ngày ban hành: hôm nay |
| Gửi thông báo | `Gửi thông báo` |
| Đối tượng nhận | `Nhân viên` → tích: nhân sự đó + người nhận cố định (mục 3a) |
| Nội dung | Mẫu 3b (ô CKEditor: `CKEDITOR.instances.inputContent.setData(html)`) |
| Ảnh bìa (bắt buộc) | Logo BLA `/images/logo-bla.png` (lấy blob trên trang rồi gán vào ô `photo`) – ⏳ PC có ảnh bìa chuẩn thì thay |

Thao tác: trang tạo tin `/hrm-new-create`; người nhận chọn trong hộp "Chọn nhân viên" (ô `employees[]`) → "Xong" → kiểm tra dòng "Bạn đã chọn N nhân viên" → "Thêm bài viết" → báo "Thành công"; tin mới nằm đầu `/hrm/news` (lấy link xem + MS).

Hạn nộp Phiếu Review = **ngày gửi TB + 5 ngày** (người dùng chốt 20/11/2026).

### 3a. Người nhận cố định (người dùng chốt 20/11/2026)
Nhân sự được review + Ban Lãnh đạo (4 người) + Trưởng phòng HCNS + Pháp chế. **Không** gửi Ban Hành chính – Nhân sự.
Danh sách tên/mã cụ thể lưu tại `../nhat-ky/1.2-theo-doi.md` (không đẩy GitHub). Ô tích người nhận trên form tin: `employees[]`, value = phần số của mã NV.

### 3b. Nội dung thông báo (đã tối ưu, dùng chung 2 loại)
```
Phòng HCNS thông báo tới Anh/Chị [HỌ TÊN] về việc thực hiện Review [ký HĐLĐ sau thời gian thử việc | tái ký Hợp đồng lao động], cụ thể như sau:

- Mã nhân viên: [BLA-xxxx]
- Họ và tên: [HỌ TÊN]
- Phòng ban / Vị trí: [Phòng ban] / [Vị trí]
- Loại hợp đồng hiện tại: [Hợp đồng thử việc | HĐLĐ xác định thời hạn lần N]
- Thời hạn: [dd/mm/yyyy] – [dd/mm/yyyy]

Đề nghị Anh/Chị:
1. Hoàn thiện Phiếu Review [đề nghị ký HĐLĐ | tái ký HĐLĐ] theo mẫu của Công ty (tải mẫu Tại đây);
2. Gửi Quản lý/Trưởng phòng trực tiếp đánh giá, nhận xét và đề xuất;
3. Gửi Phiếu đã có đủ ý kiến về Phòng HCNS trước ngày [ngày gửi + 5] để trình Ban Lãnh đạo phê duyệt.

Lưu ý: Phiếu Review phải có đầy đủ phần tự đánh giá của CBNV và nhận xét, ý kiến đề xuất của Trưởng phòng. Đề nghị Trưởng phòng đôn đốc nhân sự hoàn thành đúng hạn để không ảnh hưởng đến tiến độ ký HĐLĐ.

Trân trọng!
```
"Tại đây" gắn link Phiếu Review tương ứng (mục 0).

## 4. Ghi Sheet theo dõi
Thêm 1 dòng/nhân sự vào tab `Theo dõi tái ký (AI)`, điền cột A–S, Y = `1. Đã gửi TB – chờ review`, Q = link tin HRM. Ngày viết dd/mm/yyyy.
Todolist: `[1.2] Đã gửi TB review [sau thử việc | tái ký] – [Họ tên] – [Phòng] – hạn nộp [dd/mm/yyyy] – [link tin HRM]`.

> **Quy tắc báo Todolist (người dùng chốt 20/11/2026):** mỗi việc làm xong (gửi TB review, tạo HĐ mới, soạn TB chấm dứt, đánh dấu quá hạn, cảnh báo lưới an toàn) đều thêm 1 dòng Todolist (tab `T11/2026` (sheetId `1882124751` – tên tab có thể đổi, tìm theo sheetId), cách tìm dòng trống như SOP 1.1) với Trạng thái = `AI đã làm - chờ kiểm tra` để PC kiểm tra. Lượt không có gì mới thì không ghi Todolist, chỉ ghi nhật ký.

| Cột | Ai điền | Nội dung |
|---|---|---|
| A–S | AI | Thông tin HĐ, đề xuất, ghi chú cho PC |
| T | PC | Kết quả review: Đồng ý ký tiếp / Không tái ký / Gia hạn review / Chờ kết quả |
| U | PC | Loại HĐ chốt (hoặc "Theo đề xuất của AI") |
| V | PC | Tổng thu nhập mới (trống = giữ lương hiện tại, AI ghi rõ ở S) |
| W | PC | Ngày bắt đầu HĐ mới (trống = ngày hết hạn + 1) |
| X | PC | Ghi chú/ngoại lệ cho AI |
| Y | AI | Trạng thái xử lý |
| Z | AI | Link thư mục / HĐ mới |

## 5. Quét kết quả & làm HĐ mới (bước C mỗi lượt 9h45, hoặc khi PC báo đã điền xong)
1. Đọc các dòng Y ∈ {1, 2}:
   - T = `Đồng ý ký tiếp` → mục 6.
   - T = `Không tái ký` → mục 6b (soạn TB chấm dứt). Phải thông báo bằng văn bản cho NLĐ về việc chấm dứt HĐ (Điều 45 BLLĐ 2019 – thời hạn báo trước cụ thể: chưa xác minh, PC kiểm tra).
   - T trống và quá hạn nộp (cột P) → Y = `2. Quá hạn review`, ghi Todolist nhắc HCNS.
   - T = `Gia hạn review` / `Chờ kết quả` → giữ nguyên.
2. Luôn đọc cột X trước khi làm; X mâu thuẫn với U/V → hỏi PC, không tự đoán.

## 6. Tạo HĐ mới (như 1.1, không có CKBM)
1. Pháp nhân, thư mục: như mục 3 SOP 1.1. Mẫu: XĐTH hoặc KXĐTH theo cột U (hoặc R nếu U = "Theo đề xuất").
2. Nhân bản mẫu → Google Docs (cách làm như 6a SOP 1.1), tên `HĐLĐ XĐTH [12|24] tháng - [Họ tên]` / `HĐLĐ KXĐTH - [Họ tên]`. Chỉ điền chỗ trống. Mẫu XĐTH/KXĐTH gồm **HĐ + Phụ lục lương** trong cùng file.

| Chỗ trống (HĐ và Phụ lục) | Giá trị |
|---|---|
| Số HĐ `ddmmyy/HĐLĐ/XĐTH/BLA-.....` (Academy: `ddmmyy-HĐLĐ/BLA-mã NV`) · Số PL `ddmmyy/PLHĐLĐ/BLA-.....` | `ddmmyy` = ngày bắt đầu HĐ mới; phần cuối = phần số mã NV |
| "Hôm nay, ngày …. tháng …. năm 2026" (HĐ và PL) | Ngày bắt đầu HĐ mới |
| Bảng NLĐ: Người lao động / Sinh ngày / Thường trú / Địa chỉ hiện tại / Điện thoại, Email | Từ hồ sơ HRM (Academy: "Ông/Bà ……" → Ông hoặc Bà + họ tên) |
| Số CCCD, **Tài khoản ngân hàng** | **Để trống** – HCNS điền |
| 1.1 Loại Hợp đồng | Giữ "xác định thời hạn 12 tháng" hoặc sửa "24 tháng"; KXĐTH theo mẫu riêng |
| 1.2 Thời gian "Từ ngày … đến hết ngày …" | Ngày bắt đầu → (bắt đầu + 12/24 tháng − 1 ngày) |
| 1.4 Chức danh / 1.5 Bộ phận | Vị trí / Phòng ban (HRM) |
| 3.1.1 "Mức lương cơ bản: 5.400.000" (HĐ) và "Mức lương cơ bản" (PL) | Mức BH (2a SOP 1.1) + bằng chữ; quản lý → 6.000.000 |
| PL – "Căn cứ HĐLĐ số … ký ngày … giữa … và Ông/Bà …", "HĐLĐ số …" (các chỗ trong Điều 2) | Số HĐ mới + ngày ký + họ tên |
| PL – Tổng thu nhập + bằng chữ | Cột V (trống = lương hiện tại trên HRM) |
| PL – Lương hiệu quả công việc + bằng chữ | Tổng − mức BH |

3. Lương: Tổng thu nhập = V (hoặc lương hiện tại); Lương cơ bản = mức BH (2a SOP 1.1); Thưởng hiệu quả = Tổng − mức BH (< 0 → cảnh báo).
4. HRM → Tạo mới HĐ: Loại = Chính thức; thời hạn 12/24 tháng hoặc không xác định; Trạng thái `Chờ ký / Chờ duyệt`; Link = Google Doc; Ghi chú "AI tạo tự động (luồng 1.2)". Lương: tài khoản chưa có quyền → ghi Todolist cho HCNS (như 1.1).
5. Sheet: Z = link thư mục, Y = `3. AI đã làm HĐ – chờ kiểm tra`. Todolist: `[1.2] HĐLĐ … – [Họ tên] – [Phòng] – Mã NV – [link]`.
6. PC kiểm tra xong tự chuyển Y = `5. Hoàn tất`.

## 6b. Không tái ký → Thông báo chấm dứt HĐLĐ do hết hạn
1. Nhân bản mẫu TB (mục 0) vào thư mục của nhân sự trong `01. Bản soạn thảo` (chưa có thì tạo `[Họ và tên] - [Vị trí]` trong thư mục phòng ban). Tên file: `TB chấm dứt HĐLĐ do hết hạn - [Họ tên]`.
2. Thay các chỗ sau, **giữ nguyên lời văn còn lại**:

| Chỗ trong mẫu | Giá trị |
|---|---|
| "Hà Nội, ngày … tháng … năm …" | **Ngày soạn** (người dùng chốt) |
| "Số: 245/2026/TB-BĐH" | `Số: ……/[năm]/TB-BĐH` – để trống số thứ tự cho văn thư cấp |
| "Kính gửi: Bà [tên] (CCCD số: …)" | Ông/Bà theo giới tính + Họ tên; **số CCCD để trống** `(CCCD số: ……………)` – HCNS điền |
| "Công ty Cổ phần Tập đoàn Giáo dục BLA" (thân bài + khối ký) | Pháp nhân theo HĐ hiện tại: BLA giữ nguyên; BLA Academy → "Công ty Cổ phần BLA Academy" (khối ký: "CÔNG TY CỔ PHẦN BLA ACADEMY"); "tại BLA" → "tại BLA Academy" |
| "Hợp đồng lao động số … ký ngày …" | Số HĐ + ngày ký của HĐ hiện tại (HRM) |
| "kết thúc vào ngày …" / "chấm dứt khi hết ngày …" | Ngày hết hạn HĐ hiện tại |

   - HĐ hiện tại là **thử việc** → đổi "Hợp đồng lao động" thành "Hợp đồng thử việc" ở đoạn căn cứ, ghi cột S "TB không ký HĐ sau thử việc – PC rà lời văn".
3. Sheet: Z = link file, Y = `4. Không tái ký – AI đã soạn TB chấm dứt`. Todolist: `[1.2] TB chấm dứt HĐLĐ – [Họ tên] – [link] – Cần: HCNS điền CCCD + số VB, in, trình ký, scan, PC gửi trên HRM`.
4. PC in → trình ký → scan → **tự gửi** TB trên HRM cho nhân sự, rồi chuyển Y = `5. Hoàn tất`. QĐ chấm dứt khác (kỷ luật, đơn phương…) thuộc luồng 1.3.

## 7. Giới hạn
Như mục 7 SOP 1.1: không gõ CCCD/MST/BHXH/STK; không xóa; dữ liệu mật; HRM–Sheet lệch thì báo, không tự sửa.
