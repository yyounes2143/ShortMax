.class public Lcom/tencent/wcdb/repair/RepairKit;
.super Ljava/lang/Object;
.source "RepairKit.java"

# interfaces
.implements Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;,
        Lcom/tencent/wcdb/repair/RepairKit$Callback;,
        Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;
    }
.end annotation


# static fields
.field public static final FLAG_ALL_TABLES:I = 0x2

.field public static final FLAG_NO_CREATE_TABLES:I = 0x1

.field private static final INTEGRITY_DATA:I = 0x2

.field private static final INTEGRITY_HEADER:I = 0x1

.field private static final INTEGRITY_KDF_SALT:I = 0x4

.field public static final RESULT_CANCELED:I = 0x1

.field public static final RESULT_FAILED:I = -0x1

.field public static final RESULT_IGNORE:I = 0x2

.field public static final RESULT_OK:I


# instance fields
.field private mCallback:Lcom/tencent/wcdb/repair/RepairKit$Callback;

.field private mCurrentCursor:Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;

.field private mIntegrityFlags:I

.field private mMasterInfo:Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;

.field private mNativePtr:J


# direct methods
.method public constructor <init>(Ljava/lang/String;[BLcom/tencent/wcdb/database/SQLiteCipherSpec;Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    if-nez p4, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p4}, Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;->access$000(Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;)[B

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-static {p1, p2, p3, v0}, Lcom/tencent/wcdb/repair/RepairKit;->nativeInit(Ljava/lang/String;[BLcom/tencent/wcdb/database/SQLiteCipherSpec;[B)J

    .line 15
    .line 16
    .line 17
    move-result-wide p1

    .line 18
    iput-wide p1, p0, Lcom/tencent/wcdb/repair/RepairKit;->mNativePtr:J

    .line 19
    .line 20
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    cmp-long p3, p1, v0

    .line 23
    .line 24
    if-eqz p3, :cond_1

    .line 25
    .line 26
    invoke-static {p1, p2}, Lcom/tencent/wcdb/repair/RepairKit;->nativeIntegrityFlags(J)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lcom/tencent/wcdb/repair/RepairKit;->mIntegrityFlags:I

    .line 31
    .line 32
    iput-object p4, p0, Lcom/tencent/wcdb/repair/RepairKit;->mMasterInfo:Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    new-instance p1, Lcom/tencent/wcdb/database/SQLiteException;

    .line 36
    .line 37
    const-string p2, "Failed initialize RepairKit."

    .line 38
    .line 39
    invoke-direct {p1, p2}, Lcom/tencent/wcdb/database/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method static synthetic access$300([Ljava/lang/String;)J
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/tencent/wcdb/repair/RepairKit;->nativeMakeMaster([Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static synthetic access$400(Ljava/lang/String;[B[Ljava/lang/String;[B)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/wcdb/repair/RepairKit;->nativeLoadMaster(Ljava/lang/String;[B[Ljava/lang/String;[B)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method static synthetic access$500(JLjava/lang/String;[B)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/wcdb/repair/RepairKit;->nativeSaveMaster(JLjava/lang/String;[B)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$600(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/tencent/wcdb/repair/RepairKit;->nativeFreeMaster(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static lastError()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/wcdb/repair/RepairKit;->nativeLastError()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static native nativeCancel(J)V
.end method

.method private static native nativeFini(J)V
.end method

.method private static native nativeFreeMaster(J)V
.end method

.method private static native nativeInit(Ljava/lang/String;[BLcom/tencent/wcdb/database/SQLiteCipherSpec;[B)J
.end method

.method private static native nativeIntegrityFlags(J)I
.end method

.method private static native nativeLastError()Ljava/lang/String;
.end method

.method private static native nativeLoadMaster(Ljava/lang/String;[B[Ljava/lang/String;[B)J
.end method

.method private static native nativeMakeMaster([Ljava/lang/String;)J
.end method

.method private native nativeOutput(JJJI)I
.end method

.method private static native nativeSaveMaster(JLjava/lang/String;[B)Z
.end method

.method private onProgress(Ljava/lang/String;IJ)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/repair/RepairKit;->mCallback:Lcom/tencent/wcdb/repair/RepairKit$Callback;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return p1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/tencent/wcdb/repair/RepairKit;->mCurrentCursor:Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    new-instance v0, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;-><init>(Lcom/tencent/wcdb/repair/RepairKit$1;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/tencent/wcdb/repair/RepairKit;->mCurrentCursor:Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/tencent/wcdb/repair/RepairKit;->mCurrentCursor:Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;

    .line 20
    .line 21
    iput-wide p3, v0, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;->mPtr:J

    .line 22
    .line 23
    iget-object p3, p0, Lcom/tencent/wcdb/repair/RepairKit;->mCallback:Lcom/tencent/wcdb/repair/RepairKit$Callback;

    .line 24
    .line 25
    invoke-interface {p3, p1, p2, v0}, Lcom/tencent/wcdb/repair/RepairKit$Callback;->onProgress(Ljava/lang/String;ILandroid/database/Cursor;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    return p1
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/repair/RepairKit;->release()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getCallback()Lcom/tencent/wcdb/repair/RepairKit$Callback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/repair/RepairKit;->mCallback:Lcom/tencent/wcdb/repair/RepairKit$Callback;

    .line 2
    .line 3
    return-object v0
.end method

.method public isDataCorrupted()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/wcdb/repair/RepairKit;->mIntegrityFlags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-nez v0, :cond_0

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

.method public isHeaderCorrupted()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/tencent/wcdb/repair/RepairKit;->mIntegrityFlags:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    return v1
.end method

.method public isSaltCorrupted()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/wcdb/repair/RepairKit;->mIntegrityFlags:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-nez v0, :cond_0

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

.method public onCancel()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/repair/RepairKit;->mNativePtr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {v0, v1}, Lcom/tencent/wcdb/repair/RepairKit;->nativeCancel(J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public output(Lcom/tencent/wcdb/database/SQLiteDatabase;I)I
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/repair/RepairKit;->mNativePtr:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/tencent/wcdb/repair/RepairKit;->mMasterInfo:Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;

    if-nez v0, :cond_0

    :goto_0
    move-wide v9, v2

    goto :goto_1

    :cond_0
    invoke-static {v0}, Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;->access$100(Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;)J

    move-result-wide v2

    goto :goto_0

    .line 3
    :goto_1
    const-string v0, "repair"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->acquireNativeConnectionHandle(Ljava/lang/String;ZZ)J

    move-result-wide v0

    .line 4
    iget-wide v5, p0, Lcom/tencent/wcdb/repair/RepairKit;->mNativePtr:J

    move-object v4, p0

    move-wide v7, v0

    move v11, p2

    invoke-direct/range {v4 .. v11}, Lcom/tencent/wcdb/repair/RepairKit;->nativeOutput(JJJI)I

    move-result p2

    const/4 v2, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/wcdb/database/SQLiteDatabase;->releaseNativeConnection(JLjava/lang/Exception;)V

    .line 6
    iput-object v2, p0, Lcom/tencent/wcdb/repair/RepairKit;->mCurrentCursor:Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;

    .line 7
    iget-wide v0, p0, Lcom/tencent/wcdb/repair/RepairKit;->mNativePtr:J

    invoke-static {v0, v1}, Lcom/tencent/wcdb/repair/RepairKit;->nativeIntegrityFlags(J)I

    move-result p1

    iput p1, p0, Lcom/tencent/wcdb/repair/RepairKit;->mIntegrityFlags:I

    return p2

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public output(Lcom/tencent/wcdb/database/SQLiteDatabase;ILcom/tencent/wcdb/support/CancellationSignal;)I
    .locals 1

    .line 9
    invoke-virtual {p3}, Lcom/tencent/wcdb/support/CancellationSignal;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 10
    :cond_0
    invoke-virtual {p3, p0}, Lcom/tencent/wcdb/support/CancellationSignal;->setOnCancelListener(Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;)V

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wcdb/repair/RepairKit;->output(Lcom/tencent/wcdb/database/SQLiteDatabase;I)I

    move-result p1

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p3, p2}, Lcom/tencent/wcdb/support/CancellationSignal;->setOnCancelListener(Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;)V

    return p1
.end method

.method public release()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/repair/RepairKit;->mMasterInfo:Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/tencent/wcdb/repair/RepairKit;->mMasterInfo:Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;

    .line 10
    .line 11
    :cond_0
    iget-wide v0, p0, Lcom/tencent/wcdb/repair/RepairKit;->mNativePtr:J

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-eqz v4, :cond_1

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/tencent/wcdb/repair/RepairKit;->nativeFini(J)V

    .line 20
    .line 21
    .line 22
    iput-wide v2, p0, Lcom/tencent/wcdb/repair/RepairKit;->mNativePtr:J

    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public setCallback(Lcom/tencent/wcdb/repair/RepairKit$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/wcdb/repair/RepairKit;->mCallback:Lcom/tencent/wcdb/repair/RepairKit$Callback;

    .line 2
    .line 3
    return-void
.end method
