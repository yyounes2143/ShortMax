.class final Lio/bidmachine/rendering/internal/animation/i$k;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/animation/i;->q(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationEventType;ZZLjava/lang/Runnable;Ljava/lang/Runnable;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "io.bidmachine.rendering.internal.animation.DefaultAdAnimationController"
    f = "DefaultAdAnimationController.kt"
    l = {
        0xc7
    }
    m = "prepareAndAnimate"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field l:Ljava/lang/Object;

.field m:Z

.field synthetic n:Ljava/lang/Object;

.field final synthetic o:Lio/bidmachine/rendering/internal/animation/i;

.field p:I


# direct methods
.method constructor <init>(Lio/bidmachine/rendering/internal/animation/i;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/internal/animation/i;",
            "Lrs/c<",
            "-",
            "Lio/bidmachine/rendering/internal/animation/i$k;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/animation/i$k;->o:Lio/bidmachine/rendering/internal/animation/i;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/animation/i$k;->n:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lio/bidmachine/rendering/internal/animation/i$k;->p:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lio/bidmachine/rendering/internal/animation/i$k;->p:I

    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/rendering/internal/animation/i$k;->o:Lio/bidmachine/rendering/internal/animation/i;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v7, p0

    .line 19
    invoke-virtual/range {v0 .. v7}, Lio/bidmachine/rendering/internal/animation/i;->q(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationEventType;ZZLjava/lang/Runnable;Ljava/lang/Runnable;Lrs/c;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method
