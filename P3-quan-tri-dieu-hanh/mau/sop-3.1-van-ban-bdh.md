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
Dùng ngay tab "Hệ thống quy định, thông báo" (mỗi văn bản một dòng, từ khi soạn tới khi hoàn tất). Giữ nguyên cột A–J; thêm cột K–N:
| Cột | Tên | Ai điền |
|---|---|---|
| K | Trạng thái xử lý (danh sách: Đang soạn · Chờ duyệt · Đã ký – chờ HRM · Hoàn tất · Hủy) | Claude; người dùng đổi sang "Đã ký – chờ HRM" khi gắn scan |
| L | Link bản soạn thảo | Claude |
| M | Thông báo HRM (ngày đăng · MS bài) | Claude |
| N | Trao đổi xử lý | Hai bên |
Kỹ thuật: tab sheetId `971691359`; K3:K952 có danh sách chọn + tô màu theo trạng thái; tiêu đề K–N chép định dạng cột J. Dòng mới: thêm ngay dưới dòng cuối có dữ liệu, cột I nhận smart chip PDF (đọc link qua `chipRuns`).
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

Header chung = **[Mẫu] Thông báo**. Mẫu riêng = chính các văn bản lặp lại ở trên. Đề xuất (chờ duyệt): lập thư mục "00. Mẫu thường xuyên dùng" trong thư mục soạn thảo, mỗi loại một bản mẫu sạch (biến để dạng [ ]), lập dần khi chạy từng loại.

## 4. Phân loại & đối tượng trong 00C (giữ đúng chữ)
Phân loại: Nội quy, cơ chế, chế độ nhân viên · Hoạt động tư vấn, CSKH · Hoạt động đào tạo & giảng dạy, TVDH · Hoạt động đối tác, hợp tác · Hoạt động KTX · Hoạt động thi TELC · Hoạt động thu chi tài chính · Hoạt động truyền thông, MKT.
Đối tượng: Toàn thể cán bộ nhân viên · Bộ phận tuyển sinh · Phòng ban cụ thể · Học viên · Đối tác.

## 5. Việc tồn đọng & tối ưu (chờ người dùng chốt)
1. Tồn đọng 00C (số 239 → ~271) và scan sau số 238: **người dùng tự cập nhật** (chốt 21/11/2026). Các số trùng (230, 266) giữ nguyên, không xử lý.
2. Văn bản lương/nhân sự **cá nhân**: đề xuất ghi vào khu vực riêng có phân quyền, không vào danh mục chung.
3. Nhắc định kỳ (đề xuất, chưa bật): khoảng ngày 25 hằng tháng, Claude liệt kê các văn bản hằng tháng cần ra cho tháng sau và soạn sẵn bản nháp chờ ý tưởng BLĐ.

## 6. Ghi chú kỹ thuật
- HRM: bài viết có Đối tượng (Toàn công ty / Phòng ban / Nhân viên), Kiểu (Tin tức / Thông báo / Chính sách, quy chế / Sự kiện), Trạng thái (Nháp / Đã xuất bản / Đã lưu trữ), Độ ưu tiên, nút Gửi thông báo. "MS" trên HRM là mã bài đăng, **không phải** số văn bản.
- *(Bổ sung sau lần chạy thử.)*
