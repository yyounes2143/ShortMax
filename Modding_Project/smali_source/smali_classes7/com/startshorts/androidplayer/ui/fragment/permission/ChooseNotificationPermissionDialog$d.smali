.class public final Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$d;
.super Lyd/d;
.source "ChooseNotificationPermissionDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;->h0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;

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
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    new-instance v3, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->N()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "scene"

    .line 20
    .line 21
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v0, "select"

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->O()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    const/4 v6, 0x4

    .line 36
    const/4 v7, 0x0

    .line 37
    const-string v2, "noti_select_popup_click"

    .line 38
    .line 39
    const-wide/16 v4, 0x0

    .line 40
    .line 41
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog$d;->e:Lcom/startshorts/androidplayer/ui/fragment/permission/ChooseNotificationPermissionDialog;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    const/4 v1, 0x3

    .line 48
    invoke-static {p1, v0, v0, v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->Q(Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
