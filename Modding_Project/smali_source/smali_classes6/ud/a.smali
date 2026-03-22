.class public final Lud/a;
.super Ljava/lang/Object;
.source "MemoryCacheManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lud/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lud/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lud/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lud/a;->a:Lud/a;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final A()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string/jumbo v1, "shorts_fragment_created"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final A0(Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string/jumbo v2, "setPushFailed -> key("

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, ") failed("

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 v2, 0x29

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-string v2, "PushManager"

    .line 40
    .line 41
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "push_failed_"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v0, p1, p2}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    .line 65
    .line 66
    return-void
.end method

.method public final B()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string/jumbo v1, "sub_detail_list"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Ldd/c;->i(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final B0(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "value"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 8
    .line 9
    const-string v1, "query_short_id_trace"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Ldd/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final C()I
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string/jumbo v1, "system_bars_bottom"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Ldd/c;->getInt(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final C0(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "value"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 8
    .line 9
    const-string v1, "query_slide_v3_trace"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Ldd/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final D()I
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string/jumbo v1, "system_bars_top"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Ldd/c;->getInt(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final D0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "is_refresh_rewards_module"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final E()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string/jumbo v1, "system_language"

    .line 4
    .line 5
    .line 6
    const-string v2, ""

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Ldd/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final E0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "rewards_daily_task_expand_fold"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final F()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string/jumbo v1, "system_version"

    .line 4
    .line 5
    .line 6
    const-string v2, ""

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Ldd/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final F0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "rewards_one_time_task_expand_fold"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final G()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string/jumbo v1, "timezone"

    .line 4
    .line 5
    .line 6
    const-string v2, ""

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Ldd/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public final G0(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "rooted"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final H()I
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string/jumbo v1, "today_rewards_bonus_num"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Ldd/c;->getInt(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final H0(I)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "screen_height_px"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putInt(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final I()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string/jumbo v1, "use_vpn"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final I0(I)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "screen_width_px"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putInt(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final J()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "is_auto_play"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final J0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string/jumbo v1, "shorts_fragment_created"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final K()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "is_consumed_cps_check"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final K0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "reward_is_show_pendant"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final L()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "dev_mode"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final L0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "is_show_sale_immersion_page"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final M()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "emulator"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final M0(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string/jumbo v1, "sub_detail_list"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Ldd/c;->e(Ljava/lang/String;Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final N()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "is_first_fetch_discover_tab"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final N0(I)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string/jumbo v1, "system_bars_bottom"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Ldd/c;->putInt(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final O()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "is_goto_ttppment"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final O0(I)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string/jumbo v1, "system_bars_top"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Ldd/c;->putInt(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final P()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "install_first_open"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final P0(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string/jumbo v1, "system_language"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Ldd/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final Q()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "jump_immersion_this_active"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final Q0(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string/jumbo v1, "system_version"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Ldd/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final R()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "is_refresh_rewards_module"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final R0(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string/jumbo v1, "timezone"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Ldd/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final S()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "rewards_daily_task_expand_fold"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final S0(I)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string/jumbo v1, "today_rewards_bonus_num"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Ldd/c;->putInt(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final T()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "rewards_one_time_task_expand_fold"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final T0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string/jumbo v1, "use_vpn"

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final U()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "rooted"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final V()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "reward_is_show_pendant"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final W()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "is_show_sale_immersion_page"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final X(Lcom/startshorts/androidplayer/bean/ad/AdNewConfig;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/ad/AdNewConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "ad_config"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Y(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "app_language"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final Z(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "app_launch_from"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final a()Lcom/startshorts/androidplayer/bean/ad/AdNewConfig;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "ad_config"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Lcom/startshorts/androidplayer/bean/ad/AdNewConfig;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    move-object v2, v0

    .line 15
    check-cast v2, Lcom/startshorts/androidplayer/bean/ad/AdNewConfig;

    .line 16
    .line 17
    :cond_0
    return-object v2
.end method

.method public final a0(J)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "app_launch_time"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Ldd/c;->putLong(Ljava/lang/String;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "app_language"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ldd/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final b0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "is_auto_play"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "app_launch_from"

    .line 4
    .line 5
    const-string v2, "icon"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ldd/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final c0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "cold_boot"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final d()J
    .locals 4

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "app_launch_time"

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Ldd/c;->getLong(Ljava/lang/String;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public final d0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "is_consumed_cps_check"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final e()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "cold_boot"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final e0(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "currency_code"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final f()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "currency_code"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ldd/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final f0(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "dev_mode"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final g()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "discover_data_loaded"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final g0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "discover_data_loaded"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final h()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "discover_low_sku_template_notification_closed"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final h0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "discover_low_sku_template_notification_closed"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final i()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "discover_show_low_sku_template_notification"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final i0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "discover_show_low_sku_template_notification"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final j(I)I
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "episode_play_position_"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, p1, v1}, Ldd/c;->getInt(Ljava/lang/String;I)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public final j0(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "emulator"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final k()I
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "existsOtherSubscription"

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final k0(II)V
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "episode_play_position_"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1, p2}, Ldd/c;->putInt(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final l()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "fake_on_background"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final l0(I)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "existsOtherSubscription"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putInt(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "gaid"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ldd/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v2, v0

    .line 15
    :goto_0
    return-object v2
.end method

.method public final m0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "fake_on_background"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final n()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "goto_system_setting_open_alert_window"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final n0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "is_first_fetch_discover_tab"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final o()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "has_wait_get_unity_bonus"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final o0(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "value"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 8
    .line 9
    const-string v1, "gaid"

    .line 10
    .line 11
    invoke-virtual {v0, v1, p1}, Ldd/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final p()Lcom/startshorts/androidplayer/bean/act/ActResource;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "immersion_act_resource"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->h(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    instance-of v1, v0, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    move-object v2, v0

    .line 15
    check-cast v2, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 16
    .line 17
    :cond_0
    return-object v2
.end method

.method public final p0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "is_goto_ttppment"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final q()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "immersion_activity_from"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ldd/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final q0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "goto_system_setting_open_alert_window"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final r()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "local_country"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public final r0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "has_wait_get_unity_bonus"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final s()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "network_operator"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ldd/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final s0(Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "immersion_act_resource"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final t()Z
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "on_foreground"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final t0(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "immersion_activity_from"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final u()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "phone_model"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ldd/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final u0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "install_first_open"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final v(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "push_failed_"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, p1, v1}, Ldd/c;->getBoolean(Ljava/lang/String;Z)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public final v0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "jump_immersion_this_active"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final w()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "query_short_id_trace"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ldd/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v2, v0

    .line 15
    :goto_0
    return-object v2
.end method

.method public final w0(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "local_country"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "query_slide_v3_trace"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Ldd/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object v2, v0

    .line 15
    :goto_0
    return-object v2
.end method

.method public final x0(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "network_operator"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final y()I
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "screen_height_px"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final y0(Z)V
    .locals 2

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "on_foreground"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final z()I
    .locals 3

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "screen_width_px"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Ldd/c;->getInt(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public final z0(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Ldd/c;->a:Ldd/c;

    .line 2
    .line 3
    const-string v1, "phone_model"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Ldd/c;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
