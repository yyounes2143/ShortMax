.class public final Lcom/facebook/fresco/animation/drawable/animator/AnimatedDrawableValueAnimatorHelper;
.super Ljava/lang/Object;
.source "AnimatedDrawableValueAnimatorHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/fresco/animation/drawable/animator/AnimatedDrawableValueAnimatorHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/fresco/animation/drawable/animator/AnimatedDrawableValueAnimatorHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/fresco/animation/drawable/animator/AnimatedDrawableValueAnimatorHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/fresco/animation/drawable/animator/AnimatedDrawableValueAnimatorHelper;->INSTANCE:Lcom/facebook/fresco/animation/drawable/animator/AnimatedDrawableValueAnimatorHelper;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final createAnimatorUpdateListener(Landroid/graphics/drawable/Drawable;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/facebook/fresco/animation/drawable/animator/AnimatedDrawable2ValueAnimatorHelper;->createAnimatorUpdateListener(Landroid/graphics/drawable/Drawable;)Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
.end method

.method public static final createValueAnimator(Landroid/graphics/drawable/Drawable;)Landroid/animation/ValueAnimator;
    .locals 4
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 4
    instance-of v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    if-eqz v0, :cond_0

    .line 5
    move-object v0, p0

    check-cast v0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->getLoopCount()I

    move-result v1

    invoke-virtual {v0}, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;->getLoopDurationMs()J

    move-result-wide v2

    .line 6
    invoke-static {p0, v1, v2, v3}, Lcom/facebook/fresco/animation/drawable/animator/AnimatedDrawable2ValueAnimatorHelper;->createValueAnimator(Landroid/graphics/drawable/Drawable;IJ)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final createValueAnimator(Landroid/graphics/drawable/Drawable;I)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;

    .line 3
    invoke-static {p0, p1}, Lcom/facebook/fresco/animation/drawable/animator/AnimatedDrawable2ValueAnimatorHelper;->createValueAnimator(Lcom/facebook/fresco/animation/drawable/AnimatedDrawable2;I)Landroid/animation/ValueAnimator;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
