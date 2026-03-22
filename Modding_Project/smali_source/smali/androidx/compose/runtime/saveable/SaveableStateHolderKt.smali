.class public final Landroidx/compose/runtime/saveable/SaveableStateHolderKt;
.super Ljava/lang/Object;
.source "SaveableStateHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSaveableStateHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SaveableStateHolder.kt\nandroidx/compose/runtime/saveable/SaveableStateHolderKt\n+ 2 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,129:1\n1282#2,6:130\n1#3:136\n75#4:137\n*S KotlinDebug\n*F\n+ 1 SaveableStateHolder.kt\nandroidx/compose/runtime/saveable/SaveableStateHolderKt\n*L\n58#1:130,6\n59#1:137\n*E\n"
    }
.end annotation


# direct methods
.method public static synthetic a()Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/runtime/saveable/SaveableStateHolderKt;->rememberSaveableStateHolder$lambda$1$lambda$0()Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final rememberSaveableStateHolder(Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/saveable/SaveableStateHolder;
    .locals 3
    .param p0    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    const-string v1, "androidx.compose.runtime.saveable.rememberSaveableStateHolder (SaveableStateHolder.kt:57)"

    .line 9
    .line 10
    const v2, 0xebd1ab

    .line 11
    .line 12
    .line 13
    invoke-static {v2, p1, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    const p1, 0x753e2915

    .line 17
    .line 18
    .line 19
    invoke-interface {p0, p1}, Landroidx/compose/runtime/Composer;->startReplaceGroup(I)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    new-array p1, p1, [Ljava/lang/Object;

    .line 24
    .line 25
    sget-object v0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->Companion:Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$Companion;

    .line 26
    .line 27
    invoke-virtual {v0}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl$Companion;->getSaver()Landroidx/compose/runtime/saveable/Saver;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-ne v1, v2, :cond_1

    .line 42
    .line 43
    new-instance v1, Landroidx/compose/runtime/saveable/l;

    .line 44
    .line 45
    invoke-direct {v1}, Landroidx/compose/runtime/saveable/l;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {p0, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_1
    check-cast v1, Lkotlin/jvm/functions/Function0;

    .line 52
    .line 53
    const/16 v2, 0x180

    .line 54
    .line 55
    invoke-static {p1, v0, v1, p0, v2}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 60
    .line 61
    invoke-static {}, Landroidx/compose/runtime/saveable/SaveableStateRegistryKt;->getLocalSaveableStateRegistry()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-interface {p0, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroidx/compose/runtime/saveable/SaveableStateRegistry;

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;->setParentSaveableStateRegistry(Landroidx/compose/runtime/saveable/SaveableStateRegistry;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {p0}, Landroidx/compose/runtime/Composer;->endReplaceGroup()V

    .line 75
    .line 76
    .line 77
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eqz p0, :cond_2

    .line 82
    .line 83
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 84
    .line 85
    .line 86
    :cond_2
    return-object p1
.end method

.method private static final rememberSaveableStateHolder$lambda$1$lambda$0()Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;
    .locals 3

    .line 1
    new-instance v0, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-direct {v0, v1, v2, v1}, Landroidx/compose/runtime/saveable/SaveableStateHolderImpl;-><init>(Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
