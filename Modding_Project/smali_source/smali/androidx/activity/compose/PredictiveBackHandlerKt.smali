.class public final Landroidx/activity/compose/PredictiveBackHandlerKt;
.super Ljava/lang/Object;
.source "PredictiveBackHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPredictiveBackHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PredictiveBackHandler.kt\nandroidx/activity/compose/PredictiveBackHandlerKt\n+ 2 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 3 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 4 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 5 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 6 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 7 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt\n*L\n1#1,172:1\n473#2,4:173\n477#2,2:181\n481#2:187\n25#3:177\n25#3:188\n955#4,3:178\n958#4,3:184\n955#4,6:189\n473#5:183\n76#6:195\n89#7:196\n*S KotlinDebug\n*F\n+ 1 PredictiveBackHandler.kt\nandroidx/activity/compose/PredictiveBackHandlerKt\n*L\n79#1:173,4\n79#1:181,2\n79#1:187\n79#1:177\n81#1:188\n79#1:178,3\n79#1:184,3\n81#1:189,6\n79#1:183\n135#1:195\n78#1:196\n*E\n"
    }
.end annotation


# direct methods
.method public static final PredictiveBackHandler(ZLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
    .locals 5
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function2<",
            "Lkt/b<",
            "Landroidx/activity/BackEventCompat;",
            ">;-",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    const v0, -0x264426c9

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    and-int/lit8 v0, p4, 0x1

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    :cond_0
    const/16 v0, 0x8

    .line 14
    .line 15
    invoke-static {p1, p2, v0}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, -0x2b2019d8

    .line 20
    .line 21
    .line 22
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 23
    .line 24
    .line 25
    const v1, -0x384349

    .line 26
    .line 27
    .line 28
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 36
    .line 37
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    if-ne v2, v4, :cond_1

    .line 42
    .line 43
    sget-object v2, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 44
    .line 45
    invoke-static {v2, p2}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lgt/g0;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    new-instance v4, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 50
    .line 51
    invoke-direct {v4, v2}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lgt/g0;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p2, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    move-object v2, v4

    .line 58
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 59
    .line 60
    .line 61
    check-cast v2, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 62
    .line 63
    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lgt/g0;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 68
    .line 69
    .line 70
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-ne v1, v3, :cond_2

    .line 82
    .line 83
    new-instance v1, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;

    .line 84
    .line 85
    invoke-direct {v1, p0, v2, v0}, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;-><init>(ZLgt/g0;Landroidx/compose/runtime/State;)V

    .line 86
    .line 87
    .line 88
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 92
    .line 93
    .line 94
    check-cast v1, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;

    .line 95
    .line 96
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    new-instance v2, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$1;

    .line 101
    .line 102
    const/4 v3, 0x0

    .line 103
    invoke-direct {v2, v1, p0, v3}, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$1;-><init>(Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;ZLrs/c;)V

    .line 104
    .line 105
    .line 106
    and-int/lit8 v3, p3, 0xe

    .line 107
    .line 108
    or-int/lit8 v3, v3, 0x40

    .line 109
    .line 110
    invoke-static {v0, v2, p2, v3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 111
    .line 112
    .line 113
    sget-object v0, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->INSTANCE:Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;

    .line 114
    .line 115
    const/4 v2, 0x6

    .line 116
    invoke-virtual {v0, p2, v2}, Landroidx/activity/compose/LocalOnBackPressedDispatcherOwner;->getCurrent(Landroidx/compose/runtime/Composer;I)Landroidx/activity/OnBackPressedDispatcherOwner;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_4

    .line 121
    .line 122
    invoke-interface {v0}, Landroidx/activity/OnBackPressedDispatcherOwner;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalLifecycleOwner()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    .line 135
    .line 136
    new-instance v3, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$2;

    .line 137
    .line 138
    invoke-direct {v3, v0, v2, v1}, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$2;-><init>(Landroidx/activity/OnBackPressedDispatcher;Landroidx/lifecycle/LifecycleOwner;Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$backCallBack$1$1;)V

    .line 139
    .line 140
    .line 141
    const/16 v1, 0x48

    .line 142
    .line 143
    invoke-static {v2, v0, v3, p2, v1}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 144
    .line 145
    .line 146
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    if-nez p2, :cond_3

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_3
    new-instance v0, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$3;

    .line 154
    .line 155
    invoke-direct {v0, p0, p1, p3, p4}, Landroidx/activity/compose/PredictiveBackHandlerKt$PredictiveBackHandler$3;-><init>(ZLkotlin/jvm/functions/Function2;II)V

    .line 156
    .line 157
    .line 158
    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 159
    .line 160
    .line 161
    :goto_0
    return-void

    .line 162
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 163
    .line 164
    const-string p1, "No OnBackPressedDispatcherOwner was provided via LocalOnBackPressedDispatcherOwner"

    .line 165
    .line 166
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw p0
.end method

.method private static final PredictiveBackHandler$lambda$0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function2<",
            "Lkt/b<",
            "Landroidx/activity/BackEventCompat;",
            ">;-",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lkotlin/jvm/functions/Function2<",
            "Lkt/b<",
            "Landroidx/activity/BackEventCompat;",
            ">;",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final synthetic access$PredictiveBackHandler$lambda$0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/activity/compose/PredictiveBackHandlerKt;->PredictiveBackHandler$lambda$0(Landroidx/compose/runtime/State;)Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
