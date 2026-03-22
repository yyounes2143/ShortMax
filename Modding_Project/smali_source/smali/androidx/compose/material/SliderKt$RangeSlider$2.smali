.class final Landroidx/compose/material/SliderKt$RangeSlider$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Slider.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SliderKt;->RangeSlider(Ldt/b;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;ZLdt/b;ILkotlin/jvm/functions/Function0;Landroidx/compose/material/SliderColors;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lat/n<",
        "Landroidx/compose/foundation/layout/BoxWithConstraintsScope;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $colors:Landroidx/compose/material/SliderColors;

.field final synthetic $enabled:Z

.field final synthetic $endInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $onValueChangeFinished:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $onValueChangeState:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Lkotlin/jvm/functions/Function1<",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/Unit;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic $startInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

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

.field final synthetic $values:Ldt/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ldt/b;Ldt/b;ILandroidx/compose/runtime/State;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;ZLjava/util/List;ILandroidx/compose/material/SliderColors;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;I",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/Unit;",
            ">;>;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;I",
            "Landroidx/compose/material/SliderColors;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Ldt/b;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Ldt/b;

    .line 4
    .line 5
    iput p3, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$$dirty:I

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/State;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$startInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$endInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 12
    .line 13
    iput-boolean p7, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$enabled:Z

    .line 14
    .line 15
    iput-object p8, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$tickFractions:Ljava/util/List;

    .line 16
    .line 17
    iput p9, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$steps:I

    .line 18
    .line 19
    iput-object p10, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$colors:Landroidx/compose/material/SliderColors;

    .line 20
    .line 21
    iput-object p11, p0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    .line 22
    .line 23
    const/4 p1, 0x3

    .line 24
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static final synthetic access$invoke$scaleToOffset(Ldt/b;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SliderKt$RangeSlider$2;->invoke$scaleToOffset(Ldt/b;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$invoke$scaleToUserValue(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Ldt/b;Ldt/b;)Ldt/b;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/material/SliderKt$RangeSlider$2;->invoke$scaleToUserValue(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Ldt/b;Ldt/b;)Ldt/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final invoke$scaleToOffset(Ldt/b;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "F)F"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ldt/c;->getStart()Ljava/lang/Comparable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-interface {p0}, Ldt/c;->getEndInclusive()Ljava/lang/Comparable;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    iget p1, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 22
    .line 23
    iget p2, p2, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 24
    .line 25
    invoke-static {v0, p0, p3, p1, p2}, Landroidx/compose/material/SliderKt;->access$scale(FFFFF)F

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    return p0
.end method

.method private static final invoke$scaleToUserValue(Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Ldt/b;Ldt/b;)Ldt/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Lkotlin/jvm/internal/Ref$FloatRef;",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;)",
            "Ldt/b<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget p0, p0, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 2
    .line 3
    iget p1, p1, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 4
    .line 5
    invoke-interface {p2}, Ldt/c;->getStart()Ljava/lang/Comparable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-interface {p2}, Ldt/c;->getEndInclusive()Ljava/lang/Comparable;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    check-cast p2, Ljava/lang/Number;

    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    invoke-static {p0, p1, p3, v0, p2}, Landroidx/compose/material/SliderKt;->access$scale(FFLdt/b;FF)Ldt/b;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/SliderKt$RangeSlider$2;->invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
    .locals 31
    .param p1    # Landroidx/compose/foundation/layout/BoxWithConstraintsScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    const/4 v8, 0x1

    const-string v2, "$this$BoxWithConstraints"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v2, p3, 0xe

    const/4 v3, 0x2

    if-nez v2, :cond_1

    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    or-int v2, p3, v2

    goto :goto_1

    :cond_1
    move/from16 v2, p3

    :goto_1
    and-int/lit8 v2, v2, 0x5b

    const/16 v4, 0x12

    if-ne v2, v4, :cond_3

    .line 2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_5

    .line 4
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 5
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    .line 6
    sget-object v4, Landroidx/compose/ui/unit/LayoutDirection;->Rtl:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v9, 0x0

    if-ne v2, v4, :cond_4

    move/from16 v19, v8

    goto :goto_3

    :cond_4
    move/from16 v19, v9

    .line 7
    :goto_3
    invoke-interface/range {p1 .. p1}, Landroidx/compose/foundation/layout/BoxWithConstraintsScope;->getConstraints-msEJaDk()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    int-to-float v10, v1

    .line 8
    new-instance v11, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 9
    new-instance v15, Lkotlin/jvm/internal/Ref$FloatRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 10
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v1

    .line 11
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v1

    .line 12
    check-cast v1, Landroidx/compose/ui/unit/Density;

    .line 13
    invoke-static {}, Landroidx/compose/material/SliderKt;->getThumbRadius()F

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v2

    sub-float v2, v10, v2

    iput v2, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 14
    invoke-static {}, Landroidx/compose/material/SliderKt;->getThumbRadius()F

    move-result v2

    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    iput v1, v15, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 15
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    iget-object v1, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Ldt/b;

    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Ldt/b;

    const v13, -0x1d58f75c

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 17
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 18
    sget-object v14, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_5

    .line 19
    invoke-interface {v1}, Ldt/c;->getStart()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v2, v15, v11, v1}, Landroidx/compose/material/SliderKt$RangeSlider$2;->invoke$scaleToOffset(Ldt/b;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1, v6, v3, v6}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    .line 20
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 21
    :cond_5
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 22
    move-object/from16 v16, v4

    check-cast v16, Landroidx/compose/runtime/MutableState;

    .line 23
    iget-object v1, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Ldt/b;

    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Ldt/b;

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 24
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 25
    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_6

    .line 26
    invoke-interface {v1}, Ldt/c;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v2, v15, v11, v1}, Landroidx/compose/material/SliderKt$RangeSlider$2;->invoke$scaleToOffset(Ldt/b;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1, v6, v3, v6}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v4

    .line 27
    invoke-interface {v12, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 28
    :cond_6
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 29
    move-object/from16 v17, v4

    check-cast v17, Landroidx/compose/runtime/MutableState;

    .line 30
    new-instance v1, Landroidx/compose/material/SliderKt$RangeSlider$2$2;

    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Ldt/b;

    invoke-direct {v1, v2, v15, v11}, Landroidx/compose/material/SliderKt$RangeSlider$2$2;-><init>(Ldt/b;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;)V

    .line 31
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Ldt/b;

    .line 32
    iget v3, v15, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v4, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v3, v4}, Lkotlin/ranges/e;->b(FF)Ldt/b;

    move-result-object v3

    .line 33
    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Ldt/b;

    invoke-interface {v4}, Ldt/c;->getStart()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v5

    iget v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$$dirty:I

    shr-int/lit8 v4, v4, 0x9

    and-int/lit8 v4, v4, 0x70

    or-int/lit16 v7, v4, 0xc00

    move-object/from16 v4, v16

    move-object/from16 v6, p2

    .line 34
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/SliderKt;->access$CorrectValueSideEffect(Lkotlin/jvm/functions/Function1;Ldt/b;Ldt/b;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/Composer;I)V

    .line 35
    new-instance v1, Landroidx/compose/material/SliderKt$RangeSlider$2$3;

    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Ldt/b;

    invoke-direct {v1, v2, v15, v11}, Landroidx/compose/material/SliderKt$RangeSlider$2$3;-><init>(Ldt/b;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;)V

    .line 36
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Ldt/b;

    .line 37
    iget v3, v15, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    iget v4, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v3, v4}, Lkotlin/ranges/e;->b(FF)Ldt/b;

    move-result-object v3

    .line 38
    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Ldt/b;

    invoke-interface {v4}, Ldt/c;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v5

    iget v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$$dirty:I

    shr-int/lit8 v4, v4, 0x9

    and-int/lit8 v4, v4, 0x70

    or-int/lit16 v7, v4, 0xc00

    move-object/from16 v4, v17

    .line 39
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/SliderKt;->access$CorrectValueSideEffect(Lkotlin/jvm/functions/Function1;Ldt/b;Ldt/b;Landroidx/compose/runtime/MutableState;FLandroidx/compose/runtime/Composer;I)V

    const v1, 0x2e20b340

    .line 40
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 41
    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 42
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 43
    invoke-virtual {v14}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_7

    .line 44
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    invoke-static {v1, v12}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lgt/g0;

    move-result-object v1

    .line 45
    new-instance v2, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v2, v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lgt/g0;)V

    .line 46
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v2

    .line 47
    :cond_7
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 48
    check-cast v1, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 49
    invoke-virtual {v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lgt/g0;

    move-result-object v27

    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 50
    new-instance v1, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;

    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$tickFractions:Ljava/util/List;

    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeFinished:Lkotlin/jvm/functions/Function0;

    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/State;

    iget-object v5, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Ldt/b;

    move-object/from16 v20, v1

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v23, v2

    move-object/from16 v24, v15

    move-object/from16 v25, v11

    move-object/from16 v26, v3

    move-object/from16 v28, v4

    move-object/from16 v29, v5

    invoke-direct/range {v20 .. v29}, Landroidx/compose/material/SliderKt$RangeSlider$2$gestureEndAction$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ljava/util/List;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/functions/Function0;Lgt/g0;Landroidx/compose/runtime/State;Ldt/b;)V

    invoke-static {v1, v12, v9}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v1

    .line 51
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Ldt/b;

    iget v3, v15, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v23

    iget v3, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Ldt/b;

    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/State;

    move-object/from16 v20, v16

    move-object/from16 v21, v17

    move-object/from16 v22, v2

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    filled-new-array/range {v20 .. v26}, [Ljava/lang/Object;

    move-result-object v2

    iget-object v5, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Ldt/b;

    const v6, -0x21de6e89

    invoke-interface {v12, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move v6, v9

    move v7, v6

    :goto_4
    const/4 v13, 0x7

    if-ge v6, v13, :cond_8

    .line 52
    aget-object v13, v2, v6

    invoke-interface {v12, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    or-int/2addr v7, v13

    add-int/2addr v6, v8

    goto :goto_4

    .line 53
    :cond_8
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v7, :cond_9

    .line 54
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v2, v6, :cond_a

    .line 55
    :cond_9
    new-instance v2, Landroidx/compose/material/SliderKt$RangeSlider$2$onDrag$1$1;

    move-object/from16 v20, v2

    move-object/from16 v21, v16

    move-object/from16 v22, v17

    move-object/from16 v23, v3

    move-object/from16 v24, v15

    move-object/from16 v25, v11

    move-object/from16 v26, v4

    move-object/from16 v27, v5

    invoke-direct/range {v20 .. v27}, Landroidx/compose/material/SliderKt$RangeSlider$2$onDrag$1$1;-><init>(Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;Ldt/b;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;Landroidx/compose/runtime/State;Ldt/b;)V

    .line 56
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 57
    :cond_a
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 58
    invoke-static {v2, v12, v9}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    move-result-object v23

    .line 59
    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 60
    iget-object v14, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$startInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 61
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$endInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 62
    iget-boolean v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$enabled:Z

    .line 63
    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Ldt/b;

    move-object v13, v9

    move-object v8, v15

    move-object v15, v2

    move/from16 v18, v3

    move/from16 v20, v10

    move-object/from16 v21, v4

    move-object/from16 v22, v1

    .line 64
    invoke-static/range {v13 .. v23}, Landroidx/compose/material/SliderKt;->access$rangeSliderPressDragModifier(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;ZZFLdt/b;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    .line 65
    iget-object v1, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Ldt/b;

    invoke-interface {v1}, Ldt/c;->getStart()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Ldt/b;

    invoke-interface {v2}, Ldt/c;->getStart()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Ldt/b;

    invoke-interface {v3}, Ldt/c;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v1, v2, v3}, Lkotlin/ranges/e;->m(FFF)F

    move-result v1

    .line 66
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Ldt/b;

    invoke-interface {v2}, Ldt/c;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$values:Ldt/b;

    invoke-interface {v3}, Ldt/c;->getStart()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Ldt/b;

    invoke-interface {v4}, Ldt/c;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    invoke-static {v2, v3, v4}, Lkotlin/ranges/e;->m(FFF)F

    move-result v13

    .line 67
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Ldt/b;

    invoke-interface {v2}, Ldt/c;->getStart()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Ldt/b;

    invoke-interface {v3}, Ldt/c;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v2, v3, v1}, Landroidx/compose/material/SliderKt;->access$calcFraction(FFF)F

    move-result v14

    .line 68
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Ldt/b;

    invoke-interface {v2}, Ldt/c;->getStart()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iget-object v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Ldt/b;

    invoke-interface {v3}, Ldt/c;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-static {v2, v3, v13}, Landroidx/compose/material/SliderKt;->access$calcFraction(FFF)F

    move-result v15

    .line 69
    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$tickFractions:Ljava/util/List;

    .line 70
    iget-boolean v5, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$enabled:Z

    .line 71
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/State;

    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v6, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/State;

    const v7, 0x1e7b2b64

    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 72
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 73
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_b

    .line 74
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_c

    .line 75
    :cond_b
    new-instance v3, Landroidx/compose/material/SliderKt$RangeSlider$2$startThumbSemantics$1$1;

    invoke-direct {v3, v6, v13}, Landroidx/compose/material/SliderKt$RangeSlider$2$startThumbSemantics$1$1;-><init>(Landroidx/compose/runtime/State;F)V

    .line 76
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 77
    :cond_c
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 78
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Ldt/b;

    invoke-interface {v2}, Ldt/c;->getStart()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v2, v13}, Lkotlin/ranges/e;->b(FF)Ldt/b;

    move-result-object v16

    .line 79
    iget v3, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$steps:I

    move-object v2, v9

    move/from16 v17, v3

    move v3, v1

    move-object/from16 p1, v10

    move v10, v7

    move-object/from16 v7, v16

    move-object/from16 v30, v8

    move/from16 v8, v17

    .line 80
    invoke-static/range {v2 .. v8}, Landroidx/compose/material/SliderKt;->access$sliderSemantics(Landroidx/compose/ui/Modifier;FLjava/util/List;ZLkotlin/jvm/functions/Function1;Ldt/b;I)Landroidx/compose/ui/Modifier;

    move-result-object v16

    .line 81
    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$tickFractions:Ljava/util/List;

    .line 82
    iget-boolean v5, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$enabled:Z

    .line 83
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/State;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v6, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$onValueChangeState:Landroidx/compose/runtime/State;

    invoke-interface {v12, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 84
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 85
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v2, :cond_d

    .line 86
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v3, v2, :cond_e

    .line 87
    :cond_d
    new-instance v3, Landroidx/compose/material/SliderKt$RangeSlider$2$endThumbSemantics$1$1;

    invoke-direct {v3, v6, v1}, Landroidx/compose/material/SliderKt$RangeSlider$2$endThumbSemantics$1$1;-><init>(Landroidx/compose/runtime/State;F)V

    .line 88
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 89
    :cond_e
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    move-object v6, v3

    check-cast v6, Lkotlin/jvm/functions/Function1;

    .line 90
    iget-object v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$valueRange:Ldt/b;

    invoke-interface {v2}, Ldt/c;->getEndInclusive()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lkotlin/ranges/e;->b(FF)Ldt/b;

    move-result-object v7

    .line 91
    iget v8, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$steps:I

    move-object v2, v9

    move v3, v13

    .line 92
    invoke-static/range {v2 .. v8}, Landroidx/compose/material/SliderKt;->access$sliderSemantics(Landroidx/compose/ui/Modifier;FLjava/util/List;ZLkotlin/jvm/functions/Function1;Ldt/b;I)Landroidx/compose/ui/Modifier;

    move-result-object v13

    .line 93
    iget-boolean v1, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$enabled:Z

    .line 94
    iget-object v4, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$tickFractions:Ljava/util/List;

    .line 95
    iget-object v5, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$colors:Landroidx/compose/material/SliderColors;

    .line 96
    iget v2, v11, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    move-object/from16 v3, v30

    iget v3, v3, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    sub-float v6, v2, v3

    .line 97
    iget-object v7, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$startInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 98
    iget-object v8, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$endInteractionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 99
    iget v2, v0, Landroidx/compose/material/SliderKt$RangeSlider$2;->$$dirty:I

    shr-int/lit8 v3, v2, 0x9

    and-int/lit8 v3, v3, 0xe

    const v9, 0xd81000

    or-int/2addr v3, v9

    const v9, 0xe000

    shr-int/lit8 v2, v2, 0x9

    and-int/2addr v2, v9

    or-int v17, v3, v2

    const/16 v18, 0x0

    move v2, v14

    move v3, v15

    move-object/from16 v9, p1

    move-object/from16 v10, v16

    move-object v11, v13

    move-object/from16 v12, p2

    move/from16 v13, v17

    move/from16 v14, v18

    .line 100
    invoke-static/range {v1 .. v14}, Landroidx/compose/material/SliderKt;->access$RangeSliderImpl(ZFFLjava/util/List;Landroidx/compose/material/SliderColors;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;II)V

    :goto_5
    return-void
.end method
