.class public final Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;
.super Ljava/lang/Object;
.source "NewbieWatchTask.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNewbieWatchTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewbieWatchTask.kt\ncom/startshorts/androidplayer/bean/checkin/NewbieWatchTask\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,47:1\n2632#2,3:48\n*S KotlinDebug\n*F\n+ 1 NewbieWatchTask.kt\ncom/startshorts/androidplayer/bean/checkin/NewbieWatchTask\n*L\n27#1:48,3\n*E\n"
    }
.end annotation


# instance fields
.field private countDownEnd:J

.field private countDownStart:J

.field private day:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isDaily:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private systemTime:J


# direct methods
.method public constructor <init>(Z)V
    .locals 10

    .line 10
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 11
    const-string v9, ""

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move v1, p1

    .line 12
    invoke-direct/range {v0 .. v9}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;-><init>(ZJJJLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZJJJLjava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJJJ",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "day"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->isDaily:Z

    .line 3
    iput-wide p2, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->systemTime:J

    .line 4
    iput-wide p4, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->countDownStart:J

    .line 5
    iput-wide p6, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->countDownEnd:J

    .line 6
    iput-object p8, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->list:Ljava/util/List;

    .line 7
    iput-object p9, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->day:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(ZJJJLjava/util/List;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    and-int/lit8 v0, p10, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v0, p10, 0x10

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object/from16 v9, p8

    :goto_1
    move-object v1, p0

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    move-object/from16 v10, p9

    .line 9
    invoke-direct/range {v1 .. v10}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;-><init>(ZJJJLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;ZJJJLjava/util/List;Ljava/lang/String;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;
    .locals 10

    .line 1
    move-object v0, p0

    .line 2
    and-int/lit8 v1, p10, 0x1

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-boolean v1, v0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->isDaily:Z

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v1, p1

    .line 10
    :goto_0
    and-int/lit8 v2, p10, 0x2

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-wide v2, v0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->systemTime:J

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    move-wide v2, p2

    .line 18
    :goto_1
    and-int/lit8 v4, p10, 0x4

    .line 19
    .line 20
    if-eqz v4, :cond_2

    .line 21
    .line 22
    iget-wide v4, v0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->countDownStart:J

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move-wide v4, p4

    .line 26
    :goto_2
    and-int/lit8 v6, p10, 0x8

    .line 27
    .line 28
    if-eqz v6, :cond_3

    .line 29
    .line 30
    iget-wide v6, v0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->countDownEnd:J

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_3
    move-wide/from16 v6, p6

    .line 34
    .line 35
    :goto_3
    and-int/lit8 v8, p10, 0x10

    .line 36
    .line 37
    if-eqz v8, :cond_4

    .line 38
    .line 39
    iget-object v8, v0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->list:Ljava/util/List;

    .line 40
    .line 41
    goto :goto_4

    .line 42
    :cond_4
    move-object/from16 v8, p8

    .line 43
    .line 44
    :goto_4
    and-int/lit8 v9, p10, 0x20

    .line 45
    .line 46
    if-eqz v9, :cond_5

    .line 47
    .line 48
    iget-object v9, v0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->day:Ljava/lang/String;

    .line 49
    .line 50
    goto :goto_5

    .line 51
    :cond_5
    move-object/from16 v9, p9

    .line 52
    .line 53
    :goto_5
    move p1, v1

    .line 54
    move-wide p2, v2

    .line 55
    move-wide p4, v4

    .line 56
    move-wide/from16 p6, v6

    .line 57
    .line 58
    move-object/from16 p8, v8

    .line 59
    .line 60
    move-object/from16 p9, v9

    .line 61
    .line 62
    invoke-virtual/range {p0 .. p9}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->copy(ZJJJLjava/util/List;Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    return-object v0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->isDaily:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component2()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->systemTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component3()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->countDownStart:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component4()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->countDownEnd:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final component5()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->day:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(ZJJJLjava/util/List;Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;
    .locals 11
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJJJ",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    move-object/from16 v9, p8

    .line 4
    .line 5
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "day"

    .line 9
    .line 10
    move-object/from16 v10, p9

    .line 11
    .line 12
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 16
    .line 17
    move-object v1, v0

    .line 18
    move v2, p1

    .line 19
    move-wide v3, p2

    .line 20
    move-wide v5, p4

    .line 21
    move-wide/from16 v7, p6

    .line 22
    .line 23
    invoke-direct/range {v1 .. v10}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;-><init>(ZJJJLjava/util/List;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    return-object v0
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->isDaily:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->isDaily:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->systemTime:J

    .line 21
    .line 22
    iget-wide v5, p1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->systemTime:J

    .line 23
    .line 24
    cmp-long v1, v3, v5

    .line 25
    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    return v2

    .line 29
    :cond_3
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->countDownStart:J

    .line 30
    .line 31
    iget-wide v5, p1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->countDownStart:J

    .line 32
    .line 33
    cmp-long v1, v3, v5

    .line 34
    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-wide v3, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->countDownEnd:J

    .line 39
    .line 40
    iget-wide v5, p1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->countDownEnd:J

    .line 41
    .line 42
    cmp-long v1, v3, v5

    .line 43
    .line 44
    if-eqz v1, :cond_5

    .line 45
    .line 46
    return v2

    .line 47
    :cond_5
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->list:Ljava/util/List;

    .line 48
    .line 49
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->list:Ljava/util/List;

    .line 50
    .line 51
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-nez v1, :cond_6

    .line 56
    .line 57
    return v2

    .line 58
    :cond_6
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->day:Ljava/lang/String;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->day:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_7

    .line 67
    .line 68
    return v2

    .line 69
    :cond_7
    return v0
.end method

.method public final getCountDownEnd()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->countDownEnd:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getCountDownStart()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->countDownStart:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getDay()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->day:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->list:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSystemTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->systemTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->isDaily:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->systemTime:J

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
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->countDownStart:J

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
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->countDownEnd:J

    .line 28
    .line 29
    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->list:Ljava/util/List;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->day:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    return v0
.end method

.method public final isAllTaskComplete()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->list:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    instance-of v1, v0, Ljava/util/Collection;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Ljava/util/Collection;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->isReceive()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    :cond_2
    :goto_0
    return v2
.end method

.method public final isDaily()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->isDaily:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isInvalid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->list:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    return v0
.end method

.method public final setCountDownEnd(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->countDownEnd:J

    .line 2
    .line 3
    return-void
.end method

.method public final setCountDownStart(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->countDownStart:J

    .line 2
    .line 3
    return-void
.end method

.method public final setDaily(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->isDaily:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setDay(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->day:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setList(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->list:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method

.method public final setSystemTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->systemTime:J

    .line 2
    .line 3
    return-void
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
    const-string v1, "NewbieWatchTask(isDaily="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->isDaily:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", systemTime="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->systemTime:J

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", countDownStart="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->countDownStart:J

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", countDownEnd="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-wide v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->countDownEnd:J

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", list="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->list:Ljava/util/List;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", day="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->day:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const/16 v1, 0x29

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    return-object v0
.end method
