.class public final Landroidx/compose/runtime/ProvidedValue;
.super Ljava/lang/Object;
.source "Composer.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nComposer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Composer.kt\nandroidx/compose/runtime/ProvidedValue\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,5012:1\n1#2:5013\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private canOverride:Z

.field private final compositionLocal:Landroidx/compose/runtime/CompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/CompositionLocal<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final compute:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/runtime/CompositionLocalAccessorScope;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final explicitNull:Z

.field private final isDynamic:Z

.field private final mutationPolicy:Landroidx/compose/runtime/SnapshotMutationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final providedValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final state:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/CompositionLocal;Ljava/lang/Object;ZLandroidx/compose/runtime/SnapshotMutationPolicy;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Z)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/CompositionLocal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/SnapshotMutationPolicy;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/MutableState;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/CompositionLocal<",
            "TT;>;TT;Z",
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;",
            "Landroidx/compose/runtime/MutableState<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/CompositionLocalAccessorScope;",
            "+TT;>;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Landroidx/compose/runtime/CompositionLocal;

    .line 5
    .line 6
    iput-boolean p3, p0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    .line 7
    .line 8
    iput-object p4, p0, Landroidx/compose/runtime/ProvidedValue;->mutationPolicy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 9
    .line 10
    iput-object p5, p0, Landroidx/compose/runtime/ProvidedValue;->state:Landroidx/compose/runtime/MutableState;

    .line 11
    .line 12
    iput-object p6, p0, Landroidx/compose/runtime/ProvidedValue;->compute:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    iput-boolean p7, p0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    iput-boolean p1, p0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    .line 20
    .line 21
    return-void
.end method

.method public static synthetic getEffectiveValue$runtime$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getValue$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final getCanOverride()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getCompositionLocal()Landroidx/compose/runtime/CompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/CompositionLocal<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Landroidx/compose/runtime/CompositionLocal;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCompute$runtime()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/runtime/CompositionLocalAccessorScope;",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->compute:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEffectiveValue$runtime()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->state:Landroidx/compose/runtime/MutableState;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    .line 17
    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    :goto_0
    return-object v0

    .line 21
    :cond_2
    const-string v0, "Unexpected form of a provided value"

    .line 22
    .line 23
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    .line 24
    .line 25
    .line 26
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 27
    .line 28
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 29
    .line 30
    .line 31
    throw v0
.end method

.method public final getMutationPolicy$runtime()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/SnapshotMutationPolicy<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->mutationPolicy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getState$runtime()Landroidx/compose/runtime/MutableState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/MutableState<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->state:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final ifNotAlreadyProvided$runtime()Landroidx/compose/runtime/ProvidedValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ProvidedValue<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final isDynamic$runtime()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isStatic$runtime()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/runtime/ProvidedValue;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method
