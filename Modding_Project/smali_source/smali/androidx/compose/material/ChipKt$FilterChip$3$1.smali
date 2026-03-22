.class final Landroidx/compose/material/ChipKt$FilterChip$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Chip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ChipKt$FilterChip$3;->invoke(Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $colors:Landroidx/compose/material/SelectableChipColors;

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

.field final synthetic $contentColor:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $enabled:Z

.field final synthetic $leadingIcon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $selected:Z

.field final synthetic $selectedIcon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $trailingIcon:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lat/n;ILandroidx/compose/material/SelectableChipColors;ZILandroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I",
            "Landroidx/compose/material/SelectableChipColors;",
            "ZI",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    iput-boolean p2, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$selected:Z

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$selectedIcon:Lkotlin/jvm/functions/Function2;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$content:Lat/n;

    .line 10
    .line 11
    iput p6, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$$dirty1:I

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$colors:Landroidx/compose/material/SelectableChipColors;

    .line 14
    .line 15
    iput-boolean p8, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$enabled:Z

    .line 16
    .line 17
    iput p9, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$$dirty:I

    .line 18
    .line 19
    iput-object p10, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$contentColor:Landroidx/compose/runtime/State;

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 23
    .line 24
    .line 25
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ChipKt$FilterChip$3$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 12
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
    sget-object p2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    const/4 v0, 0x6

    invoke-virtual {p2, p1, v0}, Landroidx/compose/material/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/compose/material/Typography;->getBody2()Landroidx/compose/ui/text/TextStyle;

    move-result-object p2

    .line 5
    new-instance v11, Landroidx/compose/material/ChipKt$FilterChip$3$1$1;

    iget-object v1, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$leadingIcon:Lkotlin/jvm/functions/Function2;

    iget-boolean v2, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$selected:Z

    iget-object v3, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$selectedIcon:Lkotlin/jvm/functions/Function2;

    iget-object v4, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$trailingIcon:Lkotlin/jvm/functions/Function2;

    iget-object v5, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$content:Lat/n;

    iget v6, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$$dirty1:I

    iget-object v7, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$colors:Landroidx/compose/material/SelectableChipColors;

    iget-boolean v8, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$enabled:Z

    iget v9, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$$dirty:I

    iget-object v10, p0, Landroidx/compose/material/ChipKt$FilterChip$3$1;->$contentColor:Landroidx/compose/runtime/State;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/ChipKt$FilterChip$3$1$1;-><init>(Lkotlin/jvm/functions/Function2;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lat/n;ILandroidx/compose/material/SelectableChipColors;ZILandroidx/compose/runtime/State;)V

    const v0, -0x5c030632

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v11}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v1, 0x30

    .line 6
    invoke-static {p2, v0, p1, v1}, Landroidx/compose/material/TextKt;->ProvideTextStyle(Landroidx/compose/ui/text/TextStyle;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    return-void
.end method
