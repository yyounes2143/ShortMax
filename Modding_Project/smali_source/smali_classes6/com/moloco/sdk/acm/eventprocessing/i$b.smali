.class public final Lcom/moloco/sdk/acm/eventprocessing/i$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/acm/eventprocessing/i;->a(Lcom/moloco/sdk/acm/b;Lrs/c;)Ljava/lang/Object;
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
    c = "com.moloco.sdk.acm.eventprocessing.EventProcessorImpl$processCountEvent$2"
    f = "EventProcessor.kt"
    l = {
        0x31
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEventProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventProcessor.kt\ncom/moloco/sdk/acm/eventprocessing/EventProcessorImpl$processCountEvent$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,94:1\n1557#2:95\n1628#2,3:96\n*S KotlinDebug\n*F\n+ 1 EventProcessor.kt\ncom/moloco/sdk/acm/eventprocessing/EventProcessorImpl$processCountEvent$2\n*L\n49#1:95\n49#1:96,3\n*E\n"
    }
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/acm/eventprocessing/i;

.field public final synthetic j:Lcom/moloco/sdk/acm/b;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/acm/eventprocessing/i;Lcom/moloco/sdk/acm/b;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/acm/eventprocessing/i;",
            "Lcom/moloco/sdk/acm/b;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/acm/eventprocessing/i$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/acm/eventprocessing/i$b;->i:Lcom/moloco/sdk/acm/eventprocessing/i;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/acm/eventprocessing/i$b;->j:Lcom/moloco/sdk/acm/b;

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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/acm/eventprocessing/i$b;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/acm/eventprocessing/i$b;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/acm/eventprocessing/i$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

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
    new-instance p1, Lcom/moloco/sdk/acm/eventprocessing/i$b;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/acm/eventprocessing/i$b;->i:Lcom/moloco/sdk/acm/eventprocessing/i;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/acm/eventprocessing/i$b;->j:Lcom/moloco/sdk/acm/b;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/moloco/sdk/acm/eventprocessing/i$b;-><init>(Lcom/moloco/sdk/acm/eventprocessing/i;Lcom/moloco/sdk/acm/b;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/acm/eventprocessing/i$b;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/moloco/sdk/acm/eventprocessing/i$b;->h:I

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
    goto :goto_1

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
    iget-object v1, p0, Lcom/moloco/sdk/acm/eventprocessing/i$b;->i:Lcom/moloco/sdk/acm/eventprocessing/i;

    .line 28
    .line 29
    iget-object p1, p0, Lcom/moloco/sdk/acm/eventprocessing/i$b;->j:Lcom/moloco/sdk/acm/b;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/moloco/sdk/acm/b;->c()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget-object v3, Lcom/moloco/sdk/acm/db/c;->b:Lcom/moloco/sdk/acm/db/c;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/moloco/sdk/acm/eventprocessing/i$b;->j:Lcom/moloco/sdk/acm/b;

    .line 38
    .line 39
    invoke-virtual {v4}, Lcom/moloco/sdk/acm/b;->a()I

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    int-to-long v4, v4

    .line 44
    iget-object v6, p0, Lcom/moloco/sdk/acm/eventprocessing/i$b;->j:Lcom/moloco/sdk/acm/b;

    .line 45
    .line 46
    invoke-virtual {v6}, Lcom/moloco/sdk/acm/b;->b()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    new-instance v7, Ljava/util/ArrayList;

    .line 51
    .line 52
    const/16 v8, 0xa

    .line 53
    .line 54
    invoke-static {v6, v8}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 55
    .line 56
    .line 57
    move-result v8

    .line 58
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 59
    .line 60
    .line 61
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    if-eqz v8, :cond_2

    .line 70
    .line 71
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    check-cast v8, Lcom/moloco/sdk/acm/c;

    .line 76
    .line 77
    invoke-static {v8}, Lcom/moloco/sdk/acm/i;->a(Lcom/moloco/sdk/acm/c;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    iput v2, p0, Lcom/moloco/sdk/acm/eventprocessing/i$b;->h:I

    .line 86
    .line 87
    move-object v2, p1

    .line 88
    move-object v6, v7

    .line 89
    move-object v7, p0

    .line 90
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/acm/eventprocessing/i;->d(Lcom/moloco/sdk/acm/eventprocessing/i;Ljava/lang/String;Lcom/moloco/sdk/acm/db/c;JLjava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-ne p1, v0, :cond_3

    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 98
    .line 99
    return-object p1
.end method
