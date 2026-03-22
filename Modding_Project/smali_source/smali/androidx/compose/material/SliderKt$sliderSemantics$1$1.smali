.class final Landroidx/compose/material/SliderKt$sliderSemantics$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt$sliderSemantics$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Float;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $coerced:F

.field final synthetic $onValueChange:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $steps:I

.field final synthetic $tickFractions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $valueRange:Ldt/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ldt/b;ILjava/util/List;FLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;I",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;F",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$valueRange:Ldt/b;

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$steps:I

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$tickFractions:Ljava/util/List;

    .line 6
    .line 7
    iput p4, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$coerced:F

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$onValueChange:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final invoke(F)Ljava/lang/Boolean;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$valueRange:Ldt/b;

    invoke-interface {v0}, Ldt/c;->getStart()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iget-object v1, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$valueRange:Ldt/b;

    invoke-interface {v1}, Ldt/c;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {p1, v0, v1}, Lkotlin/ranges/e;->m(FFF)F

    move-result p1

    .line 3
    iget v0, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$steps:I

    if-lez v0, :cond_5

    .line 4
    iget-object v0, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$tickFractions:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 5
    iget-object v1, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$valueRange:Ldt/b;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 8
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    .line 9
    invoke-interface {v1}, Ldt/c;->getStart()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-interface {v1}, Ldt/c;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-static {v4, v5, v3}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(FFF)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_2

    .line 12
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    move-object v0, v1

    goto :goto_2

    .line 14
    :cond_2
    move-object v2, v1

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    sub-float/2addr v2, p1

    .line 15
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 16
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 17
    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    sub-float/2addr v4, p1

    .line 18
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 19
    invoke-static {v2, v4}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-lez v5, :cond_4

    move-object v1, v3

    move v2, v4

    .line 20
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 21
    :goto_2
    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 22
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 23
    :cond_5
    iget v0, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$coerced:F

    cmpg-float v0, p1, v0

    if-nez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_3

    .line 24
    :cond_6
    iget-object v0, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->$onValueChange:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    .line 25
    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;->invoke(F)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
