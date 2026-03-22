.class public Ltm/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltm/c$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/WeakHashMap;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ltm/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Landroid/content/BroadcastReceiver;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static final c:Landroid/content/IntentFilter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static d:Z

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/WeakHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ltm/c;->a:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    new-instance v0, Ltm/c$b;

    .line 9
    .line 10
    invoke-direct {v0}, Ltm/c$b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Ltm/c;->b:Landroid/content/BroadcastReceiver;

    .line 14
    .line 15
    new-instance v0, Landroid/content/IntentFilter;

    .line 16
    .line 17
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Ltm/c;->c:Landroid/content/IntentFilter;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    sput-boolean v1, Ltm/c;->d:Z

    .line 24
    .line 25
    sput-boolean v1, Ltm/c;->e:Z

    .line 26
    .line 27
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Ltm/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Ltm/c;->d:Z

    .line 5
    .line 6
    if-nez v1, :cond_1

    .line 7
    .line 8
    const-class v1, Ltm/c;

    .line 9
    .line 10
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    sget-boolean v2, Ltm/c;->d:Z

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    const-string v2, "power"

    .line 16
    .line 17
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Landroid/os/PowerManager;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    sput-boolean v2, Ltm/c;->e:Z

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    sget-object v2, Ltm/c;->b:Landroid/content/BroadcastReceiver;

    .line 34
    .line 35
    sget-object v3, Ltm/c;->c:Landroid/content/IntentFilter;

    .line 36
    .line 37
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x1

    .line 41
    sput-boolean p0, Ltm/c;->d:Z

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :cond_0
    :goto_0
    monitor-exit v1

    .line 47
    goto :goto_2

    .line 48
    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 49
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 50
    :catchall_1
    move-exception p0

    .line 51
    goto :goto_3

    .line 52
    :cond_1
    :goto_2
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :goto_3
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 55
    throw p0
.end method

.method static synthetic b()Z
    .locals 1

    .line 1
    sget-boolean v0, Ltm/c;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic c(Z)Z
    .locals 0

    .line 1
    sput-boolean p0, Ltm/c;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method public static d(Landroid/view/View;Ltm/c$a;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ltm/c$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ltm/c;->a(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Ltm/c;->a:Ljava/util/WeakHashMap;

    .line 9
    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-virtual {v0, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    monitor-exit v0

    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw p0
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Ltm/c;->a(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-boolean p0, Ltm/c;->e:Z

    .line 5
    .line 6
    return p0
.end method

.method public static f(Landroid/view/View;)V
    .locals 1
    .param p0    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-boolean v0, Ltm/c;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Ltm/c;->a:Ljava/util/WeakHashMap;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p0
.end method
