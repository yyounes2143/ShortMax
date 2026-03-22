.class public final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h0;
.super Lmk/b;
.source "RewardsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->x2(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h0;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h0;->b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 4
    .line 5
    invoke-direct {p0}, Lmk/b;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h0;->b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->I1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->a:Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->j()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public b(ZLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string p1, "permissions"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    new-instance v2, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h0;->a:Ljava/lang/String;

    .line 14
    .line 15
    const-string p2, "scene"

    .line 16
    .line 17
    const-string v1, "task"

    .line 18
    .line 19
    invoke-virtual {v2, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string p2, "from"

    .line 23
    .line 24
    invoke-virtual {v2, p2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    const/4 v5, 0x4

    .line 30
    const/4 v6, 0x0

    .line 31
    const-string v1, "not_permission_success"

    .line 32
    .line 33
    const-wide/16 v3, 0x0

    .line 34
    .line 35
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 39
    .line 40
    const/4 p2, 0x1

    .line 41
    const/4 v0, 0x0

    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-static {p1, v1, p2, v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->f(Lcom/startshorts/androidplayer/manager/push/PushManager;ZILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h0;->b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 47
    .line 48
    const-string p2, "requestNotificationPermission onGranted"

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h0;->b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->I1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public c()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h0;->a:Ljava/lang/String;

    .line 9
    .line 10
    const-string v3, "scene"

    .line 11
    .line 12
    const-string v4, "task"

    .line 13
    .line 14
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v3, "from"

    .line 18
    .line 19
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    const/4 v6, 0x0

    .line 26
    const-string v1, "system_not_permission_show"

    .line 27
    .line 28
    const-wide/16 v3, 0x0

    .line 29
    .line 30
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
