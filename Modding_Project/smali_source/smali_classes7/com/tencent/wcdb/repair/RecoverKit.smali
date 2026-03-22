.class public Lcom/tencent/wcdb/repair/RecoverKit;
.super Ljava/lang/Object;
.source "RecoverKit.java"

# interfaces
.implements Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;


# static fields
.field public static final RESULT_CANCELED:I = 0x1

.field public static final RESULT_FAILED:I = -0x1

.field public static final RESULT_OK:I = 0x0

.field static final TAG:Ljava/lang/String; = "WCDB.DBBackup"


# instance fields
.field private mDB:Lcom/tencent/wcdb/database/SQLiteDatabase;

.field private mFailedCount:I

.field private mLastError:Ljava/lang/String;

.field private mNativePtr:J

.field private mSuccessCount:I


# direct methods
.method public constructor <init>(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/wcdb/database/SQLiteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mDB:Lcom/tencent/wcdb/database/SQLiteDatabase;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mLastError:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p2, p3}, Lcom/tencent/wcdb/repair/RecoverKit;->nativeInit(Ljava/lang/String;[B)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1

    .line 13
    iput-wide p1, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mNativePtr:J

    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    cmp-long p1, p1, v0

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    new-instance p1, Lcom/tencent/wcdb/database/SQLiteException;

    .line 23
    .line 24
    const-string p2, "Failed initialize recover context."

    .line 25
    .line 26
    invoke-direct {p1, p2}, Lcom/tencent/wcdb/database/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1
.end method

.method private static native nativeCancel(J)V
.end method

.method private static native nativeFailureCount(J)I
.end method

.method private static native nativeFinish(J)V
.end method

.method private static native nativeInit(Ljava/lang/String;[B)J
.end method

.method private static native nativeLastError(J)Ljava/lang/String;
.end method

.method private static native nativeRun(JJZ)I
.end method

.method private static native nativeSuccessCount(J)I
.end method


# virtual methods
.method public failureCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mFailedCount:I

    .line 2
    .line 3
    return v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/repair/RecoverKit;->release()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public lastError()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mLastError:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCancel()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mNativePtr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/tencent/wcdb/repair/RecoverKit;->nativeCancel(J)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public release()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mNativePtr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/tencent/wcdb/repair/RecoverKit;->nativeFinish(J)V

    .line 10
    .line 11
    .line 12
    iput-wide v2, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mNativePtr:J

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public run(Z)I
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mDB:Lcom/tencent/wcdb/database/SQLiteDatabase;

    const-string v1, "recover"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v4}, Lcom/tencent/wcdb/database/SQLiteDatabase;->acquireNativeConnectionHandle(Ljava/lang/String;ZZ)J

    move-result-wide v0

    .line 3
    iget-wide v4, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mNativePtr:J

    invoke-static {v4, v5, v0, v1, p1}, Lcom/tencent/wcdb/repair/RecoverKit;->nativeRun(JJZ)I

    move-result p1

    .line 4
    iget-object v4, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mDB:Lcom/tencent/wcdb/database/SQLiteDatabase;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v1, v5}, Lcom/tencent/wcdb/database/SQLiteDatabase;->releaseNativeConnection(JLjava/lang/Exception;)V

    .line 5
    iget-wide v0, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/tencent/wcdb/repair/RecoverKit;->nativeSuccessCount(J)I

    move-result v0

    iput v0, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mSuccessCount:I

    .line 6
    iget-wide v0, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/tencent/wcdb/repair/RecoverKit;->nativeFailureCount(J)I

    move-result v0

    iput v0, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mFailedCount:I

    .line 7
    iget-wide v0, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/tencent/wcdb/repair/RecoverKit;->nativeLastError(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mLastError:Ljava/lang/String;

    .line 8
    iget-wide v0, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/tencent/wcdb/repair/RecoverKit;->nativeFinish(J)V

    .line 9
    iput-wide v2, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mNativePtr:J

    return p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "RecoverKit not initialized."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public run(ZLcom/tencent/wcdb/support/CancellationSignal;)I
    .locals 1

    .line 11
    invoke-virtual {p2}, Lcom/tencent/wcdb/support/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 12
    :cond_0
    invoke-virtual {p2, p0}, Lcom/tencent/wcdb/support/CancellationSignal;->setOnCancelListener(Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;)V

    .line 13
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/repair/RecoverKit;->run(Z)I

    move-result p1

    const/4 v0, 0x0

    .line 14
    invoke-virtual {p2, v0}, Lcom/tencent/wcdb/support/CancellationSignal;->setOnCancelListener(Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;)V

    return p1
.end method

.method public successCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/wcdb/repair/RecoverKit;->mSuccessCount:I

    .line 2
    .line 3
    return v0
.end method
