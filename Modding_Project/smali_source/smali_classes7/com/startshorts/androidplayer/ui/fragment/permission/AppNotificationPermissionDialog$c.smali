.class public final Lcom/startshorts/androidplayer/ui/fragment/permission/AppNotificationPermissionDialog$c;
.super Lyd/d;
.source "AppNotificationPermissionDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/permission/AppNotificationPermissionDialog;->a0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/permission/AppNotificationPermissionDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/permission/AppNotificationPermissionDialog;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/AppNotificationPermissionDialog$c;->e:Lcom/startshorts/androidplayer/ui/fragment/permission/AppNotificationPermissionDialog;

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

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/fragment/permission/AppNotificationPermissionDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/permission/AppNotificationPermissionDialog$c;->c(Lcom/startshorts/androidplayer/ui/fragment/permission/AppNotificationPermissionDialog;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Lcom/startshorts/androidplayer/ui/fragment/permission/AppNotificationPermissionDialog;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->a:Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->c()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
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
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    const/4 v6, 0x6

    .line 9
    const/4 v7, 0x0

    .line 10
    const-string v2, "noti_popup_click"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    move-object v1, p1

    .line 16
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    new-instance v3, Landroid/os/Bundle;

    .line 20
    .line 21
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v0, "from"

    .line 25
    .line 26
    const-string v1, "discover"

    .line 27
    .line 28
    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "type"

    .line 32
    .line 33
    const-string v1, "newbie_task"

    .line 34
    .line 35
    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v0, "task_name"

    .line 39
    .line 40
    const-string v1, "customize"

    .line 41
    .line 42
    invoke-virtual {v3, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    const/4 v6, 0x4

    .line 48
    const-string v2, "task_click"

    .line 49
    .line 50
    move-object v1, p1

    .line 51
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/AppNotificationPermissionDialog$c;->e:Lcom/startshorts/androidplayer/ui/fragment/permission/AppNotificationPermissionDialog;

    .line 55
    .line 56
    new-instance v0, Lri/a;

    .line 57
    .line 58
    invoke-direct {v0, p1}, Lri/a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/permission/AppNotificationPermissionDialog;)V

    .line 59
    .line 60
    .line 61
    const/4 v1, 0x0

    .line 62
    const/4 v2, 0x2

    .line 63
    invoke-static {p1, v0, v1, v2, v1}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->Q(Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    return-void
.end method
