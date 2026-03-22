.class final Lio/bidmachine/analytics/internal/Y$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/Y;->a(Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/bidmachine/analytics/internal/Y;


# direct methods
.method constructor <init>(Lio/bidmachine/analytics/internal/Y;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/Y$c;->b:Lio/bidmachine/analytics/internal/Y;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/Y$c;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/bidmachine/analytics/internal/Y$c;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/Y$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1

    .line 1
    new-instance p1, Lio/bidmachine/analytics/internal/Y$c;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/Y$c;->b:Lio/bidmachine/analytics/internal/Y;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lio/bidmachine/analytics/internal/Y$c;-><init>(Lio/bidmachine/analytics/internal/Y;Lrs/c;)V

    .line 6
    .line 7
    .line 8
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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/Y$c;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lio/bidmachine/analytics/internal/Y$c;->a:I

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
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

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
    iget-object p1, p0, Lio/bidmachine/analytics/internal/Y$c;->b:Lio/bidmachine/analytics/internal/Y;

    .line 28
    .line 29
    invoke-static {p1}, Lio/bidmachine/analytics/internal/Y;->b(Lio/bidmachine/analytics/internal/Y;)Lio/bidmachine/analytics/internal/s;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 36
    .line 37
    iget-object p1, p0, Lio/bidmachine/analytics/internal/Y$c;->b:Lio/bidmachine/analytics/internal/Y;

    .line 38
    .line 39
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/Y;->a()Lio/bidmachine/analytics/internal/Y;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_2
    :try_start_1
    iget-object p1, p0, Lio/bidmachine/analytics/internal/Y$c;->b:Lio/bidmachine/analytics/internal/Y;

    .line 53
    .line 54
    invoke-static {p1}, Lio/bidmachine/analytics/internal/Y;->a(Lio/bidmachine/analytics/internal/Y;)Lio/bidmachine/analytics/internal/p0;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/p0;->b()Lgt/c0;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    new-instance v1, Lio/bidmachine/analytics/internal/Y$c$a;

    .line 63
    .line 64
    iget-object v3, p0, Lio/bidmachine/analytics/internal/Y$c;->b:Lio/bidmachine/analytics/internal/Y;

    .line 65
    .line 66
    const/4 v4, 0x0

    .line 67
    invoke-direct {v1, v3, v4}, Lio/bidmachine/analytics/internal/Y$c$a;-><init>(Lio/bidmachine/analytics/internal/Y;Lrs/c;)V

    .line 68
    .line 69
    .line 70
    iput v2, p0, Lio/bidmachine/analytics/internal/Y$c;->a:I

    .line 71
    .line 72
    invoke-static {p1, v1, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-ne p1, v0, :cond_3

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_3
    :goto_0
    check-cast p1, [B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 80
    .line 81
    :try_start_2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/Y$c;->b:Lio/bidmachine/analytics/internal/Y;

    .line 82
    .line 83
    invoke-static {v0}, Lio/bidmachine/analytics/internal/Y;->c(Lio/bidmachine/analytics/internal/Y;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {v0, v1, p1}, Lio/bidmachine/analytics/internal/Y;->a(Lio/bidmachine/analytics/internal/Y;Ljava/lang/String;[B)V

    .line 88
    .line 89
    .line 90
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 91
    .line 92
    iget-object p1, p0, Lio/bidmachine/analytics/internal/Y$c;->b:Lio/bidmachine/analytics/internal/Y;

    .line 93
    .line 94
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/Y;->a()Lio/bidmachine/analytics/internal/Y;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    goto :goto_2

    .line 103
    :catchall_0
    move-exception p1

    .line 104
    goto :goto_1

    .line 105
    :catchall_1
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 106
    .line 107
    iget-object p1, p0, Lio/bidmachine/analytics/internal/Y$c;->b:Lio/bidmachine/analytics/internal/Y;

    .line 108
    .line 109
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/Y;->a()Lio/bidmachine/analytics/internal/Y;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 118
    .line 119
    .line 120
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 121
    return-object p1

    .line 122
    :goto_1
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 123
    .line 124
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    return-object p1
.end method
