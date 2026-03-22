.class final Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CoreTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

.field final synthetic $cursorModifier:Landroidx/compose/ui/Modifier;

.field final synthetic $drawModifier:Landroidx/compose/ui/Modifier;

.field final synthetic $magnifierModifier:Landroidx/compose/ui/Modifier;

.field final synthetic $manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field final synthetic $maxLines:I

.field final synthetic $onPositionedModifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onTextLayout:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $readOnly:Z

.field final synthetic $scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

.field final synthetic $showHandleAndMagnifier:Z

.field final synthetic $state:Landroidx/compose/foundation/text/TextFieldState;

.field final synthetic $textStyle:Landroidx/compose/ui/text/TextStyle;

.field final synthetic $value:Landroidx/compose/ui/text/input/TextFieldValue;

.field final synthetic $visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;


# direct methods
.method constructor <init>(ILandroidx/compose/ui/text/TextStyle;Landroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;ZZLkotlin/jvm/functions/Function1;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/text/TextStyle;",
            "Landroidx/compose/foundation/text/TextFieldScrollerPosition;",
            "Landroidx/compose/ui/text/input/TextFieldValue;",
            "Landroidx/compose/ui/text/input/VisualTransformation;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/foundation/relocation/BringIntoViewRequester;",
            "Landroidx/compose/foundation/text/TextFieldState;",
            "Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;",
            "ZZ",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move v1, p1

    .line 3
    iput v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$maxLines:I

    .line 4
    .line 5
    move-object v1, p2

    .line 6
    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    .line 7
    .line 8
    move-object v1, p3

    .line 9
    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 10
    .line 11
    move-object v1, p4

    .line 12
    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 13
    .line 14
    move-object v1, p5

    .line 15
    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 16
    .line 17
    move-object v1, p6

    .line 18
    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$cursorModifier:Landroidx/compose/ui/Modifier;

    .line 19
    .line 20
    move-object v1, p7

    .line 21
    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$drawModifier:Landroidx/compose/ui/Modifier;

    .line 22
    .line 23
    move-object v1, p8

    .line 24
    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$onPositionedModifier:Landroidx/compose/ui/Modifier;

    .line 25
    .line 26
    move-object v1, p9

    .line 27
    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$magnifierModifier:Landroidx/compose/ui/Modifier;

    .line 28
    .line 29
    move-object v1, p10

    .line 30
    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 31
    .line 32
    move-object v1, p11

    .line 33
    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 34
    .line 35
    move-object v1, p12

    .line 36
    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 37
    .line 38
    move v1, p13

    .line 39
    iput-boolean v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$showHandleAndMagnifier:Z

    .line 40
    .line 41
    move/from16 v1, p14

    .line 42
    .line 43
    iput-boolean v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$readOnly:Z

    .line 44
    .line 45
    move-object/from16 v1, p15

    .line 46
    .line 47
    iput-object v1, v0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$onTextLayout:Lkotlin/jvm/functions/Function1;

    .line 48
    .line 49
    const/4 v1, 0x2

    .line 50
    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 7
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    and-int/lit8 p2, p2, 0xb

    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 5
    iget v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$maxLines:I

    iget-object v1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    invoke-static {p2, v0, v1}, Landroidx/compose/foundation/text/MaxLinesHeightModifierKt;->maxLinesHeight(Landroidx/compose/ui/Modifier;ILandroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$scrollerPosition:Landroidx/compose/foundation/text/TextFieldScrollerPosition;

    .line 7
    iget-object v1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 8
    iget-object v2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$visualTransformation:Landroidx/compose/ui/text/input/VisualTransformation;

    .line 9
    new-instance v3, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$coreTextFieldModifier$1;

    iget-object v4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    invoke-direct {v3, v4}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$coreTextFieldModifier$1;-><init>(Landroidx/compose/foundation/text/TextFieldState;)V

    invoke-static {p2, v0, v1, v2, v3}, Landroidx/compose/foundation/text/TextFieldScrollKt;->textFieldScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/text/TextFieldScrollerPosition;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    .line 10
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$cursorModifier:Landroidx/compose/ui/Modifier;

    invoke-interface {p2, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    .line 11
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$drawModifier:Landroidx/compose/ui/Modifier;

    invoke-interface {p2, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    .line 12
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$textStyle:Landroidx/compose/ui/text/TextStyle;

    invoke-static {p2, v0}, Landroidx/compose/foundation/text/TextFieldSizeKt;->textFieldMinSize(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    .line 13
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$onPositionedModifier:Landroidx/compose/ui/Modifier;

    invoke-interface {p2, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    .line 14
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$magnifierModifier:Landroidx/compose/ui/Modifier;

    invoke-interface {p2, v0}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    .line 15
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    invoke-static {p2, v0}, Landroidx/compose/foundation/relocation/BringIntoViewRequesterKt;->bringIntoViewRequester(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewRequester;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    .line 16
    new-instance v6, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;

    iget-object v1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    iget-object v2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    iget-boolean v3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$showHandleAndMagnifier:Z

    iget-boolean v4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$readOnly:Z

    iget-object v5, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1;->$onTextLayout:Lkotlin/jvm/functions/Function1;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$5$1$1;-><init>(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/foundation/text/TextFieldState;ZZLkotlin/jvm/functions/Function1;)V

    const v0, 0x12ac514

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v6}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v1, 0x30

    const/4 v2, 0x0

    invoke-static {p2, v0, p1, v1, v2}, Landroidx/compose/foundation/text/selection/SimpleLayoutKt;->SimpleLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    return-void
.end method
