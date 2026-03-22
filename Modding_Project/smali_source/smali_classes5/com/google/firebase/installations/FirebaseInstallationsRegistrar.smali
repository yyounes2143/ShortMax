.class public Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;
.super Ljava/lang/Object;
.source "FirebaseInstallationsRegistrar.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-installations"


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

.method public static synthetic a(Lw7/d;)Lx8/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/installations/FirebaseInstallationsRegistrar;->lambda$getComponents$0(Lw7/d;)Lx8/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lw7/d;)Lx8/e;
    .locals 6

    .line 1
    new-instance v0, Lcom/google/firebase/installations/c;

    .line 2
    .line 3
    const-class v1, Lcom/google/firebase/f;

    .line 4
    .line 5
    invoke-interface {p0, v1}, Lw7/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/google/firebase/f;

    .line 10
    .line 11
    const-class v2, Lu8/h;

    .line 12
    .line 13
    invoke-interface {p0, v2}, Lw7/d;->e(Ljava/lang/Class;)Lw8/b;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const-class v3, Lo7/a;

    .line 18
    .line 19
    const-class v4, Ljava/util/concurrent/ExecutorService;

    .line 20
    .line 21
    invoke-static {v3, v4}, Lw7/a0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lw7/a0;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {p0, v3}, Lw7/d;->h(Lw7/a0;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    check-cast v3, Ljava/util/concurrent/ExecutorService;

    .line 30
    .line 31
    const-class v4, Lo7/b;

    .line 32
    .line 33
    const-class v5, Ljava/util/concurrent/Executor;

    .line 34
    .line 35
    invoke-static {v4, v5}, Lw7/a0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lw7/a0;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-interface {p0, v4}, Lw7/d;->h(Lw7/a0;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 44
    .line 45
    invoke-static {p0}, Lcom/google/firebase/concurrent/FirebaseExecutors;->b(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-direct {v0, v1, v2, v3, p0}, Lcom/google/firebase/installations/c;-><init>(Lcom/google/firebase/f;Lw8/b;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/Executor;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lw7/c<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lx8/e;

    .line 2
    .line 3
    invoke-static {v0}, Lw7/c;->c(Ljava/lang/Class;)Lw7/c$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "fire-installations"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lw7/c$b;->h(Ljava/lang/String;)Lw7/c$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-class v2, Lcom/google/firebase/f;

    .line 14
    .line 15
    invoke-static {v2}, Lw7/q;->k(Ljava/lang/Class;)Lw7/q;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v2}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-class v2, Lu8/h;

    .line 24
    .line 25
    invoke-static {v2}, Lw7/q;->i(Ljava/lang/Class;)Lw7/q;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-class v2, Lo7/a;

    .line 34
    .line 35
    const-class v3, Ljava/util/concurrent/ExecutorService;

    .line 36
    .line 37
    invoke-static {v2, v3}, Lw7/a0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lw7/a0;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-static {v2}, Lw7/q;->l(Lw7/a0;)Lw7/q;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-class v2, Lo7/b;

    .line 50
    .line 51
    const-class v3, Ljava/util/concurrent/Executor;

    .line 52
    .line 53
    invoke-static {v2, v3}, Lw7/a0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lw7/a0;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-static {v2}, Lw7/q;->l(Lw7/a0;)Lw7/q;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v0, v2}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v2, Lx8/f;

    .line 66
    .line 67
    invoke-direct {v2}, Lx8/f;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2}, Lw7/c$b;->f(Lw7/g;)Lw7/c$b;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lw7/c$b;->d()Lw7/c;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-static {}, Lu8/g;->a()Lw7/c;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    const-string v3, "19.0.1"

    .line 83
    .line 84
    invoke-static {v1, v3}, Le9/h;->b(Ljava/lang/String;Ljava/lang/String;)Lw7/c;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    filled-new-array {v0, v2, v1}, [Lw7/c;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    return-object v0
.end method
