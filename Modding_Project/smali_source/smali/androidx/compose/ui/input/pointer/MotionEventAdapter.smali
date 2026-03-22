.class public final Landroidx/compose/ui/input/pointer/MotionEventAdapter;
.super Ljava/lang/Object;
.source "MotionEventAdapter.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final canHover:Landroid/util/SparseBooleanArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private nextId:J

.field private final pointers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/ui/input/pointer/PointerInputEventData;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private previousSource:I

.field private previousToolType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseLongArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->pointers:Ljava/util/List;

    .line 24
    .line 25
    const/4 v0, -0x1

    .line 26
    iput v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousToolType:I

    .line 27
    .line 28
    iput v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousSource:I

    .line 29
    .line 30
    return-void
.end method

.method private final addFreshIds(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x1

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const/4 v3, 0x5

    .line 10
    if-eq v0, v3, :cond_1

    .line 11
    .line 12
    const/16 v3, 0x9

    .line 13
    .line 14
    if-eq v0, v3, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-gez v0, :cond_2

    .line 29
    .line 30
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 31
    .line 32
    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    .line 33
    .line 34
    add-long/2addr v1, v3

    .line 35
    iput-wide v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    .line 36
    .line 37
    invoke-virtual {v0, p1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    iget-object v4, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 50
    .line 51
    invoke-virtual {v4, v3}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-gez v4, :cond_2

    .line 56
    .line 57
    iget-object v4, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 58
    .line 59
    iget-wide v5, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    .line 60
    .line 61
    add-long/2addr v1, v5

    .line 62
    iput-wide v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    .line 63
    .line 64
    invoke-virtual {v4, v3, v5, v6}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/4 v0, 0x3

    .line 72
    if-ne p1, v0, :cond_2

    .line 73
    .line 74
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    invoke-virtual {p1, v3, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method

.method private final clearOnDeviceChange(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iget v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousToolType:I

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    iget v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousSource:I

    .line 23
    .line 24
    if-eq p1, v1, :cond_2

    .line 25
    .line 26
    :cond_1
    iput v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousToolType:I

    .line 27
    .line 28
    iput p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->previousSource:I

    .line 29
    .line 30
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/util/SparseLongArray;->clear()V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method private final createPointerInputEventData(Landroidx/compose/ui/input/pointer/PositionCalculator;Landroid/view/MotionEvent;IZ)Landroidx/compose/ui/input/pointer/PointerInputEventData;
    .locals 23

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
    move/from16 v3, p3

    .line 8
    .line 9
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    invoke-direct {v0, v4}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->getComposePointerId-_I2yYro(I)J

    .line 14
    .line 15
    .line 16
    move-result-wide v6

    .line 17
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getX(I)F

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getY(I)F

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 26
    .line 27
    .line 28
    move-result-wide v4

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 40
    .line 41
    .line 42
    move-result-wide v4

    .line 43
    invoke-interface {v1, v4, v5}, Landroidx/compose/ui/input/pointer/PositionCalculator;->screenToLocal-MK-Hz9U(J)J

    .line 44
    .line 45
    .line 46
    move-result-wide v8

    .line 47
    :goto_0
    move-wide v10, v4

    .line 48
    move-wide v12, v8

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    .line 52
    const/16 v9, 0x1d

    .line 53
    .line 54
    if-lt v8, v9, :cond_1

    .line 55
    .line 56
    sget-object v4, Landroidx/compose/ui/input/pointer/MotionEventHelper;->INSTANCE:Landroidx/compose/ui/input/pointer/MotionEventHelper;

    .line 57
    .line 58
    invoke-virtual {v4, v2, v3}, Landroidx/compose/ui/input/pointer/MotionEventHelper;->toRawOffset-dBAh8RU(Landroid/view/MotionEvent;I)J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    invoke-interface {v1, v4, v5}, Landroidx/compose/ui/input/pointer/PositionCalculator;->screenToLocal-MK-Hz9U(J)J

    .line 63
    .line 64
    .line 65
    move-result-wide v8

    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-interface {v1, v4, v5}, Landroidx/compose/ui/input/pointer/PositionCalculator;->localToScreen-MK-Hz9U(J)J

    .line 68
    .line 69
    .line 70
    move-result-wide v8

    .line 71
    move-wide v12, v4

    .line 72
    move-wide v10, v8

    .line 73
    :goto_1
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    const/4 v4, 0x1

    .line 80
    if-eq v1, v4, :cond_5

    .line 81
    .line 82
    const/4 v4, 0x2

    .line 83
    if-eq v1, v4, :cond_4

    .line 84
    .line 85
    const/4 v4, 0x3

    .line 86
    if-eq v1, v4, :cond_3

    .line 87
    .line 88
    const/4 v4, 0x4

    .line 89
    if-eq v1, v4, :cond_2

    .line 90
    .line 91
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    .line 92
    .line 93
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getUnknown-T8wyACA()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    :goto_2
    move v15, v1

    .line 98
    goto :goto_3

    .line 99
    :cond_2
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    .line 100
    .line 101
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getEraser-T8wyACA()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    goto :goto_2

    .line 106
    :cond_3
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    .line 107
    .line 108
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getMouse-T8wyACA()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    goto :goto_2

    .line 113
    :cond_4
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    .line 114
    .line 115
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getStylus-T8wyACA()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    goto :goto_2

    .line 120
    :cond_5
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    .line 121
    .line 122
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getTouch-T8wyACA()I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    goto :goto_2

    .line 127
    :cond_6
    sget-object v1, Landroidx/compose/ui/input/pointer/PointerType;->Companion:Landroidx/compose/ui/input/pointer/PointerType$Companion;

    .line 128
    .line 129
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerType$Companion;->getUnknown-T8wyACA()I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    goto :goto_2

    .line 134
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .line 138
    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    const/4 v8, 0x0

    .line 144
    :goto_4
    if-ge v8, v4, :cond_8

    .line 145
    .line 146
    invoke-virtual {v2, v3, v8}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    .line 147
    .line 148
    .line 149
    move-result v9

    .line 150
    invoke-virtual {v2, v3, v8}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    .line 151
    .line 152
    .line 153
    move-result v14

    .line 154
    invoke-static {v9}, Ljava/lang/Float;->isInfinite(F)Z

    .line 155
    .line 156
    .line 157
    move-result v16

    .line 158
    if-nez v16, :cond_7

    .line 159
    .line 160
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    .line 161
    .line 162
    .line 163
    move-result v16

    .line 164
    if-nez v16, :cond_7

    .line 165
    .line 166
    invoke-static {v14}, Ljava/lang/Float;->isInfinite(F)Z

    .line 167
    .line 168
    .line 169
    move-result v16

    .line 170
    if-nez v16, :cond_7

    .line 171
    .line 172
    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    .line 173
    .line 174
    .line 175
    move-result v16

    .line 176
    if-nez v16, :cond_7

    .line 177
    .line 178
    new-instance v5, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .line 179
    .line 180
    invoke-virtual {v2, v8}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    .line 181
    .line 182
    .line 183
    move-result-wide v18

    .line 184
    invoke-static {v9, v14}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 185
    .line 186
    .line 187
    move-result-wide v20

    .line 188
    const/16 v22, 0x0

    .line 189
    .line 190
    move-object/from16 v17, v5

    .line 191
    .line 192
    invoke-direct/range {v17 .. v22}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 193
    .line 194
    .line 195
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    :cond_7
    add-int/lit8 v8, v8, 0x1

    .line 199
    .line 200
    goto :goto_4

    .line 201
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    const/16 v5, 0x8

    .line 206
    .line 207
    if-ne v4, v5, :cond_9

    .line 208
    .line 209
    const/16 v4, 0xa

    .line 210
    .line 211
    invoke-virtual {v2, v4}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 212
    .line 213
    .line 214
    move-result v4

    .line 215
    const/16 v5, 0x9

    .line 216
    .line 217
    invoke-virtual {v2, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 218
    .line 219
    .line 220
    move-result v5

    .line 221
    neg-float v5, v5

    .line 222
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 223
    .line 224
    .line 225
    move-result-wide v4

    .line 226
    :goto_5
    move-wide/from16 v18, v4

    .line 227
    .line 228
    goto :goto_6

    .line 229
    :cond_9
    sget-object v4, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 230
    .line 231
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 232
    .line 233
    .line 234
    move-result-wide v4

    .line 235
    goto :goto_5

    .line 236
    :goto_6
    iget-object v4, v0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 237
    .line 238
    invoke-virtual/range {p2 .. p3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 239
    .line 240
    .line 241
    move-result v3

    .line 242
    const/4 v5, 0x0

    .line 243
    invoke-virtual {v4, v3, v5}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 244
    .line 245
    .line 246
    move-result v16

    .line 247
    new-instance v3, Landroidx/compose/ui/input/pointer/PointerInputEventData;

    .line 248
    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 250
    .line 251
    .line 252
    move-result-wide v8

    .line 253
    const/16 v20, 0x0

    .line 254
    .line 255
    move-object v5, v3

    .line 256
    move/from16 v14, p4

    .line 257
    .line 258
    move-object/from16 v17, v1

    .line 259
    .line 260
    invoke-direct/range {v5 .. v20}, Landroidx/compose/ui/input/pointer/PointerInputEventData;-><init>(JJJJZIZLjava/util/List;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 261
    .line 262
    .line 263
    return-object v3
.end method

.method private final getComposePointerId-_I2yYro(I)J
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    .line 17
    .line 18
    const-wide/16 v2, 0x1

    .line 19
    .line 20
    add-long/2addr v2, v0

    .line 21
    iput-wide v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->nextId:J

    .line 22
    .line 23
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 24
    .line 25
    invoke-virtual {v2, p1, v0, v1}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-static {v0, v1}, Landroidx/compose/ui/input/pointer/PointerId;->constructor-impl(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    return-wide v0
.end method

.method public static synthetic getMotionEventToComposePointerIdMap$ui_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method private final hasPointerId(Landroid/view/MotionEvent;I)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    if-ge v2, v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-ne v3, p2, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1

    .line 17
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return v1
.end method

.method private final removeStaleIds(Landroid/view/MotionEvent;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x6

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 30
    .line 31
    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->delete(I)V

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 35
    .line 36
    invoke-virtual {v2, v0}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-le v0, v2, :cond_3

    .line 50
    .line 51
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/util/SparseLongArray;->size()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    sub-int/2addr v0, v1

    .line 58
    :goto_1
    const/4 v1, -0x1

    .line 59
    if-ge v1, v0, :cond_3

    .line 60
    .line 61
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-direct {p0, p1, v1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->hasPointerId(Landroid/view/MotionEvent;I)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_2

    .line 72
    .line 73
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 74
    .line 75
    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->removeAt(I)V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 79
    .line 80
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 81
    .line 82
    .line 83
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_3
    return-void
.end method


# virtual methods
.method public final convertToPointerInputEvent$ui_release(Landroid/view/MotionEvent;Landroidx/compose/ui/input/pointer/PositionCalculator;)Landroidx/compose/ui/input/pointer/PointerInputEvent;
    .locals 9
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/input/pointer/PositionCalculator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "motionEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "positionCalculator"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x3

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/util/SparseLongArray;->clear()V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    return-object p1

    .line 30
    :cond_0
    invoke-direct {p0, p1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->clearOnDeviceChange(Landroid/view/MotionEvent;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0, p1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->addFreshIds(Landroid/view/MotionEvent;)V

    .line 34
    .line 35
    .line 36
    const/16 v1, 0xa

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    const/4 v3, 0x1

    .line 40
    if-eq v0, v1, :cond_2

    .line 41
    .line 42
    const/4 v1, 0x7

    .line 43
    if-eq v0, v1, :cond_2

    .line 44
    .line 45
    const/16 v1, 0x9

    .line 46
    .line 47
    if-ne v0, v1, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move v1, v2

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    :goto_0
    move v1, v3

    .line 53
    :goto_1
    const/16 v4, 0x8

    .line 54
    .line 55
    if-ne v0, v4, :cond_3

    .line 56
    .line 57
    move v4, v3

    .line 58
    goto :goto_2

    .line 59
    :cond_3
    move v4, v2

    .line 60
    :goto_2
    if-eqz v1, :cond_4

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    iget-object v6, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 71
    .line 72
    invoke-virtual {v6, v5, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 73
    .line 74
    .line 75
    :cond_4
    if-eq v0, v3, :cond_6

    .line 76
    .line 77
    const/4 v5, 0x6

    .line 78
    if-eq v0, v5, :cond_5

    .line 79
    .line 80
    const/4 v0, -0x1

    .line 81
    goto :goto_3

    .line 82
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    goto :goto_3

    .line 87
    :cond_6
    move v0, v2

    .line 88
    :goto_3
    iget-object v5, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->pointers:Ljava/util/List;

    .line 89
    .line 90
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 94
    .line 95
    .line 96
    move-result v5

    .line 97
    move v6, v2

    .line 98
    :goto_4
    if-ge v6, v5, :cond_9

    .line 99
    .line 100
    iget-object v7, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->pointers:Ljava/util/List;

    .line 101
    .line 102
    if-nez v1, :cond_8

    .line 103
    .line 104
    if-eq v6, v0, :cond_8

    .line 105
    .line 106
    if-eqz v4, :cond_7

    .line 107
    .line 108
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    if-eqz v8, :cond_8

    .line 113
    .line 114
    :cond_7
    move v8, v3

    .line 115
    goto :goto_5

    .line 116
    :cond_8
    move v8, v2

    .line 117
    :goto_5
    invoke-direct {p0, p2, p1, v6, v8}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->createPointerInputEventData(Landroidx/compose/ui/input/pointer/PositionCalculator;Landroid/view/MotionEvent;IZ)Landroidx/compose/ui/input/pointer/PointerInputEventData;

    .line 118
    .line 119
    .line 120
    move-result-object v8

    .line 121
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    add-int/lit8 v6, v6, 0x1

    .line 125
    .line 126
    goto :goto_4

    .line 127
    :cond_9
    invoke-direct {p0, p1}, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->removeStaleIds(Landroid/view/MotionEvent;)V

    .line 128
    .line 129
    .line 130
    new-instance p2, Landroidx/compose/ui/input/pointer/PointerInputEvent;

    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    .line 133
    .line 134
    .line 135
    move-result-wide v0

    .line 136
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->pointers:Ljava/util/List;

    .line 137
    .line 138
    invoke-direct {p2, v0, v1, v2, p1}, Landroidx/compose/ui/input/pointer/PointerInputEvent;-><init>(JLjava/util/List;Landroid/view/MotionEvent;)V

    .line 139
    .line 140
    .line 141
    return-object p2
.end method

.method public final endStream(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->canHover:Landroid/util/SparseBooleanArray;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final getMotionEventToComposePointerIdMap$ui_release()Landroid/util/SparseLongArray;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/MotionEventAdapter;->motionEventToComposePointerIdMap:Landroid/util/SparseLongArray;

    .line 2
    .line 3
    return-object v0
.end method
