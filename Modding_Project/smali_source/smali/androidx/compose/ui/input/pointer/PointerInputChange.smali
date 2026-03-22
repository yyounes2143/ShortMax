.class public final Landroidx/compose/ui/input/pointer/PointerInputChange;
.super Ljava/lang/Object;
.source "PointerEvent.kt"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private _historical:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/pointer/HistoricalChange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private consumed:Landroidx/compose/ui/input/pointer/ConsumedData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final id:J

.field private final position:J

.field private final pressed:Z

.field private final previousPosition:J

.field private final previousPressed:Z

.field private final previousUptimeMillis:J

.field private final scrollDelta:J

.field private final type:I

.field private final uptimeMillis:J


# direct methods
.method private constructor <init>(JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;I)V
    .locals 19

    .line 20
    invoke-virtual/range {p13 .. p13}, Landroidx/compose/ui/input/pointer/ConsumedData;->getDownChange()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p13 .. p13}, Landroidx/compose/ui/input/pointer/ConsumedData;->getPositionChange()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v14, v0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 21
    :goto_2
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v16

    const/16 v18, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move/from16 v13, p12

    move/from16 v15, p14

    .line 22
    invoke-direct/range {v1 .. v18}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZIJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 17

    move/from16 v0, p15

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    .line 18
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getTouch-T8wyACA()I

    move-result v0

    move v15, v0

    goto :goto_0

    :cond_0
    move/from16 v15, p14

    :goto_0
    const/16 v16, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move-wide/from16 v11, p10

    move/from16 v13, p12

    move-object/from16 v14, p13

    .line 19
    invoke-direct/range {v1 .. v16}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p14}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;I)V

    return-void
.end method

.method private constructor <init>(JJJZJJZZIJ)V
    .locals 3

    move-object v0, p0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 5
    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    move-wide v1, p3

    .line 6
    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    move-wide v1, p5

    .line 7
    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    move v1, p7

    .line 8
    iput-boolean v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    move-wide v1, p8

    .line 9
    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousUptimeMillis:J

    move-wide v1, p10

    .line 10
    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPosition:J

    move v1, p12

    .line 11
    iput-boolean v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    move/from16 v1, p14

    .line 12
    iput v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    move-wide/from16 v1, p15

    .line 13
    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->scrollDelta:J

    .line 14
    new-instance v1, Landroidx/compose/ui/input/pointer/ConsumedData;

    move/from16 v2, p13

    invoke-direct {v1, v2, v2}, Landroidx/compose/ui/input/pointer/ConsumedData;-><init>(ZZ)V

    iput-object v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    return-void
.end method

.method public synthetic constructor <init>(JJJZJJZZIJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 20

    move/from16 v0, p17

    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_0

    .line 15
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getTouch-T8wyACA()I

    move-result v1

    move/from16 v16, v1

    goto :goto_0

    :cond_0
    move/from16 v16, p14

    :goto_0
    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_1

    .line 16
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    move-result-wide v0

    move-wide/from16 v17, v0

    goto :goto_1

    :cond_1
    move-wide/from16 v17, p15

    :goto_1
    const/16 v19, 0x0

    move-object/from16 v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move-wide/from16 v10, p8

    move-wide/from16 v12, p10

    move/from16 v14, p12

    move/from16 v15, p13

    .line 17
    invoke-direct/range {v2 .. v19}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZIJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JJJZJJZZIJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p16}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZIJ)V

    return-void
.end method

.method private constructor <init>(JJJZJJZZILjava/util/List;J)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJZZI",
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/pointer/HistoricalChange;",
            ">;J)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-wide/from16 v15, p16

    const/16 v17, 0x0

    .line 23
    invoke-direct/range {v0 .. v17}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZIJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p15

    .line 24
    iput-object v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->_historical:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(JJJZJJZZILjava/util/List;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p17}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZILjava/util/List;J)V

    return-void
.end method

.method public static synthetic copy-0GkPj7c$default(Landroidx/compose/ui/input/pointer/PointerInputChange;JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;IJILjava/lang/Object;)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p17

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-wide v2, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide/from16 v2, p1

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v4, v1, 0x2

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    iget-wide v4, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-wide/from16 v4, p3

    .line 22
    .line 23
    :goto_1
    and-int/lit8 v6, v1, 0x4

    .line 24
    .line 25
    if-eqz v6, :cond_2

    .line 26
    .line 27
    iget-wide v6, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move-wide/from16 v6, p5

    .line 31
    .line 32
    :goto_2
    and-int/lit8 v8, v1, 0x8

    .line 33
    .line 34
    if-eqz v8, :cond_3

    .line 35
    .line 36
    iget-boolean v8, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    move/from16 v8, p7

    .line 40
    .line 41
    :goto_3
    and-int/lit8 v9, v1, 0x10

    .line 42
    .line 43
    if-eqz v9, :cond_4

    .line 44
    .line 45
    iget-wide v9, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousUptimeMillis:J

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    move-wide/from16 v9, p8

    .line 49
    .line 50
    :goto_4
    and-int/lit8 v11, v1, 0x20

    .line 51
    .line 52
    if-eqz v11, :cond_5

    .line 53
    .line 54
    iget-wide v11, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPosition:J

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :cond_5
    move-wide/from16 v11, p10

    .line 58
    .line 59
    :goto_5
    and-int/lit8 v13, v1, 0x40

    .line 60
    .line 61
    if-eqz v13, :cond_6

    .line 62
    .line 63
    iget-boolean v13, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    .line 64
    .line 65
    goto :goto_6

    .line 66
    :cond_6
    move/from16 v13, p12

    .line 67
    .line 68
    :goto_6
    and-int/lit16 v14, v1, 0x100

    .line 69
    .line 70
    if-eqz v14, :cond_7

    .line 71
    .line 72
    iget v14, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 73
    .line 74
    goto :goto_7

    .line 75
    :cond_7
    move/from16 v14, p14

    .line 76
    .line 77
    :goto_7
    and-int/lit16 v1, v1, 0x200

    .line 78
    .line 79
    move/from16 p1, v14

    .line 80
    .line 81
    if-eqz v1, :cond_8

    .line 82
    .line 83
    iget-wide v14, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->scrollDelta:J

    .line 84
    .line 85
    move-wide v15, v14

    .line 86
    goto :goto_8

    .line 87
    :cond_8
    move-wide/from16 v15, p15

    .line 88
    .line 89
    :goto_8
    move-object/from16 v0, p0

    .line 90
    .line 91
    move-wide v1, v2

    .line 92
    move-wide v3, v4

    .line 93
    move-wide v5, v6

    .line 94
    move v7, v8

    .line 95
    move-wide v8, v9

    .line 96
    move-wide v10, v11

    .line 97
    move v12, v13

    .line 98
    move-object/from16 v13, p13

    .line 99
    .line 100
    move/from16 v14, p1

    .line 101
    .line 102
    invoke-virtual/range {v0 .. v16}, Landroidx/compose/ui/input/pointer/PointerInputChange;->copy-0GkPj7c(JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;IJ)Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0
.end method

.method public static synthetic copy-Ezr-O64$default(Landroidx/compose/ui/input/pointer/PointerInputChange;JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;IILjava/lang/Object;)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p15

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-wide v2, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-wide/from16 v2, p1

    .line 12
    .line 13
    :goto_0
    and-int/lit8 v4, v1, 0x2

    .line 14
    .line 15
    if-eqz v4, :cond_1

    .line 16
    .line 17
    iget-wide v4, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move-wide/from16 v4, p3

    .line 21
    .line 22
    :goto_1
    and-int/lit8 v6, v1, 0x4

    .line 23
    .line 24
    if-eqz v6, :cond_2

    .line 25
    .line 26
    iget-wide v6, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move-wide/from16 v6, p5

    .line 30
    .line 31
    :goto_2
    and-int/lit8 v8, v1, 0x8

    .line 32
    .line 33
    if-eqz v8, :cond_3

    .line 34
    .line 35
    iget-boolean v8, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_3
    move/from16 v8, p7

    .line 39
    .line 40
    :goto_3
    and-int/lit8 v9, v1, 0x10

    .line 41
    .line 42
    if-eqz v9, :cond_4

    .line 43
    .line 44
    iget-wide v9, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousUptimeMillis:J

    .line 45
    .line 46
    goto :goto_4

    .line 47
    :cond_4
    move-wide/from16 v9, p8

    .line 48
    .line 49
    :goto_4
    and-int/lit8 v11, v1, 0x20

    .line 50
    .line 51
    if-eqz v11, :cond_5

    .line 52
    .line 53
    iget-wide v11, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPosition:J

    .line 54
    .line 55
    goto :goto_5

    .line 56
    :cond_5
    move-wide/from16 v11, p10

    .line 57
    .line 58
    :goto_5
    and-int/lit8 v13, v1, 0x40

    .line 59
    .line 60
    if-eqz v13, :cond_6

    .line 61
    .line 62
    iget-boolean v13, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    .line 63
    .line 64
    goto :goto_6

    .line 65
    :cond_6
    move/from16 v13, p12

    .line 66
    .line 67
    :goto_6
    and-int/lit16 v14, v1, 0x80

    .line 68
    .line 69
    if-eqz v14, :cond_7

    .line 70
    .line 71
    iget-object v14, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    .line 72
    .line 73
    goto :goto_7

    .line 74
    :cond_7
    move-object/from16 v14, p13

    .line 75
    .line 76
    :goto_7
    and-int/lit16 v1, v1, 0x100

    .line 77
    .line 78
    if-eqz v1, :cond_8

    .line 79
    .line 80
    iget v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 81
    .line 82
    goto :goto_8

    .line 83
    :cond_8
    move/from16 v1, p14

    .line 84
    .line 85
    :goto_8
    move-wide/from16 p1, v2

    .line 86
    .line 87
    move-wide/from16 p3, v4

    .line 88
    .line 89
    move-wide/from16 p5, v6

    .line 90
    .line 91
    move/from16 p7, v8

    .line 92
    .line 93
    move-wide/from16 p8, v9

    .line 94
    .line 95
    move-wide/from16 p10, v11

    .line 96
    .line 97
    move/from16 p12, v13

    .line 98
    .line 99
    move-object/from16 p13, v14

    .line 100
    .line 101
    move/from16 p14, v1

    .line 102
    .line 103
    invoke-virtual/range {p0 .. p14}, Landroidx/compose/ui/input/pointer/PointerInputChange;->copy-Ezr-O64(JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;I)Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    return-object v0
.end method

.method public static synthetic copy-JKmWfYY$default(Landroidx/compose/ui/input/pointer/PointerInputChange;JJJZJJZIJILjava/lang/Object;)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p16

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-wide v2, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide/from16 v2, p1

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v4, v1, 0x2

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    iget-wide v4, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-wide/from16 v4, p3

    .line 22
    .line 23
    :goto_1
    and-int/lit8 v6, v1, 0x4

    .line 24
    .line 25
    if-eqz v6, :cond_2

    .line 26
    .line 27
    iget-wide v6, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move-wide/from16 v6, p5

    .line 31
    .line 32
    :goto_2
    and-int/lit8 v8, v1, 0x8

    .line 33
    .line 34
    if-eqz v8, :cond_3

    .line 35
    .line 36
    iget-boolean v8, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    move/from16 v8, p7

    .line 40
    .line 41
    :goto_3
    and-int/lit8 v9, v1, 0x10

    .line 42
    .line 43
    if-eqz v9, :cond_4

    .line 44
    .line 45
    iget-wide v9, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousUptimeMillis:J

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    move-wide/from16 v9, p8

    .line 49
    .line 50
    :goto_4
    and-int/lit8 v11, v1, 0x20

    .line 51
    .line 52
    if-eqz v11, :cond_5

    .line 53
    .line 54
    iget-wide v11, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPosition:J

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :cond_5
    move-wide/from16 v11, p10

    .line 58
    .line 59
    :goto_5
    and-int/lit8 v13, v1, 0x40

    .line 60
    .line 61
    if-eqz v13, :cond_6

    .line 62
    .line 63
    iget-boolean v13, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    .line 64
    .line 65
    goto :goto_6

    .line 66
    :cond_6
    move/from16 v13, p12

    .line 67
    .line 68
    :goto_6
    and-int/lit16 v14, v1, 0x80

    .line 69
    .line 70
    if-eqz v14, :cond_7

    .line 71
    .line 72
    iget v14, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 73
    .line 74
    goto :goto_7

    .line 75
    :cond_7
    move/from16 v14, p13

    .line 76
    .line 77
    :goto_7
    and-int/lit16 v1, v1, 0x100

    .line 78
    .line 79
    move/from16 p13, v14

    .line 80
    .line 81
    if-eqz v1, :cond_8

    .line 82
    .line 83
    iget-wide v14, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->scrollDelta:J

    .line 84
    .line 85
    goto :goto_8

    .line 86
    :cond_8
    move-wide/from16 v14, p14

    .line 87
    .line 88
    :goto_8
    move-wide/from16 p1, v2

    .line 89
    .line 90
    move-wide/from16 p3, v4

    .line 91
    .line 92
    move-wide/from16 p5, v6

    .line 93
    .line 94
    move/from16 p7, v8

    .line 95
    .line 96
    move-wide/from16 p8, v9

    .line 97
    .line 98
    move-wide/from16 p10, v11

    .line 99
    .line 100
    move/from16 p12, v13

    .line 101
    .line 102
    move-wide/from16 p14, v14

    .line 103
    .line 104
    invoke-virtual/range {p0 .. p15}, Landroidx/compose/ui/input/pointer/PointerInputChange;->copy-JKmWfYY(JJJZJJZIJ)Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0
.end method

.method public static synthetic copy-OHpmEuE$default(Landroidx/compose/ui/input/pointer/PointerInputChange;JJJZJJZILjava/util/List;JILjava/lang/Object;)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p17

    .line 4
    .line 5
    and-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-wide v2, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move-wide/from16 v2, p1

    .line 13
    .line 14
    :goto_0
    and-int/lit8 v4, v1, 0x2

    .line 15
    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    iget-wide v4, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    move-wide/from16 v4, p3

    .line 22
    .line 23
    :goto_1
    and-int/lit8 v6, v1, 0x4

    .line 24
    .line 25
    if-eqz v6, :cond_2

    .line 26
    .line 27
    iget-wide v6, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move-wide/from16 v6, p5

    .line 31
    .line 32
    :goto_2
    and-int/lit8 v8, v1, 0x8

    .line 33
    .line 34
    if-eqz v8, :cond_3

    .line 35
    .line 36
    iget-boolean v8, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 37
    .line 38
    goto :goto_3

    .line 39
    :cond_3
    move/from16 v8, p7

    .line 40
    .line 41
    :goto_3
    and-int/lit8 v9, v1, 0x10

    .line 42
    .line 43
    if-eqz v9, :cond_4

    .line 44
    .line 45
    iget-wide v9, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousUptimeMillis:J

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_4
    move-wide/from16 v9, p8

    .line 49
    .line 50
    :goto_4
    and-int/lit8 v11, v1, 0x20

    .line 51
    .line 52
    if-eqz v11, :cond_5

    .line 53
    .line 54
    iget-wide v11, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPosition:J

    .line 55
    .line 56
    goto :goto_5

    .line 57
    :cond_5
    move-wide/from16 v11, p10

    .line 58
    .line 59
    :goto_5
    and-int/lit8 v13, v1, 0x40

    .line 60
    .line 61
    if-eqz v13, :cond_6

    .line 62
    .line 63
    iget-boolean v13, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    .line 64
    .line 65
    goto :goto_6

    .line 66
    :cond_6
    move/from16 v13, p12

    .line 67
    .line 68
    :goto_6
    and-int/lit16 v14, v1, 0x80

    .line 69
    .line 70
    if-eqz v14, :cond_7

    .line 71
    .line 72
    iget v14, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 73
    .line 74
    goto :goto_7

    .line 75
    :cond_7
    move/from16 v14, p13

    .line 76
    .line 77
    :goto_7
    and-int/lit16 v1, v1, 0x200

    .line 78
    .line 79
    move/from16 p1, v14

    .line 80
    .line 81
    if-eqz v1, :cond_8

    .line 82
    .line 83
    iget-wide v14, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->scrollDelta:J

    .line 84
    .line 85
    move-wide v15, v14

    .line 86
    goto :goto_8

    .line 87
    :cond_8
    move-wide/from16 v15, p15

    .line 88
    .line 89
    :goto_8
    move-object/from16 v0, p0

    .line 90
    .line 91
    move-wide v1, v2

    .line 92
    move-wide v3, v4

    .line 93
    move-wide v5, v6

    .line 94
    move v7, v8

    .line 95
    move-wide v8, v9

    .line 96
    move-wide v10, v11

    .line 97
    move v12, v13

    .line 98
    move/from16 v13, p1

    .line 99
    .line 100
    move-object/from16 v14, p14

    .line 101
    .line 102
    invoke-virtual/range {v0 .. v16}, Landroidx/compose/ui/input/pointer/PointerInputChange;->copy-OHpmEuE(JJJZJJZILjava/util/List;J)Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0
.end method

.method public static synthetic getConsumed$annotations()V
    .locals 0
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getHistorical$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic isConsumed$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final consume()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/ConsumedData;->setDownChange(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/ConsumedData;->setPositionChange(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final copy-0GkPj7c(JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;IJ)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 21
    .param p13    # Landroidx/compose/ui/input/pointer/ConsumedData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p13

    .line 2
    .line 3
    const-string v1, "consumed"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 9
    .line 10
    invoke-virtual/range {p13 .. p13}, Landroidx/compose/ui/input/pointer/ConsumedData;->getDownChange()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    invoke-virtual/range {p13 .. p13}, Landroidx/compose/ui/input/pointer/ConsumedData;->getPositionChange()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/4 v2, 0x0

    .line 24
    :goto_0
    move v15, v2

    .line 25
    goto :goto_2

    .line 26
    :cond_1
    :goto_1
    const/4 v2, 0x1

    .line 27
    goto :goto_0

    .line 28
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getHistorical()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v17

    .line 32
    const/16 v20, 0x0

    .line 33
    .line 34
    move-object v2, v1

    .line 35
    move-wide/from16 v3, p1

    .line 36
    .line 37
    move-wide/from16 v5, p3

    .line 38
    .line 39
    move-wide/from16 v7, p5

    .line 40
    .line 41
    move/from16 v9, p7

    .line 42
    .line 43
    move-wide/from16 v10, p8

    .line 44
    .line 45
    move-wide/from16 v12, p10

    .line 46
    .line 47
    move/from16 v14, p12

    .line 48
    .line 49
    move/from16 v16, p14

    .line 50
    .line 51
    move-wide/from16 v18, p15

    .line 52
    .line 53
    invoke-direct/range {v2 .. v20}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZILjava/util/List;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 54
    .line 55
    .line 56
    move-object/from16 v2, p0

    .line 57
    .line 58
    iput-object v0, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    .line 59
    .line 60
    return-object v1
.end method

.method public final synthetic copy-Ezr-O64(JJJZJJZLandroidx/compose/ui/input/pointer/ConsumedData;I)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 22
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p13

    .line 4
    .line 5
    const-string v2, "consumed"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v2, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 11
    .line 12
    invoke-virtual/range {p13 .. p13}, Landroidx/compose/ui/input/pointer/ConsumedData;->getDownChange()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    invoke-virtual/range {p13 .. p13}, Landroidx/compose/ui/input/pointer/ConsumedData;->getPositionChange()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const/4 v3, 0x0

    .line 26
    :goto_0
    move/from16 v16, v3

    .line 27
    .line 28
    goto :goto_2

    .line 29
    :cond_1
    :goto_1
    const/4 v3, 0x1

    .line 30
    goto :goto_0

    .line 31
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getHistorical()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v18

    .line 35
    iget-wide v3, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->scrollDelta:J

    .line 36
    .line 37
    move-wide/from16 v19, v3

    .line 38
    .line 39
    const/16 v21, 0x0

    .line 40
    .line 41
    move-object v3, v2

    .line 42
    move-wide/from16 v4, p1

    .line 43
    .line 44
    move-wide/from16 v6, p3

    .line 45
    .line 46
    move-wide/from16 v8, p5

    .line 47
    .line 48
    move/from16 v10, p7

    .line 49
    .line 50
    move-wide/from16 v11, p8

    .line 51
    .line 52
    move-wide/from16 v13, p10

    .line 53
    .line 54
    move/from16 v15, p12

    .line 55
    .line 56
    move/from16 v17, p14

    .line 57
    .line 58
    invoke-direct/range {v3 .. v21}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZILjava/util/List;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    .line 62
    .line 63
    return-object v2
.end method

.method public final copy-JKmWfYY(JJJZJJZIJ)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 21
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-wide/from16 v1, p1

    .line 2
    .line 3
    move-wide/from16 v3, p3

    .line 4
    .line 5
    move-wide/from16 v5, p5

    .line 6
    .line 7
    move/from16 v7, p7

    .line 8
    .line 9
    move-wide/from16 v8, p8

    .line 10
    .line 11
    move-wide/from16 v10, p10

    .line 12
    .line 13
    move/from16 v12, p12

    .line 14
    .line 15
    move/from16 v14, p13

    .line 16
    .line 17
    move-wide/from16 v16, p14

    .line 18
    .line 19
    new-instance v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 20
    .line 21
    move-object v0, v13

    .line 22
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getHistorical()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v15

    .line 26
    const/16 v18, 0x0

    .line 27
    .line 28
    const/16 v19, 0x0

    .line 29
    .line 30
    move-object/from16 v20, v13

    .line 31
    .line 32
    move/from16 v13, v19

    .line 33
    .line 34
    invoke-direct/range {v0 .. v18}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZILjava/util/List;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    move-object/from16 v0, p0

    .line 38
    .line 39
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    .line 40
    .line 41
    move-object/from16 v2, v20

    .line 42
    .line 43
    iput-object v1, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    .line 44
    .line 45
    return-object v2
.end method

.method public final copy-OHpmEuE(JJJZJJZILjava/util/List;J)Landroidx/compose/ui/input/pointer/PointerInputChange;
    .locals 20
    .param p14    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJJZJJZI",
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/pointer/HistoricalChange;",
            ">;J)",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-wide/from16 v1, p1

    .line 2
    .line 3
    move-wide/from16 v3, p3

    .line 4
    .line 5
    move-wide/from16 v5, p5

    .line 6
    .line 7
    move/from16 v7, p7

    .line 8
    .line 9
    move-wide/from16 v8, p8

    .line 10
    .line 11
    move-wide/from16 v10, p10

    .line 12
    .line 13
    move/from16 v12, p12

    .line 14
    .line 15
    move/from16 v14, p13

    .line 16
    .line 17
    move-object/from16 v15, p14

    .line 18
    .line 19
    move-wide/from16 v16, p15

    .line 20
    .line 21
    const-string v0, "historical"

    .line 22
    .line 23
    move-object/from16 v13, p14

    .line 24
    .line 25
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v13, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 29
    .line 30
    move-object v0, v13

    .line 31
    const/16 v18, 0x0

    .line 32
    .line 33
    move-object/from16 v19, v13

    .line 34
    .line 35
    move/from16 v13, v18

    .line 36
    .line 37
    const/16 v18, 0x0

    .line 38
    .line 39
    invoke-direct/range {v0 .. v18}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZILjava/util/List;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 40
    .line 41
    .line 42
    move-object/from16 v0, p0

    .line 43
    .line 44
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    .line 45
    .line 46
    move-object/from16 v2, v19

    .line 47
    .line 48
    iput-object v1, v2, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    .line 49
    .line 50
    return-object v2
.end method

.method public final getConsumed()Landroidx/compose/ui/input/pointer/ConsumedData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHistorical()Ljava/util/List;
    .locals 1
    .annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/pointer/HistoricalChange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->_historical:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public final getId-J3iCeTQ()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPosition-F1C5BW0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPressed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPreviousPosition-F1C5BW0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPosition:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getPreviousPressed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPreviousUptimeMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousUptimeMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getScrollDelta-F1C5BW0()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->scrollDelta:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getType-T8wyACA()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUptimeMillis()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final isConsumed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/ConsumedData;->getDownChange()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/ConsumedData;->getPositionChange()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
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
    const-string v1, "PointerInputChange(id="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 12
    .line 13
    invoke-static {v1, v2}, Landroidx/compose/ui/input/pointer/PointerId;->toString-impl(J)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", uptimeMillis="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", position="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 36
    .line 37
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->toString-impl(J)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", pressed="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", previousUptimeMillis="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousUptimeMillis:J

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", previousPosition="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPosition:J

    .line 70
    .line 71
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->toString-impl(J)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ", previousPressed="

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v1, ", isConsumed="

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, ", type="

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    iget v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    .line 106
    .line 107
    invoke-static {v1}, Landroidx/compose/ui/input/pointer/PointerType;->toString-impl(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v1, ", historical="

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getHistorical()Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    const-string v1, ",scrollDelta="

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget-wide v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->scrollDelta:J

    .line 132
    .line 133
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->toString-impl(J)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    const/16 v1, 0x29

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    return-object v0
.end method
