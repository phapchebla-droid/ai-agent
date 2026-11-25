# SOP 3.1 · SOẠN & BAN HÀNH VĂN BẢN ĐIỀU HÀNH (TB / QĐ / CV – BĐH)

Trạng thái: **ĐÃ CHỐT LUỒNG – chờ chạy thử văn bản đầu tiên** (khung 21/11/2026; người dùng chốt luồng thực tế 21/11/2026). Căn cứ: QT.HCNS.PC.11 – đọc bản gốc khi cần đối chiếu thể thức.

## 0. Nguồn & thư mục (đã xác minh 21/11/2026)
| Việc | Nơi | ID |
|---|---|---|
| Soạn bản Word/Google Doc | Thư mục soạn thảo của Pháp chế (chia theo chủ đề) | `1O4w3eN4cuzDi2rFa2o7rObPiKMjwYHy2` |
| ↳ Chương trình ưu đãi, học bổng, KTX, thi đua tuyển sinh | "Thông báo chương trình học" | `1CtWaJtfaQ1mY9CN9qoJmZ5W1fMWWGBtX` |
| ↳ TB/QĐ chung (nghỉ lễ, nhân sự, công tác, quy định) | "Quy trinh làm việc" | `1sjLMif7NpdiNXO5WDbl6eyti5AYIyDFB` |
| ↳ QĐ giá SPDV, chính sách giá & hoa hồng | (thư mục con) | `16N6tkhisK5wAvH0wH23PPIuAF_vt-TLJ` |
| Lưu bản scan PDF | "03. NĂM 2026" trong thư mục scan | `1YYR1tFpMbg1KMndbXj9e6eetQRrnVn6Q` |
| Sổ theo dõi | 00C – tab "Hệ thống quy định, thông báo" | `1m2YQ62J50BTCUyPP0SSyTeB3ptZYVfBdZHZCFulhDTs` |
| Phân phối | HRM › Tin tức/Thông báo | https://tiengduc.bla.vn/hrm/news |

> Thư mục `1rO5MBCb…` (bản soạn thảo cũ của HCNS) chỉ có văn bản đến 2025 → không dùng để soạn mới.

## 1. Số hiệu
| Giai đoạn | Cách làm |
|---|---|
| **Đến hết 31/12/2026** | Một dãy STT **chung** cho TB, QĐ, CV; **người dùng cấp số** từ sổ công văn ngoài. Claude để trống số trên dự thảo (`    /2026/TB-BĐH`), **không tự lấy số**, chỉ ghi số khi người dùng báo. |
| **Từ 01/01/2027** | Claude phụ trách cấp & theo dõi số. Thiết kế sổ số (Sheet hay tab trong 00C, bắt đầu lại từ 01) → chốt với người dùng trong tháng 12/2026. |
| Mã dạng mới `BĐH-QĐ-01`, `VP-HCNS-QĐ-01` | Chỉ dùng cho văn bản quy định/quy chế khi người dùng yêu cầu; chờ QĐ.HCNS.PC.02. |

Mẫu ký hiệu: `[STT]/2026/TB-BĐH` · `[STT]/2026/QĐ-BĐH` · `[STT]/2026/CV-BĐH` (viết hoa, có dấu). Tên file Doc: `[STT]/2026/TB-BĐH V/v [trích yếu]`. Tên file scan: `[STT].26 [trích yếu rút gọn].pdf`.

## 2. Luồng công việc (6 bước)
| Bước | Ai | Việc | Điểm dừng xác nhận |
|---|---|---|---|
| 1. Yêu cầu | BLĐ → người dùng → Claude | Người dùng nhắn yêu cầu trong phiên 3.1 (nội dung, đối tượng, thời gian áp dụng, mức ưu đãi) | — |
| 2. Soạn | Claude | Soạn theo **mục 2a** (có mẫu thì dùng làm khung, không có hoặc chưa phù hợp thì tự soạn) → tạo Doc trong đúng thư mục con → để trống số | **Xin đồng ý trước khi tạo file trên Drive** |
| 3. Kiểm tra & ghi danh mục | Claude | Đối chiếu 00C/HRM: văn bản cùng chủ đề còn hiệu lực, trùng/mâu thuẫn, ngày tháng, chính tả, số liệu, nơi nhận → thêm dòng vào bảng trao đổi (mục 2b), trạng thái "Chờ duyệt" + link Doc | Báo kết quả kèm link dự thảo |
| 4. Duyệt, ký, scan | Người dùng | Trình BLĐ duyệt, ghi số từ sổ ngoài vào dòng, ký, scan, up PDF vào "03. NĂM 2026" và gắn link vào cột "Link bản scan" | Người dùng nhắn "đã có scan" (hoặc đổi trạng thái) |
| 5. Phân phối HRM | Claude | Lấy PDF từ link trên dòng → tạo bài **Nháp** trên HRM (tiêu đề, kiểu bài, đối tượng nhận theo mục 3, độ ưu tiên, đính kèm PDF) | **Người dùng xem nháp, đồng ý rõ ràng mới xuất bản & gửi thông báo** |
| 6. Hoàn tất | Claude | Điền ngày đăng + MS bài HRM, hoàn thiện các cột còn trống (hiệu lực, hết hạn, tóm tắt), trạng thái "Hoàn tất" | Ghi theo nội dung đã trình |

### 2a. Nguyên tắc soạn (người dùng chốt 21/11/2026)
Mẫu chỉ là khung thể thức; nội dung phải soạn bằng hiểu biết thực tế, vì nhiều văn bản chưa có mẫu hoặc mẫu cũ không còn phù hợp. Căn cứ:
1. **Tri thức công ty**: `set-up-agent/docs/BLA_KNOWLEDGE_BASE.md`, bản đồ tri thức PC & HCNS, skill `bla-corporate-gov`; các văn bản **còn hiệu lực** trong 00C (chính sách giá & hoa hồng, cơ chế KTX, học bổng…) để không mâu thuẫn và ghi rõ "thay thế/bổ sung văn bản số…".
2. **Thị trường & sản phẩm**: chương trình tiếng Đức, du học nghề, chuyển đổi bằng, mùa khai giảng, thông lệ ưu đãi tuyển sinh. Đề xuất cách diễn đạt rõ điều kiện, thời hạn, đối tượng, cách tính.
3. **Pháp lý**: văn bản khuyến mại/giảm giá rà theo quy định về khuyến mại (Luật Thương mại 2005, Nghị định 81/2018/NĐ-CP – *chưa xác minh bản hiện hành*); văn bản lao động theo BLLĐ 2019; nêu rủi ro nếu có.
4. Thể thức: header theo **[Mẫu] Thông báo** (`1htw92B0T8zItogizDQMqfP66xUIpzYyxz3HvC4Gm1Kk`); QĐ có căn cứ – điều khoản – hiệu lực – nơi nhận.
5. Chỗ chưa rõ (mức ưu đãi, thời hạn, đối tượng) → đánh dấu **[cần chị xác nhận]** trong dự thảo, không tự đặt số liệu kinh doanh.

### 2b. Bảng trao đổi = sổ 00C (người dùng duyệt & đã thêm cột 21/11/2026)
Dùng ngay tab "Hệ thống quy định, thông báo" (mỗi văn bản một dòng, từ khi soạn tới khi hoàn tất). Cột xếp theo trình tự xử lý (người dùng duyệt & đã sắp lại 21/11/2026):
| Cột | Tên | Bước | Ai điền |
|---|---|---|---|
| A | STT | — | — |
| B | Trạng thái xử lý (Đang soạn · Chờ duyệt · Đã ký – chờ HRM · Hoàn tất · Hủy) | Cả quá trình | Claude; người dùng đổi sang "Đã ký – chờ HRM" khi gắn scan |
| C | [Mã số] Tên thông báo | 1–2 | Claude (số để trống; người dùng ghi số khi ký) |
| D | Phân loại | 2 | Claude |
| E | Đối tượng áp dụng | 2 | Claude |
| F | Tóm tắt nội dung | 2 | Claude |
| G | Link bản soạn thảo | 2 | Claude |
| H | Trao đổi xử lý | 3 | Hai bên |
| I | Ngày ban hành | 4 | Người dùng/Claude |
| J | Ngày hiệu lực | 4 | Claude |
| K | Ngày hết hạn | 4 | Claude |
| L | Link bản scan | 4 | Người dùng (smart chip PDF) |
| M | Thông báo HRM (ngày đăng · MS bài) | 5 | Claude |
| N | Ghi chú | — | Hai bên |
Kỹ thuật: tab sheetId `971691359`; B3:B952 có danh sách chọn + tô màu theo trạng thái; D, E giữ danh sách chọn cũ. Hàng 1: tiêu đề gộp C1:N1. Dòng mới: thêm ngay dưới dòng cuối có dữ liệu; đọc link scan ở cột L qua `chipRuns`. Đọc/ghi luôn theo **tên cột ở hàng 2**, không giả định vị trí.
Claude không theo dõi bảng theo thời gian thực: làm bước tiếp theo khi người dùng nhắn trong phiên này (tùy chọn sau: lượt kiểm tra tự động hằng ngày các dòng "Đã ký – chờ HRM").

## 3. Thư viện văn bản lặp lại (mẫu = bản gần nhất cùng loại)
| Loại | Chu kỳ | Thư mục | Biến cần đổi | Đối tượng HRM thường gửi |
|---|---|---|---|---|
| Học bổng ưu đãi "X90" | Hằng tháng | Thông báo chương trình học | Tháng, thời gian áp dụng, mức/điều kiện | Khối tuyển sinh + các phòng liên quan (theo bài gần nhất) |
| "Khởi đầu hành trình Đức – BLA Start" | Hằng tháng | Thông báo chương trình học | Tháng, khóa khai giảng | Toàn công ty |
| Ưu đãi KTX theo khóa | Theo khóa khai giảng | Thông báo chương trình học | Mã khóa, ngày khai giảng | Khối tuyển sinh, CTHV, TCKT |
| Gia hạn hỗ trợ KTX & suất ăn – dự án Lái tàu | Hằng tháng | Thông báo chương trình học | Tháng | Theo bài gần nhất |
| Thi đua tuyển sinh khóa Online | Hằng tháng | Thông báo chương trình học | Tháng, chỉ tiêu, giải thưởng | Khối tuyển sinh, MKT, TCKT |
| Thưởng nóng tuyển sinh theo khóa | Theo khóa | Thông báo chương trình học | Mã khóa, mức thưởng | Khối tuyển sinh |
| QĐ bổ sung danh mục & cơ cấu giá SPDV / chính sách giá – hoa hồng | Khi phát sinh | thư mục giá SPDV | Sản phẩm, giá, hiệu lực | Theo bài gần nhất |
| Lịch nghỉ lễ | Theo lễ | Quy trinh làm việc | Ngày nghỉ, làm bù | Toàn công ty |
| QĐ chấm dứt HĐLĐ do hết hạn | Khi phát sinh | Quy trinh làm việc | (liên thông P1 – session 1.2) | Nhân sự liên quan |

### 3a. Thư mục "00. Mẫu thường xuyên dùng" (tạo 21/11/2026) – `1nhShtREGu0IQXsS9_J3QUI2q89XltQ3e`
Mẫu sạch: ngày, số hiệu, tháng, mã khóa/mã số lớp, số suất, mức ưu đãi/thưởng đã thay bằng `[ ]`. **Giữ nguyên** bảng giá niêm yết, lộ trình thanh toán, điều khoản chung, căn cứ → khi dùng phải đối chiếu QĐ giá & chính sách đang hiệu lực.
| # | Mẫu | Doc ID | Nguồn |
|---|---|---|---|
| 00 | Header chung TB/QĐ BĐH | `1MbV6DfME4vRjP1PZp-aSEsIG-a1SlFliPBj5_e_WyAg` | [Mẫu] Thông báo |
| 01 | TB Học bổng ưu đãi (X90) tháng [ ] – tab 2 là mẫu "Bổ sung" | `1WdmXoxpcuuEIVGsn5mk_OOWPuOmwL9wCFmsdzTCzfh4` | 265/2026 |
| 02 | TB BLA Start tháng [ ] | `1ljWO-p8qxD_m_BBzyX_alTbZg8H8nVz80V-6ehTQDrM` | 249/2026 |
| 03 | TB Ưu đãi KTX theo khóa | `1P6CPAx3oCxXJLZ33wlbjz-i1hhj0vXv1luSt4x_ddeA` | 248/2026 |
| 04 | TB Gia hạn hỗ trợ KTX & suất ăn – Lái tàu (giữ căn cứ TB 221025/TB-BLA) | `1igLRB17IQB8z19UxnYLPsZ_VSlN_kdNW5vcaUA9XRYY` | 266/2026 (KTX) |
| 05 | TB Thi đua tuyển sinh khóa Online tháng [ ] | `1dLTvS3FOsUaIwU1doaaGNZLZMq_3eC5_Q0_pRa4neg4` | 266/2026 (thi đua) |
| 06 | TB Thưởng nóng tuyển sinh theo khóa | `1Gk-xtx8_qEKyDjVhX1uL64vJNDYo1LmQdIrSIjfLjMs` | 269/2026 |
| 07 | QĐ Bổ sung danh mục & cơ cấu giá SPDV (có PL offline/online) | `19ogUerhcvjaq6ezm_YbntERAI4-ejyLnoL1FL_QLvJo` | 246/2026 |
| 08 | TB Lịch nghỉ lễ | `1fCmpxvfpygGKrg4TL3Blm8MsCovV7pKGEBkiHXxUsvc` | 271/2026 |
| 09 | TB Gia hạn ưu đãi kèm thưởng nóng các lớp khai giảng | `17E4o4MoGj7PWlJqF7ibMn9QnsVfUUMQslwsOWf4XMPg` | 204/2026 |
| 10 | QĐ Ban hành khung phí dịch vụ – thù lao (có phụ lục + QĐ sửa đổi) | `1TK1eh7K_Y3nUKyluZPSt08Gl85e7dl5jhZ-pA2W3gho` | 260, 261.1/2026 |
| 11 | TB Chính sách kích thích tuyển dụng – thưởng giới thiệu ứng viên | (lập mẫu sạch sau khi bản 11/2026 được ký) | 25/2026 → bản mới 11/2026 |
Khi dùng: sao chép mẫu sang đúng thư mục con → điền `[ ]` → soạn phần nội dung mới theo mục 2a. Khi BLĐ đổi khung chương trình → cập nhật mẫu tương ứng. Lưu ý: tên file Drive gốc đôi khi không khớp nội dung (VD: file "269 … thi đua online" thực là thưởng nóng) → luôn đọc nội dung, không dựa vào tên file.

## 4. Phân loại & đối tượng trong 00C (giữ đúng chữ)
Phân loại: Nội quy, cơ chế, chế độ nhân viên · Hoạt động tư vấn, CSKH · Hoạt động đào tạo & giảng dạy, TVDH · Hoạt động đối tác, hợp tác · Hoạt động KTX · Hoạt động thi TELC · Hoạt động thu chi tài chính · Hoạt động truyền thông, MKT.
Đối tượng: Toàn thể cán bộ nhân viên · Bộ phận tuyển sinh · Phòng ban cụ thể · Học viên · Đối tác.

## 5. Việc tồn đọng & tối ưu (chờ người dùng chốt)
1. Tồn đọng 00C (số 239 → ~271) và scan sau số 238: **người dùng tự cập nhật** (chốt 21/11/2026). Các số trùng (230, 266) giữ nguyên, không xử lý.
2. Văn bản lương/nhân sự **cá nhân**: đề xuất ghi vào khu vực riêng có phân quyền, không vào danh mục chung.
3. Nhắc định kỳ (đề xuất, chưa bật): khoảng ngày 25 hằng tháng, Claude liệt kê các văn bản hằng tháng cần ra cho tháng sau và soạn sẵn bản nháp chờ ý tưởng BLĐ.

## 6. Ghi chú kỹ thuật
- HRM: bài viết có Đối tượng (Toàn công ty / Phòng ban / Nhân viên), Kiểu (Tin tức / Thông báo / Chính sách, quy chế / Sự kiện), Trạng thái (Nháp / Đã xuất bản / Đã lưu trữ), Độ ưu tiên, nút Gửi thông báo. "MS" trên HRM là mã bài đăng, **không phải** số văn bản.
- **Tạo bài HRM** (chạy thử 1, 21/11/2026): trang `/hrm-new-create`; điền bằng JS sau khi trang tải xong: `title`, `type`=announcement, `status`=draft|published, `priority`=High, `issued_at`, `audience_type`=Company|Department|Employee, `notify_status`=False|True, `short_description`, nội dung `CKEDITOR.instances.inputContent.setData(html)`. Người nhận Nhân viên: tích `employees[]` (value = phần số mã NV) rồi bấm "Xong" → ô ẩn `employee_ids` thành `;id;` và hiện "Bạn đã chọn N nhân viên". Ảnh bìa bắt buộc: fetch `/images/logo-bla.png` → gán vào `photo` qua DataTransfer. Bấm "Thêm bài viết" → hộp "Thành công"; bài mới ở đầu `/hrm/news` (MS + link `/hrm-news/<MS>/edit`).
- Nội dung bài HRM cho TB: chép toàn văn TB (bảng HTML) + dòng "Chi tiết Thông báo xem Tại đây" gắn link bản scan (như bài MS 304).
- Bài nháp để chị duyệt: tiêu đề tiền tố `[NHÁP – CHỜ DUYỆT]`, Nháp, Không gửi, Đối tượng = chỉ người dùng. Khi xuất bản: sửa chính bài đó (bỏ tiền tố, gắn scan, đổi đối tượng, Gửi thông báo) – chỉ khi được đồng ý.
- **Soạn từ văn bản cũ cùng loại** (chạy 25/11/2026): sao chép Doc cũ để giữ letterhead, font Times New Roman 12.5, bảng; đọc `read_doc` (kết quả lớn → lưu file, dùng PowerShell `ConvertFrom-Json` lập dàn ý start/end từng đoạn – máy không có Python); một lượt `update_doc` có `requiredRevisionId`: xóa từ dưới lên (đoạn cuối ô bảng: xóa [end đoạn trước −1, end −1]), chèn đoạn mới tại cuối đoạn trước (end−1) rồi đặt đậm/bullet theo vị trí tính sẵn; lượt sau dùng `replaceAllText` sửa câu chữ (thay phần không in đậm để khỏi lan định dạng).
- **Soạn văn bản mới nhiều mục** (TB BIW, 25/11/2026): chép văn bản cùng loại làm khung (VD TB triển khai dự án 220/2026), xóa thân bài giữ header + "Trân trọng" + bảng nơi nhận; chèn thân bài một lượt từ file dữ liệu đoạn văn (loại H/S/B/N/P) → script tính vị trí, đặt font Times New Roman 12, căn đều, in đậm tiêu đề/nhãn, bullet; lượt sau chèn bảng tại cuối đoạn neo (ô (r,c) = i+4+r(2C+1)+2c, điền từ ô cuối lên). Script PowerShell: biến không phân biệt hoa thường (`$p`/`$P`, `$r`/`$R` trùng nhau) → đặt tên khác hẳn; file dữ liệu dùng mảng đối tượng `{k,t}`.
- Văn bản tuyển sinh đơn hàng/chương trình (người dùng chốt 25/11/2026): chỉ thể hiện **tiền, ưu đãi, chính sách** làm căn cứ áp dụng; thông tin đơn hàng ghi ngắn, chi tiết đưa vào **Phụ lục** (thường là ảnh tờ thông tin – người dùng tự chèn ảnh); không ghi tiến độ, phân công (ghi "các phòng ban thực hiện theo chức năng, nhiệm vụ"); phí ghi "theo chính sách … tiêu chuẩn hiện hành", không ghi mã/số tiền khi không đổi; không ghi thời điểm trao quà nếu BLĐ không nêu.
- Văn bản tuyển sinh đơn hàng có chính sách riêng: tách rõ **chính sách cho học viên BLA tuyển trực tiếp** và **chính sách cho đối tác** (giá bán đơn hàng ≠ phí học viên trả); thời điểm xét quà của HV đã ký HĐ TVDH = lúc đăng ký đơn với HTQT, HV mới = lúc hoàn thành phí ghi danh và đăng ký đơn với HTQT (người dùng chốt 25/11/2026).
- Người dùng có thể tự sửa thẳng trên Doc giữa các lượt → mỗi lần sửa tiếp phải đọc lại bản mới (revision mới), giữ nguyên phần người dùng đã sửa.
- Văn bản chính sách thưởng (VD thưởng giới thiệu ứng viên) chỉ ghi cơ chế thưởng, phạm vi, thời gian áp dụng và ngoại lệ; **không** đưa vị trí/tiêu chí tuyển dụng (thuộc chương trình tuyển dụng riêng của HCNS) – người dùng chốt 25/11/2026.
- Tiêu chí tuyển dụng (khi cần soạn văn bản tuyển dụng): lấy từ văn bản nội bộ còn hiệu lực (VD TB 203/2026 điều kiện GV) trước, tin tuyển dụng công khai sau; tin cũ mâu thuẫn văn bản nội bộ → theo văn bản nội bộ và báo người dùng.
- Ngày trong tuần: tính kỹ (VD 01/01/2027 = Thứ Sáu).
- **Lịch làm việc/học (người dùng chốt 21/11/2026)**: CBNV làm buổi sáng Thứ Bảy; học viên không học Thứ Bảy. Khi lễ rơi vào Thứ Sáu mà công ty cho nghỉ luôn sáng Thứ Bảy → buổi đó tính vào phép năm, ai hết phép thì nghỉ không lương; không áp dụng cho NV part-time/HĐDV. Học viên: đi học lại Thứ Hai.
