.class final Landroidx/compose/animation/core/EasingFunctionsKt$EaseInBounce$1;
.super Ljava/lang/Object;
.source "EasingFunctions.kt"

# interfaces
.implements Landroidx/compose/animation/core/Easing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/core/EasingFunctionsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseInBounce$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInBounce$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInBounce$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInBounce$1;->INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseInBounce$1;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final transform(F)F
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    int-to-float v0, v0

    .line 3
    invoke-static {}, Landroidx/compose/animation/core/EasingFunctionsKt;->getEaseOutBounce()Landroidx/compose/animation/core/Easing;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    .line 9
    sub-float/2addr v2, p1

    .line 10
    invoke-interface {v1, v2}, Landroidx/compose/animation/core/Easing;->transform(F)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    sub-float/2addr v0, p1

    .line 15
    return v0
.end method
