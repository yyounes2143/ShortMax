.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$e;
.super Ljava/lang/Object;
.source "DiscoverTabFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->O0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$e;->a:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$e;->c(Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Y:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string p0, "getContext(...)"

    .line 8
    .line 9
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/16 v6, 0x18

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const-string v2, "discover"

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;->d(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a()V
    .locals 10

    .line 1
    sget-object v7, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v8, "scene"

    .line 9
    .line 10
    const-string v9, "discover"

    .line 11
    .line 12
    invoke-virtual {v2, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    const/4 v5, 0x4

    .line 18
    const/4 v6, 0x0

    .line 19
    const-string v1, "reward_click"

    .line 20
    .line 21
    const-wide/16 v3, 0x0

    .line 22
    .line 23
    move-object v0, v7

    .line 24
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance v2, Landroid/os/Bundle;

    .line 28
    .line 29
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v8, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "reward_show"

    .line 36
    .line 37
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$e;->a:Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;

    .line 43
    .line 44
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/discover/d1;

    .line 45
    .line 46
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/d1;-><init>(Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v2}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
