.class public Lcom/ss/vcbkit/UnExpected;
.super Ljava/lang/Object;
.source "UnExpected.java"


# annotations
.annotation build Lcom/ss/vcbkit/Keep;
.end annotation


# static fields
.field private static isModuleLoaded:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
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

.method static init()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ss/vcbkit/UnExpected;->isModuleLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/crash/Ensure;->getInstance()Lcom/bytedance/crash/EnsureImpl;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    sput-boolean v0, Lcom/ss/vcbkit/UnExpected;->isModuleLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    const/4 v0, 0x0

    .line 14
    sput-boolean v0, Lcom/ss/vcbkit/UnExpected;->isModuleLoaded:Z

    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method public static notReachHere(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/ss/vcbkit/UnExpected;->isModuleLoaded:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Lcom/bytedance/crash/Ensure;->ensureNotReachHere(Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static notReachHere(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 3
    sget-boolean v0, Lcom/ss/vcbkit/UnExpected;->isModuleLoaded:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0, p1, p2}, Lcom/bytedance/crash/Ensure;->ensureNotReachHere(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private static notReachHereNative(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation build Lcom/ss/vcbkit/Keep;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-boolean v0, Lcom/ss/vcbkit/UnExpected;->isModuleLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, ""

    .line 14
    .line 15
    invoke-static {p0, v1, v0, p1, p2}, Lcom/bytedance/crash/Ensure;->ensureNativeStack(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
