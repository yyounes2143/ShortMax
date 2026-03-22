.class public final synthetic Landroidx/compose/runtime/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroidx/compose/runtime/ControlledComposition;

.field public final synthetic b:Landroidx/collection/MutableScatterSet;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/x;->a:Landroidx/compose/runtime/ControlledComposition;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/x;->b:Landroidx/collection/MutableScatterSet;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/x;->a:Landroidx/compose/runtime/ControlledComposition;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/x;->b:Landroidx/collection/MutableScatterSet;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroidx/compose/runtime/Recomposer;->f(Landroidx/compose/runtime/ControlledComposition;Landroidx/collection/MutableScatterSet;Ljava/lang/Object;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
