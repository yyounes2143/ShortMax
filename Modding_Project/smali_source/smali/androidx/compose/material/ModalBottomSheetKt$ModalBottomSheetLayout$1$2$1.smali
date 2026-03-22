.class final Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ModalBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1;->invoke(Landroidx/compose/foundation/layout/BoxWithConstraintsScope;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/unit/Density;",
        "Landroidx/compose/ui/unit/IntOffset;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $fullHeight:F

.field final synthetic $sheetState:Landroidx/compose/material/ModalBottomSheetState;


# direct methods
.method constructor <init>(Landroidx/compose/material/ModalBottomSheetState;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$2$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    .line 2
    .line 3
    iput p2, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$2$1;->$fullHeight:F

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$2$1;->invoke-Bjo55l4(Landroidx/compose/ui/unit/Density;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public final invoke-Bjo55l4(Landroidx/compose/ui/unit/Density;)J
    .locals 2
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$offset"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$2$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroidx/compose/material/SwipeableState;->getAnchors$material_release()Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget p1, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$2$1;->$fullHeight:F

    .line 19
    .line 20
    invoke-static {p1}, Lbt/a;->c(F)I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Landroidx/compose/material/ModalBottomSheetKt$ModalBottomSheetLayout$1$2$1;->$sheetState:Landroidx/compose/material/ModalBottomSheetState;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/compose/material/SwipeableState;->getOffset()Landroidx/compose/runtime/State;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {p1}, Lbt/a;->c(F)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    :goto_0
    const/4 v0, 0x0

    .line 46
    invoke-static {v0, p1}, Landroidx/compose/ui/unit/IntOffsetKt;->IntOffset(II)J

    .line 47
    .line 48
    .line 49
    move-result-wide v0

    .line 50
    return-wide v0
.end method
