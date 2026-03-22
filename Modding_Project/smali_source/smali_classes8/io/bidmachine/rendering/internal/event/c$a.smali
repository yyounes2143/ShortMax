.class final Lio/bidmachine/rendering/internal/event/c$a;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/rendering/internal/event/c;->e(Lio/bidmachine/rendering/model/EventType;[Ljava/lang/Object;)V
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
    c = "io.bidmachine.rendering.internal.event.EventCallbackImpl$processEventTasks$1"
    f = "EventCallbackImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lio/bidmachine/rendering/internal/event/c;

.field final synthetic j:[Ljava/lang/Object;

.field final synthetic k:Lio/bidmachine/rendering/model/EventType;


# direct methods
.method constructor <init>(Lio/bidmachine/rendering/internal/event/c;[Ljava/lang/Object;Lio/bidmachine/rendering/model/EventType;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/rendering/internal/event/c;",
            "[",
            "Ljava/lang/Object;",
            "Lio/bidmachine/rendering/model/EventType;",
            "Lrs/c<",
            "-",
            "Lio/bidmachine/rendering/internal/event/c$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/event/c$a;->i:Lio/bidmachine/rendering/internal/event/c;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/internal/event/c$a;->j:[Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/rendering/internal/event/c$a;->k:Lio/bidmachine/rendering/model/EventType;

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
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/event/c$a;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/bidmachine/rendering/internal/event/c$a;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/event/c$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance p1, Lio/bidmachine/rendering/internal/event/c$a;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/c$a;->i:Lio/bidmachine/rendering/internal/event/c;

    .line 4
    .line 5
    iget-object v1, p0, Lio/bidmachine/rendering/internal/event/c$a;->j:[Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v2, p0, Lio/bidmachine/rendering/internal/event/c$a;->k:Lio/bidmachine/rendering/model/EventType;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lio/bidmachine/rendering/internal/event/c$a;-><init>(Lio/bidmachine/rendering/internal/event/c;[Ljava/lang/Object;Lio/bidmachine/rendering/model/EventType;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/event/c$a;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lio/bidmachine/rendering/internal/event/c$a;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/bidmachine/rendering/internal/event/c$a;->i:Lio/bidmachine/rendering/internal/event/c;

    .line 12
    .line 13
    invoke-static {p1}, Lio/bidmachine/rendering/internal/event/c;->c(Lio/bidmachine/rendering/internal/event/c;)Ljq/d;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/c$a;->j:[Ljava/lang/Object;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/collections/n;->h0([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lio/bidmachine/rendering/internal/event/c$a;->k:Lio/bidmachine/rendering/model/EventType;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1, v0}, Ljq/d;->a(Ljava/util/List;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_0
    iget-object p1, p0, Lio/bidmachine/rendering/internal/event/c$a;->i:Lio/bidmachine/rendering/internal/event/c;

    .line 43
    .line 44
    invoke-static {p1}, Lio/bidmachine/rendering/internal/event/c;->g(Lio/bidmachine/rendering/internal/event/c;)Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/c$a;->k:Lio/bidmachine/rendering/model/EventType;

    .line 49
    .line 50
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/util/List;

    .line 55
    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    const/4 p1, 0x0

    .line 66
    :goto_0
    if-eqz p1, :cond_4

    .line 67
    .line 68
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/c$a;->i:Lio/bidmachine/rendering/internal/event/c;

    .line 69
    .line 70
    new-instance v1, Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_3

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    move-object v3, v2

    .line 90
    check-cast v3, Lrq/v;

    .line 91
    .line 92
    invoke-static {v0}, Lio/bidmachine/rendering/internal/event/c;->h(Lio/bidmachine/rendering/internal/event/c;)Ljq/d;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-virtual {v3}, Lrq/v;->b()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-interface {v4, v3}, Ljq/d;->a(Ljava/util/List;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_2

    .line 105
    .line 106
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    iget-object p1, p0, Lio/bidmachine/rendering/internal/event/c$a;->i:Lio/bidmachine/rendering/internal/event/c;

    .line 111
    .line 112
    iget-object v0, p0, Lio/bidmachine/rendering/internal/event/c$a;->k:Lio/bidmachine/rendering/model/EventType;

    .line 113
    .line 114
    iget-object v2, p0, Lio/bidmachine/rendering/internal/event/c$a;->j:[Ljava/lang/Object;

    .line 115
    .line 116
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_4

    .line 125
    .line 126
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    check-cast v3, Lrq/v;

    .line 131
    .line 132
    invoke-static {p1}, Lio/bidmachine/rendering/internal/event/c;->f(Lio/bidmachine/rendering/internal/event/c;)Ljq/c;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    array-length v5, v2

    .line 137
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-interface {v4, v0, v3, v5}, Ljq/c;->a(Lio/bidmachine/rendering/model/EventType;Lrq/v;[Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 146
    .line 147
    return-object p1

    .line 148
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 149
    .line 150
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 151
    .line 152
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p1
.end method
