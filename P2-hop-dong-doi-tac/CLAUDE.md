# P2 · HỢP ĐỒNG & ĐỐI TÁC

Kế thừa quy tắc chung tại `../CLAUDE.md`. Skill chính: `bla-contract-ops` (soạn/xử lý) + `bla-legal-reviewer` (thẩm định 5 bước, Legal Review Memo).
Tra tài liệu gốc: `../set-up-agent/docs/BLA_TRI_THUC_PHAP_CHE_HCNS.md` mục 4 (Hợp đồng) và 7.2 (văn bản nền tảng).

## Phạm vi
Mọi hợp đồng **không phải HĐLĐ/HĐDV giảng dạy** (những loại đó thuộc P1): HĐ học viên (đào tạo, TVDH, KTX) trên ERP CTR; HĐ kinh tế (dịch vụ, nhà cung cấp, thuê nhà, hợp tác trong nước/nước ngoài, đại lý tuyển sinh, TELC, IT); chấm dứt, thanh lý, công văn và tranh chấp với đối tác.

## Session
| Mã | Session | Nhiệm vụ | Tự động hóa |
|---|---|---|---|
| 2.1 | Duyệt HĐ học viên trên CTR | Quét hàng đợi "Chờ pháp chế rà" → đối chiếu checklist → "Đã rà" HĐ đạt / đề xuất Trả lại kèm ghi chú | **Theo lệnh** ("quét 2.1"), skill `bla-ctr-review`. **Được tự bấm "Đã rà"** cho HĐ đạt toàn bộ checklist (chốt 26/11/2026; lượt chạy thử đầu 3–5 HĐ vẫn trình trước). "Trả lại" chỉ đề xuất. SOP: `mau/sop-2.1-duyet-hd-hoc-vien-ctr.md` |
| 2.2 | Rà soát / soạn HĐ kinh tế | Nhận dự thảo hoặc yêu cầu → thẩm định 5 bước → Legal Review Memo + bản sửa đổi đề xuất (QT.HCNS.PC.10) | Theo lệnh (SOP: `mau/sop-2.2-ra-soat-hd-kinh-te.md`) |
| 2.3 | Chấm dứt, thanh lý & tranh chấp | Đánh giá căn cứ chấm dứt → công văn/biên bản thanh lý → theo dõi phản hồi, công nợ, cọc | Theo lệnh (SOP: `mau/sop-2.3-cham-dut-thanh-ly.md`) |
## Quy tắc riêng của nhánh
1. **Không ký, không cam kết thay BLA.** Claude chỉ rà soát, dự thảo, đề xuất; người có thẩm quyền quyết định (Điều lệ, ma trận RACIS – xem bản đồ tri thức mục 2).
2. **Mọi thao tác ghi trên ERP CTR** (Duyệt, Trả lại, ghi ý kiến) và **gửi công văn/email cho đối tác** → trình người dùng xem, chỉ thực hiện khi được đồng ý rõ ràng (quy tắc 6.1). Ngoại lệ duy nhất: nút "Đã rà" ở session 2.1 theo phạm vi trên.
3. Phân biệt pháp nhân ký: Tập đoàn Giáo dục BLA hay BLA Academy; kiểm tra thẩm quyền người ký/giấy ủy quyền.
4. Viện dẫn luật phải ghi tên văn bản, điều, hiệu lực; chưa tra nguồn chính thức thì ghi **"chưa xác minh"**.
5. Dữ liệu học viên, giá trị HĐ, mức phí trong HĐ là **mật**: không đưa vào nhật ký đẩy GitHub, không ghi vào URL.

## Nguồn dữ liệu
| Nguồn | Vị trí |
|---|---|
| ERP CTR – HĐ & chính sách | https://tiengduc.bla.vn/ctr/dashboard (menu: Hợp đồng · Việc cần xử lý · Thu tiền · Kết thúc HĐ · Chính sách & mẫu · Hướng dẫn sử dụng) |
| Kho HĐ tổng hợp | `18-wQ3nVvEWPgvSdjRooI5ljzEEQo1RYq` (13 thư mục 00 → 08, tên chuẩn: KB mục 2.3) |
| HĐ kinh tế của Tập đoàn | `1raSQI4Cj_bin-bVqo3D6x33_D7sjEeRQ` (06. Hợp đồng kinh tế) |
| Giải quyết tranh chấp | `1g3x1nkR6YlNb8g6ha0bUyMqTvOVkNi9g` (04. Giải quyết tranh chấp) |
| QT.HCNS.PC.10 Hoàn thiện HĐ kinh tế | Doc `1x7gAq_ZmxHZ3IvroQ9rVvTN6CwCdMLqr` |
| QT.HCNS.PC.09 Con dấu | Doc `1jz1dTxrZHULRoEIVZIoibGijv4ojTZdB` |
| Quy trình HĐ học viên (QT.TS.04, ADM.10–12) | Thư mục QT Tuyển sinh `1kT9uf74q3q9vHVghQrBlCna2J_P-P8sz` |
| Văn bản đang áp dụng (chính sách giá, hoàn phí, đại lý…) | Sổ 00C `1m2YQ62J50BTCUyPP0SSyTeB3ptZYVfBdZHZCFulhDTs` |

## Thư mục cục bộ
- `mau/` – SOP, checklist; `mau/mau-goc/` – mẫu Word tải từ Drive (không đẩy GitHub)
- `dau-ra/` – Legal Review Memo, dự thảo, công văn xuất ra (không đẩy GitHub)
- `nhat-ky/` – nhật ký theo ngày `YYYY-MM-DD.md` (không đẩy GitHub)
