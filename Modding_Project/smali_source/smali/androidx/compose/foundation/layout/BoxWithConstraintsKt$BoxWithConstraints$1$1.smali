.class final Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BoxWithConstraints.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLat/n;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/ui/layout/SubcomposeMeasureScope;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $content:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Landroidx/compose/foundation/layout/BoxWithConstraintsScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;


# direct methods
.method constructor <init>(Landroidx/compose/ui/layout/MeasurePolicy;Lat/n;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasurePolicy;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/BoxWithConstraintsScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;->$measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;->$content:Lat/n;

    .line 4
    .line 5
    iput p3, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;->$$dirty:I

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/ui/layout/SubcomposeMeasureScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/ui/unit/Constraints;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-virtual {p0, p1, v0, v1}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;->invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final invoke-0kLqBqw(Landroidx/compose/ui/layout/SubcomposeMeasureScope;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 5
    .param p1    # Landroidx/compose/ui/layout/SubcomposeMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$SubcomposeLayout"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-direct {v0, p1, p2, p3, v1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;-><init>(Landroidx/compose/ui/unit/Density;JLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    new-instance v2, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1$measurables$1;

    .line 15
    .line 16
    iget-object v3, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;->$content:Lat/n;

    .line 17
    .line 18
    iget v4, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;->$$dirty:I

    .line 19
    .line 20
    invoke-direct {v2, v3, v0, v4}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1$measurables$1;-><init>(Lat/n;Landroidx/compose/foundation/layout/BoxWithConstraintsScopeImpl;I)V

    .line 21
    .line 22
    .line 23
    const v0, -0x73eea2c7

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x1

    .line 27
    invoke-static {v0, v3, v2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {p1, v1, v0}, Landroidx/compose/ui/layout/SubcomposeMeasureScope;->subcompose(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iget-object v1, p0, Landroidx/compose/foundation/layout/BoxWithConstraintsKt$BoxWithConstraints$1$1;->$measurePolicy:Landroidx/compose/ui/layout/MeasurePolicy;

    .line 36
    .line 37
    invoke-interface {v1, p1, v0, p2, p3}, Landroidx/compose/ui/layout/MeasurePolicy;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1
.end method
