.class public final Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;
.super Ljava/lang/Object;
.source "AndroidCompositionLocals.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final LocalConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LocalContext:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LocalImageVectorCache:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/ui/res/ImageVectorCache;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LocalLifecycleOwner:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LocalSavedStateRegistryOwner:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/savedstate/SavedStateRegistryOwner;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final LocalView:Landroidx/compose/runtime/ProvidableCompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalConfiguration$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalConfiguration$1;

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/runtime/CompositionLocalKt;->compositionLocalOf(Landroidx/compose/runtime/SnapshotMutationPolicy;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 12
    .line 13
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalContext$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalContext$1;

    .line 14
    .line 15
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 20
    .line 21
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalImageVectorCache$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalImageVectorCache$1;

    .line 22
    .line 23
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalImageVectorCache:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 28
    .line 29
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalLifecycleOwner$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalLifecycleOwner$1;

    .line 30
    .line 31
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalLifecycleOwner:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 36
    .line 37
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalSavedStateRegistryOwner$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalSavedStateRegistryOwner$1;

    .line 38
    .line 39
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalSavedStateRegistryOwner:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 44
    .line 45
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalView$1;->INSTANCE:Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$LocalView$1;

    .line 46
    .line 47
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 52
    .line 53
    return-void
.end method

.method public static final ProvideAndroidCompositionLocals(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
    .locals 19
    .param p0    # Landroidx/compose/ui/platform/AndroidComposeView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/platform/AndroidComposeView;",
            "Lkotlin/jvm/functions/Function2<",
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
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    const-string v3, "owner"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "content"

    .line 13
    .line 14
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v3, 0x5342453c

    .line 18
    .line 19
    .line 20
    move-object/from16 v4, p2

    .line 21
    .line 22
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    const v5, -0x1d58f75c

    .line 31
    .line 32
    .line 33
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 41
    .line 42
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    if-ne v6, v8, :cond_0

    .line 47
    .line 48
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-static {v6, v8}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 68
    .line 69
    .line 70
    check-cast v6, Landroidx/compose/runtime/MutableState;

    .line 71
    .line 72
    const v8, 0x44faf204

    .line 73
    .line 74
    .line 75
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v8

    .line 82
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    if-nez v8, :cond_1

    .line 87
    .line 88
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    if-ne v9, v8, :cond_2

    .line 93
    .line 94
    :cond_1
    new-instance v9, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$1$1;

    .line 95
    .line 96
    invoke-direct {v9, v6}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$1$1;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 97
    .line 98
    .line 99
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 103
    .line 104
    .line 105
    check-cast v9, Lkotlin/jvm/functions/Function1;

    .line 106
    .line 107
    invoke-virtual {v0, v9}, Landroidx/compose/ui/platform/AndroidComposeView;->setConfigurationChangeObserver(Lkotlin/jvm/functions/Function1;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v8

    .line 117
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    const-string v10, "context"

    .line 122
    .line 123
    if-ne v8, v9, :cond_3

    .line 124
    .line 125
    new-instance v8, Landroidx/compose/ui/platform/AndroidUriHandler;

    .line 126
    .line 127
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-direct {v8, v4}, Landroidx/compose/ui/platform/AndroidUriHandler;-><init>(Landroid/content/Context;)V

    .line 131
    .line 132
    .line 133
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 137
    .line 138
    .line 139
    check-cast v8, Landroidx/compose/ui/platform/AndroidUriHandler;

    .line 140
    .line 141
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getViewTreeOwners()Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;

    .line 142
    .line 143
    .line 144
    move-result-object v9

    .line 145
    if-eqz v9, :cond_6

    .line 146
    .line 147
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 148
    .line 149
    .line 150
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v5

    .line 154
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    if-ne v5, v7, :cond_4

    .line 159
    .line 160
    invoke-virtual {v9}, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->getSavedStateRegistryOwner()Landroidx/savedstate/SavedStateRegistryOwner;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-static {v0, v5}, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry_androidKt;->DisposableSaveableStateRegistry(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    :cond_4
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 172
    .line 173
    .line 174
    check-cast v5, Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;

    .line 175
    .line 176
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 177
    .line 178
    new-instance v11, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$2;

    .line 179
    .line 180
    invoke-direct {v11, v5}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$2;-><init>(Landroidx/compose/ui/platform/DisposableSaveableStateRegistry;)V

    .line 181
    .line 182
    .line 183
    const/4 v12, 0x0

    .line 184
    invoke-static {v7, v11, v3, v12}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 185
    .line 186
    .line 187
    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->ProvideAndroidCompositionLocals$lambda-1(Landroidx/compose/runtime/MutableState;)Landroid/content/res/Configuration;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    const/16 v10, 0x48

    .line 195
    .line 196
    invoke-static {v4, v7, v3, v10}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->obtainImageVectorCache(Landroid/content/Context;Landroid/content/res/Configuration;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/res/ImageVectorCache;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    sget-object v10, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 201
    .line 202
    invoke-static {v6}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->ProvideAndroidCompositionLocals$lambda-1(Landroidx/compose/runtime/MutableState;)Landroid/content/res/Configuration;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    const-string v11, "configuration"

    .line 207
    .line 208
    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v10, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 212
    .line 213
    .line 214
    move-result-object v12

    .line 215
    sget-object v6, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 216
    .line 217
    invoke-virtual {v6, v4}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 218
    .line 219
    .line 220
    move-result-object v13

    .line 221
    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalLifecycleOwner:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 222
    .line 223
    invoke-virtual {v9}, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 228
    .line 229
    .line 230
    move-result-object v14

    .line 231
    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalSavedStateRegistryOwner:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 232
    .line 233
    invoke-virtual {v9}, Landroidx/compose/ui/platform/AndroidComposeView$ViewTreeOwners;->getSavedStateRegistryOwner()Landroidx/savedstate/SavedStateRegistryOwner;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 238
    .line 239
    .line 240
    move-result-object v15

    .line 241
    invoke-static {}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->getLocalSaveableStateRegistry()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 242
    .line 243
    .line 244
    move-result-object v4

    .line 245
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 246
    .line 247
    .line 248
    move-result-object v16

    .line 249
    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 250
    .line 251
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getView()Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    invoke-virtual {v4, v5}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 256
    .line 257
    .line 258
    move-result-object v17

    .line 259
    sget-object v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalImageVectorCache:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 260
    .line 261
    invoke-virtual {v4, v7}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    .line 262
    .line 263
    .line 264
    move-result-object v18

    .line 265
    filled-new-array/range {v12 .. v18}, [Landroidx/compose/runtime/ProvidedValue;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    new-instance v5, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$3;

    .line 270
    .line 271
    invoke-direct {v5, v0, v8, v1, v2}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$3;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/AndroidUriHandler;Lkotlin/jvm/functions/Function2;I)V

    .line 272
    .line 273
    .line 274
    const v6, 0x57b729fc

    .line 275
    .line 276
    .line 277
    const/4 v7, 0x1

    .line 278
    invoke-static {v3, v6, v7, v5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 279
    .line 280
    .line 281
    move-result-object v5

    .line 282
    const/16 v6, 0x38

    .line 283
    .line 284
    invoke-static {v4, v5, v3, v6}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 285
    .line 286
    .line 287
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 288
    .line 289
    .line 290
    move-result-object v3

    .line 291
    if-nez v3, :cond_5

    .line 292
    .line 293
    goto :goto_0

    .line 294
    :cond_5
    new-instance v4, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$4;

    .line 295
    .line 296
    invoke-direct {v4, v0, v1, v2}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$ProvideAndroidCompositionLocals$4;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;I)V

    .line 297
    .line 298
    .line 299
    invoke-interface {v3, v4}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 300
    .line 301
    .line 302
    :goto_0
    return-void

    .line 303
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 304
    .line 305
    const-string v1, "Called when the ViewTreeOwnersAvailability is not yet in Available state"

    .line 306
    .line 307
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    throw v0
.end method

.method private static final ProvideAndroidCompositionLocals$lambda-1(Landroidx/compose/runtime/MutableState;)Landroid/content/res/Configuration;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroid/content/res/Configuration;",
            ">;)",
            "Landroid/content/res/Configuration;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroid/content/res/Configuration;

    .line 6
    .line 7
    return-object p0
.end method

.method private static final ProvideAndroidCompositionLocals$lambda-2(Landroidx/compose/runtime/MutableState;Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroid/content/res/Configuration;",
            ">;",
            "Landroid/content/res/Configuration;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$ProvideAndroidCompositionLocals$lambda-2(Landroidx/compose/runtime/MutableState;Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->ProvideAndroidCompositionLocals$lambda-2(Landroidx/compose/runtime/MutableState;Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$noLocalProvidedFor(Ljava/lang/String;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->noLocalProvidedFor(Ljava/lang/String;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final getLocalConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroid/content/res/Configuration;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalConfiguration:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalContext:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getLocalImageVectorCache()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/compose/ui/res/ImageVectorCache;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalImageVectorCache:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getLocalLifecycleOwner()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/lifecycle/LifecycleOwner;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalLifecycleOwner:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getLocalSavedStateRegistryOwner()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroidx/savedstate/SavedStateRegistryOwner;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalSavedStateRegistryOwner:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getLocalView()Landroidx/compose/runtime/ProvidableCompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidableCompositionLocal<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->LocalView:Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final noLocalProvidedFor(Ljava/lang/String;)Ljava/lang/Void;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "CompositionLocal "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string p0, " not present"

    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method private static final obtainImageVectorCache(Landroid/content/Context;Landroid/content/res/Configuration;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/res/ImageVectorCache;
    .locals 5
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    const p3, -0x1cf65f46

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    const p3, -0x1d58f75c

    .line 8
    .line 9
    .line 10
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 11
    .line 12
    .line 13
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    if-ne v0, v2, :cond_0

    .line 24
    .line 25
    new-instance v0, Landroidx/compose/ui/res/ImageVectorCache;

    .line 26
    .line 27
    invoke-direct {v0}, Landroidx/compose/ui/res/ImageVectorCache;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 34
    .line 35
    .line 36
    check-cast v0, Landroidx/compose/ui/res/ImageVectorCache;

    .line 37
    .line 38
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 39
    .line 40
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    if-ne v3, v4, :cond_1

    .line 55
    .line 56
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move-object p1, v3

    .line 61
    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 62
    .line 63
    .line 64
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 65
    .line 66
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 67
    .line 68
    .line 69
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    if-ne p1, p3, :cond_2

    .line 78
    .line 79
    new-instance p1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainImageVectorCache$callbacks$1$1;

    .line 80
    .line 81
    invoke-direct {p1, v2, v0}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainImageVectorCache$callbacks$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/res/ImageVectorCache;)V

    .line 82
    .line 83
    .line 84
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 88
    .line 89
    .line 90
    check-cast p1, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainImageVectorCache$callbacks$1$1;

    .line 91
    .line 92
    new-instance p3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainImageVectorCache$1;

    .line 93
    .line 94
    invoke-direct {p3, p0, p1}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainImageVectorCache$1;-><init>(Landroid/content/Context;Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt$obtainImageVectorCache$callbacks$1$1;)V

    .line 95
    .line 96
    .line 97
    const/16 p0, 0x8

    .line 98
    .line 99
    invoke-static {v0, p3, p2, p0}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 100
    .line 101
    .line 102
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 103
    .line 104
    .line 105
    return-object v0
.end method
