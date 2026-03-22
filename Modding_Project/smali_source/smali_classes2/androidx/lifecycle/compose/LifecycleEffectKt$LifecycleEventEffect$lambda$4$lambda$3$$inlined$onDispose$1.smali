.class public final Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleEventEffect$lambda$4$lambda$3$$inlined$onDispose$1;
.super Ljava/lang/Object;
.source "Effects.kt"

# interfaces
.implements Landroidx/compose/runtime/DisposableEffectResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/compose/LifecycleEffectKt;->LifecycleEventEffect(Landroidx/lifecycle/Lifecycle$Event;Landroidx/lifecycle/LifecycleOwner;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEffects.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope$onDispose$1\n+ 2 LifecycleEffect.kt\nandroidx/lifecycle/compose/LifecycleEffectKt\n*L\n1#1,69:1\n76#2:70\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $lifecycleOwner$inlined:Landroidx/lifecycle/LifecycleOwner;

.field final synthetic $observer$inlined:Landroidx/lifecycle/LifecycleEventObserver;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LifecycleEventObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleEventEffect$lambda$4$lambda$3$$inlined$onDispose$1;->$lifecycleOwner$inlined:Landroidx/lifecycle/LifecycleOwner;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleEventEffect$lambda$4$lambda$3$$inlined$onDispose$1;->$observer$inlined:Landroidx/lifecycle/LifecycleEventObserver;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleEventEffect$lambda$4$lambda$3$$inlined$onDispose$1;->$lifecycleOwner$inlined:Landroidx/lifecycle/LifecycleOwner;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/lifecycle/compose/LifecycleEffectKt$LifecycleEventEffect$lambda$4$lambda$3$$inlined$onDispose$1;->$observer$inlined:Landroidx/lifecycle/LifecycleEventObserver;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
