.class public final Lcom/startshorts/androidplayer/ui/activity/notification/DaemonNotificationActivity$c;
.super Lyd/d;
.source "DaemonNotificationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/notification/DaemonNotificationActivity;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/activity/notification/DaemonNotificationActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/notification/DaemonNotificationActivity;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DaemonNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/DaemonNotificationActivity;

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


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 10

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->d()V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lrf/c;->a:Lrf/c;

    .line 17
    .line 18
    invoke-virtual {p1}, Lrf/c;->a()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DaemonNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/DaemonNotificationActivity;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/notification/DaemonNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/DaemonNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/DaemonNotification;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const/4 v1, 0x0

    .line 28
    const-string v2, "mNotification"

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v0, v1

    .line 36
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/notification/DaemonNotification;->getWakeUp()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 43
    .line 44
    new-instance v5, Landroid/os/Bundle;

    .line 45
    .line 46
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DaemonNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/DaemonNotificationActivity;

    .line 50
    .line 51
    const-string v4, "push_name"

    .line 52
    .line 53
    const-string v6, "wake_up"

    .line 54
    .line 55
    invoke-virtual {v5, v4, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/notification/DaemonNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/DaemonNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/DaemonNotification;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    if-nez v4, :cond_1

    .line 63
    .line 64
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    move-object v4, v1

    .line 68
    :cond_1
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/notification/DaemonNotification;->getTitle()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    const-string v6, "title"

    .line 73
    .line 74
    invoke-virtual {v5, v6, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/notification/DaemonNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/DaemonNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/DaemonNotification;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    move-object v1, v0

    .line 88
    :goto_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/notification/DaemonNotification;->getContent()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    const-string v1, "content"

    .line 93
    .line 94
    invoke-virtual {v5, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 98
    .line 99
    const/4 v8, 0x4

    .line 100
    const/4 v9, 0x0

    .line 101
    const-string v4, "push_open"

    .line 102
    .line 103
    const-wide/16 v6, 0x0

    .line 104
    .line 105
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    :cond_3
    const/4 v0, 0x1

    .line 109
    invoke-virtual {p1, v0}, Lrf/c;->y(Z)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DaemonNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/DaemonNotificationActivity;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/notification/BaseNotificationActivity;->H()V

    .line 115
    .line 116
    .line 117
    return-void
.end method
