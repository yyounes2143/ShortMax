.class Lcom/ss/ttvideoengine/selector/shift/Shift;
.super Ljava/lang/Object;
.source "Shift.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ss/ttvideoengine/selector/shift/Shift;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x61301dfec7f150edL


# instance fields
.field public final mDownThreshold:D

.field public final mRate:D

.field public final mUpThreshold:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/ss/ttvideoengine/selector/shift/Shift;->mRate:D

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/ss/ttvideoengine/selector/shift/Shift;->mDownThreshold:D

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/ss/ttvideoengine/selector/shift/Shift;->mUpThreshold:D

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ss/ttvideoengine/selector/shift/Shift;)I
    .locals 4

    .line 2
    iget-wide v0, p0, Lcom/ss/ttvideoengine/selector/shift/Shift;->mRate:D

    iget-wide v2, p1, Lcom/ss/ttvideoengine/selector/shift/Shift;->mRate:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ss/ttvideoengine/selector/shift/Shift;

    invoke-virtual {p0, p1}, Lcom/ss/ttvideoengine/selector/shift/Shift;->compareTo(Lcom/ss/ttvideoengine/selector/shift/Shift;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/ss/ttvideoengine/selector/shift/Shift;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/ss/ttvideoengine/selector/shift/Shift;

    .line 12
    .line 13
    iget-wide v3, p1, Lcom/ss/ttvideoengine/selector/shift/Shift;->mRate:D

    .line 14
    .line 15
    iget-wide v5, p0, Lcom/ss/ttvideoengine/selector/shift/Shift;->mRate:D

    .line 16
    .line 17
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-wide v3, p1, Lcom/ss/ttvideoengine/selector/shift/Shift;->mDownThreshold:D

    .line 25
    .line 26
    iget-wide v5, p0, Lcom/ss/ttvideoengine/selector/shift/Shift;->mDownThreshold:D

    .line 27
    .line 28
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget-wide v3, p1, Lcom/ss/ttvideoengine/selector/shift/Shift;->mUpThreshold:D

    .line 36
    .line 37
    iget-wide v5, p0, Lcom/ss/ttvideoengine/selector/shift/Shift;->mUpThreshold:D

    .line 38
    .line 39
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Double;->compare(DD)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_4

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_4
    move v0, v2

    .line 47
    :goto_0
    return v0
.end method

.method public getMedianThreshold()D
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/selector/shift/Shift;->mDownThreshold:D

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/ss/ttvideoengine/selector/shift/Shift;->mUpThreshold:D

    .line 4
    .line 5
    add-double/2addr v0, v2

    .line 6
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 7
    .line 8
    div-double/2addr v0, v2

    .line 9
    return-wide v0
.end method

.method public hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/selector/shift/Shift;->mRate:D

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    const/16 v2, 0x20

    .line 8
    .line 9
    ushr-long v3, v0, v2

    .line 10
    .line 11
    xor-long/2addr v0, v3

    .line 12
    long-to-int v0, v0

    .line 13
    iget-wide v3, p0, Lcom/ss/ttvideoengine/selector/shift/Shift;->mDownThreshold:D

    .line 14
    .line 15
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    mul-int/lit8 v0, v0, 0x1f

    .line 20
    .line 21
    ushr-long v5, v3, v2

    .line 22
    .line 23
    xor-long/2addr v3, v5

    .line 24
    long-to-int v1, v3

    .line 25
    add-int/2addr v0, v1

    .line 26
    iget-wide v3, p0, Lcom/ss/ttvideoengine/selector/shift/Shift;->mUpThreshold:D

    .line 27
    .line 28
    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 29
    .line 30
    .line 31
    move-result-wide v3

    .line 32
    mul-int/lit8 v0, v0, 0x1f

    .line 33
    .line 34
    ushr-long v1, v3, v2

    .line 35
    .line 36
    xor-long/2addr v1, v3

    .line 37
    long-to-int v1, v1

    .line 38
    add-int/2addr v0, v1

    .line 39
    return v0
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
    const-string v1, "Shift{mRate="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lcom/ss/ttvideoengine/selector/shift/Shift;->mRate:D

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", mDownThreshold="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/ss/ttvideoengine/selector/shift/Shift;->mDownThreshold:D

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", mUpThreshold="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lcom/ss/ttvideoengine/selector/shift/Shift;->mUpThreshold:D

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const/16 v1, 0x7d

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method
