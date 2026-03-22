.class Lcom/ss/ttvideoengine/TTNetWorkListener$MyThread;
.super Ljava/lang/Thread;
.source "TTNetWorkListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTNetWorkListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyThread"
.end annotation


# instance fields
.field private mContextRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mTTNetworkListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/TTNetWorkListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ss/ttvideoengine/TTNetWorkListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener$MyThread;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 16
    .line 17
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener$MyThread;->mTTNetworkListener:Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineUtils;->getSensitiveScene()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x2

    .line 18
    if-eq v0, v2, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    if-eq v0, v2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getInstance()Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->access$302(Lcom/ss/ttvideoengine/TTNetWorkListener;Z)Z

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "is wifi sensitive mode:"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string v1, "TTNetWorkListener"

    .line 49
    .line 50
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    invoke-static {}, Lcom/ss/ttvideoengine/TTNetWorkListener;->getInstance()Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener$MyThread;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Landroid/content/Context;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->registerListener(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTNetWorkListener$MyThread;->mTTNetworkListener:Ljava/lang/ref/WeakReference;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/ss/ttvideoengine/TTNetWorkListener;

    .line 78
    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    iget-object v1, p0, Lcom/ss/ttvideoengine/TTNetWorkListener$MyThread;->mContextRef:Ljava/lang/ref/WeakReference;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/TTNetWorkListener;->unregisterListener(Landroid/content/Context;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    return-void
.end method
