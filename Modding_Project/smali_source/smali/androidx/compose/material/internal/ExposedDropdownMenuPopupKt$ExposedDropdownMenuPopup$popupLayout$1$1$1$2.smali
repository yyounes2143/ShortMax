.class final Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ExposedDropdownMenuPopup.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/compose/ui/unit/IntSize;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $this_apply:Landroidx/compose/material/internal/PopupLayout;


# direct methods
.method constructor <init>(Landroidx/compose/material/internal/PopupLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1$2;->$this_apply:Landroidx/compose/material/internal/PopupLayout;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/ui/unit/IntSize;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1}, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1$2;->invoke-ozmzZPI(J)V

    .line 8
    .line 9
    .line 10
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p1
.end method

.method public final invoke-ozmzZPI(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1$2;->$this_apply:Landroidx/compose/material/internal/PopupLayout;

    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Landroidx/compose/material/internal/PopupLayout;->setPopupContentSize-fhxjrPA(Landroidx/compose/ui/unit/IntSize;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Landroidx/compose/material/internal/ExposedDropdownMenuPopupKt$ExposedDropdownMenuPopup$popupLayout$1$1$1$2;->$this_apply:Landroidx/compose/material/internal/PopupLayout;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/compose/material/internal/PopupLayout;->updatePosition()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
