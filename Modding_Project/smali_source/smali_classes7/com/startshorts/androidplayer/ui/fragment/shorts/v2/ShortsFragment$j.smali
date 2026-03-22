.class public final Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$j;
.super Ljava/lang/Object;
.source "ShortsFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment;->M2()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/view/reward/ShortsRewardBoxView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/reward/ShortsRewardBoxView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$j;->a:Lcom/startshorts/androidplayer/ui/view/reward/ShortsRewardBoxView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 16

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
    const-string v9, "shorts"

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
    sget-object v8, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Y:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;

    .line 41
    .line 42
    move-object/from16 v0, p0

    .line 43
    .line 44
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/shorts/v2/ShortsFragment$j;->a:Lcom/startshorts/androidplayer/ui/view/reward/ShortsRewardBoxView;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    const-string v1, "getContext(...)"

    .line 51
    .line 52
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const/16 v14, 0x18

    .line 56
    .line 57
    const/4 v15, 0x0

    .line 58
    const-string v10, "shorts"

    .line 59
    .line 60
    const/4 v11, 0x1

    .line 61
    const/4 v12, 0x0

    .line 62
    const/4 v13, 0x0

    .line 63
    invoke-static/range {v8 .. v15}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;->d(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
