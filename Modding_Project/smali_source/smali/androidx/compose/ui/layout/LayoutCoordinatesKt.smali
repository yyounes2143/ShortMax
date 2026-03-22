.class public final Landroidx/compose/ui/layout/LayoutCoordinatesKt;
.super Ljava/lang/Object;
.source "LayoutCoordinates.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final boundsInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 4
    .param p0    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {v0, p0, v3, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    :cond_0
    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    .line 22
    .line 23
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    int-to-float v1, v1

    .line 32
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    int-to-float p0, p0

    .line 41
    const/4 v2, 0x0

    .line 42
    invoke-direct {v0, v2, v2, v1, p0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-object v0
.end method

.method public static final boundsInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 4
    .param p0    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {v0, p0, v3, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf$default(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/layout/LayoutCoordinates;ZILjava/lang/Object;)Landroidx/compose/ui/geometry/Rect;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method public static final boundsInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;
    .locals 18
    .param p0    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->findRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static/range {p0 .. p0}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-interface {v0, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide v2

    .line 32
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    invoke-interface {v0, v4, v5}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 49
    .line 50
    .line 51
    move-result v6

    .line 52
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 57
    .line 58
    .line 59
    move-result-wide v6

    .line 60
    invoke-interface {v0, v6, v7}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    .line 61
    .line 62
    .line 63
    move-result-wide v6

    .line 64
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    invoke-static {v8, v1}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 73
    .line 74
    .line 75
    move-result-wide v8

    .line 76
    invoke-interface {v0, v8, v9}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    .line 77
    .line 78
    .line 79
    move-result-wide v0

    .line 80
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 81
    .line 82
    .line 83
    move-result v8

    .line 84
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 89
    .line 90
    .line 91
    move-result v10

    .line 92
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 93
    .line 94
    .line 95
    move-result v11

    .line 96
    const/4 v12, 0x3

    .line 97
    new-array v13, v12, [F

    .line 98
    .line 99
    const/4 v14, 0x0

    .line 100
    aput v9, v13, v14

    .line 101
    .line 102
    const/4 v9, 0x1

    .line 103
    aput v10, v13, v9

    .line 104
    .line 105
    const/4 v10, 0x2

    .line 106
    aput v11, v13, v10

    .line 107
    .line 108
    invoke-static {v8, v13}, Lps/a;->g(F[F)F

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 113
    .line 114
    .line 115
    move-result v11

    .line 116
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 117
    .line 118
    .line 119
    move-result v13

    .line 120
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 121
    .line 122
    .line 123
    move-result v15

    .line 124
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 125
    .line 126
    .line 127
    move-result v16

    .line 128
    new-array v10, v12, [F

    .line 129
    .line 130
    aput v13, v10, v14

    .line 131
    .line 132
    aput v15, v10, v9

    .line 133
    .line 134
    const/4 v13, 0x2

    .line 135
    aput v16, v10, v13

    .line 136
    .line 137
    invoke-static {v11, v10}, Lps/a;->g(F[F)F

    .line 138
    .line 139
    .line 140
    move-result v10

    .line 141
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 142
    .line 143
    .line 144
    move-result v11

    .line 145
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 146
    .line 147
    .line 148
    move-result v15

    .line 149
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 150
    .line 151
    .line 152
    move-result v16

    .line 153
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 154
    .line 155
    .line 156
    move-result v17

    .line 157
    new-array v13, v12, [F

    .line 158
    .line 159
    aput v15, v13, v14

    .line 160
    .line 161
    aput v16, v13, v9

    .line 162
    .line 163
    const/4 v15, 0x2

    .line 164
    aput v17, v13, v15

    .line 165
    .line 166
    invoke-static {v11, v13}, Lps/a;->e(F[F)F

    .line 167
    .line 168
    .line 169
    move-result v11

    .line 170
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 183
    .line 184
    .line 185
    move-result v1

    .line 186
    new-array v4, v12, [F

    .line 187
    .line 188
    aput v3, v4, v14

    .line 189
    .line 190
    aput v0, v4, v9

    .line 191
    .line 192
    aput v1, v4, v15

    .line 193
    .line 194
    invoke-static {v2, v4}, Lps/a;->e(F[F)F

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    new-instance v1, Landroidx/compose/ui/geometry/Rect;

    .line 199
    .line 200
    invoke-direct {v1, v8, v10, v11, v0}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    .line 201
    .line 202
    .line 203
    return-object v1
.end method

.method public static final findRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 2
    .param p0    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    move-object v1, v0

    .line 11
    move-object v0, p0

    .line 12
    move-object p0, v1

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    instance-of p0, v0, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 21
    .line 22
    if-eqz p0, :cond_1

    .line 23
    .line 24
    move-object p0, v0

    .line 25
    check-cast p0, Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    const/4 p0, 0x0

    .line 29
    :goto_1
    if-nez p0, :cond_2

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrappedBy$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_2
    move-object v1, v0

    .line 37
    move-object v0, p0

    .line 38
    move-object p0, v1

    .line 39
    if-eqz p0, :cond_3

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getWrappedBy$ui_release()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    return-object v0
.end method

.method public static final positionInParent(Landroidx/compose/ui/layout/LayoutCoordinates;)J
    .locals 3
    .param p0    # Landroidx/compose/ui/layout/LayoutCoordinates;
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
    invoke-interface {p0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-interface {v0, p0, v1, v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    :goto_0
    return-wide v0
.end method

.method public static final positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J
    .locals 2
    .param p0    # Landroidx/compose/ui/layout/LayoutCoordinates;
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
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToRoot-MK-Hz9U(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method

.method public static final positionInWindow(Landroidx/compose/ui/layout/LayoutCoordinates;)J
    .locals 2
    .param p0    # Landroidx/compose/ui/layout/LayoutCoordinates;
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
    sget-object v0, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    invoke-interface {p0, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localToWindow-MK-Hz9U(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0
.end method
