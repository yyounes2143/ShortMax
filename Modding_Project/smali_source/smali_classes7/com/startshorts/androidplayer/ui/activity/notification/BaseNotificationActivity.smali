.class public Lcom/startshorts/androidplayer/ui/activity/notification/BaseNotificationActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;
.source "BaseNotificationActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VDB:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity<",
        "TVDB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final I()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 15
    .line 16
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 17
    .line 18
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    sget-object v4, Lfk/z;->a:Lfk/z;

    .line 23
    .line 24
    invoke-virtual {v4}, Lfk/z;->d()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    add-int/2addr v3, v4

    .line 29
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 30
    .line 31
    const/16 v3, 0x30

    .line 32
    .line 33
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    const/high16 v3, 0x41200000    # 10.0f

    .line 40
    .line 41
    invoke-static {v3}, Ljk/g;->a(F)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    mul-int/lit8 v3, v3, 0x2

    .line 46
    .line 47
    sub-int/2addr v2, v3

    .line 48
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 49
    .line 50
    const/4 v2, -0x2

    .line 51
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method protected final H()V
    .locals 6

    .line 1
    sget-object v0, Lfk/c;->a:Lfk/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x1

    .line 6
    invoke-static {v0, v2, v3, v1}, Lfk/c;->c(Lfk/c;ZILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object v0, Laf/i;->a:Laf/i;

    .line 10
    .line 11
    invoke-virtual {v0}, Laf/i;->g()V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lfk/a;->a:Lfk/a;

    .line 15
    .line 16
    invoke-virtual {v0}, Lfk/a;->a()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    sget-object v1, Lud/a;->a:Lud/a;

    .line 23
    .line 24
    const-string v2, "push"

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lud/a;->Z(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-virtual {v0}, Lfk/a;->c()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Lfk/a;->g(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->A()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const-string v2, "from_notification"

    .line 46
    .line 47
    const/high16 v4, 0x10000000

    .line 48
    .line 49
    const-class v5, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;

    .line 50
    .line 51
    if-eqz v1, :cond_2

    .line 52
    .line 53
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 54
    .line 55
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    new-instance v1, Landroid/content/Intent;

    .line 60
    .line 61
    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v0}, Lfk/a;->a()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    new-instance v2, Lcom/startshorts/androidplayer/bean/eventbus/HandleNotificationNavigatorCacheEvent;

    .line 85
    .line 86
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/eventbus/HandleNotificationNavigatorCacheEvent;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, p0}, Lfk/a;->f(Landroid/content/Context;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->t()Z

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-eqz v0, :cond_4

    .line 100
    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 106
    .line 107
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    new-instance v1, Landroid/content/Intent;

    .line 112
    .line 113
    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/notification/BaseNotificationActivity;->I()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "onDestroy"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public q()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final receiveDestroyNotificationActivityEvent(Lcom/startshorts/androidplayer/bean/eventbus/DestroyNotificationActivityEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/DestroyNotificationActivityEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "receive DestroyNotificationActivityEvent -> "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/hades/aar/activity/IDActivity;->j()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/DestroyNotificationActivityEvent;->getExceptActivityId()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method
