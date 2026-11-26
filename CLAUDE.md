# BLA LEGAL & COMPLIANCE HUB — HƯỚNG DẪN CHO CLAUDE

Workspace dùng chung với Antigravity. **Nguồn gốc tri thức nằm trong `set-up-agent/`** — không sao chép nội dung ra đây, chỉ tham chiếu để hai hệ thống luôn đồng bộ.

## 1. Tài liệu nền (bắt buộc đọc)

@set-up-agent/GEMINI.md
@set-up-agent/docs/BLA_KNOWLEDGE_BASE.md

Tổng quan mô hình 4 luồng công việc: `set-up-agent/README.md`.

Bản đồ tri thức Pháp chế & HCNS (link Drive/ERP tới quy trình, văn bản, mẫu HĐ, giấy phép – tổng hợp 20/11/2026): `set-up-agent/docs/BLA_TRI_THUC_PHAP_CHE_HCNS.md` → đọc khi cần tìm tài liệu gốc.

## 2. Người dùng & cách trả lời

- Người dùng chính: chuyên viên Pháp chế BLA, không chuyên lập trình → hướng dẫn từng bước, dễ làm theo; chủ động làm phần việc được phép.
- Trả lời **tiếng Việt**, đi thẳng vào vấn đề; ưu tiên bảng biểu.
- Tư vấn/thẩm định pháp chế: dùng **khung 6 phần** trong GEMINI.md.
- Không bịa điều luật. Ghi rõ "chưa xác minh" khi chưa kiểm tra nguồn chính thức.

## 3. Skill theo luồng công việc (`.claude/skills/`)

| Luồng | Skill | Dùng khi |
|---|---|---|
| Hợp đồng & đối tác | `bla-contract-ops` | Soạn/rà soát HĐ đào tạo, du học, thuê nhà, hợp tác, thanh lý |
| Thẩm định hợp đồng | `bla-legal-reviewer` | Rà soát 5 bước, lập Legal Review Memo |
| HCNS & lao động | `bla-hr-compliance` | HĐLĐ, phụ lục lương, NDA, cam kết đào tạo, onboarding, QĐ nhân sự |
| Văn bản điều hành BĐH | `bla-van-ban-bdh` | Soạn TB/QĐ/CV-BĐH → sổ 00C → tải scan lên HRM, đăng thông báo (P3 · 3.1) |
| Quản trị & điều hành | `bla-corporate-gov` | QĐ ban hành quy trình, HĐQT/ĐHĐCĐ, tăng vốn, ĐKKD |
| BLA Germany & quốc tế | `bla-germany-intl` | GmbH, chuyển nhượng vốn, mô hình BLA–AVT, TELC |

> Bản gốc skill: `set-up-agent/.agents/skills/`. Khi sửa skill, sửa bản gốc rồi chép lại sang `.claude/skills/` (hoặc nhờ Claude đồng bộ).

## 4. Tài khoản Google

- Claude kết nối Google Workspace (Drive, Docs, Sheets, Calendar, Gmail) bằng tài khoản **phapche.bla@gmail.com**. Theo người dùng xác nhận (19/11/2026), tài khoản này có quyền truy cập toàn bộ thư mục Drive nêu trong GEMINI.md/Knowledge Base (README ghi contact@bla.vn là tài khoản bên Antigravity).

## 5. Nguồn dữ liệu nhân sự

| Nguồn | Vị trí | Ghi chú |
|---|---|---|
| **HRM (nguồn chuẩn)** | https://tiengduc.bla.vn/hrm/dashboard | Truy cập qua Claude in Chrome bằng phiên đăng nhập của người dùng. Danh sách: `/hrm/employees?status=active` (phân trang `&page=N`). Dashboard có lịch sinh nhật theo tháng. |
| Sheet "Rà soát HĐ nhân sự" | Drive ID `1mnj0ZeKNep2rrk8PLPn6cbwkxC4-TwhOhoaBuWwLf6g`, tab `DS nhân sự` | Ngày sinh ở cột AF/AG/AH (ngày/tháng/năm). Đã phát hiện thiếu/lệch so với HRM (19/11/2026) → chỉ dùng để đối chiếu. |
| Sheet "THÔNG TIN NHÂN SỰ MỚI" | Drive ID `1cVomGHqKmhWB9Qwp5W9xShXEGwdj5kwfEYFazcH9vAo` | Dữ liệu Google Form onboarding. |

## 6. Quy tắc thao tác (bắt buộc)

1. **Xác nhận trước khi ghi**: sửa/tạo dữ liệu trên HRM, Drive, Docs, Sheets, gửi email, lịch → điền sẵn, trình người dùng xem, chỉ lưu khi được đồng ý rõ ràng. Mỗi lần lưu xác nhận riêng.
2. **Không tự nhập**: số CCCD/hộ chiếu, MST cá nhân, số sổ BHXH, số tài khoản ngân hàng, mật khẩu → người dùng/HCNS tự nhập.
3. **Không xóa** nhân sự/hồ sơ; ưu tiên chuyển trạng thái (VD: "Nghỉ việc"). Xóa chỉ khi người dùng yêu cầu và xác nhận.
4. Dữ liệu nhân sự, lương là **mật**: không đưa ra dịch vụ bên ngoài, không ghi vào URL.
5. Khi HRM và Sheet mâu thuẫn: báo rõ từng điểm lệch, không tự sửa bên nào.

## 7. Sao lưu GitHub (tự động – người dùng chốt 20/11/2026)

Workspace là kho git, nhánh `main`, đẩy lên repo **Private** https://github.com/phapchebla-droid/ai-agent (Git: `C:\Program Files\Git\cmd\git.exe`).

- **Tự đẩy, không cần người dùng nhắc**: mỗi khi Claude sửa hoặc tạo file cấu hình/quy trình (các `CLAUDE.md`, skill, SOP trong `mau/`, `GEMINI.md`, `.gitignore`…), cuối lượt làm việc thì commit (ghi chú tiếng Việt, nói rõ thay đổi gì) và `git push`, rồi báo người dùng một dòng.
- **Trước mỗi lần đẩy**: chạy `git status --ignored`, đọc phần thay đổi (`git diff --cached`). Không đẩy tên/SĐT/email/mã NV/lương của nhân sự, số CCCD/MST/BHXH/STK, tỷ lệ vốn, mức phí, giá phát hành. File mới có dữ liệu như vậy → thêm vào `.gitignore`, không commit, báo người dùng.
- **Không bao giờ đẩy**: những gì `.gitignore` loại trừ (`nhat-ky/`, `dau-ra/`, `mau-goc/`, file Word/Excel/PDF/ảnh, `BLA_KNOWLEDGE_BASE.md`, `set-up-agent/README.md`, skill `bla-germany-intl`, `bla-corporate-gov`). Không dùng `git add -f`, không `push --force`, không xóa lịch sử.
- Lượt chạy tự động 1.1 (9h hằng ngày) chỉ ghi `nhat-ky/` → không cần đẩy.
- Đẩy lỗi vì cần đăng nhập → chạy lại lệnh push trong tab Terminal để hiện cửa sổ đăng nhập, nhờ người dùng đăng nhập.
