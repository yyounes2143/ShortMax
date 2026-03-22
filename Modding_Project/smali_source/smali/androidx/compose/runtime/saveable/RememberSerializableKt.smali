.class public final Landroidx/compose/runtime/saveable/RememberSerializableKt;
.super Ljava/lang/Object;
.source "RememberSerializable.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final synthetic rememberSerializable([Ljava/lang/Object;Landroidx/savedstate/serialization/SavedStateConfiguration;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;
    .locals 7
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Landroidx/savedstate/serialization/SavedStateConfiguration;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/runtime/MutableState<",
            "TT;>;>;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/MutableState<",
            "TT;>;"
        }
    .end annotation

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 8
    sget-object p1, Landroidx/savedstate/serialization/SavedStateConfiguration;->DEFAULT:Landroidx/savedstate/serialization/SavedStateConfiguration;

    :cond_0
    move-object v2, p1

    .line 9
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 10
    invoke-virtual {v2}, Landroidx/savedstate/serialization/SavedStateConfiguration;->getSerializersModule()Lxt/a;

    move-result-object p0

    const/4 p1, 0x6

    const-string p5, "T"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string p1, "kotlinx.serialization.serializer.withModule"

    invoke-static {p1}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lst/t;->c(Lxt/a;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    shl-int/lit8 p0, p4, 0x3

    and-int/lit16 v5, p0, 0x1f80

    const/4 v6, 0x0

    move-object v3, p2

    move-object v4, p3

    .line 11
    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSerializableKt;->rememberSerializable([Ljava/lang/Object;Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;

    move-result-object p0

    return-object p0
.end method

.method public static final rememberSerializable([Ljava/lang/Object;Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/MutableState;
    .locals 7
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/serialization/KSerializer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/savedstate/serialization/SavedStateConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;",
            "Landroidx/savedstate/serialization/SavedStateConfiguration;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Landroidx/compose/runtime/MutableState<",
            "TT;>;>;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/runtime/MutableState<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    .line 12
    sget-object p2, Landroidx/savedstate/serialization/SavedStateConfiguration;->DEFAULT:Landroidx/savedstate/serialization/SavedStateConfiguration;

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p6

    if-eqz p6, :cond_1

    const/4 p6, -0x1

    const-string v0, "androidx.compose.runtime.saveable.rememberSerializable (RememberSerializable.kt:163)"

    const v1, 0x4a6f949f    # 3925287.8f

    invoke-static {v1, p5, p6, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 13
    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/runtime/saveable/serialization/SerializableSaverKt;->serializableSaver(Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p1

    invoke-static {p1}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->mutableStateSaver(Landroidx/compose/runtime/saveable/Saver;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v1

    .line 14
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    and-int/lit16 p0, p5, 0x1c00

    or-int/lit16 v5, p0, 0x180

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/runtime/MutableState;

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    return-object p0
.end method

.method public static final synthetic rememberSerializable([Ljava/lang/Object;Landroidx/savedstate/serialization/SavedStateConfiguration;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;
    .locals 7
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Landroidx/savedstate/serialization/SavedStateConfiguration;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Landroidx/compose/runtime/Composer;",
            "II)TT;"
        }
    .end annotation

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    .line 1
    sget-object p1, Landroidx/savedstate/serialization/SavedStateConfiguration;->DEFAULT:Landroidx/savedstate/serialization/SavedStateConfiguration;

    :cond_0
    move-object v2, p1

    .line 2
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 3
    invoke-virtual {v2}, Landroidx/savedstate/serialization/SavedStateConfiguration;->getSerializersModule()Lxt/a;

    move-result-object p0

    const/4 p1, 0x6

    const-string p5, "T"

    invoke-static {p1, p5}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string p1, "kotlinx.serialization.serializer.withModule"

    invoke-static {p1}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lst/t;->c(Lxt/a;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v1

    shl-int/lit8 p0, p4, 0x3

    and-int/lit16 v5, p0, 0x1f80

    const/4 v6, 0x0

    move-object v3, p2

    move-object v4, p3

    .line 4
    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSerializableKt;->rememberSerializable([Ljava/lang/Object;Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final rememberSerializable([Ljava/lang/Object;Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;
    .locals 9
    .param p0    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlinx/serialization/KSerializer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/savedstate/serialization/SavedStateConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;",
            "Landroidx/savedstate/serialization/SavedStateConfiguration;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Landroidx/compose/runtime/Composer;",
            "II)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    .line 5
    sget-object p2, Landroidx/savedstate/serialization/SavedStateConfiguration;->DEFAULT:Landroidx/savedstate/serialization/SavedStateConfiguration;

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p6

    if-eqz p6, :cond_1

    const/4 p6, -0x1

    const-string v0, "androidx.compose.runtime.saveable.rememberSerializable (RememberSerializable.kt:93)"

    const v1, 0x4b3298f8    # 1.1704568E7f

    invoke-static {v1, p5, p6, v0}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 6
    :cond_1
    invoke-static {p1, p2}, Landroidx/compose/runtime/saveable/serialization/SerializableSaverKt;->serializableSaver(Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v3

    .line 7
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    and-int/lit16 p0, p5, 0x1c00

    or-int/lit16 v7, p0, 0x180

    const/4 v8, 0x0

    const/4 v4, 0x0

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v2 .. v8}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    return-object p0
.end method
