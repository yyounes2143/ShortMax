.class public Lcom/huawei/hms/common/data/DataBufferRef;
.super Ljava/lang/Object;
.source "DataBufferRef.java"


# instance fields
.field protected final a:Lcom/huawei/hms/common/data/DataHolder;

.field protected b:I

.field private c:I


# direct methods
.method public constructor <init>(Lcom/huawei/hms/common/data/DataHolder;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "dataHolder cannot be null"

    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:Lcom/huawei/hms/common/data/DataHolder;

    .line 10
    .line 11
    invoke-virtual {p0, p2}, Lcom/huawei/hms/common/data/DataBufferRef;->a(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 2

    .line 1
    if-ltz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:Lcom/huawei/hms/common/data/DataHolder;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/huawei/hms/common/data/DataHolder;->getCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p1, v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    const-string v1, "rowNum is out of index"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/huawei/hms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iput p1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->b:I

    .line 20
    .line 21
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:Lcom/huawei/hms/common/data/DataHolder;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/huawei/hms/common/data/DataHolder;->getWindowIndex(I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iput p1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->c:I

    .line 28
    .line 29
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/huawei/hms/common/data/DataBufferRef;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    check-cast p1, Lcom/huawei/hms/common/data/DataBufferRef;

    .line 7
    .line 8
    iget v0, p1, Lcom/huawei/hms/common/data/DataBufferRef;->b:I

    .line 9
    .line 10
    iget v2, p0, Lcom/huawei/hms/common/data/DataBufferRef;->b:I

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    iget v0, p1, Lcom/huawei/hms/common/data/DataBufferRef;->c:I

    .line 15
    .line 16
    iget v2, p0, Lcom/huawei/hms/common/data/DataBufferRef;->c:I

    .line 17
    .line 18
    if-ne v0, v2, :cond_0

    .line 19
    .line 20
    iget-object p1, p1, Lcom/huawei/hms/common/data/DataBufferRef;->a:Lcom/huawei/hms/common/data/DataHolder;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:Lcom/huawei/hms/common/data/DataHolder;

    .line 23
    .line 24
    if-ne p1, v0, :cond_0

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    :cond_0
    return v1
.end method

.method public hasColumn(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:Lcom/huawei/hms/common/data/DataHolder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/huawei/hms/common/data/DataHolder;->hasColumn(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->b:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/huawei/hms/common/data/DataBufferRef;->c:I

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:Lcom/huawei/hms/common/data/DataHolder;

    .line 14
    .line 15
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/huawei/hms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0
.end method

.method public isDataValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/data/DataBufferRef;->a:Lcom/huawei/hms/common/data/DataHolder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/huawei/hms/common/data/DataHolder;->isClosed()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    return v0
.end method
