.class final Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidGetLifecycleFlow.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.ads.core.domain.AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1"
    f = "AndroidGetLifecycleFlow.kt"
    l = {
        0x36
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$channelFlow:Ljt/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljt/h<",
            "Lcom/unity3d/ads/core/domain/LifecycleEvent;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $bundle:Landroid/os/Bundle;

.field label:I


# direct methods
.method constructor <init>(Ljt/h;Landroid/app/Activity;Landroid/os/Bundle;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljt/h<",
            "-",
            "Lcom/unity3d/ads/core/domain/LifecycleEvent;",
            ">;",
            "Landroid/app/Activity;",
            "Landroid/os/Bundle;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1;->$$this$channelFlow:Ljt/h;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1;->$activity:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1;->$bundle:Landroid/os/Bundle;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p1, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1;->$$this$channelFlow:Ljt/h;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1;->$activity:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1;->$bundle:Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1;-><init>(Ljt/h;Landroid/app/Activity;Landroid/os/Bundle;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1;->$$this$channelFlow:Ljt/h;

    .line 28
    .line 29
    new-instance v1, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;

    .line 30
    .line 31
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1;->$activity:Landroid/app/Activity;

    .line 34
    .line 35
    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iget-object v4, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1;->$bundle:Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-direct {v1, v3, v4}, Lcom/unity3d/ads/core/domain/LifecycleEvent$SaveInstanceState;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Bundle;)V

    .line 41
    .line 42
    .line 43
    iput v2, p0, Lcom/unity3d/ads/core/domain/AndroidGetLifecycleFlow$invoke$2$listener$1$onActivitySaveInstanceState$1;->label:I

    .line 44
    .line 45
    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/channels/h;->p(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p1
.end method
