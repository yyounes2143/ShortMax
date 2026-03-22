.class public final Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;
.super Ljava/lang/Object;
.source "AnimationSpec.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/core/KeyframesSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KeyframesSpecConfig"
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


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private delayMillis:I

.field private durationMillis:I

.field private final keyframes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity<",
            "TT;>;>;"
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

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x12c

    .line 5
    .line 6
    iput v0, p0, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->durationMillis:I

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->keyframes:Ljava/util/Map;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final at(Ljava/lang/Object;I)Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x2

    .line 5
    invoke-direct {v0, p1, v1, v2, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/Easing;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iget-object p2, p0, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->keyframes:Ljava/util/Map;

    .line 13
    .line 14
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->delayMillis:I

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;

    .line 8
    .line 9
    iget v1, p1, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->delayMillis:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget v0, p0, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->durationMillis:I

    .line 14
    .line 15
    iget v1, p1, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->durationMillis:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->keyframes:Ljava/util/Map;

    .line 20
    .line 21
    iget-object p1, p1, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->keyframes:Ljava/util/Map;

    .line 22
    .line 23
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    return p1
.end method

.method public final getDelayMillis()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->delayMillis:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDurationMillis()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->durationMillis:I

    .line 2
    .line 3
    return v0
.end method

.method public final getKeyframes$animation_core_release()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity<",
            "TT;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->keyframes:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->durationMillis:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->delayMillis:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->keyframes:Ljava/util/Map;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    add-int/2addr v0, v1

    .line 17
    return v0
.end method

.method public final setDelayMillis(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->delayMillis:I

    .line 2
    .line 3
    return-void
.end method

.method public final setDurationMillis(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/animation/core/KeyframesSpec$KeyframesSpecConfig;->durationMillis:I

    .line 2
    .line 3
    return-void
.end method

.method public final with(Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;Landroidx/compose/animation/core/Easing;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/core/Easing;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity<",
            "TT;>;",
            "Landroidx/compose/animation/core/Easing;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "easing"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity;->setEasing$animation_core_release(Landroidx/compose/animation/core/Easing;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
