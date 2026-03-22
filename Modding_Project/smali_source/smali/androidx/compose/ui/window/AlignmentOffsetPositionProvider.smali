.class public final Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;
.super Ljava/lang/Object;
.source "Popup.kt"

# interfaces
.implements Landroidx/compose/ui/window/PopupPositionProvider;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final alignment:Landroidx/compose/ui/Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final offset:J


# direct methods
.method private constructor <init>(Landroidx/compose/ui/Alignment;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;->alignment:Landroidx/compose/ui/Alignment;

    .line 4
    iput-wide p2, p0, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;->offset:J

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/Alignment;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;-><init>(Landroidx/compose/ui/Alignment;J)V

    return-void
.end method


# virtual methods
.method public calculatePosition-llwVHH4(Landroidx/compose/ui/unit/IntRect;JLandroidx/compose/ui/unit/LayoutDirection;J)J
    .locals 14
    .param p1    # Landroidx/compose/ui/unit/IntRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v7, p4

    .line 3
    .line 4
    const-string v1, "anchorBounds"

    .line 5
    .line 6
    move-object v8, p1

    .line 7
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "layoutDirection"

    .line 11
    .line 12
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-static {v1, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 17
    .line 18
    .line 19
    move-result-wide v9

    .line 20
    iget-object v1, v0, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;->alignment:Landroidx/compose/ui/Alignment;

    .line 21
    .line 22
    sget-object v11, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 23
    .line 24
    invoke-virtual {v11}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v4

    .line 32
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    .line 37
    .line 38
    .line 39
    move-result-wide v4

    .line 40
    move-object/from16 v6, p4

    .line 41
    .line 42
    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/Alignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v12

    .line 46
    iget-object v1, v0, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;->alignment:Landroidx/compose/ui/Alignment;

    .line 47
    .line 48
    invoke-virtual {v11}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-static/range {p5 .. p6}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/Alignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v1

    .line 68
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 77
    .line 78
    .line 79
    move-result-wide v3

    .line 80
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    add-int/2addr v5, v6

    .line 89
    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 90
    .line 91
    .line 92
    move-result v6

    .line 93
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    add-int/2addr v6, v3

    .line 98
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 99
    .line 100
    .line 101
    move-result-wide v3

    .line 102
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    add-int/2addr v5, v6

    .line 111
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-static {v12, v13}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    add-int/2addr v3, v4

    .line 120
    invoke-static {v5, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 121
    .line 122
    .line 123
    move-result-wide v3

    .line 124
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 125
    .line 126
    .line 127
    move-result v5

    .line 128
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-static {v5, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 133
    .line 134
    .line 135
    move-result-wide v1

    .line 136
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 141
    .line 142
    .line 143
    move-result v6

    .line 144
    sub-int/2addr v5, v6

    .line 145
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 146
    .line 147
    .line 148
    move-result v3

    .line 149
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    sub-int/2addr v3, v1

    .line 154
    invoke-static {v5, v3}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 155
    .line 156
    .line 157
    move-result-wide v1

    .line 158
    iget-wide v3, v0, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;->offset:J

    .line 159
    .line 160
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 161
    .line 162
    .line 163
    move-result v3

    .line 164
    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 165
    .line 166
    if-ne v7, v4, :cond_0

    .line 167
    .line 168
    const/4 v4, 0x1

    .line 169
    goto :goto_0

    .line 170
    :cond_0
    const/4 v4, -0x1

    .line 171
    :goto_0
    mul-int/2addr v3, v4

    .line 172
    iget-wide v4, v0, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;->offset:J

    .line 173
    .line 174
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 179
    .line 180
    .line 181
    move-result-wide v3

    .line 182
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 183
    .line 184
    .line 185
    move-result v5

    .line 186
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 187
    .line 188
    .line 189
    move-result v6

    .line 190
    add-int/2addr v5, v6

    .line 191
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 196
    .line 197
    .line 198
    move-result v2

    .line 199
    add-int/2addr v1, v2

    .line 200
    invoke-static {v5, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 201
    .line 202
    .line 203
    move-result-wide v1

    .line 204
    return-wide v1
.end method

.method public final getAlignment()Landroidx/compose/ui/Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;->alignment:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOffset-nOcc-ac()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/window/AlignmentOffsetPositionProvider;->offset:J

    .line 2
    .line 3
    return-wide v0
.end method
