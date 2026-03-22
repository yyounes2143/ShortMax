.class public final Lcom/inmobi/media/D6;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/E6;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/E6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/D6;->a:Lcom/inmobi/media/E6;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Lcom/inmobi/media/d2;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v0, p1, Lcom/inmobi/media/d2;->a:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    packed-switch v0, :pswitch_data_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_0
    iget-object v0, p1, Lcom/inmobi/media/d2;->c:Ljava/util/Map;

    .line 21
    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    const-string v2, "data"

    .line 25
    .line 26
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-ne v0, v1, :cond_3

    .line 31
    .line 32
    iget-object p1, p1, Lcom/inmobi/media/d2;->c:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "null cannot be cast to non-null type com.inmobi.commons.core.incident.IncidentEvent"

    .line 39
    .line 40
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    check-cast p1, Lcom/inmobi/media/T5;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/inmobi/media/D6;->a:Lcom/inmobi/media/E6;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lcom/inmobi/media/E6;->b(Lcom/inmobi/media/T5;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/D6;->a:Lcom/inmobi/media/E6;

    .line 52
    .line 53
    iget-object v0, p1, Lcom/inmobi/media/E6;->b:Lcom/inmobi/media/t4;

    .line 54
    .line 55
    const/4 v2, 0x0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    iget-object v3, v0, Lcom/inmobi/media/t4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 59
    .line 60
    if-eqz v3, :cond_1

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    :cond_1
    iput-object v2, v0, Lcom/inmobi/media/t4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 66
    .line 67
    iget-object v3, v0, Lcom/inmobi/media/t4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 71
    .line 72
    .line 73
    iget-object v3, v0, Lcom/inmobi/media/t4;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 74
    .line 75
    invoke-virtual {v3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/inmobi/media/t4;->g:Ljava/util/LinkedList;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 81
    .line 82
    .line 83
    iput-object v2, v0, Lcom/inmobi/media/t4;->i:Lcom/inmobi/media/q4;

    .line 84
    .line 85
    :cond_2
    iput-object v2, p1, Lcom/inmobi/media/E6;->b:Lcom/inmobi/media/t4;

    .line 86
    .line 87
    invoke-static {}, Lcom/inmobi/media/Uc;->f()Lcom/inmobi/media/H7;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iget-object p1, p1, Lcom/inmobi/media/E6;->d:Lcom/inmobi/media/D6;

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Lcom/inmobi/media/H7;->a(Lkotlin/jvm/functions/Function1;)V

    .line 94
    .line 95
    .line 96
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 97
    .line 98
    return-object p1

    .line 99
    :pswitch_data_0
    .packed-switch 0x96
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
