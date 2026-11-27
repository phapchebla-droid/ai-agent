# SOP 1.1 · NHÂN SỰ MỚI – HĐ THỬ VIỆC + CAM KẾT BẢO MẬT

Người dùng chốt ngày 19/11/2026. Áp dụng cho mỗi lần quét tự động (9h00 hằng ngày; lượt 14h00 tạm bỏ từ 20/11/2026) hoặc khi người dùng ra lệnh.

## 0. Nguồn & đích

| Thứ | Vị trí |
|---|---|
| Google Form | `1pdeg1d36K8bMg0Qwjccj3UHVETu8mxL36aBBdPAGPx0` |
| Sheet phản hồi | `1cVomGHqKmhWB9Qwp5W9xShXEGwdj5kwfEYFazcH9vAo`, tab `Câu trả lời biểu mẫu 1` (đọc theo **tên cột ở dòng 1**, không theo vị trí cột – cột có thể bị chèn thêm khi sửa Form) |
| Giao diện Form (20/11/2026) | Ảnh đầu logo BLA (`Header Form Thong tin nhan su moi - BLA.png` trên My Drive), màu đỏ BLA, 5 nhóm I–V, lời chào ở mô tả, thông báo sau khi nộp nhắc bộ hồ sơ giấy. **Không đổi tên câu hỏi** (tên câu hỏi = tên cột Sheet mà SOP đọc). |
| HRM | https://tiengduc.bla.vn/hrm/employees?status=active (Claude in Chrome, phiên đăng nhập của người dùng) |
| Thư mục lưu | `01. Bản soạn thảo` `1hcT-C6RxUBMTW9PANh8pEwGf2SWPjdfp` → thư mục phòng ban → `[Họ và tên] - [Vị trí]` |
| Todolist | `1pZZVTGRzqW6Txwb2Y2GgtJdL_KUwuLdJMDRk0ge2Iso`, tab có **sheetId `1882124751`** (một tab cho cả năm; tên tab có thể đổi – 20/11/2026 là `T11/2026`, trước đó `T1/2026`). Luôn tìm tab theo sheetId bằng `get_spreadsheet`, lấy tên hiện tại rồi mới đọc/ghi. |
| Theo dõi đã xử lý | `../nhat-ky/1.1-theo-doi.md` |

## 1. Phát hiện nhân sự mới
1. Đọc toàn bộ Sheet phản hồi. Dòng mới = dòng có `Dấu thời gian` **sau mốc** ghi trong file theo dõi và chưa có trong bảng "Đã xử lý".
2. Đồng thời lấy các dòng đang ở trạng thái `CHỜ HRM` trong file theo dõi để thử lại bước 2.
3. Không có gì → ghi 1 dòng vào nhật ký ngày, kết thúc.

## 2. Thêm vào HRM
1. Mở danh sách nhân sự → "Thêm mới nhân sự". Kiểm tra trùng trước (tìm theo SĐT/tên); đã có thì bỏ qua bước thêm, chỉ bổ sung thông tin.
2. Điền: **Tên NV** = Họ và tên trên Form · **Phòng ban** = theo Form · **Cấp bậc, Vị trí**: để trống · **Kiểu NV** = `Nhân sự thử việc`.
3. Nhận biết **chưa đăng ký tài khoản**: nhập SĐT mà hệ thống không hiện thông tin (tên…), hoặc bấm tạo bị báo lỗi không tạo được → chuyển sang mục 6.
4. Tạo thành công → ghi lại **Mã nhân sự** (VD `BLA-0150`).
5. Bổ sung trên hồ sơ HRM các trường có trong Form: thông tin cá nhân; trường HRM không bắt buộc và Form không có thì bỏ trống.
6. **Hợp đồng điện tử**: loại = Thử việc; mức lương = **Mức lương chính thức** (100%); ngày bắt đầu = Ngày bắt đầu việc; thời hạn 02 tháng.
7. **Lương**: Lương cơ bản = **Mức lương thử việc** · Lương KPI = 0 · Lương đóng bảo hiểm = **mức BH** (mục 2a) · Tổng phụ cấp = 0.

### 2a. Mức lương đóng bảo hiểm (mức BH)
| Vị trí trúng tuyển | Mức BH |
|---|---|
| Từ **Trưởng phòng trở lên** (quản lý): Trưởng phòng, Trưởng ban, Giám đốc (khối/chi nhánh), Phó Tổng GĐ, Tổng GĐ… | **6.000.000** |
| Các vị trí khác (kể cả Phó phòng, Trưởng nhóm, Chuyên viên…) | **5.400.000** |

Vị trí ghi mơ hồ (VD "Quản lý", "Leader") → dùng 5.400.000 và ghi cảnh báo vào Todolist để người dùng xác nhận.
8. Không gõ số CCCD/hộ chiếu, MST, số sổ BHXH, số tài khoản ngân hàng (xem mục 7).

## 3. Chọn pháp nhân, mẫu, thư mục

| Điều kiện | Pháp nhân | Mẫu HĐTV | Mẫu CKBM |
|---|---|---|---|
| Phòng Đào tạo + **Toàn thời gian** (không Online) | BLA Academy | `1zWBqnxQf1nAlSBFofi2ojDtWbJTVTH-2` (HĐ thử việc.docx) | `1uow5meNqJ0-VeXpCXu9cOJE96p33afGO` |
| Phòng Đào tạo + **Bán thời gian** hoặc Địa điểm **Làm việc Online** | BLA Academy | **HĐ dịch vụ giảng dạy** – xem mục 3a (thay cho HĐTV) | **CKBM bên cung cấp dịch vụ** `1cF2sxItdei9WNvuGzD60twI-GPg7BAH1iiNI_SdL4i4` (Google Doc) |
| Phòng khác | BLA | `1nJ5NWT3vXYm9bQZnGF1X4Yjek8lsg8Xi` (01. Mẫu HĐ thử việc.docx) | `1YkqevTfO8XUh0usDDaIJO4sjwRfPlXct` |

Thư mục phòng ban (con của `01. Bản soạn thảo`):

| Form | Thư mục Drive | ID |
|---|---|---|
| Địa điểm = BLA Hồ Chí Minh (ưu tiên hơn phòng ban) | Chi nhánh HCM | `15PNi5pKB8kqcDUyJ6UsWMGxnY9DFqqsm` |
| Địa điểm = BLA Đà Nẵng | Chi nhánh Đà Nẵng (chưa có → tạo mới trong `01. Bản soạn thảo`, rồi ghi ID vào đây) | — |
| Phòng Đào tạo (toàn thời gian – HĐTV) | Phòng Đào tạo | `14dYQxruL3N7ACLcVGXy2b9VefTWYyQj2` |
| Phòng Đào tạo (bán thời gian / online – HĐDV) | Phòng Đào tạo › `00A. Part time` | `1jyPBcXA4oWh_Yc2-PToYjPaNSwSaNakz` |
| Phòng HCNS | Phòng HCNS | `1rClozZWZONjtSVPh_b_PaHbGrJtSHP4Z` |
| Phòng HTQT | Phòng HTQT | `17BeD7GoEce14aHN5PnRtKjtDCmYTkOdE` |
| Trợ lý BLĐ | Trợ lý BLĐ | `1QnSj4O0gC4D3gCdUrhHDxV6bDMHePC-P` |
| Phòng Tài chính - Kế toán | Phòng Tài chính - Kế toán | `1hgA11hwo2ig8t3remeTeOutBTrYOVWwH` |
| Phòng Tuyển sinh | Phòng Tuyển sinh | `1jMjN3FozOOMR0nXIU3gnc_WRkxurALCn` |
| Phòng Marketing & TT | Phòng MKT&TT | `1WqPPc17F3WEXMh6u4XNo2imJYQ6nI6bf` |
| Phòng Công tác học viên | Phòng CTHV | `1Sscq4pIymQBrZUqofUZHJ1iMWB1tvi5f` |
| BLA Tech | BLA Tech | `1C8eg1wEZ0uISJSmM9fNKMVlI4YJ0mee5` |

## 3a. Nhánh HĐ DỊCH VỤ GIẢNG DẠY (người dùng chốt 20/11/2026)

**Áp dụng khi**: `Thuộc phòng ban` = Phòng Đào tạo **và** (`Hình thức làm việc` = Bán thời gian **hoặc** `Địa điểm làm việc` = Làm việc Online). Phòng Đào tạo toàn thời gian vẫn ký HĐ thử việc như cũ.

| Bước | Cách làm |
|---|---|
| Bộ hồ sơ | **HĐDV giảng dạy + CKBM** (mẫu BLA Academy). Tên file `HĐDV - [Họ tên]`, `CKBM - [Họ tên]`; thư mục `[Họ và tên] - [Vị trí]` trong **`00A. Part time`** (`1jyPBcXA4oWh_Yc2-PToYjPaNSwSaNakz`, nằm trong thư mục Phòng Đào tạo) – người dùng chốt 20/11/2026 |
| Mẫu HĐDV | `Mẫu HĐ dịch vụ giảng dạy (trống)` – Google Doc `1Mcb9VgDFyyORuftx-IBB9Yy9XkNJHZwC90PyH7ogZ4Q` (thư mục `00. Mẫu BLA Academy`). Là Google Doc nên dùng `copy_file` thẳng vào thư mục nhân sự, không cần tải về. **Không dùng** file `Mẫu HĐ dịch vụ giảng dạy` cũ (`1Q4LdZs2…`, có dữ liệu thật của một giáo viên) |
| Chỗ trống HĐDV | `Số: ddmmyy-HĐDV/BLA-mã NV` (ddmmyy = ngày bắt đầu, mã NV = phần số) · "Hôm nay, ngày … tháng … năm 2026" = ngày bắt đầu · `Ông/Bà ……` = "Ông"/"Bà" + họ tên · Sinh ngày · CCCD: **số để trống**, điền Ngày cấp, Nơi cấp · Nơi ĐKHK thường trú · Nơi ở hiện tại · Điện thoại · Email · Tài khoản ngân hàng: **để trống** · 2.1 Thời hạn: **12 tháng**, từ ngày bắt đầu đến hết ngày (bắt đầu + 12 tháng − 1 ngày) · 3.1 Mức phí `……… VND/01 giờ` = mức phí/giờ |
| Mức phí/giờ | Lấy từ cột `Mức lương chính thức` của Form (NLĐ ghi tự do: "250k", "250.000đ/giờ"…) → quy về số, viết `250,000` như mẫu. Mức thường gặp: **200,000 / 250,000 / 350,000**. Không đọc được hoặc khác 3 mức này → vẫn điền theo Form nhưng **ghi cảnh báo** Todolist. Không áp dụng kiểm tra 85% và lương BH |
| CKBM | **Mẫu riêng cho bên cung cấp dịch vụ** (người dùng chốt 20/11/2026): `Mẫu cam kết bảo mật - Bên cung cấp dịch vụ (HĐDV)` – Google Doc `1cF2sxItdei9WNvuGzD60twI-GPg7BAH1iiNI_SdL4i4` (thư mục `00. Mẫu BLA Academy`), dùng `copy_file`. Thuật ngữ Bên A = Bên sử dụng dịch vụ, Bên B = Bên cung cấp dịch vụ; có căn cứ "Hợp đồng dịch vụ giảng dạy số ddmmyy-HĐDV/BLA-mã NV". Điền: số `ddmmyy-CCBM/BLA-mã NV`, số HĐDV ở dòng căn cứ (2 chỗ `ddmmyy…mã NV`), ngày ký ở đầu văn bản và dòng "Hôm nay…", bảng thông tin Bên B như CKBM thường. **Không dùng** mẫu CKBM người lao động `1uow5meN…` cho nhánh này |
| HRM – thêm nhân sự | Phòng ban = Phòng Đào Tạo · **Kiểu NV = `Nhân sự bán thời gian`** · Hình thức làm việc: Online → `Làm việc online`, còn lại `Làm việc tại văn phòng` · CCCD ký tự giữ chỗ như mục 6a |
| HRM – Tạo mới HĐ | Mã HĐ = số HĐDV · Ngày ký = Ngày bắt đầu · Trạng thái `Chờ ký / Chờ duyệt` · **Loại HĐ = `Chính thức`** · Thời hạn `1 năm` · Ngày kết thúc = bắt đầu + 12 tháng − 1 ngày · Link scan = Google Doc HĐDV · Ô ẩn: `salary_basic` = **mức phí/giờ** (VD 250000) · `salary_official` = mức phí/giờ · `salary_kpi` = 0 · `allowance_total` = 0 · `salary_insurance` = 0 · `salary_probation` = 0 (xóa giá trị 85% HRM tự điền) · Ghi chú "AI tạo tự động (luồng 1.1 – HĐDV). Phí giảng dạy …/giờ. Pháp nhân: BLA Academy. Thư mục: <link>" |
| HRM – Lương | Lương cơ bản = mức phí/giờ, các ô khác 0 (tài khoản hiện chưa có quyền → ghi Todolist nhờ HCNS) |
| Todolist | `[1.1 – HĐDV] HĐDV + CKBM – [Họ tên] – Phòng Đào tạo – Mã NV – phí …/giờ – [link thư mục]` + cảnh báo nếu có |

## 4. Tạo bộ hồ sơ trên Drive
1. Trong thư mục phòng ban, tạo thư mục `[Họ và tên] - [Vị trí]` (đã có thì dùng lại).
2. Nhân bản 2 mẫu vào đó, **chuyển sang Google Docs**, đặt tên `HĐTV - [Họ và tên]` và `CKBM - [Họ và tên]`.
3. Chỉ điền vào chỗ trống; **không sửa nội dung khác** của mẫu.

| Chỗ trống | Giá trị |
|---|---|
| Số văn bản (`ddmmyy` … `......` / `mã NV`) | `ddmmyy` = ngày bắt đầu việc; phần cuối = **phần số** của mã NV (`BLA-0150` → `0150`, tránh lặp "BLA"). Giữ nguyên dấu `/` hoặc `-` và ký hiệu HĐTV/ĐKBM/CCBM của từng mẫu. Chưa có mã → để trống phần cuối. |
| Ngày ký ("Hôm nay, ngày … tháng … năm 2026"; "Hà Nội, ngày …") | Ngày bắt đầu việc (sửa cả năm nếu khác 2026) |
| Người lao động | Họ và tên (mẫu Academy: "Ông"/"Bà" theo giới tính) |
| Sinh ngày | dd/mm/yyyy |
| Nơi ĐKHK thường trú / Địa chỉ hiện tại | Địa chỉ thường trú / tạm trú |
| CCCD: cấp ngày, tại | Ngày cấp, Nơi cấp (số CCCD: xem mục 7) |
| Điện thoại / Email | SĐT liên lạc / Email cá nhân |
| Thời gian thử việc | 02 tháng, từ ngày bắt đầu đến hết ngày (bắt đầu + 2 tháng − 1 ngày) |
| Vị trí / Bộ phận | Vị trí trúng tuyển / Phòng ban |
| Tổng thu nhập thử việc | Mức lương thử việc + bằng chữ |
| Lương cơ bản | **Mức BH** (mục 2a: 5.400.000 hoặc 6.000.000 cho quản lý; cả BLA và BLA Academy) + bằng chữ. Mẫu BLA ghi sẵn 5.400.000 → với quản lý thay bằng 6.000.000 và bằng chữ tương ứng. |
| Thưởng hiệu quả | Tổng thu nhập thử việc − mức BH + bằng chữ |

4. Ngày tháng luôn viết **dd/mm/yyyy**. Số tiền viết `x.xxx.xxx` và có bằng chữ.

## 5. Kiểm tra & báo cáo
1. **Kiểm tra pháp lý**: lương thử việc phải ≥ 85% lương chính thức (Điều 26 BLLĐ 2019); thưởng hiệu quả < 0; thiếu/không đọc được dữ liệu → vẫn làm, nhưng ghi **cảnh báo** vào Todolist.
2. Ghi Todolist (tab sheetId `1882124751`, dòng trống đầu tiên sau dòng cuối có dữ liệu ở cột B–E – đọc lại ngay trước khi ghi vì session 1.2 cũng ghi vào tab này): Ngày = hôm nay · Mô tả = `[1.1] HĐTV + CKBM – [Họ tên] – [Phòng] – Mã NV [..] – [link thư mục] – Cần HCNS điền: số CCCD, STK ngân hàng` (+ cảnh báo nếu có) · Trạng thái = `AI đã làm - chờ kiểm tra`.
3. Cập nhật `../nhat-ky/1.1-theo-doi.md` và nhật ký ngày `../nhat-ky/YYYY-MM-DD.md`.

## 6. Trường hợp NLĐ chưa đăng ký tài khoản HRM
1. Bỏ qua bước HRM, ghi trạng thái `CHỜ HRM` trong file theo dõi.
2. Vẫn tạo bộ HĐ như thường, phần mã NV trong số văn bản để trống.
3. Ghi Todolist: `[1.1] [Họ tên] chưa đăng ký tài khoản HRM – báo NLĐ đăng ký` + link thư mục, trạng thái `AI đã làm - chờ kiểm tra`.
4. Các lần quét sau thử lại. Khi thành công: hoàn tất mục 2, điền mã NV vào số văn bản của 2 file, ghi Todolist dòng mới "đã bổ sung HRM", chuyển trạng thái `XONG`.

## 6a. Ghi chú kỹ thuật (rút ra từ lần chạy thử 19/11/2026)
- **HRM – hộp "Thêm mới nhân sự"** (nút "Thêm" trên trang danh sách): Số điện thoại* → hệ thống tự điền **Mã người dùng*** nếu NLĐ đã đăng ký; trống = chưa đăng ký. Các ô khác: Tên*, Email cá nhân*, Phòng ban*, Vị trí, Cấp bậc (JL01–JL12), Kiểu NV* (`Nhân sự thử việc`), Hình thức làm việc*, **CCCD*** (bắt buộc), Giới tính*, Ngày sinh, Ngày bắt đầu làm việc.
- **Ô CCCD bắt buộc** (tạm thời, đến khi IT gỡ bắt buộc – người dùng chốt 19/11/2026): sau khi tra SĐT, nếu ô CCCD không tự điền → gõ **ký tự giữ chỗ `.`** (không phải số CCCD) để tạo được hồ sơ; hệ thống không nhận `.` thì thử `0`. Todolist ghi rõ "CCCD trên HRM đang là ký tự giữ chỗ – HCNS thay bằng số thật".
  - Vẫn không tạo được (VD hệ thống báo trùng CCCD hoặc đòi đủ 12 số) → không bấm lại, ghi `CHỜ HCNS` + Todolist "HCNS nhập CCCD và bấm tạo trên HRM cho [tên]"; lần quét sau thấy đã có trên HRM thì làm tiếp (lấy mã NV, Hợp đồng điện tử, Lương, điền mã vào HĐ).
  - Khi IT đã gỡ bắt buộc: bỏ trống ô CCCD, xóa mục này.
- **Rút ra từ lần chạy thử 2 (19/11/2026, tài khoản HRM mẫu)**:
  - Trước khi thêm, kiểm tra trùng: duyệt các trang danh sách `/hrm/employees?status=active&page=N` và tìm SĐT/họ tên **trong nội dung trang** (find/get_page_text). **Không lọc bằng SĐT hay tên trên URL**, kể cả gõ vào ô lọc của trang (ô lọc cũng đưa dữ liệu lên URL) – quy tắc 6.4. (Lần chạy thử 19/11/2026 đã lỡ lọc theo SĐT trên URL – đã bỏ cách này.)
  - Nút "Thêm", "Tạo mới lương", "Tạo mới HĐ" đôi khi phải bấm 2 lần hộp mới mở; kiểm tra hộp đã hiện trước khi gõ.
  - Ô ngày trên HRM và Google Form nhập theo thứ tự **ngày-tháng-năm** (gõ `01122026` = 01/12/2026); gõ xong đọc lại giá trị (yyyy-mm-dd) để chắc.
  - Tra SĐT xong HRM tự điền Tên theo tài khoản đăng ký → **ghi đè bằng họ tên trên Form**; nếu khác thì báo điểm lệch vào Todolist.
  - Sau khi tạo: màn hình báo "Hồ sơ nhân viên đã được tạo", dòng mới hiện mã NV (VD `BLA-0163`).
  - **Tạo mới HĐ** (Hợp đồng điện tử): Mã HĐ = số HĐ trên file HĐTV; Ngày ký = ngày bắt đầu; Trạng thái = `Chờ ký / Chờ duyệt`; Loại HĐ = `Thử việc`; Thời hạn = `2 tháng`; Ngày bắt đầu/kết thúc; Link scan hợp đồng = link Google Doc HĐTV; Số ngày phép/giờ làm giữ mặc định; Lương cơ bản = **lương chính thức**; KPI, phụ cấp = 0; Lương đóng BH = mức BH; **Tổng thu nhập thử việc**: HRM tự điền 85% → xóa hết rồi gõ mức lương thử việc trên Form; Ghi chú = "AI tạo tự động (luồng 1.1). Pháp nhân: … Thư mục hồ sơ: <link>". → Vì cần link HĐ nên **tạo file trên Drive trước, rồi mới tạo HĐ điện tử**.
  - **Lỗi ô lương (phát hiện 20/11/2026, HĐ thử nghiệm MS 140 hiện Lương cơ bản 0, BHXH 0)**: các ô lương hiển thị không tự đồng bộ sang ô ẩn của form `hrm-working-contract-store`. Trước khi bấm "Thêm mới" phải gán trực tiếp số (không dấu chấm) cho ô ẩn: `salary_basic` = lương chính thức · `salary_kpi` = 0 · `allowance_total` = 0 · `salary_insurance` = mức BH · `salary_official` = lương chính thức · `salary_probation` = lương thử việc. Tạo xong mở `/hrm-working-contract/<id>` kiểm tra; "Lương đóng BHXH" có thể vẫn hiện 0 (HRM chưa nhận trường này) → ghi Todolist nhờ HCNS kiểm tra. (Cách xử lý theo SOP 1.2 mục 6.)
  - **Tạo mới lương** (đã có quyền – tạo thành công 27/11/2026): link "Tạo mới lương" trên dòng nhân sự → form `hrm-salary-store`: gán ô ẩn `salary_basic` = lương thử việc · `salary_kpi` = 0 · `salary_insurance` = mức BH · `allowance_total` = 0 (kèm ô hiển thị), `effective_from` = ngày bắt đầu, `reason` = số HĐ + ghi chú → "Thêm mới" → hộp "Thêm mới lương thành công". Kiểm tra cột Lương trên dòng nhân sự (Mã số, Hiệu lực từ). Nếu bị báo không có quyền → ghi Todolist cho HCNS.
  - **Sửa HĐ điện tử** (`/hrm-working-contract/<id>/edit`, nút "Lưu thay đổi hợp đồng", lưu AJAX): ô lương đóng BH ở form sửa tên `insurance_salary` (form tạo: `salary_insurance`); gửi 5.400.000 vẫn hiện 0 → lỗi HRM, báo HCNS/IT.
  - **Hồ sơ cá nhân** (`/hrm-employees/<id>/profile`, các mục mở/đóng, mỗi mục có nút Chỉnh sửa → Cập nhật): mục "Thông tin chi tiết" điền SĐT liên hệ khẩn cấp, Địa chỉ (= thường trú), Ngày cấp/Nơi cấp CCCD; **Tình trạng hôn nhân** (bắt buộc trên HRM) lấy từ cột `Tình trạng hôn nhân` của Form (thêm 20/11/2026, cùng 5 lựa chọn với HRM: Độc thân / Đã kết hôn / Ly hôn / Góa / Khác); phản hồi cũ chưa có cột này → chọn `Khác` và ghi Todolist nhờ HCNS sửa. Mục "Trình độ học vấn" điền theo Form. Mục "MST, Tài khoản ngân hàng & BHXH" **không làm** (thông tin mật, MST bắt buộc).
  - Ô tải ảnh CCCD trên Google Form mở hộp chọn file của Google, Claude không thao tác được → không tự gửi Form thay NLĐ; dữ liệu thử nghiệm thì ghi thẳng vào Sheet phản hồi.
- **Rút ra từ chạy thử nhánh HĐDV (20/11/2026)**:
  - Kiểm tra trùng nhanh: trên trang danh sách chạy JS `fetch('/hrm/employees?status=active&page='+p)` lần lượt từng trang, tìm SĐT/mã NV trong nội dung (không đưa dữ liệu cá nhân lên URL).
  - Nhân sự **đã có** trên HRM → không thêm mới; đổi Kiểu NV bằng biểu tượng "Cập nhật trạng thái Nhân viên" (link có `data-type`) ở cột Thao tác → hộp có Trạng thái / Kiểu nhân viên / Hình thức làm việc → Cập nhật.
  - Tạo HĐ điện tử: gán thẳng giá trị cho các ô trong form `hrm-working-contract-store` bằng JS (kể cả ô lương ẩn), gán lại ô lương ẩn ngay trước khi bấm "Thêm mới"; kiểm tra lại bằng `/hrm-working-contract/<id>` – HĐ MS 142 lưu đúng lương cơ bản.
  - HĐDV: thời hạn trong mẫu dạng "từ ngày …… đến hết ngày ……." → regex `Thời hạn Hợp đồng: từ ngày [^ ]+ đến hết ngày [^ .]+`.
- Tên phòng ban trên HRM: Phòng Hành Chính Nhân Sự · Phòng Hợp Tác Quốc Tế · Phòng Công Tác Học Viên · Phòng Tài Chính - Kế Toán · Phòng Marketing và Truyền Thông · Phòng Tuyển Sinh · Phòng Đào Tạo · Trợ lý Ban Lãnh Đạo · BLA_Tech · Chi nhánh Hồ Chí Minh · Chi nhánh Đà Nẵng.
- **Nhân bản mẫu sang Google Docs**: tải file mẫu (`download_file_content`), chép vào `mau/mau-goc/` (BLA đã có sẵn `BLA-HDTV.docx`, `BLA-CKBM.docx`; Academy: tải rồi lưu `ACA-HDTV.docx`, `ACA-CKBM.docx`), rồi `create_file` với `contentMimeType` docx và tham chiếu `sha256:<hash>:<đường dẫn>` → Drive tự chuyển sang Google Docs. Mẫu gốc trên Drive đổi (modifiedTime mới) → tải lại.
- **Điền Google Docs**: ô bảng trống → `insertText` theo index (đọc cấu trúc bằng `read_doc`, chèn từ index lớn về nhỏ). Chỗ có dấu "…" → `replaceAllText` dạng **regex** (dùng `.` hoặc `[^\n]+` thay cho "…"; tìm chữ nguyên văn có "…" không khớp). Đọc lại file bằng `read_file_content` để kiểm tra.
- Todolist: dòng trống đầu tiên = dòng sau dòng cuối có dữ liệu ở cột B–E (lần chạy thử ghi ở dòng 811).

## 7. Giới hạn cố định
- Claude **không gõ** số CCCD/hộ chiếu, MST cá nhân, số sổ BHXH, số tài khoản ngân hàng vào HRM hay vào HĐ (giới hạn an toàn của Claude, áp dụng kể cả khi người dùng cho phép). Để trống và nhắc HCNS điền trong Todolist.
- Không xóa nhân sự/hồ sơ. Không sửa mẫu gốc. Không đưa dữ liệu nhân sự ra ngoài, không ghi vào URL.
