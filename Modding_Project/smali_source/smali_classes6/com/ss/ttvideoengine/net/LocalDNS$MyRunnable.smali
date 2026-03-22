.class Lcom/ss/ttvideoengine/net/LocalDNS$MyRunnable;
.super Ljava/lang/Object;
.source "LocalDNS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/net/LocalDNS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyRunnable"
.end annotation


# instance fields
.field private final mLocalDNSRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/net/LocalDNS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/net/LocalDNS;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/net/LocalDNS$MyRunnable;->mLocalDNSRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/LocalDNS$MyRunnable;->mLocalDNSRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const-class v1, Lcom/ss/ttvideoengine/net/LocalDNS;

    .line 13
    .line 14
    monitor-enter v1

    .line 15
    :try_start_0
    invoke-static {v0}, Lcom/ss/ttvideoengine/net/LocalDNS;->access$100(Lcom/ss/ttvideoengine/net/LocalDNS;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    invoke-static {v0, v2}, Lcom/ss/ttvideoengine/net/LocalDNS;->access$102(Lcom/ss/ttvideoengine/net/LocalDNS;Z)Z

    .line 23
    .line 24
    .line 25
    new-instance v2, Lcom/ss/ttvideoengine/utils/Error;

    .line 26
    .line 27
    const-string v3, "kTTVideoErrorDomainLocalDNS"

    .line 28
    .line 29
    const/16 v4, -0x2710

    .line 30
    .line 31
    invoke-direct {v2, v3, v4}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Lcom/ss/ttvideoengine/net/BaseDNS;->notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    monitor-exit v1

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    throw v0
.end method
