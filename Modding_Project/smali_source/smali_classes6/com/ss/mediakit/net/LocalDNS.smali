.class public Lcom/ss/mediakit/net/LocalDNS;
.super Lcom/ss/mediakit/net/BaseDNS;
.source "LocalDNS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/mediakit/net/LocalDNS$MyRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalDNS"

.field private static final TIME_OUT:I = 0x2710


# instance fields
.field private mAddress:[Ljava/net/InetAddress;

.field private mFuture:Ljava/util/concurrent/Future;

.field private mRet:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/mediakit/net/BaseDNS;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/ss/mediakit/net/LocalDNS;->mRet:Z

    .line 6
    .line 7
    return-void
.end method

.method static synthetic access$000(Lcom/ss/mediakit/net/LocalDNS;)[Ljava/net/InetAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/mediakit/net/LocalDNS;->mAddress:[Ljava/net/InetAddress;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$002(Lcom/ss/mediakit/net/LocalDNS;[Ljava/net/InetAddress;)[Ljava/net/InetAddress;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/mediakit/net/LocalDNS;->mAddress:[Ljava/net/InetAddress;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lcom/ss/mediakit/net/LocalDNS;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/ss/mediakit/net/LocalDNS;->mRet:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/ss/mediakit/net/LocalDNS;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/mediakit/net/LocalDNS;->mRet:Z

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/ss/mediakit/net/BaseDNS;->mCancelled:Z

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
    iput-boolean v0, p0, Lcom/ss/mediakit/net/BaseDNS;->mCancelled:Z

    .line 8
    .line 9
    iget-object v1, p0, Lcom/ss/mediakit/net/LocalDNS;->mFuture:Ljava/util/concurrent/Future;

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
    iput-object v0, p0, Lcom/ss/mediakit/net/LocalDNS;->mFuture:Ljava/util/concurrent/Future;

    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public close()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/ss/mediakit/net/BaseDNS;->close()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/ss/mediakit/net/LocalDNS;->mFuture:Ljava/util/concurrent/Future;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/ss/mediakit/net/LocalDNS;->mFuture:Ljava/util/concurrent/Future;

    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/mediakit/net/LocalDNS;->mRet:Z

    .line 2
    .line 3
    return v0
.end method

.method public start()V
    .locals 9

    .line 1
    :try_start_0
    new-instance v0, Lcom/ss/mediakit/net/LocalDNS$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/ss/mediakit/net/LocalDNS$1;-><init>(Lcom/ss/mediakit/net/LocalDNS;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/ss/mediakit/net/AVMDLThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/ss/mediakit/net/LocalDNS;->mFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception v0

    .line 14
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 17
    .line 18
    filled-new-array {v0, v2}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "****end call local dns, exception:%s host:%s"

    .line 23
    .line 24
    invoke-static {v1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "LocalDNS"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/ss/mediakit/net/AVMDLDNSInfo;

    .line 34
    .line 35
    iget-object v4, p0, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 36
    .line 37
    const-wide/16 v6, 0x0

    .line 38
    .line 39
    iget-object v8, p0, Lcom/ss/mediakit/net/BaseDNS;->mId:Ljava/lang/String;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v5, 0x0

    .line 43
    move-object v2, v0

    .line 44
    invoke-direct/range {v2 .. v8}, Lcom/ss/mediakit/net/AVMDLDNSInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/ss/mediakit/net/BaseDNS;->notifyError(Lcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    iget-object v0, p0, Lcom/ss/mediakit/net/BaseDNS;->mHandler:Landroid/os/Handler;

    .line 51
    .line 52
    new-instance v1, Lcom/ss/mediakit/net/LocalDNS$MyRunnable;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/ss/mediakit/net/LocalDNS$MyRunnable;-><init>(Lcom/ss/mediakit/net/LocalDNS;)V

    .line 55
    .line 56
    .line 57
    const-wide/16 v2, 0x2710

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    .line 61
    .line 62
    return-void
.end method
