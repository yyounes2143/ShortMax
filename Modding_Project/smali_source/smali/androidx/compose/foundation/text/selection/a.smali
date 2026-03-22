.class public final synthetic Landroidx/compose/foundation/text/selection/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:Landroidx/compose/ui/layout/LayoutCoordinates;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/selection/a;->a:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/selection/a;->a:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 2
    .line 3
    check-cast p1, Landroidx/compose/foundation/text/selection/Selectable;

    .line 4
    .line 5
    check-cast p2, Landroidx/compose/foundation/text/selection/Selectable;

    .line 6
    .line 7
    invoke-static {v0, p1, p2}, Landroidx/compose/foundation/text/selection/SelectionRegistrarImpl;->a(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/foundation/text/selection/Selectable;Landroidx/compose/foundation/text/selection/Selectable;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
