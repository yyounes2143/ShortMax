.class public final Lcom/startshorts/androidplayer/ui/activity/RoutingActivity$b;
.super Lmk/b;
.source "RoutingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->V(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;

.field final synthetic b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity$b;->b:Lkotlin/jvm/functions/Function0;

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->U(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;Z)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->a:Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->j()V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity$b;->b:Lkotlin/jvm/functions/Function0;

    .line 18
    .line 19
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;

    .line 7
    .line 8
    const-string p2, "checkNotifyPermission onGranted"

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->U(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;Z)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 20
    .line 21
    new-instance v2, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string p1, "scene"

    .line 27
    .line 28
    const-string v1, "splash"

    .line 29
    .line 30
    invoke-virtual {v2, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p1, "from"

    .line 34
    .line 35
    const-string v1, "system"

    .line 36
    .line 37
    invoke-virtual {v2, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 41
    .line 42
    const/4 v5, 0x4

    .line 43
    const/4 v6, 0x0

    .line 44
    const-string v1, "not_permission_success"

    .line 45
    .line 46
    const-wide/16 v3, 0x0

    .line 47
    .line 48
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 52
    .line 53
    const/4 v0, 0x1

    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-static {p1, p2, v0, v1}, Lcom/startshorts/androidplayer/manager/push/PushManager;->f(Lcom/startshorts/androidplayer/manager/push/PushManager;ZILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity$b;->b:Lkotlin/jvm/functions/Function0;

    .line 59
    .line 60
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public c()V
    .locals 9

    .line 1
    invoke-super {p0}, Lmk/b;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;

    .line 5
    .line 6
    const-string v1, "checkNotifyPermission onRequest"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;->U(Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;Z)V

    .line 15
    .line 16
    .line 17
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 18
    .line 19
    new-instance v4, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "scene"

    .line 25
    .line 26
    const-string v1, "splash"

    .line 27
    .line 28
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "from"

    .line 32
    .line 33
    const-string v1, "system"

    .line 34
    .line 35
    invoke-virtual {v4, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    const/4 v7, 0x4

    .line 41
    const/4 v8, 0x0

    .line 42
    const-string v3, "system_not_permission_show"

    .line 43
    .line 44
    const-wide/16 v5, 0x0

    .line 45
    .line 46
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
