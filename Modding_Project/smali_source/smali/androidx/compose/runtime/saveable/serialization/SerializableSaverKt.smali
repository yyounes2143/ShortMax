.class public final Landroidx/compose/runtime/saveable/serialization/SerializableSaverKt;
.super Ljava/lang/Object;
.source "SerializableSaver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic a(Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/compose/runtime/saveable/serialization/SerializableSaverKt;->serializableSaver$lambda$1(Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;Landroid/os/Bundle;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;Landroidx/compose/runtime/saveable/SaverScope;Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/runtime/saveable/serialization/SerializableSaverKt;->serializableSaver$lambda$0(Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;Landroidx/compose/runtime/saveable/SaverScope;Ljava/lang/Object;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic serializableSaver(Landroidx/savedstate/serialization/SavedStateConfiguration;)Landroidx/compose/runtime/saveable/Saver;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Serializable:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/savedstate/serialization/SavedStateConfiguration;",
            ")",
            "Landroidx/compose/runtime/saveable/Saver<",
            "TSerializable;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/savedstate/serialization/SavedStateConfiguration;->getSerializersModule()Lxt/a;

    move-result-object v0

    const/4 v1, 0x6

    const-string v2, "Serializable"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string v1, "kotlinx.serialization.serializer.withModule"

    invoke-static {v1}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lst/t;->c(Lxt/a;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/compose/runtime/saveable/serialization/SerializableSaverKt;->serializableSaver(Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method

.method public static final serializableSaver(Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;)Landroidx/compose/runtime/saveable/Saver;
    .locals 2
    .param p0    # Lkotlinx/serialization/KSerializer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/savedstate/serialization/SavedStateConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Serializable:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/KSerializer<",
            "TSerializable;>;",
            "Landroidx/savedstate/serialization/SavedStateConfiguration;",
            ")",
            "Landroidx/compose/runtime/saveable/Saver<",
            "TSerializable;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lm/a;

    invoke-direct {v0, p0, p1}, Lm/a;-><init>(Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;)V

    new-instance v1, Lm/b;

    invoke-direct {v1, p0, p1}, Lm/b;-><init>(Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;)V

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/SaverKt;->Saver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic serializableSaver$default(Landroidx/savedstate/serialization/SavedStateConfiguration;ILjava/lang/Object;)Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 1
    sget-object p0, Landroidx/savedstate/serialization/SavedStateConfiguration;->DEFAULT:Landroidx/savedstate/serialization/SavedStateConfiguration;

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/savedstate/serialization/SavedStateConfiguration;->getSerializersModule()Lxt/a;

    move-result-object p1

    const/4 p2, 0x6

    const-string v0, "Serializable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    const-string p2, "kotlinx.serialization.serializer.withModule"

    invoke-static {p2}, Lkotlin/jvm/internal/MagicApiIntrinsics;->voidMagicApiCall(Ljava/lang/Object;)V

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lst/t;->c(Lxt/a;Lkotlin/reflect/KType;)Lkotlinx/serialization/KSerializer;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/compose/runtime/saveable/serialization/SerializableSaverKt;->serializableSaver(Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic serializableSaver$default(Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;ILjava/lang/Object;)Landroidx/compose/runtime/saveable/Saver;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 3
    sget-object p1, Landroidx/savedstate/serialization/SavedStateConfiguration;->DEFAULT:Landroidx/savedstate/serialization/SavedStateConfiguration;

    .line 4
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/runtime/saveable/serialization/SerializableSaverKt;->serializableSaver(Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object p0

    return-object p0
.end method

.method private static final serializableSaver$lambda$0(Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;Landroidx/compose/runtime/saveable/SaverScope;Ljava/lang/Object;)Landroid/os/Bundle;
    .locals 0

    .line 1
    check-cast p0, Lst/l;

    .line 2
    .line 3
    invoke-static {p0, p3, p1}, Landroidx/savedstate/serialization/SavedStateEncoderKt;->encodeToSavedState(Lst/l;Ljava/lang/Object;Landroidx/savedstate/serialization/SavedStateConfiguration;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method private static final serializableSaver$lambda$1(Lkotlinx/serialization/KSerializer;Landroidx/savedstate/serialization/SavedStateConfiguration;Landroid/os/Bundle;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p0, Lst/c;

    .line 2
    .line 3
    invoke-static {p0, p2, p1}, Landroidx/savedstate/serialization/SavedStateDecoderKt;->decodeFromSavedState(Lst/c;Landroid/os/Bundle;Landroidx/savedstate/serialization/SavedStateConfiguration;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
