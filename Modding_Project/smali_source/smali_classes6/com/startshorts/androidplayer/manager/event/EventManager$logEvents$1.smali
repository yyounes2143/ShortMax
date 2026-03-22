.class final Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "EventManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/event/EventManager;->w0(Ljava/util/List;[I)V
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
    c = "com.startshorts.androidplayer.manager.event.EventManager$logEvents$1"
    f = "EventManager.kt"
    l = {
        0x100
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEventManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventManager.kt\ncom/startshorts/androidplayer/manager/event/EventManager$logEvents$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1804:1\n1863#2,2:1805\n*S KotlinDebug\n*F\n+ 1 EventManager.kt\ncom/startshorts/androidplayer/manager/event/EventManager$logEvents$1\n*L\n254#1:1805,2\n*E\n"
    }
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:I

.field final synthetic l:[I

.field final synthetic m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/event/EventInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([ILjava/util/List;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/event/EventInfo;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;->l:[I

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;->m:Ljava/util/List;

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
    new-instance p1, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;->l:[I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;->m:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;-><init>([ILjava/util/List;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;->k:I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;->j:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/util/Iterator;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;->i:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, Ljava/util/List;

    .line 19
    .line 20
    iget-object v4, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;->h:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v4, [I

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/startshorts/androidplayer/manager/event/EventManager;->j()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/Iterable;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;->l:[I

    .line 46
    .line 47
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;->m:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    move-object v4, v1

    .line 54
    move-object v1, p1

    .line 55
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    check-cast p1, Laf/h;

    .line 66
    .line 67
    invoke-interface {p1}, Laf/h;->c()I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-static {v4, v5}, Lkotlin/collections/n;->d0([II)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_2

    .line 76
    .line 77
    iput-object v4, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;->h:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object v3, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;->i:Ljava/lang/Object;

    .line 80
    .line 81
    iput-object v1, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;->j:Ljava/lang/Object;

    .line 82
    .line 83
    iput v2, p0, Lcom/startshorts/androidplayer/manager/event/EventManager$logEvents$1;->k:I

    .line 84
    .line 85
    invoke-interface {p1, v3, p0}, Laf/h;->f(Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-ne p1, v0, :cond_2

    .line 90
    .line 91
    return-object v0

    .line 92
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    return-object p1
.end method
