.class final Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ActEntranceManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->m(Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.manager.act.ActEntranceManager$showHomePopInCoroutine$5"
    f = "ActEntranceManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic j:Landroid/content/Context;

.field final synthetic k:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            ">;",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;->i:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;->j:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;->k:Lkotlin/jvm/functions/Function0;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;->i:Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;->j:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;->k:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;-><init>(Ljava/util/List;Landroid/content/Context;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;->i:Ljava/util/List;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;->j:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager$showHomePopInCoroutine$5;->k:Lkotlin/jvm/functions/Function0;

    .line 18
    .line 19
    invoke-static {p1, v0, v1, v2}, Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;->d(Lcom/startshorts/androidplayer/manager/act/ActEntranceManager;Ljava/util/List;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V

    .line 20
    .line 21
    .line 22
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1
.end method
