// ================================
// Clair Obscur: Expedition 33
// Interactive Game Design Analysis
// Ink + Fungus 6.0 Compatible
// ================================
->start
=== start ===
Clair Obscur: Expedition 33  
Phân tích hệ thống chiến đấu & build nhân vật  
(dưới góc nhìn Game Design)

Đây không phải một bài viết tĩnh,  
mà là một bài phân tích tương tác.

Bạn muốn bắt đầu từ đâu?

+ [Triết lý thiết kế tổng thể]
    -> philosophy

+ [Hệ thống chiến đấu]
    -> combat_menu

+ [Build nhân vật & đội hình]
    -> build_menu

+ [So sánh với JRPG truyền thống]
    -> comparison

+ [Kết luận & bài học thiết kế]
    -> conclusion


// ================================
// TRIẾT LÝ THIẾT KẾ
// ================================

=== philosophy ===
Clair Obscur không được xây dựng như một JRPG cổ điển.

Triết lý cốt lõi:
"Người chơi phải luôn tham gia, kể cả khi không tới lượt."

Từ triết lý này, game đưa ra 3 quyết định quan trọng:
- Turn-based nhưng loại bỏ thời gian chờ
- Chiến thuật luôn đi kèm kỹ năng cá nhân
- Gameplay phản ánh chủ đề sống – chết của cốt truyện

+ [Chuyển sang phân tích combat]
    -> combat_menu
+ [Quay lại menu chính]
    -> start


// ================================
// COMBAT SYSTEM
// ================================

=== combat_menu ===
Hệ thống chiến đấu của Clair Obscur
là sự kết hợp giữa chiến thuật theo lượt
và phản xạ thời gian thực.

Bạn muốn phân tích phần nào?

+ [Vòng lặp chiến đấu cốt lõi]
    -> combat_loop

+ [Ability Points & rủi ro]
    -> ap_system

+ [Dodge – Parry – Break]
    -> defense_system

+ [Gradient Skills]
    -> gradient_system

+ [Tóm tắt hệ thống combat]
    -> combat_summary

+ [Quay lại menu chính]
    -> start


// ----------------
// CORE COMBAT LOOP
// ----------------

=== combat_loop ===
Vòng lặp chiến đấu của Clair Obscur gồm:

1. Quan sát kẻ địch
2. Quyết định chiến thuật
3. Thực thi bằng thao tác người chơi
4. Phòng thủ thời gian thực
5. Tạo Break
6. Burst damage

Không có bước nào là "chờ lượt".

#SHOW_COMBAT_LOOP_DIAGRAM

+ [Phân tích sâu hơn]
    -> combat_loop_deep
+ [Quay lại]
    -> combat_menu

=== combat_loop_deep ===
Thiết kế này giải quyết vấn đề lớn nhất của turn-based RPG:
sự nhàm chán khi farm quái.

Thay vì chờ đợi,
người chơi luôn phải tập trung và phản xạ.

Đây là sự thay thế "thời gian chờ"
bằng "thời gian kỹ năng".

+ [Quay lại]
    -> combat_loop


// ----------------
// ABILITY POINTS
// ----------------

=== ap_system ===
Ability Points (AP) không phải mana truyền thống.

Muốn dùng skill mạnh:
- Bạn phải đánh cận chiến
- Hoặc parry chính xác

AP là phần thưởng cho rủi ro.

#SHOW_AP_DIAGRAM

+ [So sánh với mana JRPG]
    -> ap_compare
+ [Quay lại]
    -> combat_menu

=== ap_compare ===
JRPG truyền thống:
Mana là tài nguyên có sẵn.

Clair Obscur:
AP là phần thưởng cho kỹ năng.

Quyền kiểm soát được chuyển từ nhân vật
sang người chơi.

+ [Quay lại]
    -> ap_system


// ----------------
// DEFENSE & BREAK
// ----------------

=== defense_system ===
Khi kẻ địch tấn công,
game không tước quyền điều khiển của người chơi.

Người chơi phải:
- Dodge
- Parry
- Jump tránh đòn đặc biệt

Chơi tốt sẽ tạo Break.

#SHOW_BREAK_DIAGRAM

+ [Ý nghĩa của Break]
    -> break_meaning
+ [Quay lại]
    -> combat_menu

=== break_meaning ===
Break không chỉ là stun.

Break là:
- Khoảnh khắc đảo chiều trận đấu
- Phần thưởng cho sự tập trung
- Nhịp thở chiến thuật

Chiến thuật và kỹ năng gặp nhau tại đây.

+ [Quay lại]
    -> defense_system


// ----------------
// GRADIENT SKILLS
// ----------------

=== gradient_system ===
Gradient Skills là cao trào của combat.

Chúng không có cooldown cố định.
Chúng được mở khóa bằng cách chơi tốt.

Gradient Skill tồn tại để:
- Tạo khoảnh khắc bùng nổ cảm xúc
- Đánh dấu bước ngoặt trận đấu

#SHOW_GRADIENT_EXAMPLE

+ [Quay lại]
    -> combat_menu


// ----------------
// COMBAT SUMMARY
// ----------------

=== combat_summary ===
Tóm tắt hệ thống chiến đấu:

- Turn-based nhưng không chờ lượt
- AP thưởng cho rủi ro
- Real-time defense giữ nhịp liên tục
- Break tạo chiều sâu chiến thuật

Combat không chỉ để thắng,
mà để kể câu chuyện về việc chống lại định mệnh.

+ [Chuyển sang build nhân vật]
    -> build_menu
+ [Quay lại menu]
    -> start


// ================================
// BUILD NHÂN VẬT
// ================================

=== build_menu ===
Clair Obscur không sử dụng class RPG truyền thống.

Nhân vật được định nghĩa bằng playstyle,
không phải vai trò cứng.

Bạn muốn phân tích gì?

+ [Playstyle nhân vật]
    -> build_playstyle

+ [Synergy đội hình]
    -> build_synergy

+ [So sánh Tank / DPS / Heal]
    -> build_compare

+ [Quay lại menu chính]
    -> start


// ----------------
// PLAYSTYLE
// ----------------

=== build_playstyle ===
Mỗi nhân vật đại diện cho một hành vi chiến đấu:
- Tạo Break
- Tích AP nhanh
- Kết liễu sau Break

Đổi nhân vật
là đổi cách chơi,
không chỉ đổi chỉ số.

+ [Quay lại]
    -> build_menu


// ----------------
// SYNERGY
// ----------------

=== build_synergy ===
Sức mạnh thật sự nằm ở sự phối hợp.

Một chuỗi hành động điển hình:
Nhân vật A tạo Break
→ Nhân vật B tung Gradient Skill
→ Trận đấu kết thúc nhanh chóng

Đây là thiết kế ở cấp độ đội hình.

#SHOW_TEAM_SYNERGY_DIAGRAM

+ [Quay lại]
    -> build_menu


// ----------------
// BUILD COMPARISON
// ----------------

=== build_compare ===
Tank / DPS / Heal là tư duy RPG cũ.

Clair Obscur thay thế bằng:
- Người mở nhịp
- Người bùng nổ
- Người kết liễu

Vai trò linh hoạt
và phụ thuộc tình huống.

+ [Quay lại]
    -> build_menu


// ================================
// COMPARISON & CONCLUSION
// ================================

=== comparison ===
So với JRPG truyền thống:

- Ít menu hơn
- Ít thời gian chờ hơn
- Nhiều kỹ năng người chơi hơn

Đây là sự tiến hóa,
không phải phá bỏ turn-based.

+ [Quay lại menu]
    -> start


=== conclusion ===
Clair Obscur: Expedition 33 cho thấy:

- Combat có thể kể chuyện
- Chiến thuật và kỹ năng không loại trừ nhau
- Narrative và gameplay có thể hòa làm một

Đây là một ví dụ xuất sắc
của Game Design hiện đại.

+ [Xem lại từ đầu]
    -> start
