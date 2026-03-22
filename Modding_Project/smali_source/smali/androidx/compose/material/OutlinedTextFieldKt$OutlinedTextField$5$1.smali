.class final Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$5$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OutlinedTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$5;->invoke(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $$dirty:I

.field final synthetic $$dirty1:I

.field final synthetic $colors:Landroidx/compose/material/TextFieldColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $isError:Z

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method constructor <init>(ZZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/TextFieldColors;Landroidx/compose/ui/graphics/Shape;II)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$5$1;->$enabled:Z

    .line 2
    .line 3
    iput-boolean p2, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$5$1;->$isError:Z

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$5$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$5$1;->$colors:Landroidx/compose/material/TextFieldColors;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$5$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    .line 10
    .line 11
    iput p6, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$5$1;->$$dirty:I

    .line 12
    .line 13
    iput p7, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$5$1;->$$dirty1:I

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 17
    .line 18
    .line 19
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$5$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 11
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
    sget-object v0, Landroidx/compose/material/TextFieldDefaults;->INSTANCE:Landroidx/compose/material/TextFieldDefaults;

    .line 5
    iget-boolean v1, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$5$1;->$enabled:Z

    .line 6
    iget-boolean v2, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$5$1;->$isError:Z

    .line 7
    iget-object v3, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$5$1;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 8
    iget-object v4, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$5$1;->$colors:Landroidx/compose/material/TextFieldColors;

    .line 9
    iget-object v5, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$5$1;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget p2, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$5$1;->$$dirty:I

    shr-int/lit8 p2, p2, 0x9

    and-int/lit8 p2, p2, 0xe

    const/high16 v6, 0xc00000

    or-int/2addr p2, v6

    iget v6, p0, Landroidx/compose/material/OutlinedTextFieldKt$OutlinedTextField$5$1;->$$dirty1:I

    shl-int/lit8 v7, v6, 0x3

    and-int/lit8 v7, v7, 0x70

    or-int/2addr p2, v7

    shr-int/lit8 v7, v6, 0xc

    and-int/lit16 v7, v7, 0x380

    or-int/2addr p2, v7

    shr-int/lit8 v7, v6, 0xf

    and-int/lit16 v7, v7, 0x1c00

    or-int/2addr p2, v7

    const v7, 0xe000

    shr-int/lit8 v6, v6, 0x9

    and-int/2addr v6, v7

    or-int v9, p2, v6

    const/16 v10, 0x60

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, p1

    .line 10
    invoke-virtual/range {v0 .. v10}, Landroidx/compose/material/TextFieldDefaults;->BorderBox-nbWgWpA(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFLandroidx/compose/runtime/Composer;II)V

    :goto_1
    return-void
.end method
