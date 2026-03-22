.class final Lio/bidmachine/analytics/internal/X$f;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/X;->a(Ljava/util/List;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/bidmachine/analytics/internal/X;

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/bidmachine/analytics/internal/X;Ljava/util/List;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/X$f;->b:Lio/bidmachine/analytics/internal/X;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/X$f;->c:Ljava/util/List;

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

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/X$f;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/bidmachine/analytics/internal/X$f;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/X$f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2

    .line 1
    new-instance p1, Lio/bidmachine/analytics/internal/X$f;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/X$f;->b:Lio/bidmachine/analytics/internal/X;

    .line 4
    .line 5
    iget-object v1, p0, Lio/bidmachine/analytics/internal/X$f;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/analytics/internal/X$f;-><init>(Lio/bidmachine/analytics/internal/X;Ljava/util/List;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/X$f;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lio/bidmachine/analytics/internal/X$f;->a:I

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
    check-cast p1, Lkotlin/Result;

    .line 16
    .line 17
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lio/bidmachine/analytics/internal/P;

    .line 34
    .line 35
    iget-object v1, p0, Lio/bidmachine/analytics/internal/X$f;->b:Lio/bidmachine/analytics/internal/X;

    .line 36
    .line 37
    invoke-static {v1}, Lio/bidmachine/analytics/internal/X;->a(Lio/bidmachine/analytics/internal/X;)Lio/bidmachine/analytics/internal/X$b;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/X$b;->b()Lio/bidmachine/analytics/MonitorConfig;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lio/bidmachine/analytics/MonitorConfig;->getUrl()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iget-object v1, p0, Lio/bidmachine/analytics/internal/X$f;->b:Lio/bidmachine/analytics/internal/X;

    .line 50
    .line 51
    invoke-static {v1}, Lio/bidmachine/analytics/internal/X;->a(Lio/bidmachine/analytics/internal/X;)Lio/bidmachine/analytics/internal/X$b;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/X$b;->b()Lio/bidmachine/analytics/MonitorConfig;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lio/bidmachine/analytics/MonitorConfig;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    iget-object v1, p0, Lio/bidmachine/analytics/internal/X$f;->b:Lio/bidmachine/analytics/internal/X;

    .line 64
    .line 65
    invoke-static {v1}, Lio/bidmachine/analytics/internal/X;->a(Lio/bidmachine/analytics/internal/X;)Lio/bidmachine/analytics/internal/X$b;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/X$b;->a()Lcom/explorestack/protobuf/Struct;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    iget-object v7, p0, Lio/bidmachine/analytics/internal/X$f;->c:Ljava/util/List;

    .line 74
    .line 75
    const/16 v9, 0x10

    .line 76
    .line 77
    const/4 v10, 0x0

    .line 78
    const/4 v8, 0x0

    .line 79
    move-object v3, p1

    .line 80
    invoke-direct/range {v3 .. v10}, Lio/bidmachine/analytics/internal/P;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;Ljava/util/List;Lio/bidmachine/analytics/internal/p0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 81
    .line 82
    .line 83
    iput v2, p0, Lio/bidmachine/analytics/internal/X$f;->a:I

    .line 84
    .line 85
    invoke-virtual {p1, p0}, Lio/bidmachine/analytics/internal/Y;->a(Lrs/c;)Ljava/lang/Object;

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
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/bidmachine/analytics/internal/X$f;->b:Lio/bidmachine/analytics/internal/X;

    .line 93
    .line 94
    iget-object v1, p0, Lio/bidmachine/analytics/internal/X$f;->c:Ljava/util/List;

    .line 95
    .line 96
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    if-eqz v2, :cond_3

    .line 101
    .line 102
    move-object v2, p1

    .line 103
    check-cast v2, Lio/bidmachine/analytics/internal/P;

    .line 104
    .line 105
    invoke-static {v0}, Lio/bidmachine/analytics/internal/X;->b(Lio/bidmachine/analytics/internal/X;)Lio/bidmachine/analytics/internal/V;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-interface {v0, v1}, Lio/bidmachine/analytics/internal/V;->b(Ljava/util/List;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    :cond_3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/X$f;->b:Lio/bidmachine/analytics/internal/X;

    .line 113
    .line 114
    iget-object v1, p0, Lio/bidmachine/analytics/internal/X$f;->c:Ljava/util/List;

    .line 115
    .line 116
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    if-eqz v2, :cond_4

    .line 121
    .line 122
    invoke-static {v0}, Lio/bidmachine/analytics/internal/X;->b(Lio/bidmachine/analytics/internal/X;)Lio/bidmachine/analytics/internal/V;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {v0, v1}, Lio/bidmachine/analytics/internal/V;->c(Ljava/util/List;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    :cond_4
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    return-object p1
.end method
