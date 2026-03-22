.class public final Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt;
.super Ljava/lang/Object;
.source "TextFieldSelectionManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final TextFieldSelectionHandle(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/runtime/Composer;I)V
    .locals 10
    .param p1    # Landroidx/compose/ui/text/style/ResolvedTextDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    const-string v0, "direction"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "manager"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, -0x50245748

    .line 12
    .line 13
    .line 14
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 15
    .line 16
    .line 17
    move-result-object p3

    .line 18
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const v1, 0x1e7b2b64

    .line 23
    .line 24
    .line 25
    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    or-int/2addr v0, v1

    .line 37
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-ne v1, v0, :cond_1

    .line 50
    .line 51
    :cond_0
    invoke-virtual {p2, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->handleDragObserver$foundation_release(Z)Landroidx/compose/foundation/text/TextDragObserver;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 59
    .line 60
    .line 61
    check-cast v1, Landroidx/compose/foundation/text/TextDragObserver;

    .line 62
    .line 63
    invoke-virtual {p2, p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getHandlePosition-tuRUvjQ$foundation_release(Z)J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    invoke-virtual {p2}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    .line 72
    .line 73
    .line 74
    move-result-wide v4

    .line 75
    invoke-static {v4, v5}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 80
    .line 81
    new-instance v4, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$1;

    .line 82
    .line 83
    const/4 v6, 0x0

    .line 84
    invoke-direct {v4, v1, v6}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$1;-><init>(Landroidx/compose/foundation/text/TextDragObserver;Lrs/c;)V

    .line 85
    .line 86
    .line 87
    invoke-static {v0, v1, v4}, Landroidx/compose/ui/input/pointer/SuspendingPointerInputFilterKt;->pointerInput(Landroidx/compose/ui/Modifier;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/Modifier;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    shl-int/lit8 v0, p4, 0x3

    .line 92
    .line 93
    and-int/lit8 v1, v0, 0x70

    .line 94
    .line 95
    const/high16 v4, 0x30000

    .line 96
    .line 97
    or-int/2addr v1, v4

    .line 98
    and-int/lit16 v0, v0, 0x380

    .line 99
    .line 100
    or-int v9, v1, v0

    .line 101
    .line 102
    const/4 v7, 0x0

    .line 103
    move-wide v1, v2

    .line 104
    move v3, p0

    .line 105
    move-object v4, p1

    .line 106
    move-object v8, p3

    .line 107
    invoke-static/range {v1 .. v9}, Landroidx/compose/foundation/text/selection/AndroidSelectionHandles_androidKt;->SelectionHandle-8fL75-g(JZLandroidx/compose/ui/text/style/ResolvedTextDirection;ZLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 108
    .line 109
    .line 110
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    if-nez p3, :cond_2

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_2
    new-instance v0, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$2;

    .line 118
    .line 119
    invoke-direct {v0, p0, p1, p2, p4}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$TextFieldSelectionHandle$2;-><init>(ZLandroidx/compose/ui/text/style/ResolvedTextDirection;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;I)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p3, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 123
    .line 124
    .line 125
    :goto_0
    return-void
.end method

.method public static final calculateSelectionMagnifierCenterAndroid-O0kMr_c(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;J)J
    .locals 13
    .param p0    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "manager"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    .line 23
    .line 24
    .line 25
    move-result-wide p0

    .line 26
    return-wide p0

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getDraggingHandle()Landroidx/compose/foundation/text/Handle;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, -0x1

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    move v0, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sget-object v2, Landroidx/compose/foundation/text/selection/TextFieldSelectionManagerKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    aget v0, v2, v0

    .line 43
    .line 44
    :goto_0
    if-eq v0, v1, :cond_d

    .line 45
    .line 46
    const/4 v1, 0x2

    .line 47
    const/4 v2, 0x1

    .line 48
    if-eq v0, v2, :cond_3

    .line 49
    .line 50
    if-eq v0, v1, :cond_3

    .line 51
    .line 52
    const/4 v3, 0x3

    .line 53
    if-ne v0, v3, :cond_2

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    goto :goto_1

    .line 68
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 69
    .line 70
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 71
    .line 72
    .line 73
    throw p0

    .line 74
    :cond_3
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    .line 79
    .line 80
    .line 81
    move-result-wide v3

    .line 82
    invoke-static {v3, v4}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    :goto_1
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getOffsetMapping$foundation_release()Landroidx/compose/ui/text/input/OffsetMapping;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-interface {v3, v0}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-virtual {v3}, Landroidx/compose/ui/text/input/TextFieldValue;->getText()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-static {v3}, Lkotlin/text/StringsKt;->j0(Ljava/lang/CharSequence;)Lkotlin/ranges/IntRange;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v0, v3}, Lkotlin/ranges/e;->o(ILdt/c;)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    if-eqz v3, :cond_c

    .line 115
    .line 116
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    if-eqz v3, :cond_c

    .line 121
    .line 122
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getValue()Landroidx/compose/ui/text/TextLayoutResult;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    if-nez v3, :cond_4

    .line 127
    .line 128
    goto/16 :goto_5

    .line 129
    .line 130
    :cond_4
    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getBoundingBox(I)Landroidx/compose/ui/geometry/Rect;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v4}, Landroidx/compose/ui/geometry/Rect;->getCenter-F1C5BW0()J

    .line 135
    .line 136
    .line 137
    move-result-wide v4

    .line 138
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    .line 139
    .line 140
    .line 141
    move-result-object v6

    .line 142
    if-eqz v6, :cond_b

    .line 143
    .line 144
    invoke-virtual {v6}, Landroidx/compose/foundation/text/TextFieldState;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    if-nez v6, :cond_5

    .line 149
    .line 150
    goto/16 :goto_4

    .line 151
    .line 152
    :cond_5
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    if-eqz v7, :cond_a

    .line 157
    .line 158
    invoke-virtual {v7}, Landroidx/compose/foundation/text/TextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    .line 159
    .line 160
    .line 161
    move-result-object v7

    .line 162
    if-eqz v7, :cond_a

    .line 163
    .line 164
    invoke-virtual {v7}, Landroidx/compose/foundation/text/TextLayoutResultProxy;->getInnerTextFieldCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 165
    .line 166
    .line 167
    move-result-object v7

    .line 168
    if-nez v7, :cond_6

    .line 169
    .line 170
    goto/16 :goto_3

    .line 171
    .line 172
    :cond_6
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getCurrentDragPosition-_m7T9-E()Landroidx/compose/ui/geometry/Offset;

    .line 173
    .line 174
    .line 175
    move-result-object v8

    .line 176
    if-eqz v8, :cond_9

    .line 177
    .line 178
    invoke-virtual {v8}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    .line 179
    .line 180
    .line 181
    move-result-wide v8

    .line 182
    invoke-interface {v7, v6, v8, v9}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 183
    .line 184
    .line 185
    move-result-wide v8

    .line 186
    invoke-static {v8, v9}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 187
    .line 188
    .line 189
    move-result v8

    .line 190
    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineForOffset(I)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    invoke-virtual {v3, v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineStart(I)I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    invoke-virtual {v3, v0, v2}, Landroidx/compose/ui/text/TextLayoutResult;->getLineEnd(IZ)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 203
    .line 204
    .line 205
    move-result-object v10

    .line 206
    invoke-virtual {v10}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    .line 207
    .line 208
    .line 209
    move-result-wide v10

    .line 210
    invoke-static {v10, v11}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    .line 211
    .line 212
    .line 213
    move-result v10

    .line 214
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getValue$foundation_release()Landroidx/compose/ui/text/input/TextFieldValue;

    .line 215
    .line 216
    .line 217
    move-result-object p0

    .line 218
    invoke-virtual {p0}, Landroidx/compose/ui/text/input/TextFieldValue;->getSelection-d9O1mEE()J

    .line 219
    .line 220
    .line 221
    move-result-wide v11

    .line 222
    invoke-static {v11, v12}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    .line 223
    .line 224
    .line 225
    move-result p0

    .line 226
    const/4 v11, 0x0

    .line 227
    if-le v10, p0, :cond_7

    .line 228
    .line 229
    move p0, v2

    .line 230
    goto :goto_2

    .line 231
    :cond_7
    move p0, v11

    .line 232
    :goto_2
    invoke-static {v3, v9, v2, p0}, Landroidx/compose/foundation/text/selection/TextSelectionDelegateKt;->getHorizontalPosition(Landroidx/compose/ui/text/TextLayoutResult;IZZ)F

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    invoke-static {v3, v0, v11, p0}, Landroidx/compose/foundation/text/selection/TextSelectionDelegateKt;->getHorizontalPosition(Landroidx/compose/ui/text/TextLayoutResult;IZZ)F

    .line 237
    .line 238
    .line 239
    move-result p0

    .line 240
    invoke-static {v2, p0}, Ljava/lang/Math;->min(FF)F

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    .line 245
    .line 246
    .line 247
    move-result p0

    .line 248
    invoke-static {v8, v0, p0}, Lkotlin/ranges/e;->m(FFF)F

    .line 249
    .line 250
    .line 251
    move-result p0

    .line 252
    sub-float/2addr v8, p0

    .line 253
    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    div-int/2addr p1, v1

    .line 262
    int-to-float p1, p1

    .line 263
    cmpl-float p1, v0, p1

    .line 264
    .line 265
    if-lez p1, :cond_8

    .line 266
    .line 267
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 268
    .line 269
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    .line 270
    .line 271
    .line 272
    move-result-wide p0

    .line 273
    return-wide p0

    .line 274
    :cond_8
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 275
    .line 276
    .line 277
    move-result p1

    .line 278
    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 279
    .line 280
    .line 281
    move-result-wide p0

    .line 282
    invoke-interface {v6, v7, p0, p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 283
    .line 284
    .line 285
    move-result-wide p0

    .line 286
    return-wide p0

    .line 287
    :cond_9
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 288
    .line 289
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    .line 290
    .line 291
    .line 292
    move-result-wide p0

    .line 293
    return-wide p0

    .line 294
    :cond_a
    :goto_3
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 295
    .line 296
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    .line 297
    .line 298
    .line 299
    move-result-wide p0

    .line 300
    return-wide p0

    .line 301
    :cond_b
    :goto_4
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 302
    .line 303
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    .line 304
    .line 305
    .line 306
    move-result-wide p0

    .line 307
    return-wide p0

    .line 308
    :cond_c
    :goto_5
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 309
    .line 310
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    .line 311
    .line 312
    .line 313
    move-result-wide p0

    .line 314
    return-wide p0

    .line 315
    :cond_d
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 316
    .line 317
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getUnspecified-F1C5BW0()J

    .line 318
    .line 319
    .line 320
    move-result-wide p0

    .line 321
    return-wide p0
.end method

.method public static final isSelectionHandleInVisibleBound(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Z)Z
    .locals 1
    .param p0    # Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getState$foundation_release()Landroidx/compose/foundation/text/TextFieldState;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->getLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->visibleBounds(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->getHandlePosition-tuRUvjQ$foundation_release(Z)J

    .line 25
    .line 26
    .line 27
    move-result-wide p0

    .line 28
    invoke-static {v0, p0, p1}, Landroidx/compose/foundation/text/selection/SelectionManagerKt;->containsInclusive-Uv8p0NA(Landroidx/compose/ui/geometry/Rect;J)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p0, 0x0

    .line 34
    :goto_0
    return p0
.end method
