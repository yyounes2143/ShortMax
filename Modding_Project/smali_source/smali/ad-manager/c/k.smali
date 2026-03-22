.class public final Lad-manager/c/k;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public h:Ljava/lang/Throwable;

.field public i:I

.field public final synthetic j:Lda/f;


# direct methods
.method public constructor <init>(Lda/f;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/c/k;->j:Lda/f;

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
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1

    .line 1
    new-instance p1, Lad-manager/c/k;

    .line 2
    .line 3
    iget-object v0, p0, Lad-manager/c/k;->j:Lda/f;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lad-manager/c/k;-><init>(Lda/f;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    new-instance p1, Lad-manager/c/k;

    .line 6
    .line 7
    iget-object v0, p0, Lad-manager/c/k;->j:Lda/f;

    .line 8
    .line 9
    invoke-direct {p1, v0, p2}, Lad-manager/c/k;-><init>(Lda/f;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lad-manager/c/k;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lad-manager/c/k;->i:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v4, :cond_1

    .line 13
    .line 14
    if-eq v1, v3, :cond_0

    .line 15
    .line 16
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
    :cond_0
    iget-object v0, p0, Lad-manager/c/k;->h:Ljava/lang/Throwable;

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const-wide/16 v5, 0x1388

    .line 38
    .line 39
    :try_start_0
    iget-object p1, p0, Lad-manager/c/k;->j:Lda/f;

    .line 40
    .line 41
    invoke-virtual {p1}, Lda/f;->j()V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lga/a;->a:Lga/a;

    .line 45
    .line 46
    iget-object v1, p0, Lad-manager/c/k;->j:Lda/f;

    .line 47
    .line 48
    const/4 v7, 0x0

    .line 49
    invoke-virtual {v1, v7}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v7, "Async cleanup finished"

    .line 54
    .line 55
    invoke-virtual {p1, v1, v7}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    iput v4, p0, Lad-manager/c/k;->i:I

    .line 59
    .line 60
    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-ne p1, v0, :cond_3

    .line 65
    .line 66
    return-object v0

    .line 67
    :cond_3
    :goto_0
    iget-object p1, p0, Lad-manager/c/k;->j:Lda/f;

    .line 68
    .line 69
    invoke-static {p1}, Lda/f;->g(Lda/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 74
    .line 75
    .line 76
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    return-object p1

    .line 79
    :catchall_0
    move-exception p1

    .line 80
    iput-object p1, p0, Lad-manager/c/k;->h:Ljava/lang/Throwable;

    .line 81
    .line 82
    iput v3, p0, Lad-manager/c/k;->i:I

    .line 83
    .line 84
    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    if-ne v1, v0, :cond_4

    .line 89
    .line 90
    return-object v0

    .line 91
    :cond_4
    move-object v0, p1

    .line 92
    :goto_1
    iget-object p1, p0, Lad-manager/c/k;->j:Lda/f;

    .line 93
    .line 94
    invoke-static {p1}, Lda/f;->g(Lda/f;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 99
    .line 100
    .line 101
    throw v0
.end method
