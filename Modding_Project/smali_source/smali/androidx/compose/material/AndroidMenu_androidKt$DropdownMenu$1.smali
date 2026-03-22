.class final Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidMenu.android.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AndroidMenu_androidKt;->DropdownMenu-ILWXrKs(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/window/PopupProperties;Lat/n;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $content:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $expandedStates:Landroidx/compose/animation/core/MutableTransitionState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/MutableTransitionState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $transformOriginState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/graphics/TransformOrigin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lat/n;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/MutableTransitionState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/graphics/TransformOrigin;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/ColumnScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$1;->$expandedStates:Landroidx/compose/animation/core/MutableTransitionState;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$1;->$transformOriginState:Landroidx/compose/runtime/MutableState;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$1;->$modifier:Landroidx/compose/ui/Modifier;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$1;->$content:Lat/n;

    .line 8
    .line 9
    iput p5, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$1;->$$dirty:I

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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$1;->invoke(Landroidx/compose/runtime/Composer;I)V

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
    iget-object v0, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$1;->$expandedStates:Landroidx/compose/animation/core/MutableTransitionState;

    .line 5
    iget-object v1, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$1;->$transformOriginState:Landroidx/compose/runtime/MutableState;

    .line 6
    iget-object v2, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$1;->$modifier:Landroidx/compose/ui/Modifier;

    .line 7
    iget-object v3, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$1;->$content:Lat/n;

    sget p2, Landroidx/compose/animation/core/MutableTransitionState;->$stable:I

    or-int/lit8 p2, p2, 0x30

    iget v4, p0, Landroidx/compose/material/AndroidMenu_androidKt$DropdownMenu$1;->$$dirty:I

    and-int/lit16 v5, v4, 0x380

    or-int/2addr p2, v5

    shr-int/lit8 v4, v4, 0x6

    and-int/lit16 v4, v4, 0x1c00

    or-int v5, p2, v4

    const/4 v6, 0x0

    move-object v4, p1

    .line 8
    invoke-static/range {v0 .. v6}, Landroidx/compose/material/MenuKt;->DropdownMenuContent(Landroidx/compose/animation/core/MutableTransitionState;Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/Modifier;Lat/n;Landroidx/compose/runtime/Composer;II)V

    :goto_1
    return-void
.end method
