.class public final Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;
.super Ljava/lang/Object;
.source "LifecycleEffect.kt"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final lifecycle:Landroidx/lifecycle/Lifecycle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/Lifecycle;)V
    .locals 0
    .param p1    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;->lifecycle:Landroidx/lifecycle/Lifecycle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final onPauseOrDispose(Lkotlin/jvm/functions/Function1;)Landroidx/lifecycle/compose/LifecyclePauseOrDisposeEffectResult;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/lifecycle/compose/LifecyclePauseOrDisposeEffectResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope$onPauseOrDispose$1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0}, Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope$onPauseOrDispose$1;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/lifecycle/compose/LifecycleResumePauseEffectScope;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
