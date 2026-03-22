.class public Lcom/ss/ttvideoengine/net/LocalDNS;
.super Lcom/ss/ttvideoengine/net/BaseDNS;
.source "LocalDNS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/net/LocalDNS$MyRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalDNS"

.field private static final TIME_OUT:I = 0x2710


# instance fields
.field private mAddress:Ljava/net/InetAddress;

.field private mFuture:Ljava/util/concurrent/Future;

.field private mRet:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/net/BaseDNS;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/net/LocalDNS;->mRet:Z

    .line 6
    .line 7
    const-string p1, "LocalDNS"

    .line 8
    .line 9
    const-string v0, "DNS use LocalDNS"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/net/LocalDNS;)Ljava/net/InetAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/net/LocalDNS;->mAddress:Ljava/net/InetAddress;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$002(Lcom/ss/ttvideoengine/net/LocalDNS;Ljava/net/InetAddress;)Ljava/net/InetAddress;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/net/LocalDNS;->mAddress:Ljava/net/InetAddress;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/net/LocalDNS;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/ttvideoengine/net/LocalDNS;->mRet:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/ss/ttvideoengine/net/LocalDNS;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/net/LocalDNS;->mRet:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mCancelled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mCancelled:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/LocalDNS;->mFuture:Ljava/util/concurrent/Future;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/ss/ttvideoengine/net/LocalDNS;->mFuture:Ljava/util/concurrent/Future;

    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ss/ttvideoengine/net/BaseDNS;->close()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mCancelled:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/ss/ttvideoengine/net/LocalDNS;->mFuture:Ljava/util/concurrent/Future;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/ss/ttvideoengine/net/LocalDNS;->mFuture:Ljava/util/concurrent/Future;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lcom/ss/ttvideoengine/net/LocalDNS$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/ss/ttvideoengine/net/LocalDNS$1;-><init>(Lcom/ss/ttvideoengine/net/LocalDNS;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/ss/ttvideoengine/net/LocalDNS;->mFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    new-instance v1, Lcom/ss/ttvideoengine/utils/Error;

    .line 15
    .line 16
    const/16 v2, -0x26f0

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v3, "kTTVideoErrorDomainLocalDNS"

    .line 23
    .line 24
    invoke-direct {v1, v3, v2, v0}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v1}, Lcom/ss/ttvideoengine/net/BaseDNS;->notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/BaseDNS;->mHandler:Landroid/os/Handler;

    .line 31
    .line 32
    new-instance v1, Lcom/ss/ttvideoengine/net/LocalDNS$MyRunnable;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/ss/ttvideoengine/net/LocalDNS$MyRunnable;-><init>(Lcom/ss/ttvideoengine/net/LocalDNS;)V

    .line 35
    .line 36
    .line 37
    const-wide/16 v2, 0x2710

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 40
    .line 41
    .line 42
    return-void
.end method
