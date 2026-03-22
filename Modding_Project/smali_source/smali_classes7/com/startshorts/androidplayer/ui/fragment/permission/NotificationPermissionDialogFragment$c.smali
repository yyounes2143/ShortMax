.class public final Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$c;
.super Lmk/b;
.source "NotificationPermissionDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->P(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment<",
            "TVDB;>;"
        }
    .end annotation
.end field

.field final synthetic b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment<",
            "TVDB;>;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$c;->b:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$c;->c:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-direct {p0}, Lmk/b;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onDenied -> permissions("

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/16 p1, 0x29

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->q(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->a:Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->j()V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$c;->c:Lkotlin/jvm/functions/Function0;

    .line 39
    .line 40
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
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
    const-string v0, "permissions"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onGranted -> requestPermission("

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, ") permissions("

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 p1, 0x29

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->q(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;

    .line 42
    .line 43
    const/4 p2, 0x1

    .line 44
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->K(Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;Z)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->M()Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_0

    .line 54
    .line 55
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->M()Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 62
    .line 63
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_2

    .line 68
    .line 69
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 70
    .line 71
    new-instance v2, Landroid/os/Bundle;

    .line 72
    .line 73
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->N()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const-string v3, "scene"

    .line 83
    .line 84
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    const-string v1, "from"

    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->L()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->O()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-eqz p1, :cond_1

    .line 101
    .line 102
    const-string v1, "select"

    .line 103
    .line 104
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    .line 109
    const/4 v5, 0x4

    .line 110
    const/4 v6, 0x0

    .line 111
    const-string v1, "not_permission_success"

    .line 112
    .line 113
    const-wide/16 v3, 0x0

    .line 114
    .line 115
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 119
    .line 120
    const/4 v0, 0x0

    .line 121
    const/4 v1, 0x0

    .line 122
    invoke-static {p1, v0, p2, v1}, Lcom/startshorts/androidplayer/manager/push/PushManager;->f(Lcom/startshorts/androidplayer/manager/push/PushManager;ZILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$c;->b:Lkotlin/jvm/functions/Function0;

    .line 126
    .line 127
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
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
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;

    .line 9
    .line 10
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->N()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const-string v4, "scene"

    .line 15
    .line 16
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "from"

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/permission/NotificationPermissionDialogFragment;->L()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v2, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    const/4 v5, 0x4

    .line 31
    const/4 v6, 0x0

    .line 32
    const-string v1, "system_not_permission_show"

    .line 33
    .line 34
    const-wide/16 v3, 0x0

    .line 35
    .line 36
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
