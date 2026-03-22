.class public Lcom/bytedance/vcloud/vctrace/VCTrace;
.super Ljava/lang/Object;
.source "VCTrace.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VCTraceManager"

.field public static final VCKeyAppTraceHostUpdate:I = 0x2711

.field public static final VCKeyConfigAppSessionID:I = 0x2713

.field public static final VCKeyConfigDeviceID:I = 0x2714

.field public static final VCKeyConfigSetCacheDir:I = 0x2712


# instance fields
.field private mLoaded:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/vcloud/vctrace/VCTrace;->mLoaded:Z

    .line 6
    .line 7
    return-void
.end method

.method private native _setIOManager(JJ)V
.end method

.method private native _setStringValue(ILjava/lang/String;)V
.end method


# virtual methods
.method public create(Landroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/vcloud/vctrace/VCTrace;->isLoadLibrarySucceed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    if-eqz p2, :cond_1

    .line 8
    .line 9
    invoke-static {p1}, Lcom/bytedance/vcloud/vctrace/JNILoader;->loadLibrary(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    sget-boolean p1, Lcom/bytedance/vcloud/vctrace/JNILoader;->isLibraryLoaded:Z

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, "VCTraceManager"

    .line 17
    .line 18
    const-string p2, "load library fail."

    .line 19
    .line 20
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/bytedance/vcloud/vctrace/VCTrace;->mLoaded:Z

    .line 26
    .line 27
    :cond_1
    :goto_0
    return-void
.end method

.method public isLoadLibrarySucceed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/vcloud/vctrace/VCTrace;->mLoaded:Z

    .line 2
    .line 3
    return v0
.end method

.method public setIOManager(JJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/vcloud/vctrace/VCTrace;->_setIOManager(JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setStringValue(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/vcloud/vctrace/VCTrace;->mLoaded:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/vcloud/vctrace/VCTrace;->_setStringValue(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    const-string p2, "VCTraceManager"

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method
