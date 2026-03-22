.class public Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;
.super Ljava/lang/Object;
.source "RemoteConfigRegistrar.java"

# interfaces
.implements Lcom/google/firebase/components/ComponentRegistrar;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LIBRARY_NAME:Ljava/lang/String; = "fire-rc"


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

.method public static synthetic a(Lw7/a0;Lw7/d;)Lcom/google/firebase/remoteconfig/c;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/remoteconfig/RemoteConfigRegistrar;->lambda$getComponents$0(Lw7/a0;Lw7/d;)Lcom/google/firebase/remoteconfig/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$getComponents$0(Lw7/a0;Lw7/d;)Lcom/google/firebase/remoteconfig/c;
    .locals 8

    .line 1
    new-instance v7, Lcom/google/firebase/remoteconfig/c;

    .line 2
    .line 3
    const-class v0, Landroid/content/Context;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lw7/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v1, v0

    .line 10
    check-cast v1, Landroid/content/Context;

    .line 11
    .line 12
    invoke-interface {p1, p0}, Lw7/d;->h(Lw7/a0;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    move-object v2, p0

    .line 17
    check-cast v2, Ljava/util/concurrent/ScheduledExecutorService;

    .line 18
    .line 19
    const-class p0, Lcom/google/firebase/f;

    .line 20
    .line 21
    invoke-interface {p1, p0}, Lw7/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    move-object v3, p0

    .line 26
    check-cast v3, Lcom/google/firebase/f;

    .line 27
    .line 28
    const-class p0, Lx8/e;

    .line 29
    .line 30
    invoke-interface {p1, p0}, Lw7/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    move-object v4, p0

    .line 35
    check-cast v4, Lx8/e;

    .line 36
    .line 37
    const-class p0, Lcom/google/firebase/abt/component/a;

    .line 38
    .line 39
    invoke-interface {p1, p0}, Lw7/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Lcom/google/firebase/abt/component/a;

    .line 44
    .line 45
    const-string v0, "frc"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/google/firebase/abt/component/a;->b(Ljava/lang/String;)Ll7/b;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const-class p0, Ln7/a;

    .line 52
    .line 53
    invoke-interface {p1, p0}, Lw7/d;->e(Ljava/lang/Class;)Lw8/b;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    move-object v0, v7

    .line 58
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/remoteconfig/c;-><init>(Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/firebase/f;Lx8/e;Ll7/b;Lw8/b;)V

    .line 59
    .line 60
    .line 61
    return-object v7
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
    const-class v0, Lo7/b;

    .line 2
    .line 3
    const-class v1, Ljava/util/concurrent/ScheduledExecutorService;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lw7/a0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lw7/a0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-class v1, Lh9/a;

    .line 10
    .line 11
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-class v2, Lcom/google/firebase/remoteconfig/c;

    .line 16
    .line 17
    invoke-static {v2, v1}, Lw7/c;->d(Ljava/lang/Class;[Ljava/lang/Class;)Lw7/c$b;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "fire-rc"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Lw7/c$b;->h(Ljava/lang/String;)Lw7/c$b;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-class v3, Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v3}, Lw7/q;->k(Ljava/lang/Class;)Lw7/q;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-virtual {v1, v3}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0}, Lw7/q;->l(Lw7/a0;)Lw7/q;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v1, v3}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-class v3, Lcom/google/firebase/f;

    .line 46
    .line 47
    invoke-static {v3}, Lw7/q;->k(Ljava/lang/Class;)Lw7/q;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v1, v3}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    const-class v3, Lx8/e;

    .line 56
    .line 57
    invoke-static {v3}, Lw7/q;->k(Ljava/lang/Class;)Lw7/q;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v1, v3}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-class v3, Lcom/google/firebase/abt/component/a;

    .line 66
    .line 67
    invoke-static {v3}, Lw7/q;->k(Ljava/lang/Class;)Lw7/q;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v1, v3}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-class v3, Ln7/a;

    .line 76
    .line 77
    invoke-static {v3}, Lw7/q;->i(Ljava/lang/Class;)Lw7/q;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v1, v3}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    new-instance v3, Lf9/m;

    .line 86
    .line 87
    invoke-direct {v3, v0}, Lf9/m;-><init>(Lw7/a0;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v3}, Lw7/c$b;->f(Lw7/g;)Lw7/c$b;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lw7/c$b;->e()Lw7/c$b;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lw7/c$b;->d()Lw7/c;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v1, "23.0.1"

    .line 103
    .line 104
    invoke-static {v2, v1}, Le9/h;->b(Ljava/lang/String;Ljava/lang/String;)Lw7/c;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    filled-new-array {v0, v1}, [Lw7/c;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0
.end method
