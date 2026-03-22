.class public Lcom/bytedance/sdk/openadsdk/utils/oJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/oJ$cFZ;,
        Lcom/bytedance/sdk/openadsdk/utils/oJ$ZYk;,
        Lcom/bytedance/sdk/openadsdk/utils/oJ$tB;,
        Lcom/bytedance/sdk/openadsdk/utils/oJ$ex;,
        Lcom/bytedance/sdk/openadsdk/utils/oJ$Pfn;,
        Lcom/bytedance/sdk/openadsdk/utils/oJ$ba;,
        Lcom/bytedance/sdk/openadsdk/utils/oJ$oJ;
    }
.end annotation


# static fields
.field public static ZYk:J = 0x0L

.field public static oJ:Z = false

.field public static tB:J


# instance fields
.field private BTZ:Landroid/os/HandlerThread;

.field private final Pfn:Lcom/bytedance/sdk/openadsdk/utils/oJ$oJ;

.field private PiB:Landroid/os/Handler;

.field private volatile WcQ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final awB:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private final ba:Lcom/bytedance/sdk/openadsdk/utils/oJ$ba;

.field private final cFZ:Lcom/bytedance/sdk/openadsdk/utils/oJ$Pfn;

.field private volatile dLZ:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/component/adexpress/oJ;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ex:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final jFA:Lcom/bytedance/sdk/openadsdk/utils/oJ$ex;

.field private kkU:I

.field private final so:Lcom/bytedance/sdk/openadsdk/utils/oJ$ex;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/oJ$oJ;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/oJ$oJ;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/utils/oJ$oJ;

    .line 18
    .line 19
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/oJ$ba;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/oJ$ba;-><init>(Lcom/bytedance/sdk/openadsdk/utils/oJ;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->ba:Lcom/bytedance/sdk/openadsdk/utils/oJ$ba;

    .line 25
    .line 26
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/oJ$Pfn;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/oJ$Pfn;-><init>(Lcom/bytedance/sdk/openadsdk/utils/oJ;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/utils/oJ$Pfn;

    .line 32
    .line 33
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/oJ$ZYk;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/oJ$ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/utils/oJ$1;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->so:Lcom/bytedance/sdk/openadsdk/utils/oJ$ex;

    .line 40
    .line 41
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/oJ$tB;

    .line 42
    .line 43
    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/oJ$tB;-><init>(Lcom/bytedance/sdk/openadsdk/utils/oJ$1;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->jFA:Lcom/bytedance/sdk/openadsdk/utils/oJ$ex;

    .line 47
    .line 48
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->kkU:I

    .line 49
    .line 50
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->dLZ:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 56
    .line 57
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->BTZ:Landroid/os/HandlerThread;

    .line 58
    .line 59
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->PiB:Landroid/os/Handler;

    .line 60
    .line 61
    new-instance v0, Ljava/util/LinkedList;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->awB:Ljava/util/LinkedList;

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/oJ;->tB()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/utils/oJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/oJ;->ex()V

    return-void
.end method

.method private ex()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ex/oJ/oJ;->oJ()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/utils/oJ;)Lcom/bytedance/sdk/openadsdk/utils/oJ$oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->Pfn:Lcom/bytedance/sdk/openadsdk/utils/oJ$oJ;

    return-object p0
.end method

.method private oJ(Ljava/lang/Runnable;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->BTZ:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/oJ;->tB()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->PiB:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private tB()V
    .locals 2

    .line 1
    const-string v0, "lifecycle"

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/so;->oJ(Ljava/lang/String;I)Landroid/os/HandlerThread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->BTZ:Landroid/os/HandlerThread;

    .line 10
    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->BTZ:Landroid/os/HandlerThread;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->PiB:Landroid/os/Handler;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public ZYk()Landroid/app/Activity;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->awB:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->awB:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ZYk(Lcom/bytedance/sdk/component/adexpress/oJ;)Z
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->dLZ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/oJ;)V
    .locals 1

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->dLZ:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public oJ()Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public oJ(Z)Z
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->WcQ:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->WcQ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    return p1

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_2

    return p1

    .line 11
    :cond_2
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result p1

    return p1
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->awB:Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->dLZ:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->dLZ:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->dLZ:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :catchall_0
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/bytedance/sdk/component/adexpress/oJ;

    .line 44
    .line 45
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/component/adexpress/oJ;->oJ(Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->WcQ:Ljava/lang/ref/WeakReference;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->WcQ:Ljava/lang/ref/WeakReference;

    .line 54
    .line 55
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    if-ne v0, p1, :cond_2

    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->WcQ:Ljava/lang/ref/WeakReference;

    .line 63
    .line 64
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->awB:Ljava/util/LinkedList;

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->kkU:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, -0x1

    .line 4
    .line 5
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->kkU:I

    .line 6
    .line 7
    if-gez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->kkU:I

    .line 11
    .line 12
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->isIsInit()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/utils/oJ$Pfn;

    .line 19
    .line 20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/oJ;->oJ(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->ba:Lcom/bytedance/sdk/openadsdk/utils/oJ$ba;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/oJ;->oJ(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->oJ:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    sput-wide v0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->ZYk:J

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->oJ:Z

    .line 18
    .line 19
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->WcQ:Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/oJ$1;

    .line 18
    .line 19
    invoke-direct {v1, p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/oJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/utils/oJ;Landroid/view/View;Landroid/app/Activity;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    const-string v0, "TTAD.ActivityLifecycle"

    .line 28
    .line 29
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    :goto_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->kkU:I

    .line 37
    .line 38
    add-int/lit8 p1, p1, 0x1

    .line 39
    .line 40
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->kkU:I

    .line 41
    .line 42
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->PiB:Landroid/os/Handler;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->jFA:Lcom/bytedance/sdk/openadsdk/utils/oJ$ex;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->PiB:Landroid/os/Handler;

    .line 58
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->so:Lcom/bytedance/sdk/openadsdk/utils/oJ$ex;

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->jFA:Lcom/bytedance/sdk/openadsdk/utils/oJ$ex;

    .line 65
    .line 66
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/oJ;->oJ(Ljava/lang/Runnable;)V

    .line 67
    .line 68
    .line 69
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 7

    .line 1
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->kkU:I

    .line 2
    .line 3
    if-gtz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/utils/oJ;->oJ()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    sput-boolean p1, Lcom/bytedance/sdk/openadsdk/utils/oJ;->oJ:Z

    .line 19
    .line 20
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    sput-wide v0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->tB:J

    .line 30
    .line 31
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->PiB:Landroid/os/Handler;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->jFA:Lcom/bytedance/sdk/openadsdk/utils/oJ$ex;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->PiB:Landroid/os/Handler;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->so:Lcom/bytedance/sdk/openadsdk/utils/oJ$ex;

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ;->so:Lcom/bytedance/sdk/openadsdk/utils/oJ$ex;

    .line 46
    .line 47
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/oJ;->oJ(Ljava/lang/Runnable;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/utils/oJ$cFZ;

    .line 51
    .line 52
    sget-wide v2, Lcom/bytedance/sdk/openadsdk/utils/oJ;->ZYk:J

    .line 53
    .line 54
    sget-wide v4, Lcom/bytedance/sdk/openadsdk/utils/oJ;->tB:J

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/utils/oJ;->oJ()Z

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    move-object v0, p1

    .line 61
    move-object v1, p0

    .line 62
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/utils/oJ$cFZ;-><init>(Lcom/bytedance/sdk/openadsdk/utils/oJ;JJZ)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/oJ;->oJ(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method
