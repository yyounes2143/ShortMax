.class final Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AdReportRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lrs/c<",
        "-",
        "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
        "Ljava/lang/Object;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.ad.AdReportRemoteDS$adReport$2"
    f = "AdReportRemoteDS.kt"
    l = {
        0xc
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:I

.field final synthetic n:I

.field final synthetic o:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->i:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->k:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->l:Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->m:I

    .line 10
    .line 11
    iput p6, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->n:I

    .line 12
    .line 13
    iput-object p7, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->o:Ljava/lang/String;

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v9, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->i:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->k:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->l:Ljava/lang/String;

    .line 10
    .line 11
    iget v5, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->m:I

    .line 12
    .line 13
    iget v6, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->n:I

    .line 14
    .line 15
    iget-object v7, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->o:Ljava/lang/String;

    .line 16
    .line 17
    move-object v0, v9

    .line 18
    move-object v8, p1

    .line 19
    invoke-direct/range {v0 .. v8}, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lrs/c;)V

    .line 20
    .line 21
    .line 22
    return-object v9
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->invoke(Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/bean/api/ServerResult<",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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
    iget v1, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v4, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->i:Ljava/lang/String;

    .line 34
    .line 35
    iget-object v5, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->j:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v6, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->k:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v7, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->l:Ljava/lang/String;

    .line 40
    .line 41
    iget v8, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->m:I

    .line 42
    .line 43
    iget v9, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->n:I

    .line 44
    .line 45
    iget-object v10, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->o:Ljava/lang/String;

    .line 46
    .line 47
    iput v2, p0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;->h:I

    .line 48
    .line 49
    move-object v11, p0

    .line 50
    invoke-interface/range {v3 .. v11}, Lcom/startshorts/androidplayer/manager/api/base/k$a;->n1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-ne p1, v0, :cond_2

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_2
    :goto_0
    return-object p1
.end method
