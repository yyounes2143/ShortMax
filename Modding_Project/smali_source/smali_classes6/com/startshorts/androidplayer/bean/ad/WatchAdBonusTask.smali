.class public final Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;
.super Ljava/lang/Object;
.source "WatchAdBonusTask.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REDIRECT_TYPE_AD:I = 0x1

.field public static final REDIRECT_TYPE_INNER_H5:I = 0x3

.field public static final REDIRECT_TYPE_OUTSIDE_H5:I = 0x2


# instance fields
.field private final completedCount:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final conditionValue:I

.field private final icon:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isCompleted:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

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

.field private final rewardReceiveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/ad/TaskRewardReceive;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final rewardType:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final rewardValue:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final rewardValueStr:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final sumCount:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final taskCategory:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final taskCondition:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final taskContent:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final taskCountType:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final taskDescription:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final taskId:I

.field private final taskName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

.field private final taskTypeName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->Companion:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    const v23, 0x3fffff

    const/16 v24, 0x0

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

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v0 .. v24}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .param p9    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .param p14    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/ad/TaskRewardReceive;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    move-object v3, p5

    const-string v4, "requestId"

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "taskName"

    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v4, "taskDescription"

    invoke-static {p5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v4, p1

    .line 3
    iput v4, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskId:I

    .line 4
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->requestId:Ljava/lang/String;

    move-object v1, p3

    .line 5
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->icon:Ljava/lang/String;

    .line 6
    iput-object v2, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskName:Ljava/lang/String;

    .line 7
    iput-object v3, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskDescription:Ljava/lang/String;

    move-object v1, p6

    .line 8
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCategory:Ljava/lang/Integer;

    move-object v1, p7

    .line 9
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCountType:Ljava/lang/Integer;

    move-object v1, p8

    .line 10
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->sumCount:Ljava/lang/Integer;

    move-object v1, p9

    .line 11
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->completedCount:Ljava/lang/Integer;

    move-object v1, p10

    .line 12
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskType:Ljava/lang/Integer;

    move-object/from16 v1, p11

    .line 13
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskTypeName:Ljava/lang/String;

    move-object/from16 v1, p12

    .line 14
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskSortId:Ljava/lang/Integer;

    move-object/from16 v1, p13

    .line 15
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskContent:Ljava/lang/Integer;

    move-object/from16 v1, p14

    .line 16
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCondition:Ljava/lang/Integer;

    move/from16 v1, p15

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->conditionValue:I

    move-object/from16 v1, p16

    .line 18
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->redirectType:Ljava/lang/Integer;

    move-object/from16 v1, p17

    .line 19
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->redirectUrl:Ljava/lang/String;

    move-object/from16 v1, p18

    .line 20
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardType:Ljava/lang/Integer;

    move-object/from16 v1, p19

    .line 21
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardValue:Ljava/lang/Integer;

    move-object/from16 v1, p20

    .line 22
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardValueStr:Ljava/lang/String;

    move-object/from16 v1, p21

    .line 23
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardReceiveList:Ljava/util/List;

    move-object/from16 v1, p22

    .line 24
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->isCompleted:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 23

    move/from16 v0, p23

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    .line 25
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
    move-object/from16 v5, p3

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    move-object v7, v4

    goto :goto_3

    :cond_3
    move-object/from16 v7, p4

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    move-object/from16 v4, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v8, p6

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_6

    const/4 v9, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v9, p7

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_7

    const/4 v10, 0x0

    goto :goto_7

    :cond_7
    move-object/from16 v10, p8

    :goto_7
    and-int/lit16 v11, v0, 0x100

    if-eqz v11, :cond_8

    const/4 v11, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v11, p9

    :goto_8
    and-int/lit16 v12, v0, 0x200

    if-eqz v12, :cond_9

    const/4 v12, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v12, p10

    :goto_9
    and-int/lit16 v13, v0, 0x400

    if-eqz v13, :cond_a

    const/4 v13, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v13, p11

    :goto_a
    and-int/lit16 v14, v0, 0x800

    if-eqz v14, :cond_b

    const/4 v14, 0x0

    goto :goto_b

    :cond_b
    move-object/from16 v14, p12

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
    and-int/lit16 v6, v0, 0x4000

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    goto :goto_e

    :cond_e
    move/from16 v6, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v0, v16

    if-eqz v16, :cond_f

    const/16 v16, 0x0

    goto :goto_f

    :cond_f
    move-object/from16 v16, p16

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

    and-int v19, v0, v19

    if-eqz v19, :cond_12

    const/16 v19, 0x0

    goto :goto_12

    :cond_12
    move-object/from16 v19, p19

    :goto_12
    const/high16 v20, 0x80000

    and-int v20, v0, v20

    if-eqz v20, :cond_13

    const/16 v20, 0x0

    goto :goto_13

    :cond_13
    move-object/from16 v20, p20

    :goto_13
    const/high16 v21, 0x100000

    and-int v21, v0, v21

    if-eqz v21, :cond_14

    const/16 v21, 0x0

    goto :goto_14

    :cond_14
    move-object/from16 v21, p21

    :goto_14
    const/high16 v22, 0x200000

    and-int v0, v0, v22

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    goto :goto_15

    :cond_15
    move-object/from16 v0, p22

    :goto_15
    move-object/from16 p1, p0

    move/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v5

    move-object/from16 p5, v7

    move-object/from16 p6, v4

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p14, v15

    move-object/from16 p15, v2

    move/from16 p16, v6

    move-object/from16 p17, v16

    move-object/from16 p18, v17

    move-object/from16 p19, v18

    move-object/from16 p20, v19

    move-object/from16 p21, v20

    move-object/from16 p22, v21

    move-object/from16 p23, v0

    invoke-direct/range {p1 .. p23}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    move/from16 v1, p23

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskId:I

    goto :goto_0

    :cond_0
    move/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->requestId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->icon:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskName:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskDescription:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCategory:Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCountType:Ljava/lang/Integer;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->sumCount:Ljava/lang/Integer;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->completedCount:Ljava/lang/Integer;

    goto :goto_8

    :cond_8
    move-object/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskType:Ljava/lang/Integer;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskTypeName:Ljava/lang/String;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v13, v1, 0x800

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskSortId:Ljava/lang/Integer;

    goto :goto_b

    :cond_b
    move-object/from16 v13, p12

    :goto_b
    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-object v14, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskContent:Ljava/lang/Integer;

    goto :goto_c

    :cond_c
    move-object/from16 v14, p13

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCondition:Ljava/lang/Integer;

    goto :goto_d

    :cond_d
    move-object/from16 v15, p14

    :goto_d
    move-object/from16 p14, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->conditionValue:I

    goto :goto_e

    :cond_e
    move/from16 v15, p15

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p15, v15

    if-eqz v16, :cond_f

    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->redirectType:Ljava/lang/Integer;

    goto :goto_f

    :cond_f
    move-object/from16 v15, p16

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-object/from16 p16, v15

    if-eqz v16, :cond_10

    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->redirectUrl:Ljava/lang/String;

    goto :goto_10

    :cond_10
    move-object/from16 v15, p17

    :goto_10
    const/high16 v16, 0x20000

    and-int v16, v1, v16

    move-object/from16 p17, v15

    if-eqz v16, :cond_11

    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardType:Ljava/lang/Integer;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p18

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p18, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardValue:Ljava/lang/Integer;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p19

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p19, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardValueStr:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p20

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p20, v15

    if-eqz v16, :cond_14

    iget-object v15, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardReceiveList:Ljava/util/List;

    goto :goto_14

    :cond_14
    move-object/from16 v15, p21

    :goto_14
    const/high16 v16, 0x200000

    and-int v1, v1, v16

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->isCompleted:Ljava/lang/Integer;

    goto :goto_15

    :cond_15
    move-object/from16 v1, p22

    :goto_15
    move/from16 p1, v2

    move-object/from16 p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v12

    move-object/from16 p12, v13

    move-object/from16 p13, v14

    move-object/from16 p21, v15

    move-object/from16 p22, v1

    invoke-virtual/range {p0 .. p22}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskId:I

    .line 2
    .line 3
    return v0
.end method

.method public final component10()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component11()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskTypeName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component12()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskSortId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component13()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskContent:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component14()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCondition:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component15()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->conditionValue:I

    .line 2
    .line 3
    return v0
.end method

.method public final component16()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->redirectType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component17()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->redirectUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component18()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component19()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardValue:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->requestId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardValueStr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component21()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/ad/TaskRewardReceive;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardReceiveList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component22()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->isCompleted:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->icon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCategory:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCountType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->sumCount:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component9()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->completedCount:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;
    .locals 24
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .param p9    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .param p14    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p16    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p22    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "I",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/ad/TaskRewardReceive;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    move-object/from16 v5, p5

    .line 10
    .line 11
    move-object/from16 v6, p6

    .line 12
    .line 13
    move-object/from16 v7, p7

    .line 14
    .line 15
    move-object/from16 v8, p8

    .line 16
    .line 17
    move-object/from16 v9, p9

    .line 18
    .line 19
    move-object/from16 v10, p10

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
    move/from16 v15, p15

    .line 30
    .line 31
    move-object/from16 v16, p16

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
    move-object/from16 v20, p20

    .line 40
    .line 41
    move-object/from16 v21, p21

    .line 42
    .line 43
    move-object/from16 v22, p22

    .line 44
    .line 45
    const-string v0, "requestId"

    .line 46
    .line 47
    move-object/from16 v1, p2

    .line 48
    .line 49
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const-string/jumbo v0, "taskName"

    .line 53
    .line 54
    .line 55
    move-object/from16 v1, p4

    .line 56
    .line 57
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    const-string/jumbo v0, "taskDescription"

    .line 61
    .line 62
    .line 63
    move-object/from16 v1, p5

    .line 64
    .line 65
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v23, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 69
    .line 70
    move-object/from16 v0, v23

    .line 71
    .line 72
    move/from16 v1, p1

    .line 73
    .line 74
    invoke-direct/range {v0 .. v22}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;)V

    .line 75
    .line 76
    .line 77
    return-object v23
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 12
    .line 13
    iget v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskId:I

    .line 14
    .line 15
    iget v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskId:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->requestId:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->requestId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->icon:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->icon:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskName:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskName:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskDescription:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskDescription:Ljava/lang/String;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCategory:Ljava/lang/Integer;

    .line 65
    .line 66
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCategory:Ljava/lang/Integer;

    .line 67
    .line 68
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-nez v1, :cond_7

    .line 73
    .line 74
    return v2

    .line 75
    :cond_7
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCountType:Ljava/lang/Integer;

    .line 76
    .line 77
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCountType:Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-nez v1, :cond_8

    .line 84
    .line 85
    return v2

    .line 86
    :cond_8
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->sumCount:Ljava/lang/Integer;

    .line 87
    .line 88
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->sumCount:Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-nez v1, :cond_9

    .line 95
    .line 96
    return v2

    .line 97
    :cond_9
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->completedCount:Ljava/lang/Integer;

    .line 98
    .line 99
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->completedCount:Ljava/lang/Integer;

    .line 100
    .line 101
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-nez v1, :cond_a

    .line 106
    .line 107
    return v2

    .line 108
    :cond_a
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskType:Ljava/lang/Integer;

    .line 109
    .line 110
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskType:Ljava/lang/Integer;

    .line 111
    .line 112
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_b

    .line 117
    .line 118
    return v2

    .line 119
    :cond_b
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskTypeName:Ljava/lang/String;

    .line 120
    .line 121
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskTypeName:Ljava/lang/String;

    .line 122
    .line 123
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    if-nez v1, :cond_c

    .line 128
    .line 129
    return v2

    .line 130
    :cond_c
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskSortId:Ljava/lang/Integer;

    .line 131
    .line 132
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskSortId:Ljava/lang/Integer;

    .line 133
    .line 134
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-nez v1, :cond_d

    .line 139
    .line 140
    return v2

    .line 141
    :cond_d
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskContent:Ljava/lang/Integer;

    .line 142
    .line 143
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskContent:Ljava/lang/Integer;

    .line 144
    .line 145
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-nez v1, :cond_e

    .line 150
    .line 151
    return v2

    .line 152
    :cond_e
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCondition:Ljava/lang/Integer;

    .line 153
    .line 154
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCondition:Ljava/lang/Integer;

    .line 155
    .line 156
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_f

    .line 161
    .line 162
    return v2

    .line 163
    :cond_f
    iget v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->conditionValue:I

    .line 164
    .line 165
    iget v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->conditionValue:I

    .line 166
    .line 167
    if-eq v1, v3, :cond_10

    .line 168
    .line 169
    return v2

    .line 170
    :cond_10
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->redirectType:Ljava/lang/Integer;

    .line 171
    .line 172
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->redirectType:Ljava/lang/Integer;

    .line 173
    .line 174
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-nez v1, :cond_11

    .line 179
    .line 180
    return v2

    .line 181
    :cond_11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->redirectUrl:Ljava/lang/String;

    .line 182
    .line 183
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->redirectUrl:Ljava/lang/String;

    .line 184
    .line 185
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-nez v1, :cond_12

    .line 190
    .line 191
    return v2

    .line 192
    :cond_12
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardType:Ljava/lang/Integer;

    .line 193
    .line 194
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardType:Ljava/lang/Integer;

    .line 195
    .line 196
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    if-nez v1, :cond_13

    .line 201
    .line 202
    return v2

    .line 203
    :cond_13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardValue:Ljava/lang/Integer;

    .line 204
    .line 205
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardValue:Ljava/lang/Integer;

    .line 206
    .line 207
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    if-nez v1, :cond_14

    .line 212
    .line 213
    return v2

    .line 214
    :cond_14
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardValueStr:Ljava/lang/String;

    .line 215
    .line 216
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardValueStr:Ljava/lang/String;

    .line 217
    .line 218
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-nez v1, :cond_15

    .line 223
    .line 224
    return v2

    .line 225
    :cond_15
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardReceiveList:Ljava/util/List;

    .line 226
    .line 227
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardReceiveList:Ljava/util/List;

    .line 228
    .line 229
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v1

    .line 233
    if-nez v1, :cond_16

    .line 234
    .line 235
    return v2

    .line 236
    :cond_16
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->isCompleted:Ljava/lang/Integer;

    .line 237
    .line 238
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->isCompleted:Ljava/lang/Integer;

    .line 239
    .line 240
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result p1

    .line 244
    if-nez p1, :cond_17

    .line 245
    .line 246
    return v2

    .line 247
    :cond_17
    return v0
.end method

.method public final getCompletedCount()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->completedCount:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getConditionValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->conditionValue:I

    .line 2
    .line 3
    return v0
.end method

.method public final getIcon()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->icon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRedirectType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->redirectType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRedirectUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->redirectUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->requestId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRewardReceiveList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/ad/TaskRewardReceive;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardReceiveList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRewardType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRewardValue()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardValue:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRewardValueStr()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardValueStr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSumCount()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->sumCount:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskCategory()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCategory:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskCondition()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCondition:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskContent()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskContent:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskCountType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCountType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskDescription:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskId:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTaskName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskSortId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskSortId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTaskTypeName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskTypeName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final hasCompleted()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->isCompleted:Ljava/lang/Integer;

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

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskId:I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->requestId:Ljava/lang/String;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->icon:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    move v1, v2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    :goto_0
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    .line 32
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskName:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    add-int/2addr v0, v1

    .line 39
    mul-int/lit8 v0, v0, 0x1f

    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskDescription:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCategory:Ljava/lang/Integer;

    .line 51
    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    move v1, v2

    .line 55
    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    :goto_1
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCountType:Ljava/lang/Integer;

    .line 64
    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    move v1, v2

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    :goto_2
    add-int/2addr v0, v1

    .line 74
    mul-int/lit8 v0, v0, 0x1f

    .line 75
    .line 76
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->sumCount:Ljava/lang/Integer;

    .line 77
    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    move v1, v2

    .line 81
    goto :goto_3

    .line 82
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    :goto_3
    add-int/2addr v0, v1

    .line 87
    mul-int/lit8 v0, v0, 0x1f

    .line 88
    .line 89
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->completedCount:Ljava/lang/Integer;

    .line 90
    .line 91
    if-nez v1, :cond_4

    .line 92
    .line 93
    move v1, v2

    .line 94
    goto :goto_4

    .line 95
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    :goto_4
    add-int/2addr v0, v1

    .line 100
    mul-int/lit8 v0, v0, 0x1f

    .line 101
    .line 102
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskType:Ljava/lang/Integer;

    .line 103
    .line 104
    if-nez v1, :cond_5

    .line 105
    .line 106
    move v1, v2

    .line 107
    goto :goto_5

    .line 108
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    :goto_5
    add-int/2addr v0, v1

    .line 113
    mul-int/lit8 v0, v0, 0x1f

    .line 114
    .line 115
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskTypeName:Ljava/lang/String;

    .line 116
    .line 117
    if-nez v1, :cond_6

    .line 118
    .line 119
    move v1, v2

    .line 120
    goto :goto_6

    .line 121
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    :goto_6
    add-int/2addr v0, v1

    .line 126
    mul-int/lit8 v0, v0, 0x1f

    .line 127
    .line 128
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskSortId:Ljava/lang/Integer;

    .line 129
    .line 130
    if-nez v1, :cond_7

    .line 131
    .line 132
    move v1, v2

    .line 133
    goto :goto_7

    .line 134
    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    :goto_7
    add-int/2addr v0, v1

    .line 139
    mul-int/lit8 v0, v0, 0x1f

    .line 140
    .line 141
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskContent:Ljava/lang/Integer;

    .line 142
    .line 143
    if-nez v1, :cond_8

    .line 144
    .line 145
    move v1, v2

    .line 146
    goto :goto_8

    .line 147
    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    :goto_8
    add-int/2addr v0, v1

    .line 152
    mul-int/lit8 v0, v0, 0x1f

    .line 153
    .line 154
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCondition:Ljava/lang/Integer;

    .line 155
    .line 156
    if-nez v1, :cond_9

    .line 157
    .line 158
    move v1, v2

    .line 159
    goto :goto_9

    .line 160
    :cond_9
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    :goto_9
    add-int/2addr v0, v1

    .line 165
    mul-int/lit8 v0, v0, 0x1f

    .line 166
    .line 167
    iget v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->conditionValue:I

    .line 168
    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 170
    .line 171
    .line 172
    move-result v1

    .line 173
    add-int/2addr v0, v1

    .line 174
    mul-int/lit8 v0, v0, 0x1f

    .line 175
    .line 176
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->redirectType:Ljava/lang/Integer;

    .line 177
    .line 178
    if-nez v1, :cond_a

    .line 179
    .line 180
    move v1, v2

    .line 181
    goto :goto_a

    .line 182
    :cond_a
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    :goto_a
    add-int/2addr v0, v1

    .line 187
    mul-int/lit8 v0, v0, 0x1f

    .line 188
    .line 189
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->redirectUrl:Ljava/lang/String;

    .line 190
    .line 191
    if-nez v1, :cond_b

    .line 192
    .line 193
    move v1, v2

    .line 194
    goto :goto_b

    .line 195
    :cond_b
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    :goto_b
    add-int/2addr v0, v1

    .line 200
    mul-int/lit8 v0, v0, 0x1f

    .line 201
    .line 202
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardType:Ljava/lang/Integer;

    .line 203
    .line 204
    if-nez v1, :cond_c

    .line 205
    .line 206
    move v1, v2

    .line 207
    goto :goto_c

    .line 208
    :cond_c
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    :goto_c
    add-int/2addr v0, v1

    .line 213
    mul-int/lit8 v0, v0, 0x1f

    .line 214
    .line 215
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardValue:Ljava/lang/Integer;

    .line 216
    .line 217
    if-nez v1, :cond_d

    .line 218
    .line 219
    move v1, v2

    .line 220
    goto :goto_d

    .line 221
    :cond_d
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    :goto_d
    add-int/2addr v0, v1

    .line 226
    mul-int/lit8 v0, v0, 0x1f

    .line 227
    .line 228
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardValueStr:Ljava/lang/String;

    .line 229
    .line 230
    if-nez v1, :cond_e

    .line 231
    .line 232
    move v1, v2

    .line 233
    goto :goto_e

    .line 234
    :cond_e
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 235
    .line 236
    .line 237
    move-result v1

    .line 238
    :goto_e
    add-int/2addr v0, v1

    .line 239
    mul-int/lit8 v0, v0, 0x1f

    .line 240
    .line 241
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardReceiveList:Ljava/util/List;

    .line 242
    .line 243
    if-nez v1, :cond_f

    .line 244
    .line 245
    move v1, v2

    .line 246
    goto :goto_f

    .line 247
    :cond_f
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    :goto_f
    add-int/2addr v0, v1

    .line 252
    mul-int/lit8 v0, v0, 0x1f

    .line 253
    .line 254
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->isCompleted:Ljava/lang/Integer;

    .line 255
    .line 256
    if-nez v1, :cond_10

    .line 257
    .line 258
    goto :goto_10

    .line 259
    :cond_10
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    :goto_10
    add-int/2addr v0, v2

    .line 264
    return v0
.end method

.method public final isAd()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->redirectType:Ljava/lang/Integer;

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

.method public final isCompleted()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->isCompleted:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isContinuedTaskType()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCountType:Ljava/lang/Integer;

    .line 2
    .line 3
    const/4 v1, 0x1

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
    goto :goto_1

    .line 16
    :cond_1
    const/4 v1, 0x0

    .line 17
    :goto_1
    return v1
.end method

.method public final isInnerH5()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->redirectType:Ljava/lang/Integer;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->redirectType:Ljava/lang/Integer;

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

.method public final setCompleted(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->isCompleted:Ljava/lang/Integer;

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
    const-string v1, "WatchAdBonusTask(taskId="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskId:I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->requestId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", icon="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->icon:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", taskName="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskName:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", taskDescription="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskDescription:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", taskCategory="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCategory:Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", taskCountType="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCountType:Ljava/lang/Integer;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", sumCount="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->sumCount:Ljava/lang/Integer;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", completedCount="

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->completedCount:Ljava/lang/Integer;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ", taskType="

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskType:Ljava/lang/Integer;

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", taskTypeName="

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskTypeName:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, ", taskSortId="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskSortId:Ljava/lang/Integer;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskContent:Ljava/lang/Integer;

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, ", taskCondition="

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->taskCondition:Ljava/lang/Integer;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v1, ", conditionValue="

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    iget v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->conditionValue:I

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, ", redirectType="

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->redirectType:Ljava/lang/Integer;

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    const-string v1, ", redirectUrl="

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->redirectUrl:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    const-string v1, ", rewardType="

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardType:Ljava/lang/Integer;

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v1, ", rewardValue="

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardValue:Ljava/lang/Integer;

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v1, ", rewardValueStr="

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardValueStr:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    const-string v1, ", rewardReceiveList="

    .line 207
    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->rewardReceiveList:Ljava/util/List;

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v1, ", isCompleted="

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->isCompleted:Ljava/lang/Integer;

    .line 222
    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    const/16 v1, 0x29

    .line 227
    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    return-object v0
.end method

.method public final validH5(J)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->isOutsideH5()Z

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->isInnerH5()Z

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
    iget p1, p0, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->conditionValue:I

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
