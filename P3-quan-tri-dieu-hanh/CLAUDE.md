# P3 · QUẢN TRỊ & ĐIỀU HÀNH

Kế thừa quy tắc chung tại `../CLAUDE.md`. Skill chính: `bla-van-ban-bdh` (session 3.1 – trọn quy trình soạn, ghi sổ 00C, đăng HRM); `bla-corporate-gov` cho kiến thức quản trị công ty.
Tra tài liệu gốc: `../set-up-agent/docs/BLA_TRI_THUC_PHAP_CHE_HCNS.md` mục 2 (pháp nhân), 3 (giấy phép), 6 (quy trình), 7 (văn bản điều hành).

## Phạm vi
Văn bản điều hành của Ban điều hành (TB/QĐ/CV-BĐH) và sổ văn bản; báo cáo định kỳ & kiểm soát tuân thủ. (Giấy phép/ĐKKD và quản trị công ty không thuộc nhánh này – người dùng chốt 21/11/2026; khi cần thì làm theo lệnh với skill `bla-corporate-gov`.)

## Session
| Mã | Session | Nhiệm vụ | Tự động hóa |
|---|---|---|---|
| 3.1 | Văn bản điều hành BĐH | Soạn TB/QĐ/CV theo QT.HCNS.PC.11 → lấy số hiệu tiếp theo → trình ký → cập nhật sổ 00C | Theo lệnh (SOP: `mau/sop-3.1-van-ban-bdh.md`) |
| 3.3 | Báo cáo định kỳ & kiểm soát tuân thủ | Lịch báo cáo nội bộ/cơ quan nhà nước (QT.PC.12); kế hoạch & báo cáo KTKS (QT.PC.14) | Theo lệnh; đề xuất nhắc lịch tự động sau khi chốt lịch báo cáo (SOP: `mau/sop-3.3-bao-cao-tuan-thu.md`) |
| 3.4 | BLA Germany & hợp tác quốc tế | Quản trị pháp nhân BLA Germany GmbH (thay đổi thành viên/Geschäftsführer, nghĩa vụ kéo dài, lịch nghĩa vụ định kỳ); theo dõi hiệu lực hợp tác TELC/AVT/đối tác Đức. Skill `bla-germany-intl`; tri thức nền `../set-up-agent/docs/BLA_GERMANY_KNOWLEDGE_BASE.md` (chỉ lưu máy) | Theo lệnh – khung, chờ chốt phạm vi (SOP: `mau/sop-3.4-bla-germany.md`) |
## Quy tắc riêng của nhánh
1. **Thẩm quyền ban hành** thuộc lãnh đạo; Claude chỉ dự thảo và trình. Không tự ghi số hiệu chính thức vào sổ khi văn bản chưa ký.
2. **Ghi vào sổ 00C, Bảng tổng hợp quy trình, Sheet theo dõi giấy phép** → trình nội dung dòng sẽ thêm/sửa, chỉ ghi khi được đồng ý rõ ràng (quy tắc 6.1).
3. Không nộp hồ sơ lên cổng dịch vụ công, không ký số, không nhập mật khẩu/token – người dùng tự làm.
4. Thông tin vốn, tỷ lệ sở hữu, giá phát hành, danh sách cổ đông là **mật**: không ghi vào file đẩy GitHub, không ghi vào URL.
5. Viện dẫn luật (Luật Doanh nghiệp, Nghị định ĐKDN, quy định giáo dục/TVDH…) phải ghi điều, hiệu lực; chưa tra nguồn chính thức thì ghi **"chưa xác minh"**.

## Nguồn dữ liệu
| Nguồn | Vị trí |
|---|---|
| Sổ 00C – Hệ thống văn bản đang áp dụng | `1m2YQ62J50BTCUyPP0SSyTeB3ptZYVfBdZHZCFulhDTs` (tab "Hệ thống quy định, thông báo") |
| Thư mục Thông báo – QĐ nội bộ (soạn thảo, scan) | `1mzYoDlyVwYYa-YTfxPUuVDOsOYq979Aq` · bản soạn thảo `1rO5MBCbldvE6enNSMmlJcG7IP5JbeU5y` · bản scan `1FqbPvNqIRotKPGYMQeIbH1HWz2zPfab9` |
| Bản soạn thảo TB/QĐ/CV của Pháp chế (đang dùng – người dùng xác nhận 21/11/2026; thư mục con xem SOP 3.1 mục 0) | `1O4w3eN4cuzDi2rFa2o7rObPiKMjwYHy2` |
| Kênh phân phối cho nhân sự | HRM › Tin tức/Thông báo `https://tiengduc.bla.vn/hrm/news` |
| Bảng tổng hợp hệ thống quy trình 2026 | `1yMjUs1gk_B_p3q-XCBejfpUnna5O7yi60V9_jeVP42U` |
| Ban Pháp chế & KSNB (6 pháp nhân) | `1LoIEWl99je8-Cl-jDzocEVu2MGRF507A` |
| Hồ sơ xin giấy phép | `1jCi7dC0BOdK5y-7dteN8ZJOY4metcVah` · Sheet theo dõi `1CF-UxyhyGA8oepZjuBo3tYMFvuG3mwqE7dQp-P94MLk` |
| Nghĩa vụ báo cáo | `1nAWf7gmry2GhQ-rtfQfLga3Yhg0WnNoj` · Sheet "Báo cáo định kỳ - BLA" `1ghUBKVTH53U7gWkzSsXUU3GX2fg1bTykek_kLx4rcNA` (cấu trúc xem SOP 3.3 mục A) |
| Hồ sơ PCCC trụ sở | `1XeB2f9KcMnmYQcgy2LMF0qJUUmr1G7Ls` |
| Todolist Pháp chế (nhắc việc ngắn) | `1pZZVTGRzqW6Txwb2Y2GgtJdL_KUwuLdJMDRk0ge2Iso` |
| Kiểm soát tuân thủ | `1eQB7H8-cUeHilmgrpIx_4LhN0Dxxrfqk` |
| QT.HCNS.PC.11 / PC.12 / PC.13 / PC.14 | Mở từ Bảng tổng hợp quy trình (PC.12 `1MZhj2DijL-j5gq3d_u9tHUCaWbbPXuuJ`, PC.13 `1JHSW4j1vZ1yYt25JB908k7oUykolDUc2`) |

## Thư mục cục bộ
- `mau/` – SOP, checklist; `mau/mau-goc/` – mẫu Word (không đẩy GitHub)
- `dau-ra/` – dự thảo TB/QĐ/CV, tờ trình, hồ sơ (không đẩy GitHub)
- `nhat-ky/` – nhật ký theo ngày `YYYY-MM-DD.md` (không đẩy GitHub)
