.class final Landroidx/compose/material/SliderKt$sliderSemantics$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt;->sliderSemantics(Landroidx/compose/ui/Modifier;FLjava/util/List;ZLkotlin/jvm/functions/Function1;Ldt/b;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $coerced:F

.field final synthetic $enabled:Z

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
.method constructor <init>(ZLdt/b;ILjava/util/List;FLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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
    iput-boolean p1, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1;->$enabled:Z

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1;->$valueRange:Ldt/b;

    .line 4
    .line 5
    iput p3, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1;->$steps:I

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1;->$tickFractions:Ljava/util/List;

    .line 8
    .line 9
    iput p5, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1;->$coerced:F

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1;->$onValueChange:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p0, p1}, Landroidx/compose/material/SliderKt$sliderSemantics$1;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 7
    .param p1    # Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "$this$semantics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-boolean v0, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1;->$enabled:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->disabled(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    .line 3
    :cond_0
    new-instance v0, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;

    iget-object v2, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1;->$valueRange:Ldt/b;

    iget v3, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1;->$steps:I

    iget-object v4, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1;->$tickFractions:Ljava/util/List;

    iget v5, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1;->$coerced:F

    iget-object v6, p0, Landroidx/compose/material/SliderKt$sliderSemantics$1;->$onValueChange:Lkotlin/jvm/functions/Function1;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/material/SliderKt$sliderSemantics$1$1;-><init>(Ldt/b;ILjava/util/List;FLkotlin/jvm/functions/Function1;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1, v2}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setProgress$default(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
