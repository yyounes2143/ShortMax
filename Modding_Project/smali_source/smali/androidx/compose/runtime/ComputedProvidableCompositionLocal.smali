.class public final Landroidx/compose/runtime/ComputedProvidableCompositionLocal;
.super Landroidx/compose/runtime/ProvidableCompositionLocal;
.source "CompositionLocal.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x2
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/compose/runtime/ProvidableCompositionLocal<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final defaultValueHolder:Landroidx/compose/runtime/ComputedValueHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/ComputedValueHolder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/runtime/CompositionLocalAccessorScope;",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/runtime/m;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/runtime/m;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Landroidx/compose/runtime/ProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroidx/compose/runtime/ComputedValueHolder;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Landroidx/compose/runtime/ComputedValueHolder;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/compose/runtime/ComputedProvidableCompositionLocal;->defaultValueHolder:Landroidx/compose/runtime/ComputedValueHolder;

    .line 15
    .line 16
    return-void
.end method

.method private static final _init_$lambda$0()Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "Unexpected call to default provider"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 7
    .line 8
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 9
    .line 10
    .line 11
    throw v0
.end method

.method public static synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/runtime/ComputedProvidableCompositionLocal;->_init_$lambda$0()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public defaultProvidedValue$runtime(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroidx/compose/runtime/ProvidedValue<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v8, Landroidx/compose/runtime/ProvidedValue;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    :goto_0
    move v3, v0

    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    goto :goto_0

    .line 10
    :goto_1
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    move-object v0, v8

    .line 15
    move-object v1, p0

    .line 16
    move-object v2, p1

    .line 17
    invoke-direct/range {v0 .. v7}, Landroidx/compose/runtime/ProvidedValue;-><init>(Landroidx/compose/runtime/CompositionLocal;Ljava/lang/Object;ZLandroidx/compose/runtime/SnapshotMutationPolicy;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Z)V

    .line 18
    .line 19
    .line 20
    return-object v8
.end method

.method public getDefaultValueHolder$runtime()Landroidx/compose/runtime/ComputedValueHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/ComputedValueHolder<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/compose/runtime/ComputedProvidableCompositionLocal;->defaultValueHolder:Landroidx/compose/runtime/ComputedValueHolder;

    return-object v0
.end method

.method public bridge synthetic getDefaultValueHolder$runtime()Landroidx/compose/runtime/ValueHolder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/ComputedProvidableCompositionLocal;->getDefaultValueHolder$runtime()Landroidx/compose/runtime/ComputedValueHolder;

    move-result-object v0

    return-object v0
.end method
