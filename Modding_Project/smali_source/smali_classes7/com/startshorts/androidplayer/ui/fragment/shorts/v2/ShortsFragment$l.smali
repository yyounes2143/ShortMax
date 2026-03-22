.class public final Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;
.super Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$d;
.source "ShortsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->U2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShortsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$initViewPagerAdapter$1$1\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,2950:1\n15#2,9:2951\n15#2,9:2960\n*S KotlinDebug\n*F\n+ 1 ShortsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$initViewPagerAdapter$1$1\n*L\n1085#1:2951,9\n1102#1:2960,9\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 7
    .line 8
    const-string v1, "onActionDownAfterFirstLongClick"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v1, p1, v2}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->q2(ILandroid/view/MotionEvent;Z)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public b(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 7
    .line 8
    const/4 v5, 0x4

    .line 9
    const/4 v6, 0x0

    .line 10
    const/4 v2, 0x4

    .line 11
    const/4 v4, 0x0

    .line 12
    move-object v3, p1

    .line 13
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->r2(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;ILandroid/view/MotionEvent;ZILjava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public c(Landroid/view/MotionEvent;)V
    .locals 8

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 7
    .line 8
    const-string v1, "onActionUpAfterFirstLongClick"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 14
    .line 15
    const/4 v6, 0x4

    .line 16
    const/4 v7, 0x0

    .line 17
    const/4 v3, 0x4

    .line 18
    const/4 v5, 0x0

    .line 19
    move-object v4, p1

    .line 20
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->r2(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;ILandroid/view/MotionEvent;ZILjava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->G1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Z)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->x0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->r0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;I)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    const-string v1, "onCancelFirstLongClick"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 9
    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;->PAGE_CANCEL_FIRST_LONG_CLICK:Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->n1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->G1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->x0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->r0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    const-string v1, "onCancelSecondLongClick"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 9
    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;->PAGE_CANCEL_SECOND_LONG_CLICK:Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->n1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->G1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->x0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->r0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;I)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public f()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->w0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isAd()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->getExtraAdInfo()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_6

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getSkipValue()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_6

    .line 28
    .line 29
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 30
    .line 31
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->getExtraAdInfo()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v5, 0x2

    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-static {v4, v0, v2, v5, v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    const/4 v9, 0x4

    .line 44
    const/4 v10, 0x0

    .line 45
    const-string v5, "shorts_second_position_click"

    .line 46
    .line 47
    const-wide/16 v7, 0x0

    .line 48
    .line 49
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 53
    .line 54
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "requireContext(...)"

    .line 59
    .line 60
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/utils/IntentUtil;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 69
    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v3, "onClick -> mVideoPrepared("

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 81
    .line 82
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->M0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v3, ") mVideoPaused("

    .line 90
    .line 91
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 95
    .line 96
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->L0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v3, ") mPlayError("

    .line 104
    .line 105
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 109
    .line 110
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->E0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    const-string v3, ") mUserPausePlay("

    .line 118
    .line 119
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 123
    .line 124
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->K0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const/16 v3, 0x29

    .line 132
    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 144
    .line 145
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->M0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    const/4 v1, 0x1

    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 153
    .line 154
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->L0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-eqz v0, :cond_2

    .line 159
    .line 160
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 161
    .line 162
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->k1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 167
    .line 168
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->E0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_3

    .line 173
    .line 174
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 175
    .line 176
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->p1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Z)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 180
    .line 181
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->C0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    if-eqz v0, :cond_6

    .line 186
    .line 187
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->p()V

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 192
    .line 193
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->s1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Z)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 197
    .line 198
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->h1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 199
    .line 200
    .line 201
    goto :goto_0

    .line 202
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 203
    .line 204
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->E0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_5

    .line 209
    .line 210
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 211
    .line 212
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->d1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    if-nez v0, :cond_6

    .line 217
    .line 218
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 219
    .line 220
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->p1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Z)V

    .line 221
    .line 222
    .line 223
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 224
    .line 225
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->C0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    if-eqz v0, :cond_6

    .line 230
    .line 231
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsEpisodeManager;->p()V

    .line 232
    .line 233
    .line 234
    goto :goto_0

    .line 235
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 236
    .line 237
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->s1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Z)V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 241
    .line 242
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->h1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 243
    .line 244
    .line 245
    :cond_6
    :goto_0
    return-void
.end method

.method public g()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->v0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->d1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->e1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->a1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 35
    .line 36
    const-string v1, "onFirstLongClick"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->G1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Z)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 48
    .line 49
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->F1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Z)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 53
    .line 54
    sget-object v1, Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;->PAGE_FIRST_LONG_CLICK:Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;

    .line 55
    .line 56
    new-instance v2, Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 62
    .line 63
    const-string v4, "activity"

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->j()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 73
    .line 74
    new-instance v3, Lcom/startshorts/androidplayer/manager/shorts/feature/i;

    .line 75
    .line 76
    invoke-direct {v3, v1, v2}, Lcom/startshorts/androidplayer/manager/shorts/feature/i;-><init>(Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;Ljava/util/HashMap;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0, v3}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->o1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Lcom/startshorts/androidplayer/manager/shorts/feature/i;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    const-string v1, "onMultiPointerTouch"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 9
    .line 10
    sget-object v1, Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;->PAGE_MULTI_POINTER_TOUCH:Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->n1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->K0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->v0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->d1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->e1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->a1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 43
    .line 44
    const-string v1, "onSecondLongClick"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 50
    .line 51
    sget-object v1, Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;->PAGE_SECOND_LONG_CLICK:Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;

    .line 52
    .line 53
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->n1(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Lcom/startshorts/androidplayer/manager/shorts/feature/IShortsFeature$MessageType;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    :goto_0
    return-void
.end method

.method public m(ILandroid/view/MotionEvent;Z)V
    .locals 1

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 7
    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->q2(ILandroid/view/MotionEvent;Z)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public o(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 8

    .line 1
    const-string p1, "episode"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->getExtraAdInfo()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getSkipValue()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 19
    .line 20
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->getExtraAdInfo()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const/4 v2, 0x2

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-static {v1, p2, v4, v2, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const/4 v6, 0x4

    .line 34
    const/4 v7, 0x0

    .line 35
    const-string v2, "shorts_second_position_click"

    .line 36
    .line 37
    const-wide/16 v4, 0x0

    .line 38
    .line 39
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    sget-object p2, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "requireContext(...)"

    .line 49
    .line 50
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0, p1}, Lcom/startshorts/androidplayer/utils/IntentUtil;->c(Landroid/content/Context;Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method public p(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 8

    .line 1
    const-string p1, "episode"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isCollected()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->z0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/mylist/a$b;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-string v5, "shorts"

    .line 29
    .line 30
    const/4 v6, 0x0

    .line 31
    const/4 v2, 0x1

    .line 32
    const/4 v3, 0x1

    .line 33
    move-object v0, v7

    .line 34
    move-object v4, p2

    .line 35
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$b;-><init>(Landroid/content/Context;IILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, v7}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->P(Lcom/startshorts/androidplayer/viewmodel/mylist/a;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->z0(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/mylist/a$a;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    const-string v5, "shorts"

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    const/4 v2, 0x1

    .line 62
    const/4 v3, 0x1

    .line 63
    move-object v0, v7

    .line 64
    move-object v4, p2

    .line 65
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$a;-><init>(Landroid/content/Context;IILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v7}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->P(Lcom/startshorts/androidplayer/viewmodel/mylist/a;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    return-void
.end method

.method public q(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 13

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object v6

    .line 12
    const-string v1, "scene"

    .line 13
    .line 14
    const-string v2, "shorts"

    .line 15
    .line 16
    invoke-virtual {v6, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v4, "right"

    .line 20
    .line 21
    const-string v11, "from"

    .line 22
    .line 23
    invoke-virtual {v6, v11, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    const-string v12, "upack"

    .line 35
    .line 36
    if-nez v4, :cond_0

    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v6, v12, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_0
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    const/4 v9, 0x4

    .line 48
    const/4 v10, 0x0

    .line 49
    const-string v5, "short_menu_click"

    .line 50
    .line 51
    const-wide/16 v7, 0x0

    .line 52
    .line 53
    move-object v4, v0

    .line 54
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v6, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v4, "cover"

    .line 65
    .line 66
    invoke-virtual {v6, v11, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-nez v4, :cond_1

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v6, v12, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    const/4 v9, 0x4

    .line 87
    const/4 v10, 0x0

    .line 88
    const-string v5, "shorts_feed_enter_immersion"

    .line 89
    .line 90
    const-wide/16 v7, 0x0

    .line 91
    .line 92
    move-object v4, v0

    .line 93
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    new-instance v6, Landroid/os/Bundle;

    .line 97
    .line 98
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v5, "drama_avatar_click"

    .line 105
    .line 106
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 110
    .line 111
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_2

    .line 116
    .line 117
    const/16 v1, 0x8

    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_2
    const/4 v1, 0x2

    .line 121
    :goto_0
    const/4 v5, 0x2

    .line 122
    const/4 v6, 0x0

    .line 123
    const/4 v2, 0x0

    .line 124
    const/4 v4, 0x1

    .line 125
    move-object v3, p2

    .line 126
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->U3(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method public r(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 14

    .line 1
    move-object/from16 v3, p2

    .line 2
    .line 3
    const-string v0, "episode"

    .line 4
    .line 5
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 9
    .line 10
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v6

    .line 14
    const-string v1, "scene"

    .line 15
    .line 16
    const-string v2, "shorts"

    .line 17
    .line 18
    invoke-virtual {v6, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v11, "from"

    .line 22
    .line 23
    const-string v12, "right"

    .line 24
    .line 25
    invoke-virtual {v6, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const-string v13, "upack"

    .line 37
    .line 38
    if-nez v4, :cond_0

    .line 39
    .line 40
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v6, v13, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 48
    .line 49
    const/4 v9, 0x4

    .line 50
    const/4 v10, 0x0

    .line 51
    const-string v5, "short_menu_click"

    .line 52
    .line 53
    const-wide/16 v7, 0x0

    .line 54
    .line 55
    move-object v4, v0

    .line 56
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    invoke-virtual {v6, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_1

    .line 78
    .line 79
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v6, v13, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_1
    const/4 v9, 0x4

    .line 87
    const/4 v10, 0x0

    .line 88
    const-string v5, "shorts_feed_enter_immersion"

    .line 89
    .line 90
    const-wide/16 v7, 0x0

    .line 91
    .line 92
    move-object v4, v0

    .line 93
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    move-object v7, p0

    .line 97
    iget-object v0, v7, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 98
    .line 99
    invoke-virtual/range {p2 .. p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    const/16 v1, 0x8

    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_2
    const/4 v1, 0x2

    .line 109
    :goto_0
    const/4 v5, 0x2

    .line 110
    const/4 v6, 0x0

    .line 111
    const/4 v2, 0x0

    .line 112
    const/4 v4, 0x1

    .line 113
    move-object/from16 v3, p2

    .line 114
    .line 115
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->U3(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method public s(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 1

    .line 1
    const-string p1, "episode"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 7
    .line 8
    new-instance p2, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$a;

    .line 9
    .line 10
    invoke-direct {p2, p1}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$b;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$b;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, p2, v0}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public t(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 13

    .line 1
    const-string p1, "episode"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string p1, "scene"

    .line 13
    .line 14
    const-string v1, "shorts"

    .line 15
    .line 16
    invoke-virtual {v2, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    const/4 v5, 0x4

    .line 22
    const/4 v6, 0x0

    .line 23
    const-string v1, "share"

    .line 24
    .line 25
    const-wide/16 v3, 0x0

    .line 26
    .line 27
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object v7, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 31
    .line 32
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    const-string p1, "requireContext(...)"

    .line 39
    .line 40
    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShareUrl()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    const/4 v11, 0x4

    .line 48
    const/4 v12, 0x0

    .line 49
    const/4 v10, 0x0

    .line 50
    invoke-static/range {v7 .. v12}, Lcom/startshorts/androidplayer/utils/IntentUtil;->g(Lcom/startshorts/androidplayer/utils/IntentUtil;Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/utils/IntentUtil$a;ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public u(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;)V
    .locals 1

    .line 1
    const-string p1, "episode"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "shortsLabel"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 12
    .line 13
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$c;

    .line 14
    .line 15
    invoke-direct {v0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;)V

    .line 16
    .line 17
    .line 18
    new-instance p2, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$d;

    .line 19
    .line 20
    invoke-direct {p2}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l$d;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v0, p2}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public v(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 13

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->isRelease()Ljava/lang/Boolean;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    const-string v1, "scene"

    .line 26
    .line 27
    const-string v2, "shorts"

    .line 28
    .line 29
    invoke-virtual {v6, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v11, "from"

    .line 33
    .line 34
    const-string v12, "play"

    .line 35
    .line 36
    invoke-virtual {v6, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_1

    .line 48
    .line 49
    const-string v4, "upack"

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v6, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 59
    .line 60
    const/4 v9, 0x4

    .line 61
    const/4 v10, 0x0

    .line 62
    const-string v5, "shorts_feed_enter_immersion"

    .line 63
    .line 64
    const-wide/16 v7, 0x0

    .line 65
    .line 66
    move-object v4, v0

    .line 67
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    invoke-virtual {v6, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6, v11, v12}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v5, "watch_now_click"

    .line 81
    .line 82
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$l;->a:Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;

    .line 86
    .line 87
    const/16 v5, 0xa

    .line 88
    .line 89
    const/4 v6, 0x0

    .line 90
    const/16 v1, 0x8

    .line 91
    .line 92
    const/4 v2, 0x0

    .line 93
    const/4 v4, 0x0

    .line 94
    move-object v3, p2

    .line 95
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->U3(Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;ILcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    return-void
.end method
