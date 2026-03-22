.class final Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Menu.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/MenuKt;->DropdownMenuItemContent(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/foundation/interaction/MutableInteractionSource;Lat/n;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $$dirty$1:I

.field final synthetic $content:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $enabled:Z

.field final synthetic $this_Row:Landroidx/compose/foundation/layout/RowScope;


# direct methods
.method constructor <init>(ZLat/n;Landroidx/compose/foundation/layout/RowScope;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/layout/RowScope;",
            "II)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$enabled:Z

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$content:Lat/n;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$this_Row:Landroidx/compose/foundation/layout/RowScope;

    .line 6
    .line 7
    iput p4, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$$dirty:I

    .line 8
    .line 9
    iput p5, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$$dirty$1:I

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 13
    .line 14
    .line 15
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 5
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

    goto :goto_3

    .line 4
    :cond_1
    :goto_0
    iget-boolean p2, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$enabled:Z

    const/4 v0, 0x6

    if-eqz p2, :cond_2

    const p2, -0x73f8f435

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    sget-object p2, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/ContentAlpha;->getHigh(Landroidx/compose/runtime/Composer;I)F

    move-result p2

    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    goto :goto_2

    :cond_2
    const p2, -0x73f8f41e

    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    sget-object p2, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    move-result p2

    goto :goto_1

    .line 5
    :goto_2
    invoke-static {}, Landroidx/compose/material/ContentAlphaKt;->getLocalContentAlpha()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/compose/runtime/ProvidableCompositionLocal;->provides(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object p2

    filled-new-array {p2}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object p2

    new-instance v0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1$1;

    iget-object v1, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$content:Lat/n;

    iget-object v2, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$this_Row:Landroidx/compose/foundation/layout/RowScope;

    iget v3, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$$dirty:I

    iget v4, p0, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1;->$$dirty$1:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/compose/material/MenuKt$DropdownMenuItemContent$2$1$1;-><init>(Lat/n;Landroidx/compose/foundation/layout/RowScope;II)V

    const v1, -0x65af6da8

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v1, 0x38

    invoke-static {p2, v0, p1, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_3
    return-void
.end method
