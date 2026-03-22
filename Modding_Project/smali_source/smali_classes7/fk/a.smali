.class public final Lfk/a;
.super Ljava/lang/Object;
.source "ActivityUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nActivityUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActivityUtil.kt\ncom/startshorts/androidplayer/utils/ActivityUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,139:1\n1863#2,2:140\n*S KotlinDebug\n*F\n+ 1 ActivityUtil.kt\ncom/startshorts/androidplayer/utils/ActivityUtil\n*L\n70#1:140,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lfk/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lfk/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lfk/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lfk/a;->a:Lfk/a;

    .line 7
    .line 8
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

.method private final e()Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;
    .locals 5

    .line 1
    sget-object v0, Laa/a;->a:Laa/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Laa/a;->c()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    move-object v2, v0

    .line 12
    check-cast v2, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    move-object v4, v3

    .line 29
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    instance-of v4, v4, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;

    .line 36
    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    move-object v3, v1

    .line 43
    :goto_0
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/hades/aar/activity/IDActivity;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move-object v2, v1

    .line 55
    :goto_1
    instance-of v3, v2, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;

    .line 56
    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    move-object v1, v2

    .line 60
    check-cast v1, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    :cond_3
    monitor-exit v0

    .line 63
    goto :goto_3

    .line 64
    :goto_2
    monitor-exit v0

    .line 65
    throw v1

    .line 66
    :cond_4
    :goto_3
    return-object v1
.end method

.method public static synthetic j(Lfk/a;ZZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lfk/a;->i(ZZ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lfk/a;->d()Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final b()Z
    .locals 5

    .line 1
    sget-object v0, Laa/a;->a:Laa/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Laa/a;->c()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    move-object v2, v0

    .line 12
    check-cast v2, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    move-object v4, v3

    .line 29
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    instance-of v4, v4, Lcom/startshorts/androidplayer/ui/activity/notification/BaseNotificationActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const/4 v3, 0x0

    .line 43
    :goto_0
    if-eqz v3, :cond_2

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    :cond_2
    monitor-exit v0

    .line 47
    return v1

    .line 48
    :goto_1
    monitor-exit v0

    .line 49
    throw v1

    .line 50
    :cond_3
    return v1
.end method

.method public final c()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lfk/a;->e()Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final d()Lcom/startshorts/androidplayer/ui/activity/MainActivity;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Laa/a;->a:Laa/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Laa/a;->c()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_4

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    move-object v2, v0

    .line 12
    check-cast v2, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    move-object v4, v3

    .line 29
    check-cast v4, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    instance-of v4, v4, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 36
    .line 37
    if-eqz v4, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    goto :goto_2

    .line 42
    :cond_1
    move-object v3, v1

    .line 43
    :goto_0
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Lcom/hades/aar/activity/IDActivity;

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move-object v2, v1

    .line 55
    :goto_1
    instance-of v3, v2, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 56
    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    move-object v1, v2

    .line 60
    check-cast v1, Lcom/startshorts/androidplayer/ui/activity/MainActivity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    :cond_3
    monitor-exit v0

    .line 63
    goto :goto_3

    .line 64
    :goto_2
    monitor-exit v0

    .line 65
    throw v1

    .line 66
    :cond_4
    :goto_3
    return-object v1
.end method

.method public final f(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lfk/a;->d()Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 17
    .line 18
    invoke-virtual {v1, p1, v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->k0(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final g(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lfk/a;->e()Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/app/Activity;->getTaskId()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 17
    .line 18
    invoke-virtual {v1, p1, v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->k0(Landroid/content/Context;I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final h(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1e

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1, v2}, Lcom/applovin/adview/a;->a(Landroid/view/Window;Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v1}, Landroidx/core/view/h2;->a(Landroid/view/Window;)Landroid/view/WindowInsetsController;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-static {}, Landroidx/core/view/y1;->a()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-static {v1, v3}, Landroidx/core/view/c0;->a(Landroid/view/WindowInsetsController;I)V

    .line 35
    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    invoke-static {v1, v3}, Landroidx/core/view/i2;->a(Landroid/view/WindowInsetsController;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const/16 v3, 0x504

    .line 51
    .line 52
    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 60
    .line 61
    .line 62
    const/16 v1, 0x1c

    .line 63
    .line 64
    if-lt v0, v1, :cond_2

    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const/4 v0, 0x1

    .line 75
    invoke-static {p1, v0}, Lcom/applovin/adview/b;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void
.end method

.method public final i(ZZ)V
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-wide v2, Lfk/a;->b:J

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-gez v2, :cond_0

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    sput-wide v2, Lfk/a;->b:J

    .line 16
    .line 17
    :cond_0
    sget-wide v2, Lfk/a;->b:J

    .line 18
    .line 19
    sub-long v2, v0, v2

    .line 20
    .line 21
    const-wide/16 v4, 0x1f4

    .line 22
    .line 23
    cmp-long v2, v2, v4

    .line 24
    .line 25
    const-string v3, "ActivityUtil"

    .line 26
    .line 27
    if-gez v2, :cond_1

    .line 28
    .line 29
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 30
    .line 31
    const-string p2, "showRoutingActivity failed -> too frequently"

    .line 32
    .line 33
    invoke-virtual {p1, v3, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    sput-wide v0, Lfk/a;->b:J

    .line 38
    .line 39
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v2, "showRoutingActivity -> fromNotification("

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const/16 v2, 0x29

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 67
    .line 68
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v1, Landroid/content/Intent;

    .line 73
    .line 74
    const-class v2, Lcom/startshorts/androidplayer/ui/activity/RoutingActivity;

    .line 75
    .line 76
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    .line 78
    .line 79
    const/high16 v2, 0x10000000

    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 82
    .line 83
    .line 84
    const-string v2, "from_notification"

    .line 85
    .line 86
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    .line 88
    .line 89
    const-string p1, "quickly_pass"

    .line 90
    .line 91
    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method
