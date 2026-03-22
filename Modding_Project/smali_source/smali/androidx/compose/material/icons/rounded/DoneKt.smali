.class public final Landroidx/compose/material/icons/rounded/DoneKt;
.super Ljava/lang/Object;
.source "Done.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static _done:Landroidx/compose/ui/graphics/vector/ImageVector;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getDone(Landroidx/compose/material/icons/Icons$Rounded;)Landroidx/compose/ui/graphics/vector/ImageVector;
    .locals 29
    .param p0    # Landroidx/compose/material/icons/Icons$Rounded;
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
    sget-object v0, Landroidx/compose/material/icons/rounded/DoneKt;->_done:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    new-instance v1, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 17
    .line 18
    move-object v12, v1

    .line 19
    const/high16 v0, 0x41c00000    # 24.0f

    .line 20
    .line 21
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/16 v10, 0x60

    .line 30
    .line 31
    const/4 v11, 0x0

    .line 32
    const-string v2, "Rounded.Done"

    .line 33
    .line 34
    const/high16 v5, 0x41c00000    # 24.0f

    .line 35
    .line 36
    const/high16 v6, 0x41c00000    # 24.0f

    .line 37
    .line 38
    const-wide/16 v7, 0x0

    .line 39
    .line 40
    const/4 v9, 0x0

    .line 41
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;-><init>(Ljava/lang/String;FFFFJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    .line 43
    .line 44
    invoke-static {}, Landroidx/compose/ui/graphics/vector/VectorKt;->getDefaultFillType()I

    .line 45
    .line 46
    .line 47
    move-result v14

    .line 48
    new-instance v0, Landroidx/compose/ui/graphics/SolidColor;

    .line 49
    .line 50
    move-object/from16 v16, v0

    .line 51
    .line 52
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 55
    .line 56
    .line 57
    move-result-wide v1

    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/SolidColor;-><init>(JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 60
    .line 61
    .line 62
    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getButt-KaPHkGw()I

    .line 65
    .line 66
    .line 67
    move-result v21

    .line 68
    sget-object v0, Landroidx/compose/ui/graphics/StrokeJoin;->Companion:Landroidx/compose/ui/graphics/StrokeJoin$Companion;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/StrokeJoin$Companion;->getBevel-LxFBmk8()I

    .line 71
    .line 72
    .line 73
    move-result v22

    .line 74
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 75
    .line 76
    invoke-direct {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const/high16 v8, 0x41100000    # 9.0f

    .line 80
    .line 81
    const v9, 0x4181999a    # 16.2f

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->moveTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 85
    .line 86
    .line 87
    const/high16 v0, -0x3fa00000    # -3.5f

    .line 88
    .line 89
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 90
    .line 91
    .line 92
    const v5, -0x404ccccd    # -1.4f

    .line 93
    .line 94
    .line 95
    const/4 v6, 0x0

    .line 96
    const v1, -0x413851ec    # -0.39f

    .line 97
    .line 98
    .line 99
    const v2, -0x413851ec    # -0.39f

    .line 100
    .line 101
    .line 102
    const v3, -0x407eb852    # -1.01f

    .line 103
    .line 104
    .line 105
    const v4, -0x413851ec    # -0.39f

    .line 106
    .line 107
    .line 108
    move-object v0, v7

    .line 109
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 110
    .line 111
    .line 112
    const/4 v5, 0x0

    .line 113
    const v6, 0x3fb33333    # 1.4f

    .line 114
    .line 115
    .line 116
    const v2, 0x3ec7ae14    # 0.39f

    .line 117
    .line 118
    .line 119
    const v3, -0x413851ec    # -0.39f

    .line 120
    .line 121
    .line 122
    const v4, 0x3f8147ae    # 1.01f

    .line 123
    .line 124
    .line 125
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 126
    .line 127
    .line 128
    const v0, 0x4086147b    # 4.19f

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v0, v0}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineToRelative(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 132
    .line 133
    .line 134
    const v5, 0x3fb47ae1    # 1.41f

    .line 135
    .line 136
    .line 137
    const/4 v6, 0x0

    .line 138
    const v1, 0x3ec7ae14    # 0.39f

    .line 139
    .line 140
    .line 141
    const v3, 0x3f828f5c    # 1.02f

    .line 142
    .line 143
    .line 144
    const v4, 0x3ec7ae14    # 0.39f

    .line 145
    .line 146
    .line 147
    move-object v0, v7

    .line 148
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 149
    .line 150
    .line 151
    const v0, 0x41a26666    # 20.3f

    .line 152
    .line 153
    .line 154
    const v1, 0x40f66666    # 7.7f

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 158
    .line 159
    .line 160
    const/4 v5, 0x0

    .line 161
    const v6, -0x404ccccd    # -1.4f

    .line 162
    .line 163
    .line 164
    const v1, 0x3ec7ae14    # 0.39f

    .line 165
    .line 166
    .line 167
    const v2, -0x413851ec    # -0.39f

    .line 168
    .line 169
    .line 170
    const v3, 0x3ec7ae14    # 0.39f

    .line 171
    .line 172
    .line 173
    const v4, -0x407eb852    # -1.01f

    .line 174
    .line 175
    .line 176
    move-object v0, v7

    .line 177
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 178
    .line 179
    .line 180
    const v5, -0x404ccccd    # -1.4f

    .line 181
    .line 182
    .line 183
    const/4 v6, 0x0

    .line 184
    const v1, -0x413851ec    # -0.39f

    .line 185
    .line 186
    .line 187
    const v3, -0x407eb852    # -1.01f

    .line 188
    .line 189
    .line 190
    const v4, -0x413851ec    # -0.39f

    .line 191
    .line 192
    .line 193
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/graphics/vector/PathBuilder;->curveToRelative(FFFFFF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathBuilder;->lineTo(FF)Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->close()Landroidx/compose/ui/graphics/vector/PathBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/vector/PathBuilder;->getNodes()Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v13

    .line 206
    const/16 v27, 0x3800

    .line 207
    .line 208
    const/16 v28, 0x0

    .line 209
    .line 210
    const-string v15, ""

    .line 211
    .line 212
    const/high16 v17, 0x3f800000    # 1.0f

    .line 213
    .line 214
    const/16 v18, 0x0

    .line 215
    .line 216
    const/high16 v19, 0x3f800000    # 1.0f

    .line 217
    .line 218
    const/high16 v20, 0x3f800000    # 1.0f

    .line 219
    .line 220
    const/high16 v23, 0x3f800000    # 1.0f

    .line 221
    .line 222
    const/16 v24, 0x0

    .line 223
    .line 224
    const/16 v25, 0x0

    .line 225
    .line 226
    const/16 v26, 0x0

    .line 227
    .line 228
    invoke-static/range {v12 .. v28}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->addPath-oIyEayM$default(Landroidx/compose/ui/graphics/vector/ImageVector$Builder;Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFILjava/lang/Object;)Landroidx/compose/ui/graphics/vector/ImageVector$Builder;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/ImageVector$Builder;->build()Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    sput-object v0, Landroidx/compose/material/icons/rounded/DoneKt;->_done:Landroidx/compose/ui/graphics/vector/ImageVector;

    .line 237
    .line 238
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 239
    .line 240
    .line 241
    return-object v0
.end method
