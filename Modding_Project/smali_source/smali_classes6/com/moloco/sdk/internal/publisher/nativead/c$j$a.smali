.class public final Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/nativead/c$j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.moloco.sdk.internal.publisher.nativead.NativeAdLoader$load$2$2"
    f = "NativeAdLoader.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/internal/publisher/s0;

.field public final synthetic j:Lcom/moloco/sdk/internal/publisher/nativead/c;

.field public final synthetic k:Lcom/moloco/sdk/internal/ortb/model/c;

.field public final synthetic l:J


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/publisher/s0;Lcom/moloco/sdk/internal/publisher/nativead/c;Lcom/moloco/sdk/internal/ortb/model/c;JLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/publisher/s0;",
            "Lcom/moloco/sdk/internal/publisher/nativead/c;",
            "Lcom/moloco/sdk/internal/ortb/model/c;",
            "J",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;->i:Lcom/moloco/sdk/internal/publisher/s0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;->j:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;->k:Lcom/moloco/sdk/internal/ortb/model/c;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;->l:J

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7
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
    new-instance p1, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;->i:Lcom/moloco/sdk/internal/publisher/s0;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;->j:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;->k:Lcom/moloco/sdk/internal/ortb/model/c;

    .line 8
    .line 9
    iget-wide v4, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;->l:J

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;-><init>(Lcom/moloco/sdk/internal/publisher/s0;Lcom/moloco/sdk/internal/publisher/nativead/c;Lcom/moloco/sdk/internal/ortb/model/c;JLrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;->i:Lcom/moloco/sdk/internal/publisher/s0;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;->j:Lcom/moloco/sdk/internal/publisher/nativead/c;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/nativead/c;->m(Lcom/moloco/sdk/internal/publisher/nativead/c;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;->k:Lcom/moloco/sdk/internal/ortb/model/c;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/ortb/model/c;->e()F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->c(F)Ljava/lang/Float;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v0, v1}, Lcom/moloco/sdk/publisher/MolocoAdKt;->createAdInfo(Ljava/lang/String;Ljava/lang/Float;)Lcom/moloco/sdk/publisher/MolocoAd;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-wide v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;->l:J

    .line 34
    .line 35
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/nativead/c$j$a;->k:Lcom/moloco/sdk/internal/ortb/model/c;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/ortb/model/c;->d()Lcom/moloco/sdk/internal/ortb/model/d;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/ortb/model/d;->f()Lcom/moloco/sdk/internal/ortb/model/r;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/moloco/sdk/internal/publisher/s0;->a(Lcom/moloco/sdk/publisher/MolocoAd;JLcom/moloco/sdk/internal/ortb/model/r;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method
