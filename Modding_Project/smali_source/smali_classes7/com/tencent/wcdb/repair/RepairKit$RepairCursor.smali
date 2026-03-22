.class Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;
.super Lcom/tencent/wcdb/AbstractCursor;
.source "RepairKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wcdb/repair/RepairKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RepairCursor"
.end annotation


# instance fields
.field mPtr:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/wcdb/AbstractCursor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wcdb/repair/RepairKit$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;-><init>()V

    return-void
.end method

.method private static native nativeGetBlob(JI)[B
.end method

.method private static native nativeGetColumnCount(J)I
.end method

.method private static native nativeGetDouble(JI)D
.end method

.method private static native nativeGetLong(JI)J
.end method

.method private static native nativeGetString(JI)Ljava/lang/String;
.end method

.method private static native nativeGetType(JI)I
.end method


# virtual methods
.method public getBlob(I)[B
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;->mPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1}, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;->nativeGetBlob(JI)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getColumnCount()I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;->mPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;->nativeGetColumnCount(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 4
    .line 5
    .line 6
    throw v0
.end method

.method public getDouble(I)D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;->mPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1}, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;->nativeGetDouble(JI)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getFloat(I)F
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;->getDouble(I)D

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    double-to-float p1, v0

    .line 6
    return p1
.end method

.method public getInt(I)I
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;->getLong(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-int p1, v0

    .line 6
    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;->mPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1}, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;->nativeGetLong(JI)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getShort(I)S
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;->getLong(I)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    long-to-int p1, v0

    .line 6
    int-to-short p1, p1

    .line 7
    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;->mPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1}, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;->nativeGetString(JI)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getType(I)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;->mPtr:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1}, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;->nativeGetType(JI)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public isNull(I)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/tencent/wcdb/repair/RepairKit$RepairCursor;->getType(I)I

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
