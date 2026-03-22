.class public final Lcom/startshorts/androidplayer/bean/push/PushTime;
.super Ljava/lang/Object;
.source "PushTime.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final beginTime:J

.field private final endTime:J

.field private final interval:J

.field private final maxCount:I


# direct methods
.method public constructor <init>(JJJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->beginTime:J

    .line 5
    .line 6
    iput-wide p3, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->endTime:J

    .line 7
    .line 8
    iput-wide p5, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->interval:J

    .line 9
    .line 10
    iput p7, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->maxCount:I

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/push/PushTime;JJJIILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/push/PushTime;
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    and-int/lit8 v1, p8, 0x1

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-wide v1, v0, Lcom/startshorts/androidplayer/bean/push/PushTime;->beginTime:J

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-wide v1, p1

    .line 10
    :goto_0
    and-int/lit8 v3, p8, 0x2

    .line 11
    .line 12
    if-eqz v3, :cond_1

    .line 13
    .line 14
    iget-wide v3, v0, Lcom/startshorts/androidplayer/bean/push/PushTime;->endTime:J

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-wide v3, p3

    .line 18
    :goto_1
    and-int/lit8 v5, p8, 0x4

    .line 19
    .line 20
    if-eqz v5, :cond_2

    .line 21
    .line 22
    iget-wide v5, v0, Lcom/startshorts/androidplayer/bean/push/PushTime;->interval:J

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move-wide v5, p5

    .line 26
    :goto_2
    and-int/lit8 v7, p8, 0x8

    .line 27
    .line 28
    if-eqz v7, :cond_3

    .line 29
    .line 30
    iget v7, v0, Lcom/startshorts/androidplayer/bean/push/PushTime;->maxCount:I

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move v7, p7

    .line 34
    :goto_3
    move-wide p1, v1

    .line 35
    move-wide p3, v3

    .line 36
    move-wide p5, v5

    .line 37
    move p7, v7

    .line 38
    invoke-virtual/range {p0 .. p7}, Lcom/startshorts/androidplayer/bean/push/PushTime;->copy(JJJI)Lcom/startshorts/androidplayer/bean/push/PushTime;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->beginTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->endTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->interval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->maxCount:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(JJJI)Lcom/startshorts/androidplayer/bean/push/PushTime;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v8, Lcom/startshorts/androidplayer/bean/push/PushTime;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move-wide v1, p1

    .line 5
    move-wide v3, p3

    .line 6
    move-wide v5, p5

    .line 7
    move/from16 v7, p7

    .line 8
    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/bean/push/PushTime;-><init>(JJJI)V

    .line 10
    .line 11
    .line 12
    return-object v8
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/push/PushTime;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/push/PushTime;

    .line 12
    .line 13
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->beginTime:J

    .line 14
    .line 15
    iget-wide v5, p1, Lcom/startshorts/androidplayer/bean/push/PushTime;->beginTime:J

    .line 16
    .line 17
    cmp-long v1, v3, v5

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    return v2

    .line 22
    :cond_2
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->endTime:J

    .line 23
    .line 24
    iget-wide v5, p1, Lcom/startshorts/androidplayer/bean/push/PushTime;->endTime:J

    .line 25
    .line 26
    cmp-long v1, v3, v5

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->interval:J

    .line 32
    .line 33
    iget-wide v5, p1, Lcom/startshorts/androidplayer/bean/push/PushTime;->interval:J

    .line 34
    .line 35
    cmp-long v1, v3, v5

    .line 36
    .line 37
    if-eqz v1, :cond_4

    .line 38
    .line 39
    return v2

    .line 40
    :cond_4
    iget v1, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->maxCount:I

    .line 41
    .line 42
    iget p1, p1, Lcom/startshorts/androidplayer/bean/push/PushTime;->maxCount:I

    .line 43
    .line 44
    if-eq v1, p1, :cond_5

    .line 45
    .line 46
    return v2

    .line 47
    :cond_5
    return v0
.end method

.method public final getBeginTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->beginTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->endTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->interval:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMaxCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->maxCount:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->beginTime:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->endTime:J

    .line 10
    .line 11
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->interval:J

    .line 19
    .line 20
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v1, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->maxCount:I

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "PushTime(beginTime="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->beginTime:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", endTime="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->endTime:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", interval="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->interval:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", maxCount="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/startshorts/androidplayer/bean/push/PushTime;->maxCount:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x29

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
