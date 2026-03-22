.class final Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CoreTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/CoreTextFieldKt;->CoreTextField(Landroidx/compose/ui/text/input/TextFieldValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function1;Landroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/ui/graphics/Brush;ZILandroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/KeyboardActions;ZZLat/n;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/focus/FocusState;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

.field final synthetic $coroutineScope:Lgt/g0;

.field final synthetic $imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

.field final synthetic $manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

.field final synthetic $offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

.field final synthetic $state:Landroidx/compose/foundation/text/TextFieldState;

.field final synthetic $textInputService:Landroidx/compose/ui/text/input/TextInputService;

.field final synthetic $value:Landroidx/compose/ui/text/input/TextFieldValue;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Lgt/g0;Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/ui/text/input/OffsetMapping;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$textInputService:Landroidx/compose/ui/text/input/TextInputService;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$coroutineScope:Lgt/g0;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    .line 14
    .line 15
    iput-object p8, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/ui/focus/FocusState;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->invoke(Landroidx/compose/ui/focus/FocusState;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/ui/focus/FocusState;)V
    .locals 12
    .param p1    # Landroidx/compose/ui/focus/FocusState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->getHasFocus()Z

    move-result v0

    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->isFocused()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/foundation/text/TextFieldState;->setHasFocus(Z)V

    .line 4
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$textInputService:Landroidx/compose/ui/text/input/TextInputService;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    .line 6
    iget-object v2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    .line 7
    iget-object v3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$imeOptions:Landroidx/compose/ui/text/input/ImeOptions;

    .line 8
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/foundation/text/CoreTextFieldKt;->access$notifyTextInputServiceOnFocusChange(Landroidx/compose/ui/text/input/TextInputService;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/ui/text/input/ImeOptions;)V

    .line 9
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    invoke-virtual {v0}, Landroidx/compose/foundation/text/TextFieldState;->getLayoutResult()Landroidx/compose/foundation/text/TextLayoutResultProxy;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v0, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$coroutineScope:Lgt/g0;

    iget-object v2, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$bringIntoViewRequester:Landroidx/compose/foundation/relocation/BringIntoViewRequester;

    iget-object v3, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$value:Landroidx/compose/ui/text/input/TextFieldValue;

    iget-object v4, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$state:Landroidx/compose/foundation/text/TextFieldState;

    iget-object v6, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$offsetMapping:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 11
    new-instance v9, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1;

    const/4 v7, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1$1$1;-><init>(Landroidx/compose/foundation/relocation/BringIntoViewRequester;Landroidx/compose/ui/text/input/TextFieldValue;Landroidx/compose/foundation/text/TextFieldState;Landroidx/compose/foundation/text/TextLayoutResultProxy;Landroidx/compose/ui/text/input/OffsetMapping;Lrs/c;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 12
    :cond_1
    invoke-interface {p1}, Landroidx/compose/ui/focus/FocusState;->isFocused()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$focusModifier$1;->$manager:Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1}, Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;->deselect-_kEHs6E$foundation_release$default(Landroidx/compose/foundation/text/selection/TextFieldSelectionManager;Landroidx/compose/ui/geometry/Offset;ILjava/lang/Object;)V

    :cond_2
    return-void
.end method
