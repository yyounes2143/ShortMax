.class public final Lcom/moloco/sdk/internal/publisher/d$d$a$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/d$d$a;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;)V
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
    c = "com.moloco.sdk.internal.publisher.AdLoadImpl$startLoadJob$1$2$onLoadTimeout$1"
    f = "AdLoad.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/internal/publisher/d;

.field public final synthetic j:Lcom/moloco/sdk/internal/publisher/s0;

.field public final synthetic k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/publisher/d;Lcom/moloco/sdk/internal/publisher/s0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/publisher/d;",
            "Lcom/moloco/sdk/internal/publisher/s0;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/publisher/d$d$a$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/d$d$a$c;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/d$d$a$c;->j:Lcom/moloco/sdk/internal/publisher/s0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/d$d$a$c;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/d$d$a$c;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/publisher/d$d$a$c;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/publisher/d$d$a$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance p1, Lcom/moloco/sdk/internal/publisher/d$d$a$c;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d$d$a$c;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/d$d$a$c;->j:Lcom/moloco/sdk/internal/publisher/s0;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/d$d$a$c;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/moloco/sdk/internal/publisher/d$d$a$c;-><init>(Lcom/moloco/sdk/internal/publisher/d;Lcom/moloco/sdk/internal/publisher/s0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/d$d$a$c;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/internal/publisher/d$d$a$c;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/d$d$a$c;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-static {p1, v0}, Lcom/moloco/sdk/internal/publisher/d;->h(Lcom/moloco/sdk/internal/publisher/d;Z)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/d$d$a$c;->j:Lcom/moloco/sdk/internal/publisher/s0;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/d$d$a$c;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/d;->l(Lcom/moloco/sdk/internal/publisher/d;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget-object v1, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->AD_LOAD_TIMEOUT_ERROR:Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    .line 26
    .line 27
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/d$d$a$c;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/a;

    .line 28
    .line 29
    invoke-static {v0, v1, v2}, Lcom/moloco/sdk/internal/d0;->a(Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)Lcom/moloco/sdk/internal/c0;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/d$d$a$c;->i:Lcom/moloco/sdk/internal/publisher/d;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/d;->m(Lcom/moloco/sdk/internal/publisher/d;)Lcom/moloco/sdk/internal/ortb/model/e;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v1, v2}, Lcom/moloco/sdk/internal/publisher/d;->c(Lcom/moloco/sdk/internal/publisher/d;Lcom/moloco/sdk/internal/ortb/model/e;)Lcom/moloco/sdk/internal/ortb/model/c;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/c;->d()Lcom/moloco/sdk/internal/ortb/model/d;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/d;->f()Lcom/moloco/sdk/internal/ortb/model/r;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    const/4 v1, 0x0

    .line 57
    :goto_0
    invoke-interface {p1, v0, v1}, Lcom/moloco/sdk/internal/publisher/s0;->c(Lcom/moloco/sdk/internal/c0;Lcom/moloco/sdk/internal/ortb/model/r;)V

    .line 58
    .line 59
    .line 60
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1
.end method
