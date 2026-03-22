.class public final synthetic Landroidx/lifecycle/compose/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# instance fields
.field public final synthetic a:Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic c:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/lifecycle/compose/g;->a:Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/lifecycle/compose/g;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/lifecycle/compose/g;->c:Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/compose/g;->a:Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/lifecycle/compose/g;->b:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/lifecycle/compose/g;->c:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1, p2}, Landroidx/lifecycle/compose/LifecycleEffectKt;->p(Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/functions/Function1;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
