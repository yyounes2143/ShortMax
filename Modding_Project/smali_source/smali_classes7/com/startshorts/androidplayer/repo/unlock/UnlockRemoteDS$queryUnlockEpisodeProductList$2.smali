.class final Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$queryUnlockEpisodeProductList$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "UnlockRemoteDS.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS;->c(Landroid/content/Context;IILjava/lang/String;Lrs/c;)Ljava/lang/Object;
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
        "Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.unlock.UnlockRemoteDS$queryUnlockEpisodeProductList$2"
    f = "UnlockRemoteDS.kt"
    l = {
        0x48
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:I

.field final synthetic j:I

.field final synthetic k:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$queryUnlockEpisodeProductList$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$queryUnlockEpisodeProductList$2;->i:I

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$queryUnlockEpisodeProductList$2;->j:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$queryUnlockEpisodeProductList$2;->k:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 4
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
    new-instance v0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$queryUnlockEpisodeProductList$2;

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$queryUnlockEpisodeProductList$2;->i:I

    .line 4
    .line 5
    iget v2, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$queryUnlockEpisodeProductList$2;->j:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$queryUnlockEpisodeProductList$2;->k:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$queryUnlockEpisodeProductList$2;-><init>(IILjava/lang/String;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$queryUnlockEpisodeProductList$2;->invoke(Lrs/c;)Ljava/lang/Object;

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
            "Lcom/startshorts/androidplayer/bean/unlock/QueryUnlockEpisodeProductListResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$queryUnlockEpisodeProductList$2;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$queryUnlockEpisodeProductList$2;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$queryUnlockEpisodeProductList$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object v13, p0

    .line 2
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v14

    .line 6
    iget v0, v13, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$queryUnlockEpisodeProductList$2;->h:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    move-object/from16 v0, p1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lud/b;->a:Lud/b;

    .line 31
    .line 32
    invoke-virtual {v0}, Lud/b;->Z1()J

    .line 33
    .line 34
    .line 35
    move-result-wide v6

    .line 36
    sget-object v2, Lcom/startshorts/androidplayer/manager/api/base/k;->a:Lcom/startshorts/androidplayer/manager/api/base/k;

    .line 37
    .line 38
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/api/base/k;->j()Lcom/startshorts/androidplayer/manager/api/base/k$a;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0}, Lud/b;->i0()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    iget v3, v13, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$queryUnlockEpisodeProductList$2;->i:I

    .line 47
    .line 48
    iget v4, v13, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$queryUnlockEpisodeProductList$2;->j:I

    .line 49
    .line 50
    iget-object v5, v13, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$queryUnlockEpisodeProductList$2;->k:Ljava/lang/String;

    .line 51
    .line 52
    iput v1, v13, Lcom/startshorts/androidplayer/repo/unlock/UnlockRemoteDS$queryUnlockEpisodeProductList$2;->h:I

    .line 53
    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v10, 0x0

    .line 56
    const/4 v11, 0x4

    .line 57
    const/4 v12, 0x0

    .line 58
    move-object v0, v2

    .line 59
    move v1, v3

    .line 60
    move v2, v4

    .line 61
    move v3, v8

    .line 62
    move-object v4, v5

    .line 63
    move-object v8, v10

    .line 64
    move-object v10, p0

    .line 65
    invoke-static/range {v0 .. v12}, Lcom/startshorts/androidplayer/manager/api/base/k$a$a;->r(Lcom/startshorts/androidplayer/manager/api/base/k$a;IIILjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-ne v0, v14, :cond_2

    .line 70
    .line 71
    return-object v14

    .line 72
    :cond_2
    :goto_0
    return-object v0
.end method
