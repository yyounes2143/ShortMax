.class final Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;
.super Ljava/lang/Object;
.source "SavedStateRegistryOwnerDelegate.kt"

# interfaces
.implements Lkotlin/properties/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlin/properties/d<",
        "Ljava/lang/Object;",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final configuration:Landroidx/savedstate/serialization/SavedStateConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final init:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final key:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final registry:Landroidx/savedstate/SavedStateRegistry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final serializer:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/savedstate/SavedStateRegistry;Lkotlinx/serialization/KSerializer;Ljava/lang/String;Landroidx/savedstate/serialization/SavedStateConfiguration;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Landroidx/savedstate/SavedStateRegistry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlinx/serialization/KSerializer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/savedstate/serialization/SavedStateConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/savedstate/SavedStateRegistry;",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;",
            "Ljava/lang/String;",
            "Landroidx/savedstate/serialization/SavedStateConfiguration;",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "registry"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "serializer"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "configuration"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "init"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->registry:Landroidx/savedstate/SavedStateRegistry;

    .line 25
    .line 26
    iput-object p2, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->serializer:Lkotlinx/serialization/KSerializer;

    .line 27
    .line 28
    iput-object p3, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->key:Ljava/lang/String;

    .line 29
    .line 30
    iput-object p4, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->configuration:Landroidx/savedstate/serialization/SavedStateConfiguration;

    .line 31
    .line 32
    iput-object p5, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->init:Lkotlin/jvm/functions/Function0;

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic a(Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->registerSave$lambda$1(Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final createDefaultKey(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Landroidx/savedstate/internal/CanonicalName_jvmKt;->getCanonicalName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 p1, 0x2e

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p1, ""

    .line 34
    .line 35
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-interface {p2}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method private final loadValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->registry:Landroidx/savedstate/SavedStateRegistry;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroidx/savedstate/SavedStateRegistry;->consumeRestoredStateForKey(Ljava/lang/String;)Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->serializer:Lkotlinx/serialization/KSerializer;

    .line 10
    .line 11
    check-cast v0, Lst/c;

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->configuration:Landroidx/savedstate/serialization/SavedStateConfiguration;

    .line 14
    .line 15
    invoke-static {v0, p1, v1}, Landroidx/savedstate/serialization/SavedStateDecoderKt;->decodeFromSavedState(Lst/c;Landroid/os/Bundle;Landroidx/savedstate/serialization/SavedStateConfiguration;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    return-object p1
.end method

.method private final registerSave(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->registry:Landroidx/savedstate/SavedStateRegistry;

    .line 2
    .line 3
    new-instance v1, Landroidx/savedstate/serialization/b;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Landroidx/savedstate/serialization/b;-><init>(Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p1, v1}, Landroidx/savedstate/SavedStateRegistry;->registerSavedStateProvider(Ljava/lang/String;Landroidx/savedstate/SavedStateRegistry$SavedStateProvider;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final registerSave$lambda$1(Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;)Landroid/os/Bundle;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->serializer:Lkotlinx/serialization/KSerializer;

    .line 2
    .line 3
    check-cast v0, Lst/l;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->value:Ljava/lang/Object;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string/jumbo v1, "value"

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    :cond_0
    iget-object p0, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->configuration:Landroidx/savedstate/serialization/SavedStateConfiguration;

    .line 18
    .line 19
    invoke-static {v0, v1, p0}, Landroidx/savedstate/serialization/SavedStateEncoderKt;->encodeToSavedState(Lst/l;Ljava/lang/Object;Landroidx/savedstate/serialization/SavedStateConfiguration;)Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KProperty;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "property"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->value:Ljava/lang/Object;

    .line 7
    .line 8
    if-nez v0, :cond_2

    .line 9
    .line 10
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->key:Ljava/lang/String;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, p1, p2}, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->createDefaultKey(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    invoke-direct {p0, v0}, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->registerSave(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->loadValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->init:Lkotlin/jvm/functions/Function0;

    .line 28
    .line 29
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :cond_1
    iput-object p1, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->value:Ljava/lang/Object;

    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->value:Ljava/lang/Object;

    .line 36
    .line 37
    if-nez p1, :cond_3

    .line 38
    .line 39
    const-string/jumbo p1, "value"

    .line 40
    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    :cond_3
    return-object p1
.end method

.method public setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lkotlin/reflect/KProperty;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "property"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "value"

    .line 7
    .line 8
    .line 9
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->value:Ljava/lang/Object;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->key:Ljava/lang/String;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->createDefaultKey(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_0
    invoke-direct {p0, v0}, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->registerSave(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    iput-object p3, p0, Landroidx/savedstate/serialization/SavedStateRegistryOwnerDelegate;->value:Ljava/lang/Object;

    .line 28
    .line 29
    return-void
.end method
