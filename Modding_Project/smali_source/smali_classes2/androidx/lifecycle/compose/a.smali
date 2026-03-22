.class public final synthetic Landroidx/lifecycle/compose/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/LifecycleOwner;

.field public final synthetic b:Landroidx/lifecycle/Lifecycle$State;

.field public final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/lifecycle/compose/a;->a:Landroidx/lifecycle/LifecycleOwner;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/lifecycle/compose/a;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/lifecycle/compose/a;->c:Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/compose/a;->a:Landroidx/lifecycle/LifecycleOwner;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/lifecycle/compose/a;->b:Landroidx/lifecycle/Lifecycle$State;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/lifecycle/compose/a;->c:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/lifecycle/compose/DropUnlessLifecycleKt;->a(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
