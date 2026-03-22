.class final Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldDefaults.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TextFieldDefaults;->OutlinedTextFieldDecorationBox(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ZZLandroidx/compose/ui/text/input/VisualTransformation;Landroidx/compose/foundation/interaction/InteractionSource;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/material/TextFieldColors;Landroidx/compose/foundation/layout/PaddingValues;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
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

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field final synthetic $isError:Z


# direct methods
.method constructor <init>(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;II)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$enabled:Z

    .line 2
    .line 3
    iput-boolean p2, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$isError:Z

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$colors:Landroidx/compose/material/TextFieldColors;

    .line 8
    .line 9
    iput p5, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$$dirty:I

    .line 10
    .line 11
    iput p6, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$$dirty1:I

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 15
    .line 16
    .line 17
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->invoke(Landroidx/compose/runtime/Composer;I)V

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

    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Landroidx/compose/material/TextFieldDefaults;->INSTANCE:Landroidx/compose/material/TextFieldDefaults;

    iget-boolean v1, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$enabled:Z

    iget-boolean v2, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$isError:Z

    iget-object v3, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    iget-object v4, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$colors:Landroidx/compose/material/TextFieldColors;

    iget p2, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$$dirty:I

    shr-int/lit8 v5, p2, 0x6

    and-int/lit8 v5, v5, 0xe

    const/high16 v6, 0xc00000

    or-int/2addr v5, v6

    shr-int/lit8 v6, p2, 0xf

    and-int/lit8 v6, v6, 0x70

    or-int/2addr v5, v6

    shr-int/lit8 p2, p2, 0x9

    and-int/lit16 p2, p2, 0x380

    or-int/2addr p2, v5

    iget v5, p0, Landroidx/compose/material/TextFieldDefaults$OutlinedTextFieldDecorationBox$1;->$$dirty1:I

    shl-int/lit8 v5, v5, 0x6

    and-int/lit16 v5, v5, 0x1c00

    or-int v9, p2, v5

    const/16 v10, 0x70

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v8, p1

    invoke-virtual/range {v0 .. v10}, Landroidx/compose/material/TextFieldDefaults;->BorderBox-nbWgWpA(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/TextFieldColors;Landroidx/compose/ui/graphics/Shape;FFLandroidx/compose/runtime/Composer;II)V

    :goto_1
    return-void
.end method
