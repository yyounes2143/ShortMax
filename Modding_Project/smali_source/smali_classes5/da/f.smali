.class public abstract Lda/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lda/b;


# static fields
.field public static final i:Ld/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final j:Lkt/d;

.field public static final k:Lgt/g0;

.field public static final l:Lkt/f;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public b:Landroid/content/Context;

.field public c:Lca/a;

.field public final d:Ljava/util/concurrent/ConcurrentHashMap;

.field public final e:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final f:Ljava/util/concurrent/ConcurrentHashMap;

.field public final g:Lms/i;

.field public final h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ld/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ld/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lda/f;->i:Ld/b;

    .line 7
    .line 8
    const/4 v0, 0x7

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v1, v1, v2, v0, v2}, Lkt/g;->b(IILkotlinx/coroutines/channels/BufferOverflow;ILjava/lang/Object;)Lkt/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lda/f;->j:Lkt/d;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-static {v2, v1, v2}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v1, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sput-object v1, Lda/f;->k:Lgt/g0;

    .line 35
    .line 36
    invoke-static {v0}, Lkotlinx/coroutines/flow/c;->c(Lkt/d;)Lkt/f;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lda/f;->l:Lkt/f;

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lda/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lda/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lda/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lda/f;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    new-instance v0, Lad-manager/c/i;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lad-manager/c/i;-><init>(Lda/f;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lda/f;->g:Lms/i;

    .line 43
    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lda/f;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    .line 51
    return-void
.end method

.method public static final b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final synthetic d()Lkt/f;
    .locals 1

    .line 1
    sget-object v0, Lda/f;->l:Lkt/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e()Lgt/g0;
    .locals 1

    .line 1
    sget-object v0, Lda/f;->k:Lgt/g0;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f()Lkt/d;
    .locals 1

    .line 1
    sget-object v0, Lda/f;->j:Lkt/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic g(Lda/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lda/f;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final i(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 6
    .line 7
    return-object p0
.end method


# virtual methods
.method public abstract A(Ljava/lang/String;Lca/e;)V
.end method

.method public abstract B(Ljava/lang/String;Lca/e;)V
.end method

.method public abstract C(Ljava/lang/String;Lca/e;)V
.end method

.method public abstract D(Ljava/lang/String;Lca/e;)V
.end method

.method public abstract E(Ljava/lang/String;Lca/e;)V
.end method

.method public abstract F(Ljava/lang/String;Lca/e;)V
.end method

.method public G(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cacheId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lda/f;->p(Ljava/lang/String;)Lca/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lca/d;->r()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    sget-object v1, Lad-manager/b/m;->SHOWING:Lad-manager/b/m;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lca/d;->z(Lad-manager/b/m;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lga/a;->a:Lga/a;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v3, "markAdShowing -> cacheId("

    .line 32
    .line 33
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const/16 p1, 0x29

    .line 40
    .line 41
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v1, v0, p1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public H(Lca/e;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Lca/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adLoadParam"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errorMsg"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "mediationName"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lda/f;->i:Ld/b;

    .line 17
    .line 18
    new-instance v1, Lca/b;

    .line 19
    .line 20
    invoke-direct {v1}, Lca/b;-><init>()V

    .line 21
    .line 22
    .line 23
    sget-object v2, Lcom/hades/aar/admanager/core/AdEventState;->LOAD_FAILED:Lcom/hades/aar/admanager/core/AdEventState;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lca/b;->d(Lcom/hades/aar/admanager/core/AdEventState;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lca/e;->e()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v1, v2}, Lca/b;->c(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    const-string v0, "adInfo"

    .line 39
    .line 40
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lda/f;->e()Lgt/g0;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v5, Lad-manager/c/c;

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    invoke-direct {v5, v1, v0}, Lad-manager/c/c;-><init>(Lca/b;Lrs/c;)V

    .line 51
    .line 52
    .line 53
    const/4 v6, 0x3

    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v3, 0x0

    .line 56
    const/4 v4, 0x0

    .line 57
    invoke-static/range {v2 .. v7}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lda/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-eqz v2, :cond_3

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    move-object v3, v2

    .line 77
    check-cast v3, Lc/g;

    .line 78
    .line 79
    iget-object v3, v3, Lc/g;->c:Lca/f;

    .line 80
    .line 81
    invoke-virtual {v3}, Lca/f;->f()Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    instance-of v4, v3, Ljava/util/Collection;

    .line 86
    .line 87
    if-eqz v4, :cond_1

    .line 88
    .line 89
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    if-eqz v4, :cond_1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-eqz v4, :cond_0

    .line 105
    .line 106
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    check-cast v4, Lca/e;

    .line 111
    .line 112
    invoke-virtual {v4}, Lca/e;->e()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {p1}, Lca/e;->e()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_2

    .line 125
    .line 126
    move-object v0, v2

    .line 127
    :cond_3
    check-cast v0, Lc/g;

    .line 128
    .line 129
    if-eqz v0, :cond_4

    .line 130
    .line 131
    iget-object v1, p0, Lda/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 132
    .line 133
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    iget-object v0, v0, Lc/g;->d:Lda/b$a;

    .line 137
    .line 138
    invoke-interface {v0, p1, p2, p3, p4}, Lda/b$a;->a(Lca/e;ILjava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, p1, p2, p3, p4}, Lda/f;->I(Lca/e;ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    :cond_4
    return-void
.end method

.method public final I(Lca/e;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lca/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adLoadParam"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errorMsg"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "mediationName"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lda/f;->s()Lca/a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lca/a;->a()Lda/b$a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-interface {v0, p1, p2, p3, p4}, Lda/b$a;->a(Lca/e;ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public final J(Lca/d;JLjava/lang/String;Z)V
    .locals 7
    .param p1    # Lca/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mediationName"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lda/f;->s()Lca/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lca/a;->a()Lda/b$a;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    move-object v2, p1

    .line 22
    move-wide v3, p2

    .line 23
    move-object v5, p4

    .line 24
    move v6, p5

    .line 25
    invoke-interface/range {v1 .. v6}, Lda/b$a;->c(Lca/d;JLjava/lang/String;Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public final K(Lca/e;)V
    .locals 4
    .param p1    # Lca/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adLoadParam"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lga/a;->a:Lga/a;

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v3, "onAdRequest: "

    .line 15
    .line 16
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v1, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lda/f;->s()Lca/a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lca/a;->a()Lda/b$a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-interface {v0, p1}, Lda/b$a;->b(Lca/e;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public L()V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, v0, Lda/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    check-cast v4, Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    .line 42
    new-instance v15, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    if-eqz v6, :cond_1

    .line 56
    .line 57
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    move-object v7, v6

    .line 62
    check-cast v7, Lca/d;

    .line 63
    .line 64
    invoke-virtual {v7}, Lca/d;->o()Z

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    if-eqz v7, :cond_0

    .line 69
    .line 70
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v18

    .line 78
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_2

    .line 83
    .line 84
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    move-object/from16 v19, v5

    .line 89
    .line 90
    check-cast v19, Lca/d;

    .line 91
    .line 92
    new-instance v14, Lca/e;

    .line 93
    .line 94
    invoke-virtual/range {v19 .. v19}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-virtual/range {v19 .. v19}, Lca/d;->l()Lcom/hades/aar/admanager/core/AdPriority;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    invoke-virtual/range {v19 .. v19}, Lca/d;->j()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-virtual/range {v19 .. v19}, Lca/d;->d()Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 107
    .line 108
    .line 109
    move-result-object v16

    .line 110
    const/16 v17, 0x2e0

    .line 111
    .line 112
    const/16 v20, 0x0

    .line 113
    .line 114
    const/4 v9, 0x1

    .line 115
    const/4 v11, 0x0

    .line 116
    const/4 v12, 0x0

    .line 117
    const/4 v13, 0x0

    .line 118
    const/16 v21, 0x0

    .line 119
    .line 120
    move-object v5, v14

    .line 121
    move-object v6, v4

    .line 122
    move-object/from16 v22, v14

    .line 123
    .line 124
    move-object/from16 v14, v16

    .line 125
    .line 126
    move-object/from16 v23, v15

    .line 127
    .line 128
    move/from16 v15, v21

    .line 129
    .line 130
    move/from16 v16, v17

    .line 131
    .line 132
    move-object/from16 v17, v20

    .line 133
    .line 134
    invoke-direct/range {v5 .. v17}, Lca/e;-><init>(Ljava/lang/String;Lcom/hades/aar/admanager/core/AdFormat;Lcom/hades/aar/admanager/core/AdPriority;ILjava/lang/String;Lcom/hades/aar/admanager/core/AdSize;IILcom/hades/aar/admanager/core/AdAggregatedSdk;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 135
    .line 136
    .line 137
    move-object/from16 v5, v22

    .line 138
    .line 139
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    invoke-virtual/range {v19 .. v19}, Lca/d;->b()V

    .line 143
    .line 144
    .line 145
    move-object/from16 v15, v23

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_2
    move-object v5, v15

    .line 149
    invoke-virtual {v3, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 150
    .line 151
    .line 152
    goto/16 :goto_0

    .line 153
    .line 154
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-nez v2, :cond_4

    .line 159
    .line 160
    sget-object v2, Lga/a;->a:Lga/a;

    .line 161
    .line 162
    const/4 v3, 0x0

    .line 163
    invoke-virtual {v0, v3}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    new-instance v5, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    const-string v6, "refresh -> scheduling reload for "

    .line 170
    .line 171
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 175
    .line 176
    .line 177
    move-result v6

    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v6, " ads"

    .line 182
    .line 183
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    invoke-virtual {v2, v4, v5}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    sget-object v6, Lda/f;->k:Lgt/g0;

    .line 194
    .line 195
    new-instance v9, Lad-manager/c/j;

    .line 196
    .line 197
    invoke-direct {v9, v1, v0, v3}, Lad-manager/c/j;-><init>(Ljava/util/ArrayList;Lda/f;Lrs/c;)V

    .line 198
    .line 199
    .line 200
    const/4 v10, 0x3

    .line 201
    const/4 v11, 0x0

    .line 202
    const/4 v7, 0x0

    .line 203
    const/4 v8, 0x0

    .line 204
    invoke-static/range {v6 .. v11}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 205
    .line 206
    .line 207
    :cond_4
    return-void
.end method

.method public M(Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cacheId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lda/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "adCachePools.values"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    .line 33
    const-string v2, "list"

    .line 34
    .line 35
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    new-instance v2, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    move-object v5, v4

    .line 58
    check-cast v5, Lca/d;

    .line 59
    .line 60
    invoke-virtual {v5}, Lca/d;->i()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    if-eqz v5, :cond_1

    .line 69
    .line 70
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-nez v3, :cond_0

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    return-void
.end method

.method public N(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cacheId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lda/f;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public O(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "requestId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lda/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    move-object v3, v2

    .line 28
    check-cast v3, Lc/g;

    .line 29
    .line 30
    iget-object v3, v3, Lc/g;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    .line 38
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lda/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    const/4 v0, 0x0

    .line 56
    :goto_1
    if-eqz v0, :cond_3

    .line 57
    .line 58
    sget-object v0, Lga/a;->a:Lga/a;

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v1}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v3, "removeRequest -> requestId("

    .line 68
    .line 69
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string p1, ") success"

    .line 76
    .line 77
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v0, v1, p1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    return-void
.end method

.method public final P(Lca/a;)V
    .locals 1
    .param p1    # Lca/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lda/f;->c:Lca/a;

    .line 7
    .line 8
    return-void
.end method

.method public final Q(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lda/f;->b:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method

.method public final R(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lda/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public S(Ljava/lang/String;Ljava/lang/Object;JLjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cacheId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "realAd"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "mediationName"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "pamMediationName"

    .line 17
    .line 18
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lda/f;->p(Ljava/lang/String;)Lca/d;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v7, 0x0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    sget-object p2, Lga/a;->a:Lga/a;

    .line 29
    .line 30
    invoke-virtual {p0, v7}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    new-instance p4, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p5, "setRealAd failed -> cacheId("

    .line 37
    .line 38
    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p1, ") not found"

    .line 45
    .line 46
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p2, p3, p1}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_0
    invoke-virtual {v0}, Lca/d;->p()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0}, Lca/d;->t()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    sget-object p1, Lga/a;->a:Lga/a;

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    new-instance p3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string p4, "setRealAd failed -> oldState("

    .line 79
    .line 80
    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Lca/d;->n()Lad-manager/b/m;

    .line 84
    .line 85
    .line 86
    move-result-object p4

    .line 87
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const/16 p4, 0x29

    .line 91
    .line 92
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-virtual {p1, p2, p3}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lda/f;->s()Lca/a;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    const/4 v5, 0x2

    .line 113
    const/4 v6, 0x0

    .line 114
    const-wide/16 v3, 0x0

    .line 115
    .line 116
    invoke-static/range {v1 .. v6}, Lca/a;->d(Lca/a;Lcom/hades/aar/admanager/core/AdFormat;JILjava/lang/Object;)J

    .line 117
    .line 118
    .line 119
    move-result-wide v1

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 121
    .line 122
    .line 123
    move-result-wide v3

    .line 124
    add-long/2addr v3, v1

    .line 125
    sget-object p1, Lga/a;->a:Lga/a;

    .line 126
    .line 127
    invoke-virtual {p0, v0}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    new-instance v2, Ljava/lang/StringBuilder;

    .line 132
    .line 133
    const-string v5, "setRealAd -> success ("

    .line 134
    .line 135
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v5, "), cost="

    .line 142
    .line 143
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v5, ", expireAt="

    .line 150
    .line 151
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    invoke-virtual {p1, v1, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    sget-object p1, Lad-manager/b/m;->READY:Lad-manager/b/m;

    .line 165
    .line 166
    invoke-virtual {v0, p1}, Lca/d;->z(Lad-manager/b/m;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, p2}, Lca/d;->y(Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v3, v4}, Lca/d;->u(J)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v0}, Lca/d;->f()Lca/c;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1, p5}, Lca/c;->g(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Lca/d;->f()Lca/c;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p1}, Lca/c;->b()Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_3

    .line 191
    .line 192
    invoke-virtual {v0}, Lca/d;->f()Lca/c;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {p1, p6}, Lca/c;->l(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :cond_3
    iget-object p1, p0, Lda/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result p2

    .line 209
    if-eqz p2, :cond_5

    .line 210
    .line 211
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    move-object p6, p2

    .line 216
    check-cast p6, Lc/g;

    .line 217
    .line 218
    iget-object p6, p6, Lc/g;->b:Ljava/util/List;

    .line 219
    .line 220
    invoke-virtual {v0}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    invoke-interface {p6, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result p6

    .line 228
    if-eqz p6, :cond_4

    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_5
    move-object p2, v7

    .line 232
    :goto_1
    check-cast p2, Lc/g;

    .line 233
    .line 234
    if-eqz p2, :cond_6

    .line 235
    .line 236
    iget-object p1, p0, Lda/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 237
    .line 238
    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    iget-object v1, p2, Lc/g;->d:Lda/b$a;

    .line 242
    .line 243
    const/4 v6, 0x0

    .line 244
    move-object v2, v0

    .line 245
    move-wide v3, p3

    .line 246
    move-object v5, p5

    .line 247
    invoke-interface/range {v1 .. v6}, Lda/b$a;->c(Lca/d;JLjava/lang/String;Z)V

    .line 248
    .line 249
    .line 250
    :cond_6
    const/4 v6, 0x0

    .line 251
    move-object v1, p0

    .line 252
    move-object v2, v0

    .line 253
    move-wide v3, p3

    .line 254
    move-object v5, p5

    .line 255
    invoke-virtual/range {v1 .. v6}, Lda/f;->J(Lca/d;JLjava/lang/String;Z)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v0}, Lca/d;->r()Z

    .line 259
    .line 260
    .line 261
    move-result p1

    .line 262
    if-eqz p1, :cond_7

    .line 263
    .line 264
    sget-object p1, Lda/f;->i:Ld/b;

    .line 265
    .line 266
    new-instance p2, Lca/b;

    .line 267
    .line 268
    invoke-direct {p2}, Lca/b;-><init>()V

    .line 269
    .line 270
    .line 271
    sget-object p3, Lcom/hades/aar/admanager/core/AdEventState;->LOAD_SUCCEED:Lcom/hades/aar/admanager/core/AdEventState;

    .line 272
    .line 273
    invoke-virtual {p2, p3}, Lca/b;->d(Lcom/hades/aar/admanager/core/AdEventState;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Lca/d;->c()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p3

    .line 280
    invoke-virtual {p2, p3}, Lca/b;->c(Ljava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 284
    .line 285
    .line 286
    const-string p1, "adInfo"

    .line 287
    .line 288
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    invoke-static {}, Lda/f;->e()Lgt/g0;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    new-instance v3, Lad-manager/c/c;

    .line 296
    .line 297
    invoke-direct {v3, p2, v7}, Lad-manager/c/c;-><init>(Lca/b;Lrs/c;)V

    .line 298
    .line 299
    .line 300
    const/4 v4, 0x3

    .line 301
    const/4 v5, 0x0

    .line 302
    const/4 v1, 0x0

    .line 303
    const/4 v2, 0x0

    .line 304
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 305
    .line 306
    .line 307
    :cond_7
    :goto_2
    return-void
.end method

.method public abstract T(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public final c(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    if-lt v0, v1, :cond_4

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    :goto_0
    move-object v0, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move-object v2, v1

    .line 34
    check-cast v2, Lca/d;

    .line 35
    .line 36
    invoke-virtual {v2}, Lca/d;->e()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    move-object v5, v4

    .line 45
    check-cast v5, Lca/d;

    .line 46
    .line 47
    invoke-virtual {v5}, Lca/d;->e()J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    cmp-long v7, v2, v5

    .line 52
    .line 53
    if-lez v7, :cond_3

    .line 54
    .line 55
    move-object v1, v4

    .line 56
    move-wide v2, v5

    .line 57
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    if-nez v4, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :goto_1
    check-cast v0, Lca/d;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Lca/d;->b()V

    .line 72
    .line 73
    .line 74
    sget-object p1, Lga/a;->a:Lga/a;

    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v2, "createAdCache -> removed oldest ad due to size limit, adUnitId("

    .line 83
    .line 84
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const/16 p2, 0x29

    .line 91
    .line 92
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p1, v0, p2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    return-void
.end method

.method public h(Ljava/lang/String;Ld/e;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ld/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cacheId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lda/f;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final j()V
    .locals 11

    .line 1
    iget-object v0, p0, Lda/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "adCachePools.values"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_8

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 27
    .line 28
    const-string v2, "it"

    .line 29
    .line 30
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_6

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    move-object v6, v5

    .line 54
    check-cast v6, Lca/d;

    .line 55
    .line 56
    invoke-virtual {v6}, Lca/d;->n()Lad-manager/b/m;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    sget-object v8, Lad-manager/b/m;->READY:Lad-manager/b/m;

    .line 61
    .line 62
    const/4 v9, 0x0

    .line 63
    const/4 v10, 0x1

    .line 64
    if-ne v7, v8, :cond_2

    .line 65
    .line 66
    invoke-virtual {v6}, Lca/d;->m()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    invoke-interface {p0, v7}, Lda/b;->a(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    if-nez v7, :cond_2

    .line 75
    .line 76
    move v7, v10

    .line 77
    goto :goto_2

    .line 78
    :catch_0
    move-exception v1

    .line 79
    goto :goto_4

    .line 80
    :cond_2
    move v7, v9

    .line 81
    :goto_2
    invoke-virtual {v6}, Lca/d;->o()Z

    .line 82
    .line 83
    .line 84
    move-result v8

    .line 85
    if-nez v8, :cond_3

    .line 86
    .line 87
    invoke-virtual {v6}, Lca/d;->q()Z

    .line 88
    .line 89
    .line 90
    move-result v8

    .line 91
    if-eqz v8, :cond_4

    .line 92
    .line 93
    :cond_3
    move v9, v10

    .line 94
    :cond_4
    if-nez v7, :cond_5

    .line 95
    .line 96
    if-eqz v9, :cond_1

    .line 97
    .line 98
    :cond_5
    sget-object v7, Lga/a;->a:Lga/a;

    .line 99
    .line 100
    invoke-virtual {p0, v6}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    const-string v8, "clearExpiredAd -> found expired/invalid ad"

    .line 105
    .line 106
    invoke-virtual {v7, v6, v8}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_6
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    if-nez v4, :cond_0

    .line 118
    .line 119
    invoke-interface {v1, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-eqz v1, :cond_0

    .line 124
    .line 125
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-eqz v4, :cond_7

    .line 134
    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    check-cast v4, Lca/d;

    .line 140
    .line 141
    invoke-virtual {v4}, Lca/d;->b()V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_7
    sget-object v1, Lga/a;->a:Lga/a;

    .line 146
    .line 147
    invoke-virtual {p0, v2}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    new-instance v5, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v6, "clearExpiredAd -> removed & destroyed "

    .line 157
    .line 158
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 162
    .line 163
    .line 164
    move-result v3

    .line 165
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    const-string v3, " ads"

    .line 169
    .line 170
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-virtual {v1, v4, v3}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :goto_4
    sget-object v3, Lga/a;->a:Lga/a;

    .line 183
    .line 184
    invoke-virtual {p0, v2}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    new-instance v4, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    const-string v5, "clearExpiredAd exception -> "

    .line 191
    .line 192
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-virtual {v3, v2, v1}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_8
    return-void
.end method

.method public final k(Ljava/lang/String;Lca/d;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lca/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adUnitId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lda/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v0, p1}, Lda/f;->c(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    sget-object v0, Lga/a;->a:Lga/a;

    .line 28
    .line 29
    invoke-virtual {p0, p2}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v3, "createAdCache success -> adUnitId("

    .line 36
    .line 37
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p1, "), cacheId("

    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lca/d;->i()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const/16 p1, 0x29

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {v0, v1, p1}, Lga/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    sget-object v0, Lga/a;->a:Lga/a;

    .line 69
    .line 70
    invoke-virtual {p0, p2}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    const-string v3, "createAdCache -> adUnitId("

    .line 77
    .line 78
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v3, ") pool not found, auto creating"

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v0, v1, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lda/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    .line 98
    sget-object v1, Lad-manager/c/f;->d:Lad-manager/c/f;

    .line 99
    .line 100
    new-instance v2, Lda/d;

    .line 101
    .line 102
    invoke-direct {v2, v1}, Lda/d;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 110
    .line 111
    const-string v1, "list"

    .line 112
    .line 113
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v0, p1}, Lda/f;->c(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    :goto_0
    return-void
.end method

.method public final l(Ljava/lang/String;Lca/e;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lca/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cacheId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adLoadParam"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lad-manager/b/m;->LOADING:Lad-manager/b/m;

    .line 12
    .line 13
    invoke-virtual {p0, p1, p2, v0}, Lda/f;->m(Ljava/lang/String;Lca/e;Lad-manager/b/m;)Lca/d;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p2}, Lca/e;->e()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p0, p2, p1}, Lda/f;->k(Ljava/lang/String;Lca/d;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final m(Ljava/lang/String;Lca/e;Lad-manager/b/m;)Lca/d;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lca/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lad-manager/b/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "cacheId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adLoadParam"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "state"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lca/e;->h()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {p2}, Lca/e;->e()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {p2}, Lca/e;->c()Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {p2}, Lca/e;->f()Lcom/hades/aar/admanager/core/AdFormat;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-virtual {p2}, Lca/e;->j()Lcom/hades/aar/admanager/core/AdPriority;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    new-instance v0, Lca/d;

    .line 37
    .line 38
    const/16 v9, 0x40

    .line 39
    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v8, 0x0

    .line 42
    move-object v1, v0

    .line 43
    move-object v2, p1

    .line 44
    invoke-direct/range {v1 .. v10}, Lca/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/hades/aar/admanager/core/AdFormat;Lcom/hades/aar/admanager/core/AdAggregatedSdk;Lcom/hades/aar/admanager/core/AdPriority;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p3}, Lca/d;->z(Lad-manager/b/m;)V

    .line 48
    .line 49
    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v1

    .line 54
    const-wide/32 v3, 0xea60

    .line 55
    .line 56
    .line 57
    add-long/2addr v1, v3

    .line 58
    invoke-virtual {v0, v1, v2}, Lca/d;->w(J)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lca/d;->f()Lca/c;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p2}, Lca/e;->i()Z

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-virtual {p1, p2}, Lca/c;->h(Z)V

    .line 70
    .line 71
    .line 72
    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "randomUUID().toString()"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public o(Ljava/util/List;Lca/f;Lda/b$a;)Ljava/lang/String;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lca/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lda/b$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hades/aar/admanager/core/AdFormat;",
            ">;",
            "Lca/f;",
            "Lda/b$a;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "formats"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adRequestParam"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "listener"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lda/f;->n()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lda/f;->e:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 21
    .line 22
    new-instance v2, Lc/g;

    .line 23
    .line 24
    invoke-direct {v2, v0, p1, p2, p3}, Lc/g;-><init>(Ljava/lang/String;Ljava/util/List;Lca/f;Lda/b$a;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public p(Ljava/lang/String;)Lca/d;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "cacheId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lda/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 28
    .line 29
    const-string v3, "list"

    .line 30
    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    move-object v4, v3

    .line 49
    check-cast v4, Lca/d;

    .line 50
    .line 51
    invoke-virtual {v4}, Lca/d;->i()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    if-eqz v4, :cond_1

    .line 60
    .line 61
    move-object v2, v3

    .line 62
    :cond_2
    check-cast v2, Lca/d;

    .line 63
    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    :cond_3
    return-object v2
.end method

.method public q(Ljava/util/List;)Ljava/util/List;
    .locals 14
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hades/aar/admanager/core/AdFormat;",
            ">;)",
            "Ljava/util/List<",
            "Lca/d;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "formats"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->i1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lda/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "adCachePools.values"

    .line 22
    .line 23
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_9

    .line 35
    .line 36
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    check-cast v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 41
    .line 42
    const-string v4, "list"

    .line 43
    .line 44
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v4, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v5

    .line 60
    if-eqz v5, :cond_8

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    move-object v6, v5

    .line 67
    check-cast v6, Lca/d;

    .line 68
    .line 69
    invoke-virtual {v6}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    const/4 v8, 0x0

    .line 78
    if-eqz v7, :cond_7

    .line 79
    .line 80
    invoke-virtual {v6}, Lca/d;->k()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    sget-object v9, Lca/d;->n:Lc/e;

    .line 85
    .line 86
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    invoke-static {}, Lca/d;->a()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v7

    .line 97
    const/4 v9, 0x1

    .line 98
    if-eqz v7, :cond_4

    .line 99
    .line 100
    invoke-virtual {p0}, Lda/f;->t()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    const-string v10, "adInfo"

    .line 105
    .line 106
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v11, "context"

    .line 110
    .line 111
    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v6, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 118
    .line 119
    .line 120
    move-result-object v10

    .line 121
    sget-object v11, Le/b;->a:[I

    .line 122
    .line 123
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    aget v10, v11, v10

    .line 128
    .line 129
    if-eq v10, v9, :cond_3

    .line 130
    .line 131
    const/4 v11, 0x2

    .line 132
    if-eq v10, v11, :cond_2

    .line 133
    .line 134
    const/4 v11, 0x3

    .line 135
    if-eq v10, v11, :cond_1

    .line 136
    .line 137
    move v7, v8

    .line 138
    goto :goto_2

    .line 139
    :cond_1
    invoke-virtual {v6}, Lca/d;->c()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v10

    .line 143
    invoke-static {v7, v10}, Lcom/google/android/gms/ads/rewarded/RewardedAd;->isAdAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v7

    .line 147
    goto :goto_2

    .line 148
    :cond_2
    invoke-virtual {v6}, Lca/d;->c()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v10

    .line 152
    invoke-static {v7, v10}, Lcom/google/android/gms/ads/interstitial/InterstitialAd;->isAdAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    goto :goto_2

    .line 157
    :cond_3
    invoke-virtual {v6}, Lca/d;->c()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v10

    .line 161
    invoke-static {v7, v10}, Lcom/google/android/gms/ads/appopen/AppOpenAd;->isAdAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    :goto_2
    if-nez v7, :cond_6

    .line 166
    .line 167
    sget-object v10, Lga/a;->a:Lga/a;

    .line 168
    .line 169
    invoke-virtual {p0, p1}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    new-instance v12, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v13, "findReadyAdsByFormat -> AdMob preloaded ad not available: "

    .line 176
    .line 177
    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v6}, Lca/d;->c()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v6

    .line 184
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-virtual {v10, v11, v6}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_4
    invoke-virtual {v6}, Lca/d;->o()Z

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-nez v7, :cond_5

    .line 200
    .line 201
    invoke-virtual {v6}, Lca/d;->r()Z

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-eqz v6, :cond_5

    .line 206
    .line 207
    move v7, v9

    .line 208
    goto :goto_3

    .line 209
    :cond_5
    move v7, v8

    .line 210
    :cond_6
    :goto_3
    if-eqz v7, :cond_7

    .line 211
    .line 212
    move v8, v9

    .line 213
    :cond_7
    if-eqz v8, :cond_0

    .line 214
    .line 215
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    goto/16 :goto_1

    .line 219
    .line 220
    :cond_8
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 221
    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :cond_9
    sget-object v0, Lga/a;->a:Lga/a;

    .line 226
    .line 227
    invoke-virtual {p0, p1}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    new-instance v3, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    const-string v4, "findReadyAdsByFormat -> formats("

    .line 234
    .line 235
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    const-string p1, "), count="

    .line 242
    .line 243
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 247
    .line 248
    .line 249
    move-result p1

    .line 250
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    invoke-virtual {v0, v2, p1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    return-object v1
.end method

.method public final r()Ld/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lda/f;->g:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ld/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public final s()Lca/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lda/f;->c:Lca/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "mConfig"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final t()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lda/f;->b:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "mContext"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public u(Ljava/lang/String;)Ld/e;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "cacheId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lda/f;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ld/e;

    .line 13
    .line 14
    return-object p1
.end method

.method public final v(Lcom/hades/aar/admanager/core/AdFormat;Lcom/hades/aar/admanager/core/AdPriority;I)Z
    .locals 15
    .param p1    # Lcom/hades/aar/admanager/core/AdFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/hades/aar/admanager/core/AdPriority;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move-object/from16 v2, p2

    .line 5
    .line 6
    const-string v3, "adFormat"

    .line 7
    .line 8
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v3, "adPriority"

    .line 12
    .line 13
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v3, v0, Lda/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v4, 0x0

    .line 27
    move v5, v4

    .line 28
    move v6, v5

    .line 29
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v7

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v9, 0x1

    .line 35
    if-eqz v7, :cond_7

    .line 36
    .line 37
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    check-cast v7, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 42
    .line 43
    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    if-eqz v10, :cond_5

    .line 52
    .line 53
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    check-cast v10, Lca/d;

    .line 58
    .line 59
    invoke-virtual {v10}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 60
    .line 61
    .line 62
    move-result-object v11

    .line 63
    if-ne v11, v1, :cond_1

    .line 64
    .line 65
    invoke-virtual {v10}, Lca/d;->l()Lcom/hades/aar/admanager/core/AdPriority;

    .line 66
    .line 67
    .line 68
    move-result-object v11

    .line 69
    if-ne v11, v2, :cond_1

    .line 70
    .line 71
    invoke-virtual {v10}, Lca/d;->s()Z

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    if-nez v11, :cond_1

    .line 76
    .line 77
    const-string v11, "adInfo"

    .line 78
    .line 79
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v10}, Lca/d;->n()Lad-manager/b/m;

    .line 83
    .line 84
    .line 85
    move-result-object v11

    .line 86
    sget-object v12, Lad-manager/b/m;->READY:Lad-manager/b/m;

    .line 87
    .line 88
    if-ne v11, v12, :cond_2

    .line 89
    .line 90
    invoke-virtual {v10}, Lca/d;->m()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    invoke-interface {p0, v11}, Lda/b;->a(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v11

    .line 98
    if-nez v11, :cond_2

    .line 99
    .line 100
    move v11, v9

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    move v11, v4

    .line 103
    :goto_1
    invoke-virtual {v10}, Lca/d;->o()Z

    .line 104
    .line 105
    .line 106
    move-result v12

    .line 107
    invoke-virtual {v10}, Lca/d;->q()Z

    .line 108
    .line 109
    .line 110
    move-result v10

    .line 111
    if-nez v11, :cond_4

    .line 112
    .line 113
    if-nez v12, :cond_4

    .line 114
    .line 115
    if-eqz v10, :cond_3

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    :goto_2
    move v5, v9

    .line 122
    goto :goto_0

    .line 123
    :cond_5
    move/from16 v10, p3

    .line 124
    .line 125
    if-lt v6, v10, :cond_0

    .line 126
    .line 127
    if-eqz v5, :cond_6

    .line 128
    .line 129
    iget-object v1, v0, Lda/f;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 130
    .line 131
    invoke-virtual {v1, v4, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_6

    .line 136
    .line 137
    sget-object v2, Lda/f;->k:Lgt/g0;

    .line 138
    .line 139
    new-instance v5, Lad-manager/c/k;

    .line 140
    .line 141
    invoke-direct {v5, p0, v8}, Lad-manager/c/k;-><init>(Lda/f;Lrs/c;)V

    .line 142
    .line 143
    .line 144
    const/4 v6, 0x3

    .line 145
    const/4 v7, 0x0

    .line 146
    const/4 v3, 0x0

    .line 147
    const/4 v4, 0x0

    .line 148
    invoke-static/range {v2 .. v7}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 149
    .line 150
    .line 151
    :cond_6
    return v9

    .line 152
    :cond_7
    if-eqz v5, :cond_8

    .line 153
    .line 154
    iget-object v1, v0, Lda/f;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 155
    .line 156
    invoke-virtual {v1, v4, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-eqz v1, :cond_8

    .line 161
    .line 162
    sget-object v9, Lda/f;->k:Lgt/g0;

    .line 163
    .line 164
    new-instance v12, Lad-manager/c/k;

    .line 165
    .line 166
    invoke-direct {v12, p0, v8}, Lad-manager/c/k;-><init>(Lda/f;Lrs/c;)V

    .line 167
    .line 168
    .line 169
    const/4 v13, 0x3

    .line 170
    const/4 v14, 0x0

    .line 171
    const/4 v10, 0x0

    .line 172
    const/4 v11, 0x0

    .line 173
    invoke-static/range {v9 .. v14}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 174
    .line 175
    .line 176
    :cond_8
    return v4
.end method

.method public w(Lcom/hades/aar/admanager/core/AdFormat;)Z
    .locals 3
    .param p1    # Lcom/hades/aar/admanager/core/AdFormat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "format"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lda/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "adCachePools.values"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->e0(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v1, Lad-manager/c/g;->d:Lad-manager/c/g;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/sequences/j;->y(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lca/d;

    .line 42
    .line 43
    invoke-virtual {v1}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-ne v2, p1, :cond_0

    .line 48
    .line 49
    invoke-virtual {v1}, Lca/d;->s()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_0

    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/4 p1, 0x0

    .line 58
    :goto_0
    return p1
.end method

.method public final x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lda/f;->c:Lca/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lda/f;->s()Lca/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lca/a;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method

.method public final y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lda/f;->c:Lca/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lda/f;->s()Lca/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lca/a;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lda/f;->s()Lca/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lca/a;->e()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method public z(Lca/e;)Z
    .locals 5
    .param p1    # Lca/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adLoadParam"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lda/f;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lga/a;->a:Lga/a;

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "loadAd -> triggering init (may already be in progress)"

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0}, Lda/b;->init()V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-virtual {p1}, Lca/e;->f()Lcom/hades/aar/admanager/core/AdFormat;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lca/e;->j()Lcom/hades/aar/admanager/core/AdPriority;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lca/e;->g()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {p0, v0, v1, v2}, Lda/f;->v(Lcom/hades/aar/admanager/core/AdFormat;Lcom/hades/aar/admanager/core/AdPriority;I)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    const-string v1, ") adUnitId("

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    sget-object v0, Lga/a;->a:Lga/a;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    new-instance v3, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    const-string v4, "loadAd failed -> format("

    .line 57
    .line 58
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lca/e;->f()Lcom/hades/aar/admanager/core/AdFormat;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lca/e;->e()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ") maxSize("

    .line 79
    .line 80
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lca/e;->g()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p1, ") reason(Ad filled up)"

    .line 91
    .line 92
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v0, v2, p1}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const/4 p1, 0x0

    .line 103
    return p1

    .line 104
    :cond_1
    sget-object v0, Lga/a;->a:Lga/a;

    .line 105
    .line 106
    invoke-virtual {p0, p1}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v4, "loadAd -> format("

    .line 113
    .line 114
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lca/e;->f()Lcom/hades/aar/admanager/core/AdFormat;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1}, Lca/e;->e()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const/16 v1, 0x29

    .line 135
    .line 136
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v2, v1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lda/f;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 147
    .line 148
    invoke-virtual {p1}, Lca/e;->e()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    new-instance v2, Lad-manager/c/h;

    .line 153
    .line 154
    invoke-direct {v2, p0, p1}, Lad-manager/c/h;-><init>(Lda/f;Lca/e;)V

    .line 155
    .line 156
    .line 157
    new-instance v3, Lda/e;

    .line 158
    .line 159
    invoke-direct {v3, v2}, Lda/e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lda/f;->n()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p0, v0, p1}, Lda/f;->l(Ljava/lang/String;Lca/e;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1}, Lca/e;->f()Lcom/hades/aar/admanager/core/AdFormat;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    sget-object v2, Ld/c;->a:[I

    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    aget v1, v2, v1

    .line 183
    .line 184
    packed-switch v1, :pswitch_data_0

    .line 185
    .line 186
    .line 187
    goto :goto_0

    .line 188
    :pswitch_0
    invoke-virtual {p0, v0, p1}, Lda/f;->D(Ljava/lang/String;Lca/e;)V

    .line 189
    .line 190
    .line 191
    goto :goto_0

    .line 192
    :pswitch_1
    invoke-virtual {p0, v0, p1}, Lda/f;->B(Ljava/lang/String;Lca/e;)V

    .line 193
    .line 194
    .line 195
    goto :goto_0

    .line 196
    :pswitch_2
    invoke-virtual {p0, v0, p1}, Lda/f;->F(Ljava/lang/String;Lca/e;)V

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :pswitch_3
    invoke-virtual {p0, v0, p1}, Lda/f;->E(Ljava/lang/String;Lca/e;)V

    .line 201
    .line 202
    .line 203
    goto :goto_0

    .line 204
    :pswitch_4
    invoke-virtual {p0, v0, p1}, Lda/f;->C(Ljava/lang/String;Lca/e;)V

    .line 205
    .line 206
    .line 207
    goto :goto_0

    .line 208
    :pswitch_5
    invoke-virtual {p0, v0, p1}, Lda/f;->A(Ljava/lang/String;Lca/e;)V

    .line 209
    .line 210
    .line 211
    :goto_0
    const/4 p1, 0x1

    .line 212
    return p1

    .line 213
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
