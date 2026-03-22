.class public final Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;
.super Ljava/lang/Object;
.source "QueryWatchAdBonusResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final adAllCompletedGetBonus:I

.field private final adWatchMaxMinute:I

.field private final nextWatchAdWaitSecond:I

.field private final taskConfigModuleResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final taskUnCompletedToast:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;IIILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;",
            ">;III",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->taskConfigModuleResponseList:Ljava/util/List;

    .line 5
    .line 6
    iput p2, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->adAllCompletedGetBonus:I

    .line 7
    .line 8
    iput p3, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->nextWatchAdWaitSecond:I

    .line 9
    .line 10
    iput p4, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->adWatchMaxMinute:I

    .line 11
    .line 12
    iput-object p5, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->taskUnCompletedToast:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;Ljava/util/List;IIILjava/lang/String;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->taskConfigModuleResponseList:Ljava/util/List;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->adAllCompletedGetBonus:I

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
    iget p3, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->nextWatchAdWaitSecond:I

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
    iget p4, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->adWatchMaxMinute:I

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
    iget-object p5, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->taskUnCompletedToast:Ljava/lang/String;

    .line 33
    .line 34
    :cond_4
    move-object v2, p5

    .line 35
    move-object p2, p0

    .line 36
    move-object p3, p1

    .line 37
    move p4, p7

    .line 38
    move p5, v0

    .line 39
    move p6, v1

    .line 40
    move-object p7, v2

    .line 41
    invoke-virtual/range {p2 .. p7}, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->copy(Ljava/util/List;IIILjava/lang/String;)Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->taskConfigModuleResponseList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->adAllCompletedGetBonus:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->nextWatchAdWaitSecond:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->adWatchMaxMinute:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->taskUnCompletedToast:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Ljava/util/List;IIILjava/lang/String;)Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;",
            ">;III",
            "Ljava/lang/String;",
            ")",
            "Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move-object v5, p5

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;-><init>(Ljava/util/List;IIILjava/lang/String;)V

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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->taskConfigModuleResponseList:Ljava/util/List;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->taskConfigModuleResponseList:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget v1, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->adAllCompletedGetBonus:I

    .line 25
    .line 26
    iget v3, p1, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->adAllCompletedGetBonus:I

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget v1, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->nextWatchAdWaitSecond:I

    .line 32
    .line 33
    iget v3, p1, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->nextWatchAdWaitSecond:I

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget v1, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->adWatchMaxMinute:I

    .line 39
    .line 40
    iget v3, p1, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->adWatchMaxMinute:I

    .line 41
    .line 42
    if-eq v1, v3, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->taskUnCompletedToast:Ljava/lang/String;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->taskUnCompletedToast:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    return v0
.end method

.method public final getAdAllCompletedGetBonus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->adAllCompletedGetBonus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getAdWatchMaxMinute()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->adWatchMaxMinute:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNextWatchAdWaitSecond()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->nextWatchAdWaitSecond:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTaskConfigModuleResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->taskConfigModuleResponseList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskUnCompletedToast()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->taskUnCompletedToast:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->taskConfigModuleResponseList:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget v2, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->adAllCompletedGetBonus:I

    .line 15
    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    add-int/2addr v0, v2

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget v2, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->nextWatchAdWaitSecond:I

    .line 24
    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    add-int/2addr v0, v2

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget v2, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->adWatchMaxMinute:I

    .line 33
    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->hashCode(I)I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/2addr v0, v2

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-object v2, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->taskUnCompletedToast:Ljava/lang/String;

    .line 42
    .line 43
    if-nez v2, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    :goto_1
    add-int/2addr v0, v1

    .line 51
    return v0
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
    const-string v1, "QueryWatchAdBonusTaskResult(taskConfigModuleResponseList="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->taskConfigModuleResponseList:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", adAllCompletedGetBonus="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->adAllCompletedGetBonus:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", nextWatchAdWaitSecond="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->nextWatchAdWaitSecond:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", adWatchMaxMinute="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->adWatchMaxMinute:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", taskUnCompletedToast="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/QueryWatchAdBonusTaskResult;->taskUnCompletedToast:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
