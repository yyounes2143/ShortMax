.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAdWebView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdWebView.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/AdWebViewKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,51:1\n1057#2,6:52\n1057#2,6:59\n1#3:58\n62#4,5:65\n*S KotlinDebug\n*F\n+ 1 AdWebView.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/AdWebViewKt\n*L\n18#1:52,6\n45#1:59,6\n46#1:65,5\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Landroid/webkit/WebView;Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/widget/FrameLayout;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 19
    .line 20
    const/4 v1, -0x1

    .line 21
    invoke-direct {p1, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public static final b(Landroid/webkit/WebView;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 1

    .line 1
    const-string v0, "$this$DisposableEffect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/a$b;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/a$b;-><init>(Landroid/webkit/WebView;)V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method

.method public static final c(Landroid/webkit/WebView;Landroidx/compose/ui/Modifier;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;IILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 6

    .line 1
    or-int/lit8 v4, p3, 0x1

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p5

    .line 7
    move v5, p4

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/a;->d(Landroid/webkit/WebView;Landroidx/compose/ui/Modifier;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Landroidx/compose/runtime/Composer;II)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0
.end method

.method public static final d(Landroid/webkit/WebView;Landroidx/compose/ui/Modifier;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Landroidx/compose/runtime/Composer;II)V
    .locals 8
    .param p0    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    const-string/jumbo v0, "webView"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const v0, -0x42422c80

    .line 8
    .line 9
    .line 10
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    and-int/lit8 v1, p5, 0x1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    or-int/lit8 v1, p4, 0x6

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    and-int/lit8 v1, p4, 0x6

    .line 22
    .line 23
    if-nez v1, :cond_2

    .line 24
    .line 25
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const/4 v1, 0x4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/4 v1, 0x2

    .line 34
    :goto_0
    or-int/2addr v1, p4

    .line 35
    goto :goto_1

    .line 36
    :cond_2
    move v1, p4

    .line 37
    :goto_1
    and-int/lit8 v2, p5, 0x2

    .line 38
    .line 39
    if-eqz v2, :cond_3

    .line 40
    .line 41
    or-int/lit8 v1, v1, 0x30

    .line 42
    .line 43
    goto :goto_3

    .line 44
    :cond_3
    and-int/lit8 v3, p4, 0x30

    .line 45
    .line 46
    if-nez v3, :cond_5

    .line 47
    .line 48
    invoke-interface {p3, p1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    const/16 v3, 0x20

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    const/16 v3, 0x10

    .line 58
    .line 59
    :goto_2
    or-int/2addr v1, v3

    .line 60
    :cond_5
    :goto_3
    and-int/lit8 v3, p5, 0x4

    .line 61
    .line 62
    if-eqz v3, :cond_7

    .line 63
    .line 64
    or-int/lit16 v1, v1, 0x180

    .line 65
    .line 66
    :cond_6
    :goto_4
    move v7, v1

    .line 67
    goto :goto_6

    .line 68
    :cond_7
    and-int/lit16 v3, p4, 0x180

    .line 69
    .line 70
    if-nez v3, :cond_6

    .line 71
    .line 72
    invoke-interface {p3, p2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    if-eqz v3, :cond_8

    .line 77
    .line 78
    const/16 v3, 0x100

    .line 79
    .line 80
    goto :goto_5

    .line 81
    :cond_8
    const/16 v3, 0x80

    .line 82
    .line 83
    :goto_5
    or-int/2addr v1, v3

    .line 84
    goto :goto_4

    .line 85
    :goto_6
    and-int/lit16 v1, v7, 0x93

    .line 86
    .line 87
    const/16 v3, 0x92

    .line 88
    .line 89
    if-ne v1, v3, :cond_b

    .line 90
    .line 91
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_9

    .line 96
    .line 97
    goto :goto_8

    .line 98
    :cond_9
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 99
    .line 100
    .line 101
    :cond_a
    :goto_7
    move-object v3, p1

    .line 102
    goto/16 :goto_a

    .line 103
    .line 104
    :cond_b
    :goto_8
    if-eqz v2, :cond_c

    .line 105
    .line 106
    sget-object p1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 107
    .line 108
    :cond_c
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_d

    .line 113
    .line 114
    const/4 v1, -0x1

    .line 115
    const-string v2, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.AdWebView (AdWebView.kt:13)"

    .line 116
    .line 117
    invoke-static {v0, v7, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_d
    const v0, 0x5bc2c4a4

    .line 121
    .line 122
    .line 123
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 124
    .line 125
    .line 126
    const v0, 0x5bc24789

    .line 127
    .line 128
    .line 129
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 130
    .line 131
    .line 132
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-nez v0, :cond_e

    .line 141
    .line 142
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 143
    .line 144
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-ne v1, v0, :cond_f

    .line 149
    .line 150
    :cond_e
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/c;

    .line 151
    .line 152
    invoke-direct {v1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/c;-><init>(Landroid/webkit/WebView;)V

    .line 153
    .line 154
    .line 155
    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 156
    .line 157
    .line 158
    :cond_f
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 159
    .line 160
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 161
    .line 162
    .line 163
    and-int/lit8 v5, v7, 0x70

    .line 164
    .line 165
    const/4 v3, 0x0

    .line 166
    const/4 v6, 0x4

    .line 167
    move-object v2, p1

    .line 168
    move-object v4, p3

    .line 169
    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->AndroidView(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 170
    .line 171
    .line 172
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 173
    .line 174
    const v1, 0x5bc2c7a1

    .line 175
    .line 176
    .line 177
    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 178
    .line 179
    .line 180
    if-nez p2, :cond_10

    .line 181
    .line 182
    goto :goto_9

    .line 183
    :cond_10
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/a$a;

    .line 184
    .line 185
    invoke-direct {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/a$a;-><init>(Lkotlin/Unit;)V

    .line 186
    .line 187
    .line 188
    const v0, 0x3cb77a0f

    .line 189
    .line 190
    .line 191
    const/4 v2, 0x1

    .line 192
    invoke-static {p3, v0, v2, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    shr-int/lit8 v1, v7, 0x3

    .line 197
    .line 198
    and-int/lit8 v1, v1, 0x70

    .line 199
    .line 200
    or-int/lit8 v1, v1, 0x6

    .line 201
    .line 202
    invoke-interface {p2, v0, p3, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;->a(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 203
    .line 204
    .line 205
    :goto_9
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 206
    .line 207
    .line 208
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 209
    .line 210
    .line 211
    const v0, 0x5bc2e14f

    .line 212
    .line 213
    .line 214
    invoke-interface {p3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 215
    .line 216
    .line 217
    invoke-interface {p3, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    if-nez v0, :cond_11

    .line 226
    .line 227
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 228
    .line 229
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    if-ne v1, v0, :cond_12

    .line 234
    .line 235
    :cond_11
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/d;

    .line 236
    .line 237
    invoke-direct {v1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/d;-><init>(Landroid/webkit/WebView;)V

    .line 238
    .line 239
    .line 240
    invoke-interface {p3, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :cond_12
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 244
    .line 245
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 246
    .line 247
    .line 248
    and-int/lit8 v0, v7, 0xe

    .line 249
    .line 250
    invoke-static {p0, v1, p3, v0}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 251
    .line 252
    .line 253
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-eqz v0, :cond_a

    .line 258
    .line 259
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 260
    .line 261
    .line 262
    goto/16 :goto_7

    .line 263
    .line 264
    :goto_a
    invoke-interface {p3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    if-eqz p1, :cond_13

    .line 269
    .line 270
    new-instance p3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/e;

    .line 271
    .line 272
    move-object v1, p3

    .line 273
    move-object v2, p0

    .line 274
    move-object v4, p2

    .line 275
    move v5, p4

    .line 276
    move v6, p5

    .line 277
    invoke-direct/range {v1 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/e;-><init>(Landroid/webkit/WebView;Landroidx/compose/ui/Modifier;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;II)V

    .line 278
    .line 279
    .line 280
    invoke-interface {p1, p3}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 281
    .line 282
    .line 283
    :cond_13
    return-void
.end method
