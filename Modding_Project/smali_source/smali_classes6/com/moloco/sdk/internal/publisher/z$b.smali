.class public final Lcom/moloco/sdk/internal/publisher/z$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/z;->onAdShowSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V
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
    c = "com.moloco.sdk.internal.publisher.InternalAdShowListenerImpl$onAdShowSuccess$2$1"
    f = "InternalAdShowListener.kt"
    l = {
        0x65
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/internal/publisher/z;

.field public final synthetic j:J

.field public final synthetic k:Lcom/moloco/sdk/internal/publisher/e0;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/publisher/z;JLcom/moloco/sdk/internal/publisher/e0;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/publisher/z;",
            "J",
            "Lcom/moloco/sdk/internal/publisher/e0;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/publisher/z$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/z$b;->i:Lcom/moloco/sdk/internal/publisher/z;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/moloco/sdk/internal/publisher/z$b;->j:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/moloco/sdk/internal/publisher/z$b;->k:Lcom/moloco/sdk/internal/publisher/e0;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/z$b;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/publisher/z$b;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/publisher/z$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    new-instance p1, Lcom/moloco/sdk/internal/publisher/z$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/z$b;->i:Lcom/moloco/sdk/internal/publisher/z;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/moloco/sdk/internal/publisher/z$b;->j:J

    .line 6
    .line 7
    iget-object v4, p0, Lcom/moloco/sdk/internal/publisher/z$b;->k:Lcom/moloco/sdk/internal/publisher/e0;

    .line 8
    .line 9
    move-object v0, p1

    .line 10
    move-object v5, p2

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/internal/publisher/z$b;-><init>(Lcom/moloco/sdk/internal/publisher/z;JLcom/moloco/sdk/internal/publisher/e0;Lrs/c;)V

    .line 12
    .line 13
    .line 14
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/z$b;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/internal/publisher/z$b;->h:I

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
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/z$b;->i:Lcom/moloco/sdk/internal/publisher/z;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/moloco/sdk/internal/publisher/z;->c(Lcom/moloco/sdk/internal/publisher/z;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-wide v4, p0, Lcom/moloco/sdk/internal/publisher/z$b;->j:J

    .line 34
    .line 35
    sget-object v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$e;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$e;

    .line 36
    .line 37
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/z$b;->k:Lcom/moloco/sdk/internal/publisher/e0;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/publisher/e0;->a()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    iput v2, p0, Lcom/moloco/sdk/internal/publisher/z$b;->h:I

    .line 44
    .line 45
    move-object v8, p0

    .line 46
    invoke-interface/range {v3 .. v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;->a(JLcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-ne p1, v0, :cond_2

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/z$b;->i:Lcom/moloco/sdk/internal/publisher/z;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/z;->b(Lcom/moloco/sdk/internal/publisher/z;)Lcom/moloco/sdk/internal/i;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0, p1}, Lcom/moloco/sdk/internal/i;->a(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    return-object p1
.end method
