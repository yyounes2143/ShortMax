.class public Lcom/tencent/wcdb/CursorWindow;
.super Lcom/tencent/wcdb/database/SQLiteClosable;
.source "CursorWindow.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/tencent/wcdb/CursorWindow;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATS_TAG:Ljava/lang/String; = "WCDB.CursorWindowStats"

.field private static sCursorWindowSize:I


# instance fields
.field private final mName:Ljava/lang/String;

.field private mStartPos:I

.field public mWindowPtr:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "integer"

    .line 6
    .line 7
    const-string v2, "android"

    .line 8
    .line 9
    const-string v3, "config_cursorWindowSize"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    mul-int/lit16 v0, v0, 0x400

    .line 26
    .line 27
    sput v0, Lcom/tencent/wcdb/CursorWindow;->sCursorWindowSize:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/high16 v0, 0x200000

    .line 31
    .line 32
    sput v0, Lcom/tencent/wcdb/CursorWindow;->sCursorWindowSize:I

    .line 33
    .line 34
    :goto_0
    new-instance v0, Lcom/tencent/wcdb/CursorWindow$1;

    .line 35
    .line 36
    invoke-direct {v0}, Lcom/tencent/wcdb/CursorWindow$1;-><init>()V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/tencent/wcdb/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;-><init>()V

    .line 9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/tencent/wcdb/CursorWindow$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/tencent/wcdb/CursorWindow;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/tencent/wcdb/CursorWindow;->mStartPos:I

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "<unnamed>"

    :goto_0
    iput-object p1, p0, Lcom/tencent/wcdb/CursorWindow;->mName:Ljava/lang/String;

    .line 5
    sget v0, Lcom/tencent/wcdb/CursorWindow;->sCursorWindowSize:I

    invoke-static {p1, v0}, Lcom/tencent/wcdb/CursorWindow;->nativeCreate(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    return-void

    .line 6
    :cond_1
    new-instance p1, Lcom/tencent/wcdb/CursorWindowAllocationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cursor window allocation of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/tencent/wcdb/CursorWindow;->sCursorWindowSize:I

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " kb failed. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/tencent/wcdb/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, p1}, Lcom/tencent/wcdb/CursorWindow;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private dispose()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

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
    invoke-static {v0, v1}, Lcom/tencent/wcdb/CursorWindow;->nativeDispose(J)V

    .line 10
    .line 11
    .line 12
    iput-wide v2, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private static native nativeAllocRow(J)Z
.end method

.method private static native nativeClear(J)V
.end method

.method private static native nativeCopyStringToBuffer(JIILandroid/database/CharArrayBuffer;)V
.end method

.method private static native nativeCreate(Ljava/lang/String;I)J
.end method

.method private static native nativeDispose(J)V
.end method

.method private static native nativeFreeLastRow(J)V
.end method

.method private static native nativeGetBlob(JII)[B
.end method

.method private static native nativeGetDouble(JII)D
.end method

.method private static native nativeGetLong(JII)J
.end method

.method private static native nativeGetNumRows(J)I
.end method

.method private static native nativeGetString(JII)Ljava/lang/String;
.end method

.method private static native nativeGetType(JII)I
.end method

.method private static native nativePutBlob(J[BII)Z
.end method

.method private static native nativePutDouble(JDII)Z
.end method

.method private static native nativePutLong(JJII)Z
.end method

.method private static native nativePutNull(JII)Z
.end method

.method private static native nativePutString(JLjava/lang/String;II)Z
.end method

.method private static native nativeSetNumColumns(JI)Z
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/tencent/wcdb/CursorWindow;
    .locals 1

    .line 1
    sget-object v0, Lcom/tencent/wcdb/CursorWindow;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/tencent/wcdb/CursorWindow;

    .line 8
    .line 9
    return-object p0
.end method

.method public static windowSize(I)I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/wcdb/CursorWindow;->sCursorWindowSize:I

    .line 2
    .line 3
    if-lez p0, :cond_0

    .line 4
    .line 5
    sput p0, Lcom/tencent/wcdb/CursorWindow;->sCursorWindowSize:I

    .line 6
    .line 7
    :cond_0
    return v0
.end method


# virtual methods
.method public allocRow()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/tencent/wcdb/CursorWindow;->nativeAllocRow(J)Z

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 11
    .line 12
    .line 13
    return v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public clear()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    iput v0, p0, Lcom/tencent/wcdb/CursorWindow;->mStartPos:I

    .line 6
    .line 7
    iget-wide v0, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/tencent/wcdb/CursorWindow;->nativeClear(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 18
    .line 19
    .line 20
    throw v0
.end method

.method public copyStringToBuffer(IILandroid/database/CharArrayBuffer;)V
    .locals 3

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

    .line 7
    .line 8
    iget v2, p0, Lcom/tencent/wcdb/CursorWindow;->mStartPos:I

    .line 9
    .line 10
    sub-int/2addr p1, v2

    .line 11
    invoke-static {v0, v1, p1, p2, p3}, Lcom/tencent/wcdb/CursorWindow;->nativeCopyStringToBuffer(JIILandroid/database/CharArrayBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 24
    .line 25
    const-string p2, "CharArrayBuffer should not be null"

    .line 26
    .line 27
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1
.end method

.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/tencent/wcdb/CursorWindow;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 10
    .line 11
    .line 12
    throw v0
.end method

.method public freeLastRow()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/tencent/wcdb/CursorWindow;->nativeFreeLastRow(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 15
    .line 16
    .line 17
    throw v0
.end method

.method public getBlob(II)[B
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

    .line 5
    .line 6
    iget v2, p0, Lcom/tencent/wcdb/CursorWindow;->mStartPos:I

    .line 7
    .line 8
    sub-int/2addr p1, v2

    .line 9
    invoke-static {v0, v1, p1, p2}, Lcom/tencent/wcdb/CursorWindow;->nativeGetBlob(JII)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public getDouble(II)D
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

    .line 5
    .line 6
    iget v2, p0, Lcom/tencent/wcdb/CursorWindow;->mStartPos:I

    .line 7
    .line 8
    sub-int/2addr p1, v2

    .line 9
    invoke-static {v0, v1, p1, p2}, Lcom/tencent/wcdb/CursorWindow;->nativeGetDouble(JII)D

    .line 10
    .line 11
    .line 12
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 14
    .line 15
    .line 16
    return-wide p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public getFloat(II)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wcdb/CursorWindow;->getDouble(II)D

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    double-to-float p1, p1

    .line 6
    return p1
.end method

.method public getInt(II)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wcdb/CursorWindow;->getLong(II)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    long-to-int p1, p1

    .line 6
    return p1
.end method

.method public getLong(II)J
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

    .line 5
    .line 6
    iget v2, p0, Lcom/tencent/wcdb/CursorWindow;->mStartPos:I

    .line 7
    .line 8
    sub-int/2addr p1, v2

    .line 9
    invoke-static {v0, v1, p1, p2}, Lcom/tencent/wcdb/CursorWindow;->nativeGetLong(JII)J

    .line 10
    .line 11
    .line 12
    move-result-wide p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 14
    .line 15
    .line 16
    return-wide p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorWindow;->mName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNumRows()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

    .line 5
    .line 6
    invoke-static {v0, v1}, Lcom/tencent/wcdb/CursorWindow;->nativeGetNumRows(J)I

    .line 7
    .line 8
    .line 9
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 11
    .line 12
    .line 13
    return v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public getShort(II)S
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wcdb/CursorWindow;->getLong(II)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    long-to-int p1, p1

    .line 6
    int-to-short p1, p1

    .line 7
    return p1
.end method

.method public getStartPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/wcdb/CursorWindow;->mStartPos:I

    .line 2
    .line 3
    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

    .line 5
    .line 6
    iget v2, p0, Lcom/tencent/wcdb/CursorWindow;->mStartPos:I

    .line 7
    .line 8
    sub-int/2addr p1, v2

    .line 9
    invoke-static {v0, v1, p1, p2}, Lcom/tencent/wcdb/CursorWindow;->nativeGetString(JII)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public getType(II)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

    .line 5
    .line 6
    iget v2, p0, Lcom/tencent/wcdb/CursorWindow;->mStartPos:I

    .line 7
    .line 8
    sub-int/2addr p1, v2

    .line 9
    invoke-static {v0, v1, p1, p2}, Lcom/tencent/wcdb/CursorWindow;->nativeGetType(JII)I

    .line 10
    .line 11
    .line 12
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 14
    .line 15
    .line 16
    return p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public isBlob(II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wcdb/CursorWindow;->getType(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x4

    .line 6
    if-eq p1, p2, :cond_1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 14
    :goto_1
    return p1
.end method

.method public isFloat(II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wcdb/CursorWindow;->getType(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x2

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    return p1
.end method

.method public isLong(II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wcdb/CursorWindow;->getType(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x1

    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p2, 0x0

    .line 10
    :goto_0
    return p2
.end method

.method public isNull(II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wcdb/CursorWindow;->getType(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public isString(II)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/wcdb/CursorWindow;->getType(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x3

    .line 6
    if-eq p1, p2, :cond_1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    goto :goto_1

    .line 13
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 14
    :goto_1
    return p1
.end method

.method protected onAllReferencesReleased()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/wcdb/CursorWindow;->dispose()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public putBlob([BII)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

    .line 5
    .line 6
    iget v2, p0, Lcom/tencent/wcdb/CursorWindow;->mStartPos:I

    .line 7
    .line 8
    sub-int/2addr p2, v2

    .line 9
    invoke-static {v0, v1, p1, p2, p3}, Lcom/tencent/wcdb/CursorWindow;->nativePutBlob(J[BII)Z

    .line 10
    .line 11
    .line 12
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 14
    .line 15
    .line 16
    return p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public putDouble(DII)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

    .line 5
    .line 6
    iget v2, p0, Lcom/tencent/wcdb/CursorWindow;->mStartPos:I

    .line 7
    .line 8
    sub-int v4, p3, v2

    .line 9
    .line 10
    move-wide v2, p1

    .line 11
    move v5, p4

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/tencent/wcdb/CursorWindow;->nativePutDouble(JDII)Z

    .line 13
    .line 14
    .line 15
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 17
    .line 18
    .line 19
    return p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public putLong(JII)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

    .line 5
    .line 6
    iget v2, p0, Lcom/tencent/wcdb/CursorWindow;->mStartPos:I

    .line 7
    .line 8
    sub-int v4, p3, v2

    .line 9
    .line 10
    move-wide v2, p1

    .line 11
    move v5, p4

    .line 12
    invoke-static/range {v0 .. v5}, Lcom/tencent/wcdb/CursorWindow;->nativePutLong(JJII)Z

    .line 13
    .line 14
    .line 15
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 17
    .line 18
    .line 19
    return p1

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 22
    .line 23
    .line 24
    throw p1
.end method

.method public putNull(II)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

    .line 5
    .line 6
    iget v2, p0, Lcom/tencent/wcdb/CursorWindow;->mStartPos:I

    .line 7
    .line 8
    sub-int/2addr p1, v2

    .line 9
    invoke-static {v0, v1, p1, p2}, Lcom/tencent/wcdb/CursorWindow;->nativePutNull(JII)Z

    .line 10
    .line 11
    .line 12
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 14
    .line 15
    .line 16
    return p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public putString(Ljava/lang/String;II)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

    .line 5
    .line 6
    iget v2, p0, Lcom/tencent/wcdb/CursorWindow;->mStartPos:I

    .line 7
    .line 8
    sub-int/2addr p2, v2

    .line 9
    invoke-static {v0, v1, p1, p2, p3}, Lcom/tencent/wcdb/CursorWindow;->nativePutString(JLjava/lang/String;II)Z

    .line 10
    .line 11
    .line 12
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 14
    .line 15
    .line 16
    return p1

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 19
    .line 20
    .line 21
    throw p1
.end method

.method public setNumColumns(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

    .line 5
    .line 6
    invoke-static {v0, v1, p1}, Lcom/tencent/wcdb/CursorWindow;->nativeSetNumColumns(JI)Z

    .line 7
    .line 8
    .line 9
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 11
    .line 12
    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 16
    .line 17
    .line 18
    throw p1
.end method

.method public setStartPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/wcdb/CursorWindow;->mStartPos:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/tencent/wcdb/CursorWindow;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " {"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/tencent/wcdb/CursorWindow;->mWindowPtr:J

    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, "}"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw p1
.end method
