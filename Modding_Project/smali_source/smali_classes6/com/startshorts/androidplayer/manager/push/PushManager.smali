.class public final Lcom/startshorts/androidplayer/manager/push/PushManager;
.super Ljava/lang/Object;
.source "PushManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/push/PushManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static c:Z

.field private static d:Lrf/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/push/PushManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->b:Ljava/lang/Object;

    .line 14
    .line 15
    const-string v0, "-1"

    .line 16
    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->e:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x21

    .line 4
    .line 5
    if-lt v0, v1, :cond_1

    .line 6
    .line 7
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 8
    .line 9
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "android.permission.POST_NOTIFICATIONS"

    .line 14
    .line 15
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0

    .line 25
    :cond_1
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 26
    .line 27
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "from(...)"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    return v0
.end method

.method public static synthetic f(Lcom/startshorts/androidplayer/manager/push/PushManager;ZILjava/lang/Object;)Lkotlinx/coroutines/r;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/push/PushManager;->e(Z)Lkotlinx/coroutines/r;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->d:Lrf/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lrf/b;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->d:Lrf/b;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {v0}, Lrf/b;->e()V

    .line 11
    .line 12
    .line 13
    :cond_1
    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/push/PushManager;->d:Lrf/b;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 9
    .line 10
    const-string v2, "PushManager"

    .line 11
    .line 12
    const-string v3, "create DefaultPushManager"

    .line 13
    .line 14
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;-><init>()V

    .line 20
    .line 21
    .line 22
    sput-object v1, Lcom/startshorts/androidplayer/manager/push/PushManager;->d:Lrf/b;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception v1

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :goto_1
    monitor-exit v0

    .line 32
    throw v1
.end method

.method public final e(Z)Lkotlinx/coroutines/r;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/manager/push/PushManager$pushPermanentNotification$1;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {v3, p1}, Lcom/startshorts/androidplayer/manager/push/PushManager$pushPermanentNotification$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "pushPermanentNotification"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final g()V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->d:Lrf/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lrf/b;->c()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final h(Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getShortId()Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getDramaNum()Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v1, -0x1

    .line 30
    :goto_1
    if-lez v0, :cond_3

    .line 31
    .line 32
    if-gez v1, :cond_2

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_2
    const/4 v0, 0x1

    .line 36
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->c:Z

    .line 37
    .line 38
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->d:Lrf/b;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-interface {v0, p1}, Lrf/b;->b(Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;)V

    .line 43
    .line 44
    .line 45
    :cond_3
    :goto_2
    return-void
.end method

.method public final i()V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->d:Lrf/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lrf/b;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final j()V
    .locals 10

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/TimeUtil;->b()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/startshorts/androidplayer/manager/push/PushManager;->e:Ljava/lang/String;

    .line 12
    .line 13
    const-string v2, "-1"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    sget-object v1, Lud/b;->a:Lud/b;

    .line 22
    .line 23
    invoke-virtual {v1}, Lud/b;->R0()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sput-object v1, Lcom/startshorts/androidplayer/manager/push/PushManager;->e:Ljava/lang/String;

    .line 28
    .line 29
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/push/PushManager;->e:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    return-void

    .line 38
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->a()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    sget-object v2, Lfk/u;->a:Lfk/u;

    .line 43
    .line 44
    invoke-virtual {v2}, Lfk/u;->b()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v2}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 53
    .line 54
    new-instance v5, Landroid/os/Bundle;

    .line 55
    .line 56
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v4, "0"

    .line 60
    .line 61
    const-string v6, "1"

    .line 62
    .line 63
    if-eqz v1, :cond_2

    .line 64
    .line 65
    move-object v1, v6

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    move-object v1, v4

    .line 68
    :goto_0
    const-string v7, "notification"

    .line 69
    .line 70
    invoke-virtual {v5, v7, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    move-object v4, v6

    .line 76
    :cond_3
    const-string v1, "floating_window"

    .line 77
    .line 78
    invoke-virtual {v5, v1, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    const/4 v8, 0x4

    .line 84
    const/4 v9, 0x0

    .line 85
    const-string v4, "permissions_dau"

    .line 86
    .line 87
    const-wide/16 v6, 0x0

    .line 88
    .line 89
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->e:Ljava/lang/String;

    .line 93
    .line 94
    sget-object v0, Lud/b;->a:Lud/b;

    .line 95
    .line 96
    sget-object v1, Lcom/startshorts/androidplayer/manager/push/PushManager;->e:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Lud/b;->d4(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method public final k()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/push/PushManager;->d()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->d:Lrf/b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lrf/b;->start()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->d:Lrf/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lrf/b;->stop()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
