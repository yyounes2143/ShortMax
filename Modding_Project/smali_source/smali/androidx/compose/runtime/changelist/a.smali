.class public final synthetic Landroidx/compose/runtime/changelist/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lat/n;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/Applier;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/SlotWriter;

    .line 4
    .line 5
    check-cast p3, Landroidx/compose/runtime/RememberManager;

    .line 6
    .line 7
    invoke-static {p1, p2, p3}, Landroidx/compose/runtime/changelist/Operation$TestOperation;->a(Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/RememberManager;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
