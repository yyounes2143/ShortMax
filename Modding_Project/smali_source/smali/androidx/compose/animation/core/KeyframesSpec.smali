.class public final Landroidx/compose/animation/core/KeyframesSpec;
.super Ljava/lang/Object;
.source "AnimationSpec.kt"

# interfaces
.implements Landroidx/compose/animation/core/DurationBasedAnimationSpec;


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;,
        Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/compose/animation/core/DurationBasedAnimationSpec<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final config:Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/animation/core/KeyframesSpec;->config:Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroidx/compose/animation/core/KeyframesSpec;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/animation/core/KeyframesSpec;->config:Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/animation/core/KeyframesSpec;

    .line 8
    .line 9
    iget-object p1, p1, Landroidx/compose/animation/core/KeyframesSpec;->config:Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 10
    .line 11
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method

.method public final getConfig()Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/KeyframesSpec;->config:Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/KeyframesSpec;->config:Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedAnimationSpec;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/KeyframesSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedKeyframesSpec;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedDurationBasedAnimationSpec;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/KeyframesSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedKeyframesSpec;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedFiniteAnimationSpec;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/KeyframesSpec;->vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedKeyframesSpec;

    move-result-object p1

    return-object p1
.end method

.method public vectorize(Landroidx/compose/animation/core/TwoWayConverter;)Landroidx/compose/animation/core/VectorizedKeyframesSpec;
    .locals 5
    .param p1    # Landroidx/compose/animation/core/TwoWayConverter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroidx/compose/animation/core/AnimationVector;",
            ">(",
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "TT;TV;>;)",
            "Landroidx/compose/animation/core/VectorizedKeyframesSpec<",
            "TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "converter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Landroidx/compose/animation/core/KeyframesSpec;->config:Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    invoke-virtual {v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->getKeyframes$animation_core_release()Ljava/util/Map;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Lkotlin/collections/p0;->e(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    check-cast v2, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 10
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    invoke-interface {p1}, Landroidx/compose/animation/core/TwoWayConverter;->getConvertToVector()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->toPair$animation_core_release(Lkotlin/jvm/functions/Function1;)Lkotlin/Pair;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Landroidx/compose/animation/core/KeyframesSpec;->config:Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    invoke-virtual {p1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->getDurationMillis()I

    move-result p1

    iget-object v0, p0, Landroidx/compose/animation/core/KeyframesSpec;->config:Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    invoke-virtual {v0}, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->getDelayMillis()I

    move-result v0

    .line 12
    new-instance v2, Landroidx/compose/animation/core/VectorizedKeyframesSpec;

    invoke-direct {v2, v1, p1, v0}, Landroidx/compose/animation/core/VectorizedKeyframesSpec;-><init>(Ljava/util/Map;II)V

    return-object v2
.end method
