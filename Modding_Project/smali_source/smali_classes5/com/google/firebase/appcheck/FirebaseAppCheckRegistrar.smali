.class public Lcom/google/firebase/appcheck/FirebaseAppCheckRegistrar;
.super Ljava/lang/Object;
.source "FirebaseAppCheckRegistrar.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lw7/a0;Lw7/a0;Lw7/a0;Lw7/a0;Lw7/d;)Lp7/e;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/firebase/appcheck/FirebaseAppCheckRegistrar;->b(Lw7/a0;Lw7/a0;Lw7/a0;Lw7/a0;Lw7/d;)Lp7/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic b(Lw7/a0;Lw7/a0;Lw7/a0;Lw7/a0;Lw7/d;)Lp7/e;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/firebase/appcheck/internal/b;

    .line 2
    .line 3
    const-class v0, Lcom/google/firebase/f;

    .line 4
    .line 5
    invoke-interface {p4, v0}, Lw7/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Lcom/google/firebase/f;

    .line 11
    .line 12
    const-class v0, Lu8/h;

    .line 13
    .line 14
    invoke-interface {p4, v0}, Lw7/d;->e(Ljava/lang/Class;)Lw8/b;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-interface {p4, p0}, Lw7/d;->h(Lw7/a0;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    move-object v3, p0

    .line 23
    check-cast v3, Ljava/util/concurrent/Executor;

    .line 24
    .line 25
    invoke-interface {p4, p1}, Lw7/d;->h(Lw7/a0;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    move-object v4, p0

    .line 30
    check-cast v4, Ljava/util/concurrent/Executor;

    .line 31
    .line 32
    invoke-interface {p4, p2}, Lw7/d;->h(Lw7/a0;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    move-object v5, p0

    .line 37
    check-cast v5, Ljava/util/concurrent/Executor;

    .line 38
    .line 39
    invoke-interface {p4, p3}, Lw7/d;->h(Lw7/a0;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    move-object v6, p0

    .line 44
    check-cast v6, Ljava/util/concurrent/ScheduledExecutorService;

    .line 45
    .line 46
    move-object v0, v7

    .line 47
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/appcheck/internal/b;-><init>(Lcom/google/firebase/f;Lw8/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 48
    .line 49
    .line 50
    return-object v7
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lw7/c<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lo7/d;

    .line 2
    .line 3
    const-class v1, Ljava/util/concurrent/Executor;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lw7/a0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lw7/a0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-class v2, Lo7/c;

    .line 10
    .line 11
    invoke-static {v2, v1}, Lw7/a0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lw7/a0;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const-class v3, Lo7/a;

    .line 16
    .line 17
    invoke-static {v3, v1}, Lw7/a0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lw7/a0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-class v3, Lo7/b;

    .line 22
    .line 23
    const-class v4, Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    .line 25
    invoke-static {v3, v4}, Lw7/a0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lw7/a0;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-class v4, Ls7/b;

    .line 30
    .line 31
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-class v5, Lp7/e;

    .line 36
    .line 37
    invoke-static {v5, v4}, Lw7/c;->d(Ljava/lang/Class;[Ljava/lang/Class;)Lw7/c$b;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "fire-app-check"

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Lw7/c$b;->h(Ljava/lang/String;)Lw7/c$b;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    const-class v6, Lcom/google/firebase/f;

    .line 48
    .line 49
    invoke-static {v6}, Lw7/q;->k(Ljava/lang/Class;)Lw7/q;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {v4, v6}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v0}, Lw7/q;->l(Lw7/a0;)Lw7/q;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    invoke-virtual {v4, v6}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {v2}, Lw7/q;->l(Lw7/a0;)Lw7/q;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    invoke-virtual {v4, v6}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-static {v1}, Lw7/q;->l(Lw7/a0;)Lw7/q;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v4, v6}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-static {v3}, Lw7/q;->l(Lw7/a0;)Lw7/q;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    invoke-virtual {v4, v6}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    const-class v6, Lu8/h;

    .line 90
    .line 91
    invoke-static {v6}, Lw7/q;->i(Ljava/lang/Class;)Lw7/q;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v4, v6}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    new-instance v6, Lp7/f;

    .line 100
    .line 101
    invoke-direct {v6, v0, v2, v1, v3}, Lp7/f;-><init>(Lw7/a0;Lw7/a0;Lw7/a0;Lw7/a0;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v6}, Lw7/c$b;->f(Lw7/g;)Lw7/c$b;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lw7/c$b;->c()Lw7/c$b;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {v0}, Lw7/c$b;->d()Lw7/c;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-static {}, Lu8/g;->a()Lw7/c;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string v2, "19.0.1"

    .line 121
    .line 122
    invoke-static {v5, v2}, Le9/h;->b(Ljava/lang/String;Ljava/lang/String;)Lw7/c;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    filled-new-array {v0, v1, v2}, [Lw7/c;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    return-object v0
.end method
