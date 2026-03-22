.class public final Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleStartEffectImpl$lambda$19$lambda$18$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/compose/LifecycleEffectKt;->LifecycleStartEffectImpl(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/compose/LifecycleStartStopEffectScope;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 LifecycleEffect.kt\nandroidx/lifecycle/compose/LifecycleEffectKt\n*L\n1#1,69:1\n358#2,3:70\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $effectResult$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $lifecycleOwner$inlined:Landroidx/lifecycle/LifecycleOwner;

.field final synthetic $observer$inlined:Landroidx/lifecycle/LifecycleEventObserver;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LifecycleEventObserver;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleStartEffectImpl$lambda$19$lambda$18$$inlined$onDispose$1;->$lifecycleOwner$inlined:Landroidx/lifecycle/LifecycleOwner;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleStartEffectImpl$lambda$19$lambda$18$$inlined$onDispose$1;->$observer$inlined:Landroidx/lifecycle/LifecycleEventObserver;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleStartEffectImpl$lambda$19$lambda$18$$inlined$onDispose$1;->$effectResult$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleStartEffectImpl$lambda$19$lambda$18$$inlined$onDispose$1;->$lifecycleOwner$inlined:Landroidx/lifecycle/LifecycleOwner;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleStartEffectImpl$lambda$19$lambda$18$$inlined$onDispose$1;->$observer$inlined:Landroidx/lifecycle/LifecycleEventObserver;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleStartEffectImpl$lambda$19$lambda$18$$inlined$onDispose$1;->$effectResult$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 13
    .line 14
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Landroidx/lifecycle/compose/LifecycleStopOrDisposeEffectResult;->runStopOrDisposeEffect()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
