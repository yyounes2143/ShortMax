.class public final synthetic Landroidx/compose/runtime/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Landroidx/compose/runtime/RecomposeScopeImpl;

.field public final synthetic b:I

.field public final synthetic c:Landroidx/collection/MutableObjectIntMap;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/collection/MutableObjectIntMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/s;->a:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 5
    .line 6
    iput p2, p0, Landroidx/compose/runtime/s;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/runtime/s;->c:Landroidx/collection/MutableObjectIntMap;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/s;->a:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/s;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/runtime/s;->c:Landroidx/collection/MutableObjectIntMap;

    .line 6
    .line 7
    check-cast p1, Landroidx/compose/runtime/Composition;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Landroidx/compose/runtime/RecomposeScopeImpl;->a(Landroidx/compose/runtime/RecomposeScopeImpl;ILandroidx/collection/MutableObjectIntMap;Landroidx/compose/runtime/Composition;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
