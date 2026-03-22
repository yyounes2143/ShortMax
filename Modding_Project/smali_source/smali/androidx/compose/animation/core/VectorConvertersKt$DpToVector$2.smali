.class final Landroidx/compose/animation/core/VectorConvertersKt$DpToVector$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VectorConverters.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/core/VectorConvertersKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/animation/core/AnimationVector1D;",
        "Landroidx/compose/ui/unit/Dp;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$DpToVector$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/animation/core/VectorConvertersKt$DpToVector$2;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/animation/core/VectorConvertersKt$DpToVector$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/animation/core/VectorConvertersKt$DpToVector$2;->INSTANCE:Landroidx/compose/animation/core/VectorConvertersKt$DpToVector$2;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/animation/core/AnimationVector1D;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/VectorConvertersKt$DpToVector$2;->invoke-u2uoSUM(Landroidx/compose/animation/core/AnimationVector1D;)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final invoke-u2uoSUM(Landroidx/compose/animation/core/AnimationVector1D;)F
    .locals 1
    .param p1    # Landroidx/compose/animation/core/AnimationVector1D;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroidx/compose/animation/core/AnimationVector1D;->getValue()F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method
