.class public final Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;
.super Ljava/lang/Object;
.source "ImmersionMiniWindow.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->u0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 1

    .line 1
    const-string v0, "lastEpisode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 7
    .line 8
    invoke-static {p2, p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->V(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V
    .locals 0

    .line 1
    const-string p1, "newEpisode"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(ZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0

    .line 1
    const-string p1, "newEpisode"

    .line 2
    .line 3
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/manager/miniwindow/MiniWindowEpisodeManager$PlayFailedReason;)V
    .locals 3

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "reason"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->J:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$a;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$a;->e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->s()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->r()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCoverId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->K(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 42
    .line 43
    const/4 v1, 0x1

    .line 44
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->I(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->O(I)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->n()V

    .line 56
    .line 57
    .line 58
    sget-object v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c$a;->$EnumSwitchMapping$0:[I

    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    aget p2, v0, p2

    .line 65
    .line 66
    const/4 v0, 0x2

    .line 67
    if-eq p2, v1, :cond_3

    .line 68
    .line 69
    if-eq p2, v0, :cond_2

    .line 70
    .line 71
    const/4 p1, 0x3

    .line 72
    if-ne p2, p1, :cond_1

    .line 73
    .line 74
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->b0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 81
    .line 82
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isLocked()Z

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-eqz p2, :cond_4

    .line 91
    .line 92
    iget-object p2, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 93
    .line 94
    invoke-static {p2, p1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->g0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 99
    .line 100
    invoke-static {p1, v1}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->e0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;Z)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 104
    .line 105
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->J(Z)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 109
    .line 110
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->M(Z)V

    .line 111
    .line 112
    .line 113
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 114
    .line 115
    sget p2, Lcom/startshorts/androidplayer/R$string;->common_play_failed:I

    .line 116
    .line 117
    const/4 v1, 0x0

    .line 118
    invoke-static {p1, p2, v2, v0, v1}, Lfk/u;->j(Lfk/u;IIILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :cond_4
    :goto_0
    return-void
.end method

.method public e(ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 2

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->J:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$a;

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$a;->e(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->r()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCoverId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->K(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->L()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 34
    .line 35
    invoke-static {v0, p1, p2}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->c0(Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow$c;->a:Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;

    .line 39
    .line 40
    const-string p2, "onEpisodeEnablePlay"

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/service/miniwindow/ImmersionMiniWindow;->i0(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    return-void
.end method
