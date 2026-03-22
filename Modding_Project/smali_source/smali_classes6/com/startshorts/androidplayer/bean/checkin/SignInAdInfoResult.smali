.class public final Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;
.super Ljava/lang/Object;
.source "SignInAdInfoResult.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REDIRECT_TYPE_AD:I = 0x1

.field public static final REDIRECT_TYPE_INNER_H5:I = 0x3

.field public static final REDIRECT_TYPE_OUTSIDE_H5:I = 0x2


# instance fields
.field private final adReward:I

.field private final canWatchNum:I

.field private final completeNum:I

.field private final conditionValue:I

.field private final interval:I

.field private final nextAdReward:I

.field private final receiveBonus:I

.field private final redirectType:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final redirectUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final requestId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sumBonus:I

.field private final sumNum:I

.field private final taskCondition:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final taskContent:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final taskDescription:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final taskId:I

.field private final taskName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final taskSortId:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final taskType:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->Companion:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    const v20, 0x7ffff

    const/16 v21, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-direct/range {v0 .. v21}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;-><init>(ILjava/lang/String;IIIIIIIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 4
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p2

    move-object v2, p11

    const-string v3, "requestId"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "taskDescription"

    invoke-static {p11, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v3, p1

    .line 3
    iput v3, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskId:I

    .line 4
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->requestId:Ljava/lang/String;

    move v1, p3

    .line 5
    iput v1, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->completeNum:I

    move v1, p4

    .line 6
    iput v1, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->sumNum:I

    move v1, p5

    .line 7
    iput v1, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->canWatchNum:I

    move v1, p6

    .line 8
    iput v1, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->receiveBonus:I

    move v1, p7

    .line 9
    iput v1, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->adReward:I

    move v1, p8

    .line 10
    iput v1, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->interval:I

    move v1, p9

    .line 11
    iput v1, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->nextAdReward:I

    move v1, p10

    .line 12
    iput v1, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->sumBonus:I

    .line 13
    iput-object v2, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskDescription:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 14
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskType:Ljava/lang/Integer;

    move-object/from16 v1, p13

    .line 15
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskContent:Ljava/lang/Integer;

    move-object/from16 v1, p14

    .line 16
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskName:Ljava/lang/String;

    move-object/from16 v1, p15

    .line 17
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskCondition:Ljava/lang/Integer;

    move/from16 v1, p16

    .line 18
    iput v1, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->conditionValue:I

    move-object/from16 v1, p17

    .line 19
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->redirectType:Ljava/lang/Integer;

    move-object/from16 v1, p18

    .line 20
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->redirectUrl:Ljava/lang/String;

    move-object/from16 v1, p19

    .line 21
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskSortId:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;IIIIIIIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    move/from16 v0, p20

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    .line 22
    const-string v4, ""

    if-eqz v3, :cond_1

    move-object v3, v4

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move/from16 v5, p3

    :goto_2
    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    move/from16 v6, p4

    :goto_3
    and-int/lit8 v7, v0, 0x10

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    goto :goto_4

    :cond_4
    move/from16 v7, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    goto :goto_9

    :cond_9
    move/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    goto :goto_a

    :cond_a
    move-object/from16 v4, p11

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const/4 v13, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v15, v0, 0x1000

    if-eqz v15, :cond_c

    const/4 v15, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v15, p13

    :goto_c
    and-int/lit16 v2, v0, 0x2000

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v2, p14

    :goto_d
    and-int/lit16 v14, v0, 0x4000

    if-eqz v14, :cond_e

    const/4 v14, 0x0

    goto :goto_e

    :cond_e
    move-object/from16 v14, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move/from16 v16, p16

    :goto_f
    const/high16 v17, 0x10000

    and-int v17, v0, v17

    if-eqz v17, :cond_10

    const/16 v17, 0x0

    goto :goto_10

    :cond_10
    move-object/from16 v17, p17

    :goto_10
    const/high16 v18, 0x20000

    and-int v18, v0, v18

    if-eqz v18, :cond_11

    const/16 v18, 0x0

    goto :goto_11

    :cond_11
    move-object/from16 v18, p18

    :goto_11
    const/high16 v19, 0x40000

    and-int v0, v0, v19

    if-eqz v0, :cond_12

    const/4 v0, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v0, p19

    :goto_12
    move-object/from16 p1, p0

    move/from16 p2, v1

    move-object/from16 p3, v3

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move-object/from16 p12, v4

    move-object/from16 p13, v13

    move-object/from16 p14, v15

    move-object/from16 p15, v2

    move-object/from16 p16, v14

    move/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v0

    invoke-direct/range {p1 .. p20}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;-><init>(ILjava/lang/String;IIIIIIIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;ILjava/lang/String;IIIIIIIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p20

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget v2, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskId:I

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move/from16 v2, p1

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    iget-object v3, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->requestId:Ljava/lang/String;

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-object/from16 v3, p2

    .line 22
    .line 23
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    iget v4, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->completeNum:I

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move/from16 v4, p3

    .line 31
    .line 32
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 33
    .line 34
    if-eqz v5, :cond_3

    .line 35
    .line 36
    iget v5, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->sumNum:I

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    move/from16 v5, p4

    .line 40
    .line 41
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 42
    .line 43
    if-eqz v6, :cond_4

    .line 44
    .line 45
    iget v6, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->canWatchNum:I

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    move/from16 v6, p5

    .line 49
    .line 50
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 51
    .line 52
    if-eqz v7, :cond_5

    .line 53
    .line 54
    iget v7, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->receiveBonus:I

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :cond_5
    move/from16 v7, p6

    .line 58
    .line 59
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 60
    .line 61
    if-eqz v8, :cond_6

    .line 62
    .line 63
    iget v8, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->adReward:I

    .line 64
    .line 65
    goto :goto_6

    .line 66
    :cond_6
    move/from16 v8, p7

    .line 67
    .line 68
    :goto_6
    and-int/lit16 v9, v1, 0x80

    .line 69
    .line 70
    if-eqz v9, :cond_7

    .line 71
    .line 72
    iget v9, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->interval:I

    .line 73
    .line 74
    goto :goto_7

    .line 75
    :cond_7
    move/from16 v9, p8

    .line 76
    .line 77
    :goto_7
    and-int/lit16 v10, v1, 0x100

    .line 78
    .line 79
    if-eqz v10, :cond_8

    .line 80
    .line 81
    iget v10, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->nextAdReward:I

    .line 82
    .line 83
    goto :goto_8

    .line 84
    :cond_8
    move/from16 v10, p9

    .line 85
    .line 86
    :goto_8
    and-int/lit16 v11, v1, 0x200

    .line 87
    .line 88
    if-eqz v11, :cond_9

    .line 89
    .line 90
    iget v11, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->sumBonus:I

    .line 91
    .line 92
    goto :goto_9

    .line 93
    :cond_9
    move/from16 v11, p10

    .line 94
    .line 95
    :goto_9
    and-int/lit16 v12, v1, 0x400

    .line 96
    .line 97
    if-eqz v12, :cond_a

    .line 98
    .line 99
    iget-object v12, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskDescription:Ljava/lang/String;

    .line 100
    .line 101
    goto :goto_a

    .line 102
    :cond_a
    move-object/from16 v12, p11

    .line 103
    .line 104
    :goto_a
    and-int/lit16 v13, v1, 0x800

    .line 105
    .line 106
    if-eqz v13, :cond_b

    .line 107
    .line 108
    iget-object v13, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskType:Ljava/lang/Integer;

    .line 109
    .line 110
    goto :goto_b

    .line 111
    :cond_b
    move-object/from16 v13, p12

    .line 112
    .line 113
    :goto_b
    and-int/lit16 v14, v1, 0x1000

    .line 114
    .line 115
    if-eqz v14, :cond_c

    .line 116
    .line 117
    iget-object v14, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskContent:Ljava/lang/Integer;

    .line 118
    .line 119
    goto :goto_c

    .line 120
    :cond_c
    move-object/from16 v14, p13

    .line 121
    .line 122
    :goto_c
    and-int/lit16 v15, v1, 0x2000

    .line 123
    .line 124
    if-eqz v15, :cond_d

    .line 125
    .line 126
    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskName:Ljava/lang/String;

    .line 127
    .line 128
    goto :goto_d

    .line 129
    :cond_d
    move-object/from16 v15, p14

    .line 130
    .line 131
    :goto_d
    move-object/from16 p14, v15

    .line 132
    .line 133
    and-int/lit16 v15, v1, 0x4000

    .line 134
    .line 135
    if-eqz v15, :cond_e

    .line 136
    .line 137
    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskCondition:Ljava/lang/Integer;

    .line 138
    .line 139
    goto :goto_e

    .line 140
    :cond_e
    move-object/from16 v15, p15

    .line 141
    .line 142
    :goto_e
    const v16, 0x8000

    .line 143
    .line 144
    .line 145
    and-int v16, v1, v16

    .line 146
    .line 147
    move-object/from16 p15, v15

    .line 148
    .line 149
    if-eqz v16, :cond_f

    .line 150
    .line 151
    iget v15, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->conditionValue:I

    .line 152
    .line 153
    goto :goto_f

    .line 154
    :cond_f
    move/from16 v15, p16

    .line 155
    .line 156
    :goto_f
    const/high16 v16, 0x10000

    .line 157
    .line 158
    and-int v16, v1, v16

    .line 159
    .line 160
    move/from16 p16, v15

    .line 161
    .line 162
    if-eqz v16, :cond_10

    .line 163
    .line 164
    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->redirectType:Ljava/lang/Integer;

    .line 165
    .line 166
    goto :goto_10

    .line 167
    :cond_10
    move-object/from16 v15, p17

    .line 168
    .line 169
    :goto_10
    const/high16 v16, 0x20000

    .line 170
    .line 171
    and-int v16, v1, v16

    .line 172
    .line 173
    move-object/from16 p17, v15

    .line 174
    .line 175
    if-eqz v16, :cond_11

    .line 176
    .line 177
    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->redirectUrl:Ljava/lang/String;

    .line 178
    .line 179
    goto :goto_11

    .line 180
    :cond_11
    move-object/from16 v15, p18

    .line 181
    .line 182
    :goto_11
    const/high16 v16, 0x40000

    .line 183
    .line 184
    and-int v1, v1, v16

    .line 185
    .line 186
    if-eqz v1, :cond_12

    .line 187
    .line 188
    iget-object v1, v0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskSortId:Ljava/lang/Integer;

    .line 189
    .line 190
    goto :goto_12

    .line 191
    :cond_12
    move-object/from16 v1, p19

    .line 192
    .line 193
    :goto_12
    move/from16 p1, v2

    .line 194
    .line 195
    move-object/from16 p2, v3

    .line 196
    .line 197
    move/from16 p3, v4

    .line 198
    .line 199
    move/from16 p4, v5

    .line 200
    .line 201
    move/from16 p5, v6

    .line 202
    .line 203
    move/from16 p6, v7

    .line 204
    .line 205
    move/from16 p7, v8

    .line 206
    .line 207
    move/from16 p8, v9

    .line 208
    .line 209
    move/from16 p9, v10

    .line 210
    .line 211
    move/from16 p10, v11

    .line 212
    .line 213
    move-object/from16 p11, v12

    .line 214
    .line 215
    move-object/from16 p12, v13

    .line 216
    .line 217
    move-object/from16 p13, v14

    .line 218
    .line 219
    move-object/from16 p18, v15

    .line 220
    .line 221
    move-object/from16 p19, v1

    .line 222
    .line 223
    invoke-virtual/range {p0 .. p19}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->copy(ILjava/lang/String;IIIIIIIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskId:I

    .line 2
    .line 3
    return v0
.end method

.method public final component10()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->sumBonus:I

    .line 2
    .line 3
    return v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskContent:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component14()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component15()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskCondition:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component16()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->conditionValue:I

    .line 2
    .line 3
    return v0
.end method

.method public final component17()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->redirectType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component18()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->redirectUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component19()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskSortId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->requestId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->completeNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->sumNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->canWatchNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final component6()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->receiveBonus:I

    .line 2
    .line 3
    return v0
.end method

.method public final component7()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->adReward:I

    .line 2
    .line 3
    return v0
.end method

.method public final component8()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->interval:I

    .line 2
    .line 3
    return v0
.end method

.method public final component9()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->nextAdReward:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(ILjava/lang/String;IIIIIIIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;
    .locals 21
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p12    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move/from16 v3, p3

    .line 6
    .line 7
    move/from16 v4, p4

    .line 8
    .line 9
    move/from16 v5, p5

    .line 10
    .line 11
    move/from16 v6, p6

    .line 12
    .line 13
    move/from16 v7, p7

    .line 14
    .line 15
    move/from16 v8, p8

    .line 16
    .line 17
    move/from16 v9, p9

    .line 18
    .line 19
    move/from16 v10, p10

    .line 20
    .line 21
    move-object/from16 v11, p11

    .line 22
    .line 23
    move-object/from16 v12, p12

    .line 24
    .line 25
    move-object/from16 v13, p13

    .line 26
    .line 27
    move-object/from16 v14, p14

    .line 28
    .line 29
    move-object/from16 v15, p15

    .line 30
    .line 31
    move/from16 v16, p16

    .line 32
    .line 33
    move-object/from16 v17, p17

    .line 34
    .line 35
    move-object/from16 v18, p18

    .line 36
    .line 37
    move-object/from16 v19, p19

    .line 38
    .line 39
    const-string v0, "requestId"

    .line 40
    .line 41
    move-object/from16 v1, p2

    .line 42
    .line 43
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string/jumbo v0, "taskDescription"

    .line 47
    .line 48
    .line 49
    move-object/from16 v1, p11

    .line 50
    .line 51
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    new-instance v20, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 55
    .line 56
    move-object/from16 v0, v20

    .line 57
    .line 58
    move/from16 v1, p1

    .line 59
    .line 60
    invoke-direct/range {v0 .. v19}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;-><init>(ILjava/lang/String;IIIIIIIILjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;)V

    .line 61
    .line 62
    .line 63
    return-object v20
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 12
    .line 13
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskId:I

    .line 14
    .line 15
    iget v3, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskId:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->requestId:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->requestId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->completeNum:I

    .line 32
    .line 33
    iget v3, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->completeNum:I

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->sumNum:I

    .line 39
    .line 40
    iget v3, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->sumNum:I

    .line 41
    .line 42
    if-eq v1, v3, :cond_5

    .line 43
    .line 44
    return v2

    .line 45
    :cond_5
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->canWatchNum:I

    .line 46
    .line 47
    iget v3, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->canWatchNum:I

    .line 48
    .line 49
    if-eq v1, v3, :cond_6

    .line 50
    .line 51
    return v2

    .line 52
    :cond_6
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->receiveBonus:I

    .line 53
    .line 54
    iget v3, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->receiveBonus:I

    .line 55
    .line 56
    if-eq v1, v3, :cond_7

    .line 57
    .line 58
    return v2

    .line 59
    :cond_7
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->adReward:I

    .line 60
    .line 61
    iget v3, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->adReward:I

    .line 62
    .line 63
    if-eq v1, v3, :cond_8

    .line 64
    .line 65
    return v2

    .line 66
    :cond_8
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->interval:I

    .line 67
    .line 68
    iget v3, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->interval:I

    .line 69
    .line 70
    if-eq v1, v3, :cond_9

    .line 71
    .line 72
    return v2

    .line 73
    :cond_9
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->nextAdReward:I

    .line 74
    .line 75
    iget v3, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->nextAdReward:I

    .line 76
    .line 77
    if-eq v1, v3, :cond_a

    .line 78
    .line 79
    return v2

    .line 80
    :cond_a
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->sumBonus:I

    .line 81
    .line 82
    iget v3, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->sumBonus:I

    .line 83
    .line 84
    if-eq v1, v3, :cond_b

    .line 85
    .line 86
    return v2

    .line 87
    :cond_b
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskDescription:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskDescription:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_c

    .line 96
    .line 97
    return v2

    .line 98
    :cond_c
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskType:Ljava/lang/Integer;

    .line 99
    .line 100
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskType:Ljava/lang/Integer;

    .line 101
    .line 102
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-nez v1, :cond_d

    .line 107
    .line 108
    return v2

    .line 109
    :cond_d
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskContent:Ljava/lang/Integer;

    .line 110
    .line 111
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskContent:Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-nez v1, :cond_e

    .line 118
    .line 119
    return v2

    .line 120
    :cond_e
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskName:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskName:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    if-nez v1, :cond_f

    .line 129
    .line 130
    return v2

    .line 131
    :cond_f
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskCondition:Ljava/lang/Integer;

    .line 132
    .line 133
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskCondition:Ljava/lang/Integer;

    .line 134
    .line 135
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-nez v1, :cond_10

    .line 140
    .line 141
    return v2

    .line 142
    :cond_10
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->conditionValue:I

    .line 143
    .line 144
    iget v3, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->conditionValue:I

    .line 145
    .line 146
    if-eq v1, v3, :cond_11

    .line 147
    .line 148
    return v2

    .line 149
    :cond_11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->redirectType:Ljava/lang/Integer;

    .line 150
    .line 151
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->redirectType:Ljava/lang/Integer;

    .line 152
    .line 153
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-nez v1, :cond_12

    .line 158
    .line 159
    return v2

    .line 160
    :cond_12
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->redirectUrl:Ljava/lang/String;

    .line 161
    .line 162
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->redirectUrl:Ljava/lang/String;

    .line 163
    .line 164
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-nez v1, :cond_13

    .line 169
    .line 170
    return v2

    .line 171
    :cond_13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskSortId:Ljava/lang/Integer;

    .line 172
    .line 173
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskSortId:Ljava/lang/Integer;

    .line 174
    .line 175
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-nez p1, :cond_14

    .line 180
    .line 181
    return v2

    .line 182
    :cond_14
    return v0
.end method

.method public final getAdReward()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->adReward:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCanWatchNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->canWatchNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCompleteNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->completeNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final getConditionValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->conditionValue:I

    .line 2
    .line 3
    return v0
.end method

.method public final getInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->interval:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNextAdReward()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->nextAdReward:I

    .line 2
    .line 3
    return v0
.end method

.method public final getReceiveBonus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->receiveBonus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRedirectType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->redirectType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRedirectUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->redirectUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->requestId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSumBonus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->sumBonus:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSumNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->sumNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTaskCondition()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskCondition:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskContent()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskContent:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTaskName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskSortId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskSortId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskId:I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->requestId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->completeNum:I

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->sumNum:I

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->canWatchNum:I

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->receiveBonus:I

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->adReward:I

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->interval:I

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->nextAdReward:I

    .line 73
    .line 74
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->sumBonus:I

    .line 82
    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    mul-int/lit8 v0, v0, 0x1f

    .line 89
    .line 90
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskDescription:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    add-int/2addr v0, v1

    .line 97
    mul-int/lit8 v0, v0, 0x1f

    .line 98
    .line 99
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskType:Ljava/lang/Integer;

    .line 100
    .line 101
    const/4 v2, 0x0

    .line 102
    if-nez v1, :cond_0

    .line 103
    .line 104
    move v1, v2

    .line 105
    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    :goto_0
    add-int/2addr v0, v1

    .line 111
    mul-int/lit8 v0, v0, 0x1f

    .line 112
    .line 113
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskContent:Ljava/lang/Integer;

    .line 114
    .line 115
    if-nez v1, :cond_1

    .line 116
    .line 117
    move v1, v2

    .line 118
    goto :goto_1

    .line 119
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    :goto_1
    add-int/2addr v0, v1

    .line 124
    mul-int/lit8 v0, v0, 0x1f

    .line 125
    .line 126
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskName:Ljava/lang/String;

    .line 127
    .line 128
    if-nez v1, :cond_2

    .line 129
    .line 130
    move v1, v2

    .line 131
    goto :goto_2

    .line 132
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    :goto_2
    add-int/2addr v0, v1

    .line 137
    mul-int/lit8 v0, v0, 0x1f

    .line 138
    .line 139
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskCondition:Ljava/lang/Integer;

    .line 140
    .line 141
    if-nez v1, :cond_3

    .line 142
    .line 143
    move v1, v2

    .line 144
    goto :goto_3

    .line 145
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    :goto_3
    add-int/2addr v0, v1

    .line 150
    mul-int/lit8 v0, v0, 0x1f

    .line 151
    .line 152
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->conditionValue:I

    .line 153
    .line 154
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    add-int/2addr v0, v1

    .line 159
    mul-int/lit8 v0, v0, 0x1f

    .line 160
    .line 161
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->redirectType:Ljava/lang/Integer;

    .line 162
    .line 163
    if-nez v1, :cond_4

    .line 164
    .line 165
    move v1, v2

    .line 166
    goto :goto_4

    .line 167
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    :goto_4
    add-int/2addr v0, v1

    .line 172
    mul-int/lit8 v0, v0, 0x1f

    .line 173
    .line 174
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->redirectUrl:Ljava/lang/String;

    .line 175
    .line 176
    if-nez v1, :cond_5

    .line 177
    .line 178
    move v1, v2

    .line 179
    goto :goto_5

    .line 180
    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    :goto_5
    add-int/2addr v0, v1

    .line 185
    mul-int/lit8 v0, v0, 0x1f

    .line 186
    .line 187
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskSortId:Ljava/lang/Integer;

    .line 188
    .line 189
    if-nez v1, :cond_6

    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    :goto_6
    add-int/2addr v0, v2

    .line 197
    return v0
.end method

.method public final isAd()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->redirectType:Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    const/4 v2, 0x1

    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    move v1, v2

    .line 16
    :cond_1
    return v1
.end method

.method public final isInnerH5()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->redirectType:Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    const/4 v2, 0x3

    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_1
    return v1
.end method

.method public final isOutsideH5()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->redirectType:Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    const/4 v2, 0x2

    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_1
    return v1
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
    const-string v1, "SignInAdInfoResult(taskId="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskId:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", requestId="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->requestId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", completeNum="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->completeNum:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", sumNum="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->sumNum:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", canWatchNum="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->canWatchNum:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", receiveBonus="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->receiveBonus:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", adReward="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->adReward:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", interval="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->interval:I

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", nextAdReward="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->nextAdReward:I

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", sumBonus="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->sumBonus:I

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", taskDescription="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskDescription:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", taskType="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskType:Ljava/lang/Integer;

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ", taskContent="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskContent:Ljava/lang/Integer;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", taskName="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskName:Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, ", taskCondition="

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskCondition:Ljava/lang/Integer;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", conditionValue="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->conditionValue:I

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", redirectType="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->redirectType:Ljava/lang/Integer;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", redirectUrl="

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->redirectUrl:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v1, ", taskSortId="

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->taskSortId:Ljava/lang/Integer;

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const/16 v1, 0x29

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    return-object v0
.end method

.method public final validH5(J)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->isOutsideH5()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->isInnerH5()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    sub-long/2addr v2, p1

    .line 22
    const/16 p1, 0x3e8

    .line 23
    .line 24
    int-to-long p1, p1

    .line 25
    div-long/2addr v2, p1

    .line 26
    const-wide/16 p1, 0xe10

    .line 27
    .line 28
    cmp-long p1, v2, p1

    .line 29
    .line 30
    if-ltz p1, :cond_1

    .line 31
    .line 32
    return v1

    .line 33
    :cond_1
    iget p1, p0, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->conditionValue:I

    .line 34
    .line 35
    int-to-long p1, p1

    .line 36
    cmp-long p1, v2, p1

    .line 37
    .line 38
    if-ltz p1, :cond_2

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    :cond_2
    return v1
.end method
