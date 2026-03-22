.class public final Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity$c;
.super Lyd/d;
.source "DefaultCheckInNotificationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;

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
    .locals 8

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
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushType;->CHECK_IN:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->f(Lcom/startshorts/androidplayer/manager/push/task/PushType;)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/push/PushManager;->l()V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lrf/c;->a:Lrf/c;

    .line 19
    .line 20
    invoke-virtual {p1}, Lrf/c;->a()V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, v0}, Lrf/c;->x(Z)V

    .line 25
    .line 26
    .line 27
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 28
    .line 29
    new-instance v3, Landroid/os/Bundle;

    .line 30
    .line 31
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;

    .line 35
    .line 36
    const-string v0, "push_name"

    .line 37
    .line 38
    const-string v2, "check_in_alert"

    .line 39
    .line 40
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v2, 0x0

    .line 48
    const-string v4, "mNotification"

    .line 49
    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    move-object v0, v2

    .line 56
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;->getTitle()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v5, "title"

    .line 61
    .line 62
    invoke-virtual {v3, v5, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;->J(Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;)Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-nez p1, :cond_1

    .line 70
    .line 71
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    move-object v2, p1

    .line 76
    :goto_0
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;->getContent()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string v0, "content"

    .line 81
    .line 82
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 86
    .line 87
    const/4 v6, 0x4

    .line 88
    const/4 v7, 0x0

    .line 89
    const-string v2, "push_open"

    .line 90
    .line 91
    const-wide/16 v4, 0x0

    .line 92
    .line 93
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity$c;->e:Lcom/startshorts/androidplayer/ui/activity/notification/DefaultCheckInNotificationActivity;

    .line 97
    .line 98
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/notification/BaseNotificationActivity;->H()V

    .line 99
    .line 100
    .line 101
    return-void
.end method
