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
| Mẫu HĐ dịch vụ giảng dạy (HĐDV) | Google Doc `1Mcb9VgDFyyORuftx-IBB9Yy9XkNJHZwC90PyH7ogZ4Q` (`Mẫu HĐ dịch vụ giảng dạy (trống)`, BLA Academy) – xem mục 6c |
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
5. **Nhận diện HĐ dịch vụ giảng dạy (HĐDV)** – trên HRM, HĐDV vẫn ghi Loại = `Chính thức`, 1 năm (theo SOP 1.1 mục 3a), nên phải nhận diện theo dấu hiệu, có **một** dấu hiệu là coi là HĐDV:
   - Mã HĐ chứa `HĐDV`; hoặc
   - Trang chi tiết HĐ có Lương chính thức/Lương cơ bản **< 1.000.000** (là phí/giờ, VD 250,000); hoặc
   - Ghi chú HĐ có "HĐDV"; hoặc nhân sự có Kiểu NV `Nhân sự bán thời gian` thuộc Phòng Đào tạo.
   Dấu hiệu mâu thuẫn (VD mã HĐLĐ nhưng lương < 1 triệu) → vẫn xếp HĐDV, ghi cột S "PC xác nhận loại HĐ". HĐDV dùng ngưỡng **30 ngày** như HĐLĐ.

## 2. Đề xuất loại HĐ tiếp theo (cột R, S)
Quy trình BLA: Thử việc → XĐTH 12 tháng → XĐTH 24 tháng → Không xác định thời hạn.

| HĐ hiện tại | Đề xuất |
|---|---|
| Thử việc | HĐLĐ XĐTH 12 tháng |
| XĐTH lần 1 (HRM có 1 HĐ chính thức, hoặc HĐ hiện tại ≈12 tháng) | HĐLĐ XĐTH 24 tháng |
| XĐTH lần 2 trở lên (HRM có ≥ 2 HĐ chính thức, hoặc HĐ hiện tại ≈24 tháng) | HĐLĐ không xác định thời hạn – **bắt buộc** khi đã ký 2 lần HĐ XĐTH (khoản 2 Điều 20 BLLĐ 2019; có một số ngoại lệ luật định – chưa xác minh chi tiết, gặp trường hợp đặc biệt thì ghi S để PC xem) |

- Lịch sử HRM thiếu (HĐ cũ chưa nhập) → đối chiếu tab cũ (cột "Hợp đồng" ghi "lần 1/lần 2") và ghi rõ vào cột S "chưa chắc số lần ký, PC kiểm tra".
- Cột S ghi thêm: lương hiện tại, mức BH dự kiến (theo 2a SOP 1.1), cảnh báo (VD đang nghỉ thai sản, thiếu dữ liệu).
- **HĐDV** (người dùng chốt 20/11/2026): **không áp dụng lộ trình trên và không áp dụng Điều 20 BLLĐ** (HĐDV là hợp đồng dân sự). R = `HĐDV giảng dạy (thời hạn theo PC)`; N = `Tái ký HĐDV`; S ghi phí/giờ hiện tại, thời hạn HĐ hiện tại, và nhắc "PC điền thời hạn mới ở cột X". Không tính mức BH, không kiểm tra 85%.

## 3. Đăng thông báo review trên HRM
Mỗi nhân sự **một tin**. Các trường:

| Trường | Giá trị |
|---|---|
| Tiêu đề | `[Họ tên]_Thông báo review ký HĐLĐ sau thời gian thử việc` · `[Họ tên]_Thông báo review tái ký hợp đồng lao động` · HĐDV: `[Họ tên]_Thông báo review tái ký hợp đồng dịch vụ giảng dạy` |
| Kiểu | Thông báo · Ưu tiên: Bình thường · Trạng thái: Đã xuất bản · Ngày ban hành: hôm nay |
| Gửi thông báo | `Gửi thông báo` |
| Đối tượng nhận | `Nhân viên` → tích: nhân sự đó + người nhận cố định (mục 3a) |
| Nội dung | Mẫu 3b (ô CKEditor: `CKEDITOR.instances.inputContent.setData(html)`) |
| Ảnh bìa (bắt buộc) | Logo BLA `/images/logo-bla.png` (lấy blob trên trang rồi gán vào ô `photo`) – ⏳ PC có ảnh bìa chuẩn thì thay |

Thao tác: trang tạo tin `/hrm-new-create` (**đợi trang tải xong mới điền** – điền sớm thì trang tải lại và mất dữ liệu; sau khi điền kiểm tra lại "Bạn đã chọn N nhân viên", nội dung, ảnh bìa); người nhận chọn trong hộp "Chọn nhân viên" (ô `employees[]`) → "Xong" → kiểm tra dòng "Bạn đã chọn N nhân viên" → "Thêm bài viết" → báo "Thành công"; tin mới nằm đầu `/hrm/news` (lấy link xem + MS).

Hạn nộp Phiếu Review = **ngày gửi TB + 5 ngày** (người dùng chốt 20/11/2026).

### 3a. Người nhận cố định (người dùng chốt 20/11/2026)
Nhân sự được review + Ban Lãnh đạo (2 người – PC chốt bỏ 2 thành viên BLĐ, xem danh sách trong nhật ký) + Trưởng phòng HCNS + Pháp chế. **Không** gửi Ban Hành chính – Nhân sự.
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

**Biến thể HĐDV** (cùng mẫu, chỉ thay các cụm sau): "Review [tái ký Hợp đồng dịch vụ giảng dạy]" · Loại hợp đồng hiện tại: "Hợp đồng dịch vụ giảng dạy" · "Phiếu Review [tái ký HĐDV]" – tạm dùng Phiếu Review tái ký (`1DPYjlz0…`) ⏳ PC có phiếu riêng cho giáo viên HĐDV thì thay · câu cuối "…tiến độ ký HĐDV". Giữ "Mã nhân viên" (HĐDV vẫn có mã trên HRM).

## 4. Ghi Sheet theo dõi
Thêm 1 dòng/nhân sự vào tab `Theo dõi tái ký (AI)`, điền cột A–S, Z = `1. Đã gửi TB – chờ review`, Q = link tin HRM. Ngày viết dd/mm/yyyy.
Todolist: `[1.2] Đã gửi TB review [sau thử việc | tái ký] – [Họ tên] – [Phòng] – hạn nộp [dd/mm/yyyy] – [link tin HRM]`.

> **Quy tắc báo Todolist (người dùng chốt 20/11/2026):** mỗi việc làm xong (gửi TB review, tạo HĐ mới, soạn TB chấm dứt, đánh dấu quá hạn, cảnh báo lưới an toàn) đều thêm 1 dòng Todolist (tab `T11/2026` (sheetId `1882124751` – tên tab có thể đổi, tìm theo sheetId), cách tìm dòng trống như SOP 1.1) với Trạng thái = `AI đã làm - chờ kiểm tra` để PC kiểm tra. Lượt không có gì mới thì không ghi Todolist, chỉ ghi nhật ký.

| Cột | Ai điền | Nội dung |
|---|---|---|
| A–S | AI | Thông tin HĐ, đề xuất, ghi chú cho PC |
| T | PC | Kết quả review: Đồng ý ký tiếp / Không tái ký / Gia hạn review / Chờ kết quả |
| U | PC | Loại HĐ chốt (hoặc "Theo đề xuất của AI") |
| V | PC | Tổng thu nhập mới (trống = giữ lương hiện tại, AI ghi rõ ở S); HĐDV = **phí/giờ mới** (trống = giữ phí cũ) |
| W | PC | Ngày bắt đầu HĐ mới (trống = ngày hết hạn + 1) |
| X | PC | **Thời hạn HĐ mới** – bắt buộc với HĐDV (số tháng, VD "6", hoặc "đến dd/mm/yyyy"); HĐLĐ để trống = theo loại HĐ ở U |
| Y | PC | Ghi chú/ngoại lệ cho AI |
| Z | AI | Trạng thái xử lý |
| AA | AI | Link thư mục / HĐ mới |

## 5. Quét kết quả & làm HĐ mới (bước C mỗi lượt 9h45, hoặc khi PC báo đã điền xong)
1. Đọc các dòng Z ∈ {1, 2}:
   - T = `Đồng ý ký tiếp` → mục 6.
   - T = `Không tái ký` → mục 6b (soạn TB chấm dứt). Phải thông báo bằng văn bản cho NLĐ về việc chấm dứt HĐ (Điều 45 BLLĐ 2019 – thời hạn báo trước cụ thể: chưa xác minh, PC kiểm tra).
   - T trống và quá hạn nộp (cột P) → Z = `2. Quá hạn review`, ghi Todolist nhắc HCNS.
   - T = `Gia hạn review` / `Chờ kết quả` → giữ nguyên.
2. Luôn đọc cột Y (ghi chú PC) trước khi làm; Y mâu thuẫn với U/V/X → hỏi PC, không tự đoán.

## 6. Tạo HĐ mới (như 1.1, không có CKBM)
1. Pháp nhân, thư mục: như mục 3 SOP 1.1. Mẫu: XĐTH hoặc KXĐTH theo cột U (hoặc R nếu U = "Theo đề xuất"). **U/R là HĐDV → làm theo mục 6c**, không dùng mục này.
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
   **Kỹ thuật điền (rút ra từ chạy thử 2, 20/11/2026):**
   - Tạo Google Doc: tải mẫu (`download_file_content`) → lưu `mau/mau-goc/` (BLA-XDTH.docx / ACA-XDTH.docx / …-KXDTH.docx) → `create_file` với tham chiếu `sha256:<hash>:<đường dẫn>` vào thư mục nhân sự.
   - Ô bảng trống (Sinh ngày, Thường trú, Địa chỉ hiện tại) và "1.5 Bộ phận :" → `insertText` theo index (đọc `read_doc` → file lớn, trích index bằng PowerShell `ConvertFrom-Json`), chèn từ index lớn về nhỏ, **trước** các lệnh thay chữ.
   - Các chỗ có "…" ở dòng văn bản → `replaceAllText` regex (`…+\.*`, ` +`).
   - **Ô "Số CCCD … cấp ngày: ………. tại: ……" và "……… Email: ………" trong bảng: `replaceAllText` KHÔNG khớp** → dùng `deleteContentRange` + `insertText` theo vị trí ký tự (tính offset trong ô). Phần số CCCD (6 ký tự "…" đầu) giữ nguyên để HCNS điền.
   - SĐT trên Form có thể mất số 0 đầu → thêm "0".
4. HRM → Tạo mới HĐ: danh sách nhân sự (`/hrm/employees?status=active&page=N`, tìm dòng có mã NV – **không lọc bằng SĐT trên URL**) → link "Tạo mới HĐ" trên dòng đó → hộp "Thêm mới HĐ nhân viên …" (form `hrm-working-contract-store`).
   - Mã HĐ = số HĐ mới; Ngày ký = Ngày bắt đầu = ngày bắt đầu HĐ mới; Trạng thái `Chờ ký / Chờ duyệt`; Loại = `Chính thức`; Thời hạn `12`/`24`/`0` (không xác định) → ngày kết thúc tự tính; Link scan = Google Doc; Ghi chú "AI tạo tự động (luồng 1.2) … Pháp nhân … Thư mục …".
   - Lương: Lương cơ bản = mức BH · Lương KPI = lương hiệu quả · Phụ cấp = 0 · Lương đóng BH = mức BH → Tổng thu nhập chính thức tự cộng. **Các ô hiển thị không tự đồng bộ sang ô ẩn** (`salary_basic`, `salary_kpi`, `allowance_total`, `salary_insurance`, `salary_official`, `salary_probation`) → gán trực tiếp giá trị số (không dấu chấm) cho ô ẩn trước khi bấm "Thêm mới".
   - Sau khi tạo: mở `/hrm-working-contract/<id>` kiểm tra. **"Lương đóng BHXH" hiện 0 dù đã gửi** (HRM chưa nhận trường này) → ghi Todolist nhờ HCNS kiểm tra. Mục "Lương" (Tạo mới lương) tài khoản chưa có quyền → ghi Todolist như 1.1.
5. Sheet: AA = link thư mục, Z = `3. AI đã làm HĐ – chờ kiểm tra`. Todolist: `[1.2] HĐLĐ … – [Họ tên] – [Phòng] – Mã NV – [link]`.
6. PC kiểm tra xong tự chuyển Z = `5. Hoàn tất`.

## 6c. Tái ký HĐ dịch vụ giảng dạy (HĐDV) – người dùng chốt 20/11/2026
**Thời hạn không theo quy tắc nào – lấy đúng quyết định review PC nhập ở cột X.** X trống → **không làm HĐ**, Z giữ `1`, ghi Todolist "PC điền thời hạn HĐDV mới cho [Họ tên]" (mỗi người nhắc 1 lần/ngày, không nhắc lặp nếu đã ghi hôm đó).

| Bước | Cách làm |
|---|---|
| Mẫu & tên file | `Mẫu HĐ dịch vụ giảng dạy (trống)` Google Doc `1Mcb9VgDFyyORuftx-IBB9Yy9XkNJHZwC90PyH7ogZ4Q` → `copy_file` vào thư mục nhân sự (Phòng Đào tạo, `[Họ và tên] - [Vị trí]`, đã có thì dùng lại). Tên `HĐDV - [Họ tên] - tái ký [dd.mm.yyyy]`. Pháp nhân luôn BLA Academy. **Không** ký lại CKBM |
| Ngày bắt đầu | Cột W; trống = ngày hết hạn HĐDV cũ + 1 |
| Ngày kết thúc | Cột X: số tháng N → bắt đầu + N tháng − 1 ngày; "đến dd/mm/yyyy" → đúng ngày đó. X ghi khó hiểu → hỏi PC, không đoán |
| Chỗ trống | Như SOP 1.1 mục 3a: `Số: ddmmyy-HĐDV/BLA-mã NV` (ddmmyy = ngày bắt đầu mới) · "Hôm nay, ngày … tháng … năm 2026" = ngày bắt đầu mới (sửa cả năm) · Ông/Bà + họ tên · Sinh ngày · CCCD: **số để trống**, điền Ngày cấp, Nơi cấp · Thường trú · Nơi ở hiện tại · Điện thoại · Email · Tài khoản ngân hàng: **để trống** · **2.1 "từ ngày …… đến hết ngày ……"** = ngày bắt đầu / kết thúc ở trên · **3.1 Mức phí `……… VND/01 giờ`** = cột V (trống = phí cũ trên HRM), viết `250,000` như mẫu |
| Nguồn thông tin cá nhân | Hồ sơ HRM; thiếu thì lấy file HĐDV cũ trong thư mục nhân sự; vẫn thiếu → để "……" và ghi Todolist |
| HRM – Tạo mới HĐ | Như SOP 1.1 mục 3a: Mã HĐ = số HĐDV mới · Ngày ký = Ngày bắt đầu · `Chờ ký / Chờ duyệt` · Loại `Chính thức` · Thời hạn: chọn `1/2/12/24/36` tháng nếu trùng N, không trùng → chọn giá trị gần nhất rồi **sửa tay Ngày kết thúc** cho đúng, ghi rõ ở Ghi chú · Link scan = Google Doc · Ô ẩn: `salary_basic` = `salary_official` = phí/giờ, các ô còn lại 0 · Ghi chú "AI tạo tự động (luồng 1.2 – tái ký HĐDV). Phí …/giờ. Thời hạn theo review PC: … Thư mục: <link>" |
| Sheet & Todolist | AA = link thư mục, Z = `3. AI đã làm HĐ – chờ kiểm tra`. Todolist: `[1.2 – HĐDV] Tái ký HĐDV – [Họ tên] – Mã NV – [bắt đầu]–[kết thúc] – phí …/giờ – [link]` + "HCNS điền số CCCD, STK" |

**Ghi chú kỹ thuật (chạy thử 3, 20/11/2026):**
- Thư mục: ưu tiên thư mục chứa **HĐDV cũ** của nhân sự (link scan trên HĐ điện tử HĐDV cũ → lấy thư mục cha); không có mới dùng `[Họ và tên] - [Vị trí]` trong Phòng Đào tạo.
- Mẫu HĐDV là đoạn văn thường (trừ ô Tài khoản ngân hàng – để trống): `replaceAllText` regex `Nhãn: …+` chạy được cho Bên B, Sinh ngày, Ngày cấp, Nơi cấp, Thường trú, Nơi ở, Điện thoại, Email, mức phí. **"Hôm nay, ngày … tháng … năm 2026" và "2.1 … từ ngày …… đến hết ngày ……" KHÔNG khớp** (kể cả khớp nguyên văn) → sửa theo vị trí: đọc `read_doc`, tìm đoạn bằng PowerShell, `deleteContentRange` + `insertText` từ index lớn về nhỏ. Luôn đọc lại bằng `read_file_content` để kiểm tra.
- HRM: chọn "2 tháng" (gần 6 nhất) → HRM tự tính ngày kết thúc 2 tháng → sau đó gán lại `end_date` đúng; kiểm tra lại trên danh sách HĐ: lưu đúng ngày sửa tay.

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
   - HĐ hiện tại là **HĐDV** → tên file `TB chấm dứt HĐDV do hết hạn - [Họ tên]`; pháp nhân BLA Academy; đổi "Hợp đồng lao động" → "Hợp đồng dịch vụ giảng dạy", "giao kết Hợp đồng lao động mới" → "giao kết Hợp đồng dịch vụ mới"; câu "Công ty sẽ thực hiện thanh toán tiền lương, … bảo hiểm xã hội …" → "Công ty sẽ thanh toán phí dịch vụ đối với các buổi giảng dạy đã hoàn thành và được xác nhận theo Hợp đồng." (HĐDV không có lương/BHXH); ghi cột Y/S "TB chấm dứt HĐDV – PC rà lời văn" và Todolist ghi rõ đã sửa câu này.
3. Sheet: AA = link file, Z = `4. Không tái ký – AI đã soạn TB chấm dứt`. Todolist: `[1.2] TB chấm dứt HĐLĐ – [Họ tên] – [link] – Cần: HCNS điền CCCD + số VB, in, trình ký, scan, PC gửi trên HRM`.
4. PC in → trình ký → scan → **tự gửi** TB trên HRM cho nhân sự, rồi chuyển Z = `5. Hoàn tất`. QĐ chấm dứt khác (kỷ luật, đơn phương…) thuộc luồng 1.3.

## 7. Giới hạn
Như mục 7 SOP 1.1: không gõ CCCD/MST/BHXH/STK; không xóa; dữ liệu mật; HRM–Sheet lệch thì báo, không tự sửa.
