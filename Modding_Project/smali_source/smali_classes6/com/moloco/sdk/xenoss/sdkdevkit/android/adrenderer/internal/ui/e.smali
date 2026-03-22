.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAdGoNextButton.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdGoNextButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/AdGoNextButtonKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,112:1\n1057#2,6:113\n1057#2,6:119\n76#3:125\n76#3:126\n102#3,2:127\n*S KotlinDebug\n*F\n+ 1 AdGoNextButton.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/AdGoNextButtonKt\n*L\n80#1:113,6\n82#1:119,6\n78#1:125\n80#1:126\n80#1:127,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Landroidx/compose/runtime/MutableState;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static final b(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/d$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/d$a;",
            ">;)",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/d$a;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/d$a;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final c(Landroidx/compose/foundation/layout/BoxScope;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;Lat/a;Lat/a;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 7

    .line 1
    or-int/lit8 v6, p5, 0x1

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p6

    .line 9
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e;->e(Landroidx/compose/foundation/layout/BoxScope;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;Lat/a;Lat/a;Landroidx/compose/runtime/Composer;I)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final d(Landroidx/compose/foundation/layout/BoxScope;Lkt/i;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lat/a;ZILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 8

    .line 1
    or-int/lit8 v7, p6, 0x1

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move v5, p5

    .line 9
    move-object v6, p7

    .line 10
    invoke-static/range {v0 .. v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e;->f(Landroidx/compose/foundation/layout/BoxScope;Lkt/i;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lat/a;ZLandroidx/compose/runtime/Composer;I)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    return-object v0
.end method

.method public static final e(Landroidx/compose/foundation/layout/BoxScope;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;Lat/a;Lat/a;Landroidx/compose/runtime/Composer;I)V
    .locals 8
    .param p0    # Landroidx/compose/foundation/layout/BoxScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lat/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lat/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;",
            "Lat/a<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;-",
            "Ljava/lang/Boolean;",
            "-",
            "Lms/n;",
            "-",
            "Lms/n;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lat/a<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;-",
            "Ljava/lang/Boolean;",
            "-",
            "Lms/n;",
            "-",
            "Lms/n;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adViewModel"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, 0x488c7ca7

    .line 12
    .line 13
    .line 14
    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 15
    .line 16
    .line 17
    move-result-object p5

    .line 18
    and-int/lit8 v1, p6, 0x6

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    invoke-interface {p5, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    const/4 v1, 0x4

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x2

    .line 31
    :goto_0
    or-int/2addr v1, p6

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move v1, p6

    .line 34
    :goto_1
    and-int/lit8 v2, p6, 0x30

    .line 35
    .line 36
    if-nez v2, :cond_3

    .line 37
    .line 38
    invoke-interface {p5, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_2

    .line 43
    .line 44
    const/16 v2, 0x20

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_2
    const/16 v2, 0x10

    .line 48
    .line 49
    :goto_2
    or-int/2addr v1, v2

    .line 50
    :cond_3
    and-int/lit16 v2, p6, 0x180

    .line 51
    .line 52
    if-nez v2, :cond_5

    .line 53
    .line 54
    invoke-interface {p5, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    const/16 v2, 0x100

    .line 61
    .line 62
    goto :goto_3

    .line 63
    :cond_4
    const/16 v2, 0x80

    .line 64
    .line 65
    :goto_3
    or-int/2addr v1, v2

    .line 66
    :cond_5
    and-int/lit16 v2, p6, 0xc00

    .line 67
    .line 68
    if-nez v2, :cond_7

    .line 69
    .line 70
    invoke-interface {p5, p3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-eqz v2, :cond_6

    .line 75
    .line 76
    const/16 v2, 0x800

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_6
    const/16 v2, 0x400

    .line 80
    .line 81
    :goto_4
    or-int/2addr v1, v2

    .line 82
    :cond_7
    and-int/lit16 v2, p6, 0x6000

    .line 83
    .line 84
    if-nez v2, :cond_9

    .line 85
    .line 86
    invoke-interface {p5, p4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_8

    .line 91
    .line 92
    const/16 v2, 0x4000

    .line 93
    .line 94
    goto :goto_5

    .line 95
    :cond_8
    const/16 v2, 0x2000

    .line 96
    .line 97
    :goto_5
    or-int/2addr v1, v2

    .line 98
    :cond_9
    and-int/lit16 v2, v1, 0x2493

    .line 99
    .line 100
    const/16 v3, 0x2492

    .line 101
    .line 102
    if-ne v2, v3, :cond_b

    .line 103
    .line 104
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    if-nez v2, :cond_a

    .line 109
    .line 110
    goto :goto_6

    .line 111
    :cond_a
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 112
    .line 113
    .line 114
    goto/16 :goto_c

    .line 115
    .line 116
    :cond_b
    :goto_6
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_c

    .line 121
    .line 122
    const/4 v2, -0x1

    .line 123
    const-string v3, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.AdGoNextButton (AdGoNextButton.kt:27)"

    .line 124
    .line 125
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_c
    const/4 v0, 0x0

    .line 129
    if-eqz p2, :cond_d

    .line 130
    .line 131
    invoke-virtual {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;->a()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    goto :goto_7

    .line 140
    :cond_d
    move-object v1, v0

    .line 141
    :goto_7
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 142
    .line 143
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_e

    .line 148
    .line 149
    move-object v0, p4

    .line 150
    goto :goto_8

    .line 151
    :cond_e
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 152
    .line 153
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_f

    .line 158
    .line 159
    move-object v0, p3

    .line 160
    goto :goto_8

    .line 161
    :cond_f
    if-nez v1, :cond_19

    .line 162
    .line 163
    :goto_8
    instance-of v1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a$a;

    .line 164
    .line 165
    const/4 v2, 0x1

    .line 166
    if-eqz v1, :cond_10

    .line 167
    .line 168
    goto :goto_9

    .line 169
    :cond_10
    instance-of v3, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a$b;

    .line 170
    .line 171
    if-eqz v3, :cond_11

    .line 172
    .line 173
    goto :goto_9

    .line 174
    :cond_11
    instance-of v3, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a$c;

    .line 175
    .line 176
    if-eqz v3, :cond_12

    .line 177
    .line 178
    move v3, v2

    .line 179
    goto :goto_a

    .line 180
    :cond_12
    :goto_9
    const/4 v3, 0x0

    .line 181
    :goto_a
    if-nez v0, :cond_13

    .line 182
    .line 183
    goto :goto_b

    .line 184
    :cond_13
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e$a;

    .line 185
    .line 186
    invoke-direct {v4, p0, p1, v0, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e$a;-><init>(Landroidx/compose/foundation/layout/BoxScope;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;Lat/a;Z)V

    .line 187
    .line 188
    .line 189
    const v0, 0x1e197c5c

    .line 190
    .line 191
    .line 192
    invoke-static {p5, v0, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    const/4 v2, 0x6

    .line 197
    if-eqz v1, :cond_14

    .line 198
    .line 199
    const v1, -0x3d0c45a0

    .line 200
    .line 201
    .line 202
    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 203
    .line 204
    .line 205
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-interface {v0, p5, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 213
    .line 214
    .line 215
    goto :goto_b

    .line 216
    :cond_14
    instance-of v1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a$b;

    .line 217
    .line 218
    if-eqz v1, :cond_15

    .line 219
    .line 220
    const v1, -0x3d0c3ea0

    .line 221
    .line 222
    .line 223
    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 224
    .line 225
    .line 226
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-interface {v0, p5, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 234
    .line 235
    .line 236
    goto :goto_b

    .line 237
    :cond_15
    instance-of v1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a$c;

    .line 238
    .line 239
    if-eqz v1, :cond_16

    .line 240
    .line 241
    const v1, -0x3d0c3740

    .line 242
    .line 243
    .line 244
    invoke-interface {p5, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 245
    .line 246
    .line 247
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 248
    .line 249
    .line 250
    move-result-object v1

    .line 251
    invoke-interface {v0, p5, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 255
    .line 256
    .line 257
    goto :goto_b

    .line 258
    :cond_16
    const v0, -0x647a28ff

    .line 259
    .line 260
    .line 261
    invoke-interface {p5, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 262
    .line 263
    .line 264
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 265
    .line 266
    .line 267
    :goto_b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 268
    .line 269
    .line 270
    move-result v0

    .line 271
    if-eqz v0, :cond_17

    .line 272
    .line 273
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 274
    .line 275
    .line 276
    :cond_17
    :goto_c
    invoke-interface {p5}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 277
    .line 278
    .line 279
    move-result-object p5

    .line 280
    if-eqz p5, :cond_18

    .line 281
    .line 282
    new-instance v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/n;

    .line 283
    .line 284
    move-object v0, v7

    .line 285
    move-object v1, p0

    .line 286
    move-object v2, p1

    .line 287
    move-object v3, p2

    .line 288
    move-object v4, p3

    .line 289
    move-object v5, p4

    .line 290
    move v6, p6

    .line 291
    invoke-direct/range {v0 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/n;-><init>(Landroidx/compose/foundation/layout/BoxScope;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;Lat/a;Lat/a;I)V

    .line 292
    .line 293
    .line 294
    invoke-interface {p5, v7}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 295
    .line 296
    .line 297
    :cond_18
    return-void

    .line 298
    :cond_19
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 299
    .line 300
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 301
    .line 302
    .line 303
    throw p0
.end method

.method public static final f(Landroidx/compose/foundation/layout/BoxScope;Lkt/i;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lat/a;ZLandroidx/compose/runtime/Composer;I)V
    .locals 19
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Lkt/i<",
            "+",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/d$a;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;",
            "Lat/a<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;-",
            "Ljava/lang/Boolean;",
            "-",
            "Lms/n;",
            "-",
            "Lms/n;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;Z",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    move/from16 v7, p7

    .line 2
    .line 3
    const v0, 0xbc2de0

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p6

    .line 7
    .line 8
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    and-int/lit8 v2, v7, 0x6

    .line 13
    .line 14
    const/4 v3, 0x2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    move-object/from16 v2, p0

    .line 18
    .line 19
    invoke-interface {v1, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    const/4 v4, 0x4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v4, v3

    .line 28
    :goto_0
    or-int/2addr v4, v7

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move-object/from16 v2, p0

    .line 31
    .line 32
    move v4, v7

    .line 33
    :goto_1
    and-int/lit8 v5, v7, 0x30

    .line 34
    .line 35
    if-nez v5, :cond_3

    .line 36
    .line 37
    move-object/from16 v5, p1

    .line 38
    .line 39
    invoke-interface {v1, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-eqz v6, :cond_2

    .line 44
    .line 45
    const/16 v6, 0x20

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 v6, 0x10

    .line 49
    .line 50
    :goto_2
    or-int/2addr v4, v6

    .line 51
    goto :goto_3

    .line 52
    :cond_3
    move-object/from16 v5, p1

    .line 53
    .line 54
    :goto_3
    and-int/lit16 v6, v7, 0x180

    .line 55
    .line 56
    if-nez v6, :cond_5

    .line 57
    .line 58
    move-object/from16 v6, p2

    .line 59
    .line 60
    invoke-interface {v1, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-eqz v8, :cond_4

    .line 65
    .line 66
    const/16 v8, 0x100

    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_4
    const/16 v8, 0x80

    .line 70
    .line 71
    :goto_4
    or-int/2addr v4, v8

    .line 72
    goto :goto_5

    .line 73
    :cond_5
    move-object/from16 v6, p2

    .line 74
    .line 75
    :goto_5
    and-int/lit16 v8, v7, 0xc00

    .line 76
    .line 77
    move-object/from16 v15, p3

    .line 78
    .line 79
    if-nez v8, :cond_7

    .line 80
    .line 81
    invoke-interface {v1, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-eqz v8, :cond_6

    .line 86
    .line 87
    const/16 v8, 0x800

    .line 88
    .line 89
    goto :goto_6

    .line 90
    :cond_6
    const/16 v8, 0x400

    .line 91
    .line 92
    :goto_6
    or-int/2addr v4, v8

    .line 93
    :cond_7
    and-int/lit16 v8, v7, 0x6000

    .line 94
    .line 95
    move-object/from16 v14, p4

    .line 96
    .line 97
    if-nez v8, :cond_9

    .line 98
    .line 99
    invoke-interface {v1, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v8

    .line 103
    if-eqz v8, :cond_8

    .line 104
    .line 105
    const/16 v8, 0x4000

    .line 106
    .line 107
    goto :goto_7

    .line 108
    :cond_8
    const/16 v8, 0x2000

    .line 109
    .line 110
    :goto_7
    or-int/2addr v4, v8

    .line 111
    :cond_9
    const/high16 v8, 0x30000

    .line 112
    .line 113
    and-int/2addr v8, v7

    .line 114
    move/from16 v13, p5

    .line 115
    .line 116
    if-nez v8, :cond_b

    .line 117
    .line 118
    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    if-eqz v8, :cond_a

    .line 123
    .line 124
    const/high16 v8, 0x20000

    .line 125
    .line 126
    goto :goto_8

    .line 127
    :cond_a
    const/high16 v8, 0x10000

    .line 128
    .line 129
    :goto_8
    or-int/2addr v4, v8

    .line 130
    :cond_b
    const v8, 0x12493

    .line 131
    .line 132
    .line 133
    and-int/2addr v8, v4

    .line 134
    const v9, 0x12492

    .line 135
    .line 136
    .line 137
    if-ne v8, v9, :cond_d

    .line 138
    .line 139
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 140
    .line 141
    .line 142
    move-result v8

    .line 143
    if-nez v8, :cond_c

    .line 144
    .line 145
    goto :goto_9

    .line 146
    :cond_c
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 147
    .line 148
    .line 149
    goto/16 :goto_a

    .line 150
    .line 151
    :cond_d
    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 152
    .line 153
    .line 154
    move-result v8

    .line 155
    if-eqz v8, :cond_e

    .line 156
    .line 157
    const/4 v8, -0x1

    .line 158
    const-string v9, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.GoNextButton (AdGoNextButton.kt:76)"

    .line 159
    .line 160
    invoke-static {v0, v4, v8, v9}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 161
    .line 162
    .line 163
    :cond_e
    shr-int/lit8 v0, v4, 0x3

    .line 164
    .line 165
    and-int/lit8 v0, v0, 0xe

    .line 166
    .line 167
    const/4 v11, 0x0

    .line 168
    const/16 v16, 0x7

    .line 169
    .line 170
    const/4 v9, 0x0

    .line 171
    const/4 v10, 0x0

    .line 172
    move-object/from16 v8, p1

    .line 173
    .line 174
    move-object v12, v1

    .line 175
    move v13, v0

    .line 176
    move/from16 v14, v16

    .line 177
    .line 178
    invoke-static/range {v8 .. v14}, Landroidx/lifecycle/compose/FlowExtKt;->collectAsStateWithLifecycle(Lkt/i;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    const v8, -0x7d3c1c92

    .line 183
    .line 184
    .line 185
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 186
    .line 187
    .line 188
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v8

    .line 192
    sget-object v9, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 193
    .line 194
    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v10

    .line 198
    const/4 v11, 0x0

    .line 199
    const/4 v12, 0x0

    .line 200
    if-ne v8, v10, :cond_f

    .line 201
    .line 202
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v8

    .line 206
    invoke-static {v8, v12, v3, v12}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    :cond_f
    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 214
    .line 215
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 216
    .line 217
    .line 218
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 219
    .line 220
    const v10, -0x7d3c1466

    .line 221
    .line 222
    .line 223
    invoke-interface {v1, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 224
    .line 225
    .line 226
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v10

    .line 230
    invoke-interface {v1, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v13

    .line 234
    or-int/2addr v10, v13

    .line 235
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v13

    .line 239
    if-nez v10, :cond_10

    .line 240
    .line 241
    invoke-virtual {v9}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    if-ne v13, v9, :cond_11

    .line 246
    .line 247
    :cond_10
    new-instance v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e$b;

    .line 248
    .line 249
    invoke-direct {v13, v0, v8, v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e$b;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;Lrs/c;)V

    .line 250
    .line 251
    .line 252
    invoke-interface {v1, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    :cond_11
    check-cast v13, Lkotlin/jvm/functions/Function2;

    .line 256
    .line 257
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 258
    .line 259
    .line 260
    const/4 v9, 0x6

    .line 261
    invoke-static {v3, v13, v1, v9}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 262
    .line 263
    .line 264
    invoke-static {v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e;->a(Landroidx/compose/runtime/MutableState;)I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    invoke-static {v3}, Lms/n;->b(I)I

    .line 269
    .line 270
    .line 271
    move-result v3

    .line 272
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e;->b(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/d$a;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    instance-of v9, v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/d$a$b;

    .line 277
    .line 278
    if-eqz v9, :cond_12

    .line 279
    .line 280
    move-object v12, v8

    .line 281
    check-cast v12, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/d$a$b;

    .line 282
    .line 283
    :cond_12
    if-eqz v12, :cond_13

    .line 284
    .line 285
    invoke-virtual {v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/d$a$b;->a()I

    .line 286
    .line 287
    .line 288
    move-result v11

    .line 289
    :cond_13
    invoke-static {v11}, Lms/n;->b(I)I

    .line 290
    .line 291
    .line 292
    move-result v8

    .line 293
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e;->b(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/d$a;

    .line 294
    .line 295
    .line 296
    move-result-object v9

    .line 297
    instance-of v9, v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/d$a$a;

    .line 298
    .line 299
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 300
    .line 301
    .line 302
    move-result-object v10

    .line 303
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e;->b(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/d$a;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    instance-of v0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/d$a$c;

    .line 308
    .line 309
    xor-int/lit8 v0, v0, 0x1

    .line 310
    .line 311
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 312
    .line 313
    .line 314
    move-result-object v11

    .line 315
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 316
    .line 317
    .line 318
    move-result-object v14

    .line 319
    invoke-static {v3}, Lms/n;->a(I)Lms/n;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-static {v8}, Lms/n;->a(I)Lms/n;

    .line 324
    .line 325
    .line 326
    move-result-object v16

    .line 327
    and-int/lit8 v3, v4, 0xe

    .line 328
    .line 329
    shl-int/lit8 v8, v4, 0x3

    .line 330
    .line 331
    and-int/lit16 v9, v8, 0x1c00

    .line 332
    .line 333
    or-int/2addr v3, v9

    .line 334
    const v9, 0xe000

    .line 335
    .line 336
    .line 337
    and-int/2addr v8, v9

    .line 338
    or-int/2addr v3, v8

    .line 339
    const/high16 v8, 0x70000

    .line 340
    .line 341
    and-int/2addr v8, v4

    .line 342
    or-int/2addr v3, v8

    .line 343
    shl-int/lit8 v4, v4, 0xc

    .line 344
    .line 345
    const/high16 v8, 0xe000000

    .line 346
    .line 347
    and-int/2addr v4, v8

    .line 348
    or-int/2addr v3, v4

    .line 349
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 350
    .line 351
    .line 352
    move-result-object v18

    .line 353
    move-object/from16 v8, p4

    .line 354
    .line 355
    move-object/from16 v9, p0

    .line 356
    .line 357
    move-object/from16 v12, p2

    .line 358
    .line 359
    move-object/from16 v13, p3

    .line 360
    .line 361
    move-object v15, v0

    .line 362
    move-object/from16 v17, v1

    .line 363
    .line 364
    invoke-interface/range {v8 .. v18}, Lat/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    .line 366
    .line 367
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    if-eqz v0, :cond_14

    .line 372
    .line 373
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 374
    .line 375
    .line 376
    :cond_14
    :goto_a
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 377
    .line 378
    .line 379
    move-result-object v8

    .line 380
    if-eqz v8, :cond_15

    .line 381
    .line 382
    new-instance v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/o;

    .line 383
    .line 384
    move-object v0, v9

    .line 385
    move-object/from16 v1, p0

    .line 386
    .line 387
    move-object/from16 v2, p1

    .line 388
    .line 389
    move-object/from16 v3, p2

    .line 390
    .line 391
    move-object/from16 v4, p3

    .line 392
    .line 393
    move-object/from16 v5, p4

    .line 394
    .line 395
    move/from16 v6, p5

    .line 396
    .line 397
    move/from16 v7, p7

    .line 398
    .line 399
    invoke-direct/range {v0 .. v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/o;-><init>(Landroidx/compose/foundation/layout/BoxScope;Lkt/i;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lat/a;ZI)V

    .line 400
    .line 401
    .line 402
    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 403
    .line 404
    .line 405
    :cond_15
    return-void
.end method

.method public static final g(Landroidx/compose/runtime/MutableState;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic h(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/d$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e;->b(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/d$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i(Landroidx/compose/foundation/layout/BoxScope;Lkt/i;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lat/a;ZLandroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e;->f(Landroidx/compose/foundation/layout/BoxScope;Lkt/i;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lat/a;ZLandroidx/compose/runtime/Composer;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e;->g(Landroidx/compose/runtime/MutableState;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
