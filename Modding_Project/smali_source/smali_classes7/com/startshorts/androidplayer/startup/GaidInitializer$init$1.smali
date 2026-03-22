.class final Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "GaidInitializer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/startup/GaidInitializer;->e(Landroid/content/Context;Z)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.startup.GaidInitializer$init$1"
    f = "GaidInitializer.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/startup/GaidInitializer;

.field final synthetic j:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/startup/GaidInitializer;Landroid/content/Context;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/startup/GaidInitializer;",
            "Landroid/content/Context;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;->i:Lcom/startshorts/androidplayer/startup/GaidInitializer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;->j:Landroid/content/Context;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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
    new-instance p1, Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;->i:Lcom/startshorts/androidplayer/startup/GaidInitializer;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;->j:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;-><init>(Lcom/startshorts/androidplayer/startup/GaidInitializer;Landroid/content/Context;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;->i:Lcom/startshorts/androidplayer/startup/GaidInitializer;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;->j:Landroid/content/Context;

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/startup/GaidInitializer;->j(Lcom/startshorts/androidplayer/startup/GaidInitializer;Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;->i:Lcom/startshorts/androidplayer/startup/GaidInitializer;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/startshorts/androidplayer/startup/GaidInitializer;->l(Lcom/startshorts/androidplayer/startup/GaidInitializer;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;->i:Lcom/startshorts/androidplayer/startup/GaidInitializer;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/startshorts/androidplayer/startup/GaidInitializer;->h(Lcom/startshorts/androidplayer/startup/GaidInitializer;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;->i:Lcom/startshorts/androidplayer/startup/GaidInitializer;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/startshorts/androidplayer/startup/GaidInitializer;->i(Lcom/startshorts/androidplayer/startup/GaidInitializer;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p1

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 40
    .line 41
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 42
    .line 43
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p1
.end method
