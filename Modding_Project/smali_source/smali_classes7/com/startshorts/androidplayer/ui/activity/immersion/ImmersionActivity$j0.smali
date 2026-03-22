.class public final Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$j0;
.super Ljava/lang/Object;
.source "ImmersionActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->o9(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$j0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

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
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$j0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Z1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;->V()V

    .line 10
    .line 11
    .line 12
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$j0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    const/16 v7, 0x10

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    const-string v2, "immersion_page"

    .line 24
    .line 25
    const-string v3, "reward_floating_window"

    .line 26
    .line 27
    const-string v5, "close"

    .line 28
    .line 29
    const/4 v6, 0x0

    .line 30
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->e0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public b()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v9, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$j0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->S1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    const/16 v7, 0x10

    .line 12
    .line 13
    const/4 v8, 0x0

    .line 14
    const-string v2, "immersion_page"

    .line 15
    .line 16
    const-string v3, "reward_floating_window"

    .line 17
    .line 18
    const-string v5, "open"

    .line 19
    .line 20
    const/4 v6, 0x0

    .line 21
    move-object v1, v9

    .line 22
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->e0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v8, "scene"

    .line 31
    .line 32
    const-string v10, "immersion_page_new"

    .line 33
    .line 34
    invoke-virtual {v3, v8, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    const/4 v6, 0x4

    .line 40
    const/4 v7, 0x0

    .line 41
    const-string v2, "reward_show"

    .line 42
    .line 43
    const-wide/16 v4, 0x0

    .line 44
    .line 45
    move-object v1, v9

    .line 46
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Landroid/os/Bundle;

    .line 50
    .line 51
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3, v8, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v2, "reward_click"

    .line 58
    .line 59
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget-object v10, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->Y:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;

    .line 63
    .line 64
    iget-object v11, v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$j0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 65
    .line 66
    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 67
    .line 68
    const/16 v16, 0x10

    .line 69
    .line 70
    const/16 v17, 0x0

    .line 71
    .line 72
    const-string v12, "immersion_page"

    .line 73
    .line 74
    const/4 v13, 0x1

    .line 75
    const/4 v15, 0x0

    .line 76
    invoke-static/range {v10 .. v17}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;->d(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a;Landroid/content/Context;Ljava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public onClose()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$j0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->O3(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$j0;->a:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Z1(Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;)Lcom/startshorts/androidplayer/ui/view/task/DailyWatchDramaTaskView;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 21
    .line 22
    new-instance v4, Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v0, "scene"

    .line 28
    .line 29
    const-string v1, "immersion_page"

    .line 30
    .line 31
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    const/4 v7, 0x4

    .line 37
    const/4 v8, 0x0

    .line 38
    const-string v3, "reward_floating_window_close"

    .line 39
    .line 40
    const-wide/16 v5, 0x0

    .line 41
    .line 42
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method
