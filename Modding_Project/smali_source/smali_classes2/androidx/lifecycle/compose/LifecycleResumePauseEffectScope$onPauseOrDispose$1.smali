.class public final Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope$onPauseOrDispose$1;
.super Ljava/lang/Object;
.source "LifecycleEffect.kt"

# interfaces
.implements Landroidx/lifecycle/compose/LifecyclePauseOrDisposeEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;->onPauseOrDispose(Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/compose/LifecyclePauseOrDisposeEffectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $onPauseOrDisposeEffect:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope$onPauseOrDispose$1;->$onPauseOrDisposeEffect:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope$onPauseOrDispose$1;->this$0:Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public runPauseOrOnDisposeEffect()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope$onPauseOrDispose$1;->$onPauseOrDisposeEffect:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope$onPauseOrDispose$1;->this$0:Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    return-void
.end method
