.class Li2/b$a;
.super Ljava/lang/Object;
.source "ConstrainedExecutorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Li2/b;


# direct methods
.method private constructor <init>(Li2/b;)V
    .locals 0

    .line 2
    iput-object p1, p0, Li2/b$a;->a:Li2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Li2/b;Li2/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Li2/b$a;-><init>(Li2/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    const-string v0, "%s: worker finished; %d workers left"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Li2/b$a;->a:Li2/b;

    .line 4
    .line 5
    invoke-static {v1}, Li2/b;->c(Li2/b;)Ljava/util/concurrent/BlockingQueue;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    check-cast v1, Ljava/lang/Runnable;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    invoke-static {}, Li2/b;->e()Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "%s: Worker has nothing to run"

    .line 28
    .line 29
    iget-object v3, p0, Li2/b$a;->a:Li2/b;

    .line 30
    .line 31
    invoke-static {v3}, Li2/b;->a(Li2/b;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v1, v2, v3}, Ll2/a;->p(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    :goto_0
    iget-object v1, p0, Li2/b$a;->a:Li2/b;

    .line 39
    .line 40
    invoke-static {v1}, Li2/b;->b(Li2/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    iget-object v2, p0, Li2/b$a;->a:Li2/b;

    .line 49
    .line 50
    invoke-static {v2}, Li2/b;->c(Li2/b;)Ljava/util/concurrent/BlockingQueue;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Li2/b$a;->a:Li2/b;

    .line 61
    .line 62
    invoke-static {v0}, Li2/b;->d(Li2/b;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_1
    invoke-static {}, Li2/b;->e()Ljava/lang/Class;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iget-object v3, p0, Li2/b$a;->a:Li2/b;

    .line 71
    .line 72
    invoke-static {v3}, Li2/b;->a(Li2/b;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v2, v0, v3, v1}, Ll2/a;->q(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :goto_1
    return-void

    .line 84
    :goto_2
    iget-object v2, p0, Li2/b$a;->a:Li2/b;

    .line 85
    .line 86
    invoke-static {v2}, Li2/b;->b(Li2/b;)Ljava/util/concurrent/atomic/AtomicInteger;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    iget-object v3, p0, Li2/b$a;->a:Li2/b;

    .line 95
    .line 96
    invoke-static {v3}, Li2/b;->c(Li2/b;)Ljava/util/concurrent/BlockingQueue;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_2

    .line 105
    .line 106
    iget-object v0, p0, Li2/b$a;->a:Li2/b;

    .line 107
    .line 108
    invoke-static {v0}, Li2/b;->d(Li2/b;)V

    .line 109
    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_2
    invoke-static {}, Li2/b;->e()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    iget-object v4, p0, Li2/b$a;->a:Li2/b;

    .line 117
    .line 118
    invoke-static {v4}, Li2/b;->a(Li2/b;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v4

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-static {v3, v0, v4, v2}, Ll2/a;->q(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    :goto_3
    throw v1
.end method
