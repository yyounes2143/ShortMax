.class final Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;
.super Ljava/lang/Object;
.source "PointerInputEventProcessor.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final previousPointerInputData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/input/pointer/PointerId;",
            "Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->previousPointerInputData:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->previousPointerInputData:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final produce(Landroidx/compose/ui/input/pointer/PointerInputEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;)Landroidx/compose/ui/input/pointer/InternalPointerEvent;
    .locals 34
    .param p1    # Landroidx/compose/ui/input/pointer/PointerInputEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/input/pointer/PositionCalculator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "pointerInputEvent"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "positionCalculator"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerInputEvent;->getPointers()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/ui/input/pointer/PointerInputEvent;->getPointers()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v5

    .line 38
    const/4 v7, 0x0

    .line 39
    :goto_0
    if-ge v7, v5, :cond_2

    .line 40
    .line 41
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    .line 46
    .line 47
    iget-object v9, v0, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->previousPointerInputData:Ljava/util/Map;

    .line 48
    .line 49
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getId-J3iCeTQ()J

    .line 50
    .line 51
    .line 52
    move-result-wide v10

    .line 53
    invoke-static {v10, v11}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;

    .line 62
    .line 63
    if-nez v9, :cond_0

    .line 64
    .line 65
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getUptime()J

    .line 66
    .line 67
    .line 68
    move-result-wide v9

    .line 69
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getPosition-F1C5BW0()J

    .line 70
    .line 71
    .line 72
    move-result-wide v11

    .line 73
    move-wide/from16 v23, v9

    .line 74
    .line 75
    move-wide/from16 v25, v11

    .line 76
    .line 77
    const/16 v27, 0x0

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;->getUptime()J

    .line 81
    .line 82
    .line 83
    move-result-wide v10

    .line 84
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;->getDown()Z

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;->getPositionOnScreen-F1C5BW0()J

    .line 89
    .line 90
    .line 91
    move-result-wide v13

    .line 92
    invoke-interface {v2, v13, v14}, Landroidx/compose/ui/input/pointer/PositionCalculator;->screenToLocal-MK-Hz9U(J)J

    .line 93
    .line 94
    .line 95
    move-result-wide v13

    .line 96
    move-wide/from16 v23, v10

    .line 97
    .line 98
    move/from16 v27, v12

    .line 99
    .line 100
    move-wide/from16 v25, v13

    .line 101
    .line 102
    :goto_1
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getId-J3iCeTQ()J

    .line 103
    .line 104
    .line 105
    move-result-wide v9

    .line 106
    invoke-static {v9, v10}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 107
    .line 108
    .line 109
    move-result-object v9

    .line 110
    new-instance v10, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 111
    .line 112
    move-object v15, v10

    .line 113
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getId-J3iCeTQ()J

    .line 114
    .line 115
    .line 116
    move-result-wide v16

    .line 117
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getUptime()J

    .line 118
    .line 119
    .line 120
    move-result-wide v18

    .line 121
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getPosition-F1C5BW0()J

    .line 122
    .line 123
    .line 124
    move-result-wide v20

    .line 125
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getDown()Z

    .line 126
    .line 127
    .line 128
    move-result v22

    .line 129
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getType-T8wyACA()I

    .line 130
    .line 131
    .line 132
    move-result v29

    .line 133
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getHistorical()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v30

    .line 137
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getScrollDelta-F1C5BW0()J

    .line 138
    .line 139
    .line 140
    move-result-wide v31

    .line 141
    const/16 v33, 0x0

    .line 142
    .line 143
    const/16 v28, 0x0

    .line 144
    .line 145
    invoke-direct/range {v15 .. v33}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZJJZZILjava/util/List;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 146
    .line 147
    .line 148
    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getDown()Z

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-eqz v9, :cond_1

    .line 156
    .line 157
    iget-object v9, v0, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->previousPointerInputData:Ljava/util/Map;

    .line 158
    .line 159
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getId-J3iCeTQ()J

    .line 160
    .line 161
    .line 162
    move-result-wide v10

    .line 163
    invoke-static {v10, v11}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 164
    .line 165
    .line 166
    move-result-object v10

    .line 167
    new-instance v14, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;

    .line 168
    .line 169
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getUptime()J

    .line 170
    .line 171
    .line 172
    move-result-wide v12

    .line 173
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getPositionOnScreen-F1C5BW0()J

    .line 174
    .line 175
    .line 176
    move-result-wide v15

    .line 177
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getDown()Z

    .line 178
    .line 179
    .line 180
    move-result v17

    .line 181
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getType-T8wyACA()I

    .line 182
    .line 183
    .line 184
    move-result v8

    .line 185
    const/16 v18, 0x0

    .line 186
    .line 187
    move-object v11, v14

    .line 188
    move-object v6, v14

    .line 189
    move-wide v14, v15

    .line 190
    move/from16 v16, v17

    .line 191
    .line 192
    move/from16 v17, v8

    .line 193
    .line 194
    invoke-direct/range {v11 .. v18}, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer$PointerInputData;-><init>(JJZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 195
    .line 196
    .line 197
    invoke-interface {v9, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_1
    iget-object v6, v0, Landroidx/compose/ui/input/pointer/PointerInputChangeEventProducer;->previousPointerInputData:Ljava/util/Map;

    .line 202
    .line 203
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputEventData;->getId-J3iCeTQ()J

    .line 204
    .line 205
    .line 206
    move-result-wide v8

    .line 207
    invoke-static {v8, v9}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    invoke-interface {v6, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :cond_2
    new-instance v2, Landroidx/compose/ui/input/pointer/InternalPointerEvent;

    .line 219
    .line 220
    invoke-direct {v2, v3, v1}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;-><init>(Ljava/util/Map;Landroidx/compose/ui/input/pointer/PointerInputEvent;)V

    .line 221
    .line 222
    .line 223
    return-object v2
.end method
