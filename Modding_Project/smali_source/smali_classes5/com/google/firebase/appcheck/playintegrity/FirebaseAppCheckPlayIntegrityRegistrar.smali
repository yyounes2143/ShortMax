.class public Lcom/google/firebase/appcheck/playintegrity/FirebaseAppCheckPlayIntegrityRegistrar;
.super Ljava/lang/Object;
.source "FirebaseAppCheckPlayIntegrityRegistrar.java"

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

.method public static synthetic a(Lw7/a0;Lw7/a0;Lw7/d;)Lu7/i;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/firebase/appcheck/playintegrity/FirebaseAppCheckPlayIntegrityRegistrar;->b(Lw7/a0;Lw7/a0;Lw7/d;)Lu7/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic b(Lw7/a0;Lw7/a0;Lw7/d;)Lu7/i;
    .locals 2

    .line 1
    new-instance v0, Lu7/i;

    .line 2
    .line 3
    const-class v1, Lcom/google/firebase/f;

    .line 4
    .line 5
    invoke-interface {p2, v1}, Lw7/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/google/firebase/f;

    .line 10
    .line 11
    invoke-interface {p2, p0}, Lw7/d;->h(Lw7/a0;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    invoke-interface {p2, p1}, Lw7/d;->h(Lw7/a0;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/util/concurrent/Executor;

    .line 22
    .line 23
    invoke-direct {v0, v1, p0, p1}, Lu7/i;-><init>(Lcom/google/firebase/f;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method


# virtual methods
.method public getComponents()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lw7/c<",
            "*>;>;"
        }
    .end annotation

    .line 1
    const-class v0, Lo7/c;

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
    const-class v2, Lo7/b;

    .line 10
    .line 11
    invoke-static {v2, v1}, Lw7/a0;->a(Ljava/lang/Class;Ljava/lang/Class;)Lw7/a0;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-class v2, Lu7/i;

    .line 16
    .line 17
    invoke-static {v2}, Lw7/c;->c(Ljava/lang/Class;)Lw7/c$b;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "fire-app-check-play-integrity"

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Lw7/c$b;->h(Ljava/lang/String;)Lw7/c$b;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-class v4, Lcom/google/firebase/f;

    .line 28
    .line 29
    invoke-static {v4}, Lw7/q;->k(Ljava/lang/Class;)Lw7/q;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual {v2, v4}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static {v0}, Lw7/q;->l(Lw7/a0;)Lw7/q;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-virtual {v2, v4}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v1}, Lw7/q;->l(Lw7/a0;)Lw7/q;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v2, v4}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    new-instance v4, Lt7/a;

    .line 54
    .line 55
    invoke-direct {v4, v0, v1}, Lt7/a;-><init>(Lw7/a0;Lw7/a0;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2, v4}, Lw7/c$b;->f(Lw7/g;)Lw7/c$b;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Lw7/c$b;->d()Lw7/c;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-string v1, "19.0.1"

    .line 67
    .line 68
    invoke-static {v3, v1}, Le9/h;->b(Ljava/lang/String;Ljava/lang/String;)Lw7/c;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    filled-new-array {v0, v1}, [Lw7/c;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    return-object v0
.end method
