.class public final Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$c;
.super Lyd/d;
.source "DiscoverRewardBoxView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$c;->e:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$c;->c(Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;Z)Lkotlin/Unit;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "showInterstitialScene -> onComplete("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 p1, 0x29

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->s(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->getMListener()Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$b;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    invoke-interface {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$b;->a()V

    .line 33
    .line 34
    .line 35
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "v"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$c;->e:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->getMFrom()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "home_reward"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 25
    .line 26
    const/4 v7, 0x6

    .line 27
    const/4 v8, 0x0

    .line 28
    const-string v3, "home_reward_click"

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    const-wide/16 v5, 0x0

    .line 32
    .line 33
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    sget-object v9, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 37
    .line 38
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->c()V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$c;->e:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->getMFrom()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    sget-object v1, Laa/a;->a:Laa/a;

    .line 48
    .line 49
    invoke-virtual {v1}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/hades/aar/activity/IDActivity;

    .line 60
    .line 61
    :goto_0
    move-object v11, v1

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    const/4 v1, 0x0

    .line 64
    goto :goto_0

    .line 65
    :goto_1
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$c;->e:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;

    .line 66
    .line 67
    new-instance v2, Luj/b;

    .line 68
    .line 69
    invoke-direct {v2, v1}, Luj/b;-><init>(Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;)V

    .line 70
    .line 71
    .line 72
    const/16 v23, 0x68

    .line 73
    .line 74
    const/16 v24, 0x0

    .line 75
    .line 76
    const-string v12, "home_reward"

    .line 77
    .line 78
    const/4 v13, 0x0

    .line 79
    const/4 v14, 0x1

    .line 80
    const/4 v15, 0x0

    .line 81
    const/16 v16, 0x0

    .line 82
    .line 83
    const-wide/16 v17, 0x0

    .line 84
    .line 85
    const-wide/16 v19, 0x7d0

    .line 86
    .line 87
    const/16 v21, 0x1

    .line 88
    .line 89
    move-object/from16 v22, v2

    .line 90
    .line 91
    invoke-static/range {v9 .. v24}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->w(Lcom/startshorts/androidplayer/manager/configure/ad/c;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_1
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$c;->e:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;

    .line 96
    .line 97
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->getMListener()Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$b;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    if-eqz v1, :cond_2

    .line 102
    .line 103
    invoke-interface {v1}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$b;->a()V

    .line 104
    .line 105
    .line 106
    :cond_2
    :goto_2
    return-void
.end method
