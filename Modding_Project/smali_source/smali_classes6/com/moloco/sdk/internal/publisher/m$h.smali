.class public final Lcom/moloco/sdk/internal/publisher/m$h;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/m;->c(Lcom/moloco/sdk/internal/ortb/model/c;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.publisher.BannerViewImpl$recreateXenossAd$touchInterceptor$1$2$1"
    f = "Banner.kt"
    l = {
        0x109
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Landroid/view/MotionEvent;

.field public final synthetic j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/u;

.field public final synthetic k:Lcom/moloco/sdk/internal/publisher/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moloco/sdk/internal/publisher/m<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic l:Lkt/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/d<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/MotionEvent;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/u;Lcom/moloco/sdk/internal/publisher/m;Lkt/d;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/u;",
            "Lcom/moloco/sdk/internal/publisher/m<",
            "T",
            "L;",
            ">;",
            "Lkt/d<",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/publisher/m$h;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/m$h;->i:Landroid/view/MotionEvent;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/m$h;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/u;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/m$h;->k:Lcom/moloco/sdk/internal/publisher/m;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/moloco/sdk/internal/publisher/m$h;->l:Lkt/d;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
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

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/m$h;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/publisher/m$h;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/publisher/m$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 6
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

    .line 1
    new-instance p1, Lcom/moloco/sdk/internal/publisher/m$h;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/m$h;->i:Landroid/view/MotionEvent;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/m$h;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/u;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/m$h;->k:Lcom/moloco/sdk/internal/publisher/m;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/moloco/sdk/internal/publisher/m$h;->l:Lkt/d;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/internal/publisher/m$h;-><init>(Landroid/view/MotionEvent;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/u;Lcom/moloco/sdk/internal/publisher/m;Lkt/d;Lrs/c;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/m$h;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/internal/publisher/m$h;->h:I

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
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/m$h;->i:Landroid/view/MotionEvent;

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/m$h;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/u;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/m$h;->k:Lcom/moloco/sdk/internal/publisher/m;

    .line 34
    .line 35
    iget-object v7, p0, Lcom/moloco/sdk/internal/publisher/m$h;->l:Lkt/d;

    .line 36
    .line 37
    invoke-static {v3}, Lcom/moloco/sdk/internal/publisher/m;->p(Lcom/moloco/sdk/internal/publisher/m;)Lcom/moloco/sdk/internal/services/f0;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-static {v3}, Lcom/moloco/sdk/internal/publisher/m;->b(Lcom/moloco/sdk/internal/publisher/m;)Lcom/moloco/sdk/internal/publisher/f0;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {v5}, Lcom/moloco/sdk/internal/publisher/f0;->j()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-static {v3}, Lcom/moloco/sdk/internal/publisher/m;->b(Lcom/moloco/sdk/internal/publisher/m;)Lcom/moloco/sdk/internal/publisher/f0;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/publisher/f0;->k()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-static {v3}, Lcom/moloco/sdk/internal/publisher/m;->o(Lcom/moloco/sdk/internal/publisher/m;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    iput v2, p0, Lcom/moloco/sdk/internal/publisher/m$h;->h:I

    .line 62
    .line 63
    const/16 v10, 0x40

    .line 64
    .line 65
    const/4 v11, 0x0

    .line 66
    const/4 v9, 0x0

    .line 67
    move-object v2, p1

    .line 68
    move-object v3, v4

    .line 69
    move-object v4, v5

    .line 70
    move-object v5, v6

    .line 71
    move-object v6, v8

    .line 72
    move-object v8, v9

    .line 73
    move-object v9, p0

    .line 74
    invoke-static/range {v1 .. v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/u;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/u;Landroid/view/MotionEvent;Lcom/moloco/sdk/internal/services/f0;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;Lkt/d;Lcom/moloco/sdk/internal/h0;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    if-ne p1, v0, :cond_2

    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 82
    .line 83
    return-object p1
.end method
