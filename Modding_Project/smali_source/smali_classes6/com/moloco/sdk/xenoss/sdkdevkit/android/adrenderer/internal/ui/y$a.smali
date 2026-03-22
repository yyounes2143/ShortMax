.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function0;ZJJJLcom/moloco/sdk/internal/ortb/model/i;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lat/n<",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic b:Z

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:J


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;ZJJJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;ZJJJ)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y$a;->a:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y$a;->b:Z

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y$a;->c:J

    .line 6
    .line 7
    iput-wide p5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y$a;->d:J

    .line 8
    .line 9
    iput-wide p7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y$a;->e:J

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;Landroidx/compose/runtime/Composer;I)V
    .locals 18
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v15, p2

    .line 6
    .line 7
    const-string v2, "buttonPart"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    and-int/lit8 v2, p3, 0x6

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const/4 v2, 0x4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x2

    .line 25
    :goto_0
    or-int v2, p3, v2

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move/from16 v2, p3

    .line 29
    .line 30
    :goto_1
    and-int/lit8 v3, v2, 0x13

    .line 31
    .line 32
    const/16 v4, 0x12

    .line 33
    .line 34
    if-ne v3, v4, :cond_3

    .line 35
    .line 36
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 44
    .line 45
    .line 46
    goto/16 :goto_4

    .line 47
    .line 48
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    const/4 v3, -0x1

    .line 55
    const-string v4, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.CountdownButton.<anonymous>.<anonymous> (CountdownButton.kt:56)"

    .line 56
    .line 57
    const v5, -0x4b57870b

    .line 58
    .line 59
    .line 60
    invoke-static {v5, v2, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :cond_4
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 64
    .line 65
    sget v3, Landroidx/compose/material/MaterialTheme;->$stable:I

    .line 66
    .line 67
    invoke-virtual {v2, v15, v3}, Landroidx/compose/material/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v2}, Landroidx/compose/material/Typography;->getH6()Landroidx/compose/ui/text/TextStyle;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    instance-of v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z$a;

    .line 76
    .line 77
    if-eqz v2, :cond_5

    .line 78
    .line 79
    const v1, 0x3b9d252a

    .line 80
    .line 81
    .line 82
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 83
    .line 84
    .line 85
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 86
    .line 87
    .line 88
    goto/16 :goto_3

    .line 89
    .line 90
    :cond_5
    instance-of v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z$b;

    .line 91
    .line 92
    if-eqz v2, :cond_6

    .line 93
    .line 94
    const v2, 0x3ba25d8e    # 0.0049550002f

    .line 95
    .line 96
    .line 97
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 98
    .line 99
    .line 100
    move-object v2, v1

    .line 101
    check-cast v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z$b;

    .line 102
    .line 103
    invoke-virtual {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z$b;->e()Landroidx/compose/ui/graphics/painter/Painter;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z$b;->d()J

    .line 108
    .line 109
    .line 110
    move-result-wide v10

    .line 111
    invoke-virtual {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z$b;->b()Landroidx/compose/ui/graphics/Shape;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    invoke-virtual {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z$b;->a()J

    .line 116
    .line 117
    .line 118
    move-result-wide v13

    .line 119
    invoke-virtual {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z$b;->c()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v5

    .line 123
    iget-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y$a;->a:Lkotlin/jvm/functions/Function0;

    .line 124
    .line 125
    iget-boolean v4, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y$a;->b:Z

    .line 126
    .line 127
    iget-wide v6, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y$a;->c:J

    .line 128
    .line 129
    iget-wide v8, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y$a;->d:J

    .line 130
    .line 131
    const/16 v16, 0x0

    .line 132
    .line 133
    const/16 v17, 0x4

    .line 134
    .line 135
    const/4 v3, 0x0

    .line 136
    move-object v0, v15

    .line 137
    move-object/from16 v15, p2

    .line 138
    .line 139
    invoke-static/range {v1 .. v17}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e0;->b(Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLjava/lang/String;JJJLandroidx/compose/ui/graphics/Shape;JLandroidx/compose/runtime/Composer;II)V

    .line 140
    .line 141
    .line 142
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 143
    .line 144
    .line 145
    move-object/from16 v0, p0

    .line 146
    .line 147
    goto :goto_3

    .line 148
    :cond_6
    move-object v0, v15

    .line 149
    instance-of v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z$c;

    .line 150
    .line 151
    if-eqz v2, :cond_8

    .line 152
    .line 153
    const v2, -0x58e9f179

    .line 154
    .line 155
    .line 156
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 157
    .line 158
    .line 159
    move-object v14, v0

    .line 160
    move-object/from16 v0, p0

    .line 161
    .line 162
    iget-object v13, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y$a;->a:Lkotlin/jvm/functions/Function0;

    .line 163
    .line 164
    iget-boolean v15, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y$a;->b:Z

    .line 165
    .line 166
    sget-object v2, Landroidx/compose/material/ButtonDefaults;->INSTANCE:Landroidx/compose/material/ButtonDefaults;

    .line 167
    .line 168
    iget-wide v7, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y$a;->c:J

    .line 169
    .line 170
    sget v3, Landroidx/compose/material/ButtonDefaults;->$stable:I

    .line 171
    .line 172
    shl-int/lit8 v10, v3, 0x9

    .line 173
    .line 174
    const-wide/16 v3, 0x0

    .line 175
    .line 176
    const/4 v11, 0x1

    .line 177
    move-wide v5, v7

    .line 178
    move-object/from16 v9, p2

    .line 179
    .line 180
    invoke-virtual/range {v2 .. v11}, Landroidx/compose/material/ButtonDefaults;->textButtonColors-RGew2ao(JJJLandroidx/compose/runtime/Composer;II)Landroidx/compose/material/ButtonColors;

    .line 181
    .line 182
    .line 183
    move-result-object v8

    .line 184
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y$a$a;

    .line 185
    .line 186
    iget-wide v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y$a;->e:J

    .line 187
    .line 188
    invoke-direct {v2, v1, v3, v4, v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y$a$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;JLandroidx/compose/ui/text/TextStyle;)V

    .line 189
    .line 190
    .line 191
    const v1, -0x1164638e

    .line 192
    .line 193
    .line 194
    const/4 v3, 0x1

    .line 195
    invoke-static {v14, v1, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 196
    .line 197
    .line 198
    move-result-object v10

    .line 199
    const/high16 v12, 0x30000000

    .line 200
    .line 201
    const/16 v16, 0x17a

    .line 202
    .line 203
    const/4 v2, 0x0

    .line 204
    const/4 v4, 0x0

    .line 205
    const/4 v5, 0x0

    .line 206
    const/4 v6, 0x0

    .line 207
    const/4 v7, 0x0

    .line 208
    const/4 v9, 0x0

    .line 209
    move-object v1, v13

    .line 210
    move v3, v15

    .line 211
    move-object/from16 v11, p2

    .line 212
    .line 213
    move/from16 v13, v16

    .line 214
    .line 215
    invoke-static/range {v1 .. v13}, Landroidx/compose/material/ButtonKt;->TextButton(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/ButtonElevation;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 216
    .line 217
    .line 218
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 219
    .line 220
    .line 221
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_7

    .line 226
    .line 227
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 228
    .line 229
    .line 230
    :cond_7
    :goto_4
    return-void

    .line 231
    :cond_8
    move-object v14, v0

    .line 232
    move-object/from16 v0, p0

    .line 233
    .line 234
    const v1, -0x58ea6de7

    .line 235
    .line 236
    .line 237
    invoke-interface {v14, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 238
    .line 239
    .line 240
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 241
    .line 242
    .line 243
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 244
    .line 245
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 246
    .line 247
    .line 248
    throw v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/y$a;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;Landroidx/compose/runtime/Composer;I)V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p1
.end method
