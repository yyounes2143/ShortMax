.class final Lio/bidmachine/analytics/internal/G$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/G;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field private synthetic b:Ljava/lang/Object;

.field final synthetic c:Lio/bidmachine/analytics/internal/G;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lio/bidmachine/analytics/internal/G;Ljava/lang/String;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/G$b;->c:Lio/bidmachine/analytics/internal/G;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/G$b;->d:Ljava/lang/String;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/G$b;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/bidmachine/analytics/internal/G$b;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/G$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/G$b;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/analytics/internal/G$b;->c:Lio/bidmachine/analytics/internal/G;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/analytics/internal/G$b;->d:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lio/bidmachine/analytics/internal/G$b;-><init>(Lio/bidmachine/analytics/internal/G;Ljava/lang/String;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lio/bidmachine/analytics/internal/G$b;->b:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/G$b;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lio/bidmachine/analytics/internal/G$b;->a:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lio/bidmachine/analytics/internal/G$b;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lgt/g0;

    .line 14
    .line 15
    iget-object p1, p0, Lio/bidmachine/analytics/internal/G$b;->c:Lio/bidmachine/analytics/internal/G;

    .line 16
    .line 17
    invoke-static {p1}, Lio/bidmachine/analytics/internal/G;->a(Lio/bidmachine/analytics/internal/G;)Lio/bidmachine/analytics/internal/K;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v0, p0, Lio/bidmachine/analytics/internal/G$b;->c:Lio/bidmachine/analytics/internal/G;

    .line 22
    .line 23
    iget-object v1, p0, Lio/bidmachine/analytics/internal/G$b;->d:Ljava/lang/String;

    .line 24
    .line 25
    monitor-enter p1

    .line 26
    :try_start_0
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 27
    .line 28
    invoke-static {v0}, Lio/bidmachine/analytics/internal/G;->a(Lio/bidmachine/analytics/internal/G;)Lio/bidmachine/analytics/internal/K;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-static {v1}, Lio/bidmachine/analytics/internal/s0;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    const-string v4, " "

    .line 37
    .line 38
    filled-new-array {v4}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/4 v7, 0x6

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v5, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Lio/bidmachine/analytics/internal/K;->a(Ljava/util/List;)Ljava/io/InputStream;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    const/4 v3, 0x0

    .line 55
    if-eqz v2, :cond_0

    .line 56
    .line 57
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 58
    .line 59
    new-instance v5, Ljava/io/InputStreamReader;

    .line 60
    .line 61
    invoke-direct {v5, v2, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 62
    .line 63
    .line 64
    new-instance v2, Ljava/io/BufferedReader;

    .line 65
    .line 66
    const/16 v4, 0x2000

    .line 67
    .line 68
    invoke-direct {v2, v5, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catchall_0
    move-exception v0

    .line 73
    goto :goto_2

    .line 74
    :cond_0
    move-object v2, v3

    .line 75
    :goto_0
    if-eqz v2, :cond_1

    .line 76
    .line 77
    :try_start_1
    invoke-static {v2}, Lws/n;->e(Ljava/io/BufferedReader;)Lkotlin/sequences/Sequence;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v0, v1, v4}, Lio/bidmachine/analytics/internal/G;->a(Lio/bidmachine/analytics/internal/G;Ljava/lang/String;Lkotlin/sequences/Sequence;)V

    .line 82
    .line 83
    .line 84
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 85
    .line 86
    :try_start_2
    invoke-static {v2, v3}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :catchall_1
    move-exception v0

    .line 91
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 92
    :catchall_2
    move-exception v1

    .line 93
    :try_start_4
    invoke-static {v2, v0}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 94
    .line 95
    .line 96
    throw v1

    .line 97
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 100
    .line 101
    .line 102
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 103
    .line 104
    :cond_2
    invoke-static {v3}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :goto_2
    :try_start_5
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 109
    .line 110
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 115
    .line 116
    .line 117
    :goto_3
    monitor-exit p1

    .line 118
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    return-object p1

    .line 121
    :catchall_3
    move-exception v0

    .line 122
    monitor-exit p1

    .line 123
    throw v0

    .line 124
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 125
    .line 126
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 127
    .line 128
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p1
.end method
