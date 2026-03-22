.class public final synthetic Landroidx/compose/runtime/h0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroidx/collection/MutableScatterSet;


# direct methods
.method public synthetic constructor <init>(Landroidx/collection/MutableScatterSet;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/h0;->a:Landroidx/collection/MutableScatterSet;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/h0;->a:Landroidx/collection/MutableScatterSet;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$snapshotFlow$1;->j(Landroidx/collection/MutableScatterSet;Ljava/lang/Object;)Lkotlin/Unit;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
