.class public Lnq/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/rendering/internal/state/a;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lio/bidmachine/util/Tag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/bidmachine/rendering/internal/state/a$b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lio/bidmachine/util/Tag;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "DefaultAdState("

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 p1, 0x29

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v0, p1}, Lio/bidmachine/util/Tag;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lnq/b;->a:Lio/bidmachine/util/Tag;

    .line 37
    .line 38
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 42
    .line 43
    .line 44
    iput-object p1, p0, Lnq/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lnq/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lnq/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    .line 60
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 63
    .line 64
    .line 65
    iput-object p1, p0, Lnq/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    .line 67
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 70
    .line 71
    .line 72
    iput-object p1, p0, Lnq/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    .line 76
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 77
    .line 78
    .line 79
    iput-object p1, p0, Lnq/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    .line 81
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    .line 83
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Lnq/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 89
    .line 90
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lnq/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    .line 95
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 96
    .line 97
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 98
    .line 99
    .line 100
    iput-object p1, p0, Lnq/b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    .line 102
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 103
    .line 104
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 105
    .line 106
    .line 107
    iput-object p1, p0, Lnq/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    .line 109
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    .line 111
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 112
    .line 113
    .line 114
    iput-object p1, p0, Lnq/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 115
    .line 116
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 117
    .line 118
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 119
    .line 120
    .line 121
    iput-object p1, p0, Lnq/b;->m:Ljava/util/Set;

    .line 122
    .line 123
    new-instance p1, Lnq/b$a;

    .line 124
    .line 125
    invoke-direct {p1, p0}, Lnq/b$a;-><init>(Lnq/b;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, p1}, Lnq/b;->a(Lio/bidmachine/rendering/internal/state/a$b;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public static final synthetic c(Lnq/b;)Lio/bidmachine/util/Tag;
    .locals 0

    .line 1
    iget-object p0, p0, Lnq/b;->a:Lio/bidmachine/util/Tag;

    return-object p0
.end method

.method private final d(Lio/bidmachine/rendering/internal/state/a$a;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lnq/b;->m:Ljava/util/Set;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lnq/b;->m:Ljava/util/Set;

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/rendering/internal/state/a$b;

    .line 5
    invoke-interface {v2, p0, p1}, Lio/bidmachine/rendering/internal/state/a$b;->a(Lio/bidmachine/rendering/internal/state/a;Lio/bidmachine/rendering/internal/state/a$a;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit v0

    return-void

    .line 8
    :goto_1
    monitor-exit v0

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 10
    iget-object v0, p0, Lnq/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    iget-object v0, p0, Lnq/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    iget-object v0, p0, Lnq/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    iget-object v0, p0, Lnq/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    iget-object v0, p0, Lnq/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 15
    iget-object v0, p0, Lnq/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    iget-object v0, p0, Lnq/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    iget-object v0, p0, Lnq/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    iget-object v0, p0, Lnq/b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19
    iget-object v0, p0, Lnq/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    iget-object v0, p0, Lnq/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 21
    sget-object v0, Lio/bidmachine/rendering/internal/state/a$a;->l:Lio/bidmachine/rendering/internal/state/a$a;

    invoke-direct {p0, v0}, Lnq/b;->d(Lio/bidmachine/rendering/internal/state/a$a;)V

    .line 22
    iget-object v0, p0, Lnq/b;->m:Ljava/util/Set;

    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v1, p0, Lnq/b;->m:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 24
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 26
    monitor-exit v0

    throw v1
.end method

.method public final a(Lio/bidmachine/rendering/internal/state/a$b;)V
    .locals 2
    .param p1    # Lio/bidmachine/rendering/internal/state/a$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lnq/b;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lnq/b;->m:Ljava/util/Set;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lnq/b;->m:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0

    throw p1
.end method

.method public a(Z)Z
    .locals 3

    .line 6
    iget-object v0, p0, Lnq/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    iget-object v0, p0, Lnq/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    iget-object v0, p0, Lnq/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnq/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 9
    sget-object p1, Lio/bidmachine/rendering/internal/state/a$a;->b:Lio/bidmachine/rendering/internal/state/a$a;

    goto :goto_0

    :cond_1
    sget-object p1, Lio/bidmachine/rendering/internal/state/a$a;->c:Lio/bidmachine/rendering/internal/state/a$a;

    :goto_0
    invoke-direct {p0, p1}, Lnq/b;->d(Lio/bidmachine/rendering/internal/state/a$a;)V

    :cond_2
    return v1
.end method

.method public final b(Lio/bidmachine/rendering/internal/state/a$b;)V
    .locals 2
    .param p1    # Lio/bidmachine/rendering/internal/state/a$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lnq/b;->m:Ljava/util/Set;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lnq/b;->m:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 5
    monitor-exit v0

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnq/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnq/b;->h()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b(Z)Z
    .locals 2

    .line 6
    iget-object v0, p0, Lnq/b;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 7
    sget-object p1, Lio/bidmachine/rendering/internal/state/a$a;->h:Lio/bidmachine/rendering/internal/state/a$a;

    goto :goto_0

    :cond_0
    sget-object p1, Lio/bidmachine/rendering/internal/state/a$a;->i:Lio/bidmachine/rendering/internal/state/a$a;

    :goto_0
    invoke-direct {p0, p1}, Lnq/b;->d(Lio/bidmachine/rendering/internal/state/a$a;)V

    :cond_1
    return v0
.end method

.method public c()Z
    .locals 3

    .line 2
    iget-object v0, p0, Lnq/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lio/bidmachine/rendering/internal/state/a$a;->a:Lio/bidmachine/rendering/internal/state/a$a;

    invoke-direct {p0, v1}, Lnq/b;->d(Lio/bidmachine/rendering/internal/state/a$a;)V

    :cond_0
    return v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnq/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lnq/b;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lio/bidmachine/rendering/internal/state/a$a;->g:Lio/bidmachine/rendering/internal/state/a$a;

    .line 12
    .line 13
    invoke-direct {p0, v1}, Lnq/b;->d(Lio/bidmachine/rendering/internal/state/a$a;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return v0
.end method

.method public f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lnq/b;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lio/bidmachine/rendering/internal/state/a$a;->f:Lio/bidmachine/rendering/internal/state/a$a;

    .line 12
    .line 13
    invoke-direct {p0, v1}, Lnq/b;->d(Lio/bidmachine/rendering/internal/state/a$a;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnq/b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnq/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public i()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lnq/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lio/bidmachine/rendering/internal/state/a$a;->e:Lio/bidmachine/rendering/internal/state/a$a;

    .line 12
    .line 13
    invoke-direct {p0, v1}, Lnq/b;->d(Lio/bidmachine/rendering/internal/state/a$a;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return v0
.end method

.method public j()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lnq/b;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lio/bidmachine/rendering/internal/state/a$a;->j:Lio/bidmachine/rendering/internal/state/a$a;

    .line 12
    .line 13
    invoke-direct {p0, v1}, Lnq/b;->d(Lio/bidmachine/rendering/internal/state/a$a;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return v0
.end method

.method public k()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lnq/b;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lio/bidmachine/rendering/internal/state/a$a;->k:Lio/bidmachine/rendering/internal/state/a$a;

    .line 12
    .line 13
    invoke-direct {p0, v1}, Lnq/b;->d(Lio/bidmachine/rendering/internal/state/a$a;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return v0
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lnq/b;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lio/bidmachine/rendering/internal/state/a$a;->d:Lio/bidmachine/rendering/internal/state/a$a;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lnq/b;->d(Lio/bidmachine/rendering/internal/state/a$a;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lnq/b;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
