.class public final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;
.super Ljava/lang/Object;
.source "RewardsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 7

    .line 1
    and-int/lit8 p7, p6, 0x8

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p7, :cond_0

    .line 5
    .line 6
    move-object v5, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v5, p4

    .line 9
    :goto_0
    and-int/lit8 p4, p6, 0x10

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    move-object v6, v0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v6, p5

    .line 16
    :goto_1
    move-object v1, p0

    .line 17
    move-object v2, p1

    .line 18
    move-object v3, p2

    .line 19
    move v4, p3

    .line 20
    invoke-virtual/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;->c(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->j1()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->D1(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "context"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v1, "from"

    .line 8
    .line 9
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-eqz p3, :cond_2

    .line 13
    .line 14
    sget-object p3, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 15
    .line 16
    sget-object v2, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/fragment/a;->j()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 23
    .line 24
    invoke-direct {v3, v1, p2}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->a()Lcom/startshorts/androidplayer/bean/bundle/IntBundle;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    new-instance v1, Lcom/startshorts/androidplayer/bean/bundle/IntBundle;

    .line 32
    .line 33
    const-string v4, "fragment_container_top_margin"

    .line 34
    .line 35
    invoke-direct {v1, v4, v0}, Lcom/startshorts/androidplayer/bean/bundle/IntBundle;-><init>(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    new-instance v4, Lcom/startshorts/androidplayer/bean/bundle/BooleanBundle;

    .line 39
    .line 40
    if-eqz p4, :cond_0

    .line 41
    .line 42
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result p4

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    move p4, v0

    .line 48
    :goto_0
    const-string v5, "isLocateWatchTaskModule"

    .line 49
    .line 50
    invoke-direct {v4, v5, p4}, Lcom/startshorts/androidplayer/bean/bundle/BooleanBundle;-><init>(Ljava/lang/String;Z)V

    .line 51
    .line 52
    .line 53
    new-instance p4, Lcom/startshorts/androidplayer/bean/bundle/BooleanBundle;

    .line 54
    .line 55
    if-eqz p5, :cond_1

    .line 56
    .line 57
    invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    .line 59
    .line 60
    move-result p5

    .line 61
    goto :goto_1

    .line 62
    :cond_1
    move p5, v0

    .line 63
    :goto_1
    const-string v5, "isFromHomeCheckInDialog"

    .line 64
    .line 65
    invoke-direct {p4, v5, p5}, Lcom/startshorts/androidplayer/bean/bundle/BooleanBundle;-><init>(Ljava/lang/String;Z)V

    .line 66
    .line 67
    .line 68
    const/4 p5, 0x5

    .line 69
    new-array p5, p5, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 70
    .line 71
    aput-object v3, p5, v0

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    aput-object p2, p5, v0

    .line 75
    .line 76
    const/4 p2, 0x2

    .line 77
    aput-object v1, p5, p2

    .line 78
    .line 79
    const/4 p2, 0x3

    .line 80
    aput-object v4, p5, p2

    .line 81
    .line 82
    const/4 p2, 0x4

    .line 83
    aput-object p4, p5, p2

    .line 84
    .line 85
    invoke-virtual {p3, p1, v2, p5}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)V

    .line 86
    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance p3, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

    .line 94
    .line 95
    sget-object v1, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->REWARDS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 96
    .line 97
    const/16 v5, 0xa

    .line 98
    .line 99
    const/4 v6, 0x0

    .line 100
    const/4 v2, 0x0

    .line 101
    const/4 v4, 0x0

    .line 102
    move-object v0, p3

    .line 103
    move-object v3, p2

    .line 104
    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p3}, Lau/c;->l(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    return-void
.end method
