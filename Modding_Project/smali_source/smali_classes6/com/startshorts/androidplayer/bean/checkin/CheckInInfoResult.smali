.class public final Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;
.super Ljava/lang/Object;
.source "CheckInInfoResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final clickDoubleAdToday:Z

.field private final clickDoubleDramaToday:Z

.field private final notificationTaskBonus:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final notificationTaskId:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final reSignAdTimes:I

.field private final signRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final zoneHour:I

.field private final zoneStr:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IZZLjava/util/List;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "zoneStr"

    .line 2
    .line 3
    .line 4
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->reSignAdTimes:I

    .line 11
    .line 12
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->clickDoubleAdToday:Z

    .line 13
    .line 14
    iput-boolean p3, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->clickDoubleDramaToday:Z

    .line 15
    .line 16
    iput-object p4, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->signRecords:Ljava/util/List;

    .line 17
    .line 18
    iput p5, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->zoneHour:I

    .line 19
    .line 20
    iput-object p6, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->zoneStr:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p7, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->notificationTaskId:Ljava/lang/Integer;

    .line 23
    .line 24
    iput-object p8, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->notificationTaskBonus:Ljava/lang/Integer;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;IZZLjava/util/List;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p9

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget v2, v0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->reSignAdTimes:I

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v2, p1

    .line 12
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget-boolean v3, v0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->clickDoubleAdToday:Z

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v3, p2

    .line 20
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    iget-boolean v4, v0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->clickDoubleDramaToday:Z

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move v4, p3

    .line 28
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 29
    .line 30
    if-eqz v5, :cond_3

    .line 31
    .line 32
    iget-object v5, v0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->signRecords:Ljava/util/List;

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object v5, p4

    .line 36
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 37
    .line 38
    if-eqz v6, :cond_4

    .line 39
    .line 40
    iget v6, v0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->zoneHour:I

    .line 41
    .line 42
    goto :goto_4

    .line 43
    :cond_4
    move v6, p5

    .line 44
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 45
    .line 46
    if-eqz v7, :cond_5

    .line 47
    .line 48
    iget-object v7, v0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->zoneStr:Ljava/lang/String;

    .line 49
    .line 50
    goto :goto_5

    .line 51
    :cond_5
    move-object v7, p6

    .line 52
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 53
    .line 54
    if-eqz v8, :cond_6

    .line 55
    .line 56
    iget-object v8, v0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->notificationTaskId:Ljava/lang/Integer;

    .line 57
    .line 58
    goto :goto_6

    .line 59
    :cond_6
    move-object/from16 v8, p7

    .line 60
    .line 61
    :goto_6
    and-int/lit16 v1, v1, 0x80

    .line 62
    .line 63
    if-eqz v1, :cond_7

    .line 64
    .line 65
    iget-object v1, v0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->notificationTaskBonus:Ljava/lang/Integer;

    .line 66
    .line 67
    goto :goto_7

    .line 68
    :cond_7
    move-object/from16 v1, p8

    .line 69
    .line 70
    :goto_7
    move p1, v2

    .line 71
    move p2, v3

    .line 72
    move p3, v4

    .line 73
    move-object p4, v5

    .line 74
    move p5, v6

    .line 75
    move-object p6, v7

    .line 76
    move-object/from16 p7, v8

    .line 77
    .line 78
    move-object/from16 p8, v1

    .line 79
    .line 80
    invoke-virtual/range {p0 .. p8}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->copy(IZZLjava/util/List;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->reSignAdTimes:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->clickDoubleAdToday:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->clickDoubleDramaToday:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->signRecords:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->zoneHour:I

    .line 2
    .line 3
    return v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->zoneStr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->notificationTaskId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->notificationTaskBonus:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(IZZLjava/util/List;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;
    .locals 10
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "zoneStr"

    .line 2
    .line 3
    .line 4
    move-object/from16 v7, p6

    .line 5
    .line 6
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 10
    .line 11
    move-object v1, v0

    .line 12
    move v2, p1

    .line 13
    move v3, p2

    .line 14
    move v4, p3

    .line 15
    move-object v5, p4

    .line 16
    move v6, p5

    .line 17
    move-object/from16 v8, p7

    .line 18
    .line 19
    move-object/from16 v9, p8

    .line 20
    .line 21
    invoke-direct/range {v1 .. v9}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;-><init>(IZZLjava/util/List;ILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 22
    .line 23
    .line 24
    return-object v0
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 12
    .line 13
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->reSignAdTimes:I

    .line 14
    .line 15
    iget v3, p1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->reSignAdTimes:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->clickDoubleAdToday:Z

    .line 21
    .line 22
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->clickDoubleAdToday:Z

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->clickDoubleDramaToday:Z

    .line 28
    .line 29
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->clickDoubleDramaToday:Z

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->signRecords:Ljava/util/List;

    .line 35
    .line 36
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->signRecords:Ljava/util/List;

    .line 37
    .line 38
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->zoneHour:I

    .line 46
    .line 47
    iget v3, p1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->zoneHour:I

    .line 48
    .line 49
    if-eq v1, v3, :cond_6

    .line 50
    .line 51
    return v2

    .line 52
    :cond_6
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->zoneStr:Ljava/lang/String;

    .line 53
    .line 54
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->zoneStr:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-nez v1, :cond_7

    .line 61
    .line 62
    return v2

    .line 63
    :cond_7
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->notificationTaskId:Ljava/lang/Integer;

    .line 64
    .line 65
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->notificationTaskId:Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_8

    .line 72
    .line 73
    return v2

    .line 74
    :cond_8
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->notificationTaskBonus:Ljava/lang/Integer;

    .line 75
    .line 76
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->notificationTaskBonus:Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_9

    .line 83
    .line 84
    return v2

    .line 85
    :cond_9
    return v0
.end method

.method public final getClickDoubleAdToday()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->clickDoubleAdToday:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getClickDoubleDramaToday()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->clickDoubleDramaToday:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getNotificationTaskBonus()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->notificationTaskBonus:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNotificationTaskId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->notificationTaskId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getReSignAdTimes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->reSignAdTimes:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSignRecords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->signRecords:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getZoneHour()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->zoneHour:I

    .line 2
    .line 3
    return v0
.end method

.method public final getZoneStr()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->zoneStr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->reSignAdTimes:I

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
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->clickDoubleAdToday:Z

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

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
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->clickDoubleDramaToday:Z

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->signRecords:Ljava/util/List;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    move v1, v2

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    :goto_0
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->zoneHour:I

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    add-int/2addr v0, v1

    .line 48
    mul-int/lit8 v0, v0, 0x1f

    .line 49
    .line 50
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->zoneStr:Ljava/lang/String;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/2addr v0, v1

    .line 57
    mul-int/lit8 v0, v0, 0x1f

    .line 58
    .line 59
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->notificationTaskId:Ljava/lang/Integer;

    .line 60
    .line 61
    if-nez v1, :cond_1

    .line 62
    .line 63
    move v1, v2

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    :goto_1
    add-int/2addr v0, v1

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->notificationTaskBonus:Ljava/lang/Integer;

    .line 73
    .line 74
    if-nez v1, :cond_2

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    :goto_2
    add-int/2addr v0, v2

    .line 82
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
    const-string v1, "CheckInInfoResult(reSignAdTimes="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->reSignAdTimes:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", clickDoubleAdToday="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->clickDoubleAdToday:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", clickDoubleDramaToday="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->clickDoubleDramaToday:Z

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", signRecords="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->signRecords:Ljava/util/List;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", zoneHour="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->zoneHour:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", zoneStr="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->zoneStr:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", notificationTaskId="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->notificationTaskId:Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", notificationTaskBonus="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->notificationTaskBonus:Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const/16 v1, 0x29

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0
.end method
