.class public final Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;
.super Ljava/lang/Object;
.source "NewbieWatchTask.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final bonus:I

.field private final cumsumBonus:I

.field private isReceive:Z

.field private final payTime:I

.field private final taskId:I


# direct methods
.method public constructor <init>(IIIIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->taskId:I

    .line 5
    .line 6
    iput p2, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->payTime:I

    .line 7
    .line 8
    iput p3, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->cumsumBonus:I

    .line 9
    .line 10
    iput p4, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->bonus:I

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->isReceive:Z

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;IIIIZILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->taskId:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->payTime:I

    .line 12
    .line 13
    :cond_1
    move p7, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget p3, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->cumsumBonus:I

    .line 19
    .line 20
    :cond_2
    move v0, p3

    .line 21
    and-int/lit8 p2, p6, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget p4, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->bonus:I

    .line 26
    .line 27
    :cond_3
    move v1, p4

    .line 28
    and-int/lit8 p2, p6, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-boolean p5, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->isReceive:Z

    .line 33
    .line 34
    :cond_4
    move v2, p5

    .line 35
    move-object p2, p0

    .line 36
    move p3, p1

    .line 37
    move p4, p7

    .line 38
    move p5, v0

    .line 39
    move p6, v1

    .line 40
    move p7, v2

    .line 41
    invoke-virtual/range {p2 .. p7}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->copy(IIIIZ)Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->taskId:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->payTime:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->cumsumBonus:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->bonus:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->isReceive:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(IIIIZ)Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move v5, p5

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;-><init>(IIIIZ)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 12
    .line 13
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->taskId:I

    .line 14
    .line 15
    iget v3, p1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->taskId:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->payTime:I

    .line 21
    .line 22
    iget v3, p1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->payTime:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->cumsumBonus:I

    .line 28
    .line 29
    iget v3, p1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->cumsumBonus:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->bonus:I

    .line 35
    .line 36
    iget v3, p1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->bonus:I

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->isReceive:Z

    .line 42
    .line 43
    iget-boolean p1, p1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->isReceive:Z

    .line 44
    .line 45
    if-eq v1, p1, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    return v0
.end method

.method public final getBonus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->bonus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCumsumBonus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->cumsumBonus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPayTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->payTime:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTaskId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->taskId:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->taskId:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->payTime:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->cumsumBonus:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->bonus:I

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
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->isReceive:Z

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    return v0
.end method

.method public final isReceive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->isReceive:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setReceive(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->isReceive:Z

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
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
    const-string v1, "NewbieWatchBonus(taskId="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->taskId:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", payTime="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->payTime:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", cumsumBonus="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->cumsumBonus:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", bonus="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->bonus:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", isReceive="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->isReceive:Z

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x29

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    return-object v0
.end method
