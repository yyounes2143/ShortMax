.class public final Landroidx/compose/animation/core/FloatDecayAnimationSpecKt;
.super Ljava/lang/Object;
.source "FloatDecayAnimationSpec.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final ExponentialDecayFriction:F = -4.2f


# direct methods
.method public static final createAnimation(Landroidx/compose/animation/core/FloatDecayAnimationSpec;FF)Landroidx/compose/animation/core/Animation;
    .locals 1
    .param p0    # Landroidx/compose/animation/core/FloatDecayAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FloatDecayAnimationSpec;",
            "FF)",
            "Landroidx/compose/animation/core/Animation<",
            "Ljava/lang/Float;",
            "Landroidx/compose/animation/core/AnimationVector1D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/AnimationKt;->DecayAnimation(Landroidx/compose/animation/core/FloatDecayAnimationSpec;FF)Landroidx/compose/animation/core/DecayAnimation;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic createAnimation$default(Landroidx/compose/animation/core/FloatDecayAnimationSpec;FFILjava/lang/Object;)Landroidx/compose/animation/core/Animation;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1, p2}, Landroidx/compose/animation/core/FloatDecayAnimationSpecKt;->createAnimation(Landroidx/compose/animation/core/FloatDecayAnimationSpec;FF)Landroidx/compose/animation/core/Animation;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
