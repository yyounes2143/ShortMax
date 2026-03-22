.class public Lio/ktor/util/internal/d;
.super Ljava/lang/Object;
.source "LockFreeLinkedList.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLockFreeLinkedList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeLinkedList.kt\nio/ktor/util/internal/LockFreeLinkedListNode\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,809:1\n172#1,3:815\n172#1,3:818\n1#2:810\n155#3,2:811\n155#3,2:813\n155#3,2:821\n155#3,2:823\n*S KotlinDebug\n*F\n+ 1 LockFreeLinkedList.kt\nio/ktor/util/internal/LockFreeLinkedListNode\n*L\n238#1:815,3\n261#1:818,3\n181#1:811,2\n193#1:813,2\n618#1:821,2\n636#1:823,2\n*E\n"
    }
.end annotation


# static fields
.field static final synthetic a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field static final synthetic b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field volatile synthetic _next:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field volatile synthetic _prev:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _removedRef:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "_next"

    .line 2
    .line 3
    const-class v1, Lio/ktor/util/internal/d;

    .line 4
    .line 5
    const-class v2, Ljava/lang/Object;

    .line 6
    .line 7
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lio/ktor/util/internal/d;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 12
    .line 13
    const-string v0, "_prev"

    .line 14
    .line 15
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lio/ktor/util/internal/d;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 20
    .line 21
    const-string v0, "_removedRef"

    .line 22
    .line 23
    invoke-static {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lio/ktor/util/internal/d;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p0, p0, Lio/ktor/util/internal/d;->_next:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p0, p0, Lio/ktor/util/internal/d;->_prev:Ljava/lang/Object;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lio/ktor/util/internal/d;->_removedRef:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method private final b(Lio/ktor/util/internal/d;Lio/ktor/util/internal/e;)Lio/ktor/util/internal/d;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    move-object v1, v0

    .line 3
    :cond_0
    :goto_1
    iget-object v2, p1, Lio/ktor/util/internal/d;->_next:Ljava/lang/Object;

    .line 4
    .line 5
    if-ne v2, p2, :cond_1

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_1
    instance-of v3, v2, Lio/ktor/util/internal/e;

    .line 9
    .line 10
    if-eqz v3, :cond_2

    .line 11
    .line 12
    check-cast v2, Lio/ktor/util/internal/e;

    .line 13
    .line 14
    invoke-virtual {v2, p1}, Lio/ktor/util/internal/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_2
    instance-of v3, v2, Lio/ktor/util/internal/f;

    .line 19
    .line 20
    if-eqz v3, :cond_4

    .line 21
    .line 22
    if-eqz v1, :cond_3

    .line 23
    .line 24
    invoke-direct {p1}, Lio/ktor/util/internal/d;->h()Lio/ktor/util/internal/d;

    .line 25
    .line 26
    .line 27
    sget-object v3, Lio/ktor/util/internal/d;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 28
    .line 29
    check-cast v2, Lio/ktor/util/internal/f;

    .line 30
    .line 31
    iget-object v2, v2, Lio/ktor/util/internal/f;->a:Lio/ktor/util/internal/d;

    .line 32
    .line 33
    invoke-static {v3, v1, p1, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-object p1, v1

    .line 37
    goto :goto_0

    .line 38
    :cond_3
    iget-object p1, p1, Lio/ktor/util/internal/d;->_prev:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {p1}, Lio/ktor/util/internal/c;->a(Ljava/lang/Object;)Lio/ktor/util/internal/d;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    goto :goto_1

    .line 45
    :cond_4
    iget-object v3, p0, Lio/ktor/util/internal/d;->_prev:Ljava/lang/Object;

    .line 46
    .line 47
    instance-of v4, v3, Lio/ktor/util/internal/f;

    .line 48
    .line 49
    if-eqz v4, :cond_5

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_5
    if-eq v2, p0, :cond_6

    .line 53
    .line 54
    const-string v1, "null cannot be cast to non-null type io.ktor.util.internal.LockFreeLinkedListNode{ io.ktor.util.internal.LockFreeLinkedListKt.Node }"

    .line 55
    .line 56
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    move-object v1, v2

    .line 60
    check-cast v1, Lio/ktor/util/internal/d;

    .line 61
    .line 62
    move-object v5, v1

    .line 63
    move-object v1, p1

    .line 64
    move-object p1, v5

    .line 65
    goto :goto_1

    .line 66
    :cond_6
    if-ne v3, p1, :cond_7

    .line 67
    .line 68
    return-object v0

    .line 69
    :cond_7
    sget-object v2, Lio/ktor/util/internal/d;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 70
    .line 71
    invoke-static {v2, p0, v3, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-eqz v2, :cond_0

    .line 76
    .line 77
    iget-object v2, p1, Lio/ktor/util/internal/d;->_prev:Ljava/lang/Object;

    .line 78
    .line 79
    instance-of v2, v2, Lio/ktor/util/internal/f;

    .line 80
    .line 81
    if-nez v2, :cond_0

    .line 82
    .line 83
    return-object v0
.end method

.method private final c()Lio/ktor/util/internal/d;
    .locals 2

    .line 1
    move-object v0, p0

    .line 2
    :goto_0
    instance-of v1, v0, Lio/ktor/util/internal/b;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lio/ktor/util/internal/d;->f()Lio/ktor/util/internal/d;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eq v0, p0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 15
    .line 16
    const-string v1, "Cannot loop to this while looking for list head"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method private final d(Lio/ktor/util/internal/d;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/ktor/util/internal/d;->g()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/ktor/util/internal/d;->_prev:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-static {v0}, Lio/ktor/util/internal/c;->a(Ljava/lang/Object;)Lio/ktor/util/internal/d;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {p1, v0, v1}, Lio/ktor/util/internal/d;->b(Lio/ktor/util/internal/d;Lio/ktor/util/internal/e;)Lio/ktor/util/internal/d;

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final h()Lio/ktor/util/internal/d;
    .locals 3

    .line 1
    :cond_0
    iget-object v0, p0, Lio/ktor/util/internal/d;->_prev:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lio/ktor/util/internal/f;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    check-cast v0, Lio/ktor/util/internal/f;

    .line 8
    .line 9
    iget-object v0, v0, Lio/ktor/util/internal/f;->a:Lio/ktor/util/internal/d;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    if-ne v0, p0, :cond_2

    .line 13
    .line 14
    invoke-direct {p0}, Lio/ktor/util/internal/d;->c()Lio/ktor/util/internal/d;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const-string v1, "null cannot be cast to non-null type io.ktor.util.internal.LockFreeLinkedListNode{ io.ktor.util.internal.LockFreeLinkedListKt.Node }"

    .line 20
    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    move-object v1, v0

    .line 25
    check-cast v1, Lio/ktor/util/internal/d;

    .line 26
    .line 27
    :goto_0
    invoke-direct {v1}, Lio/ktor/util/internal/d;->j()Lio/ktor/util/internal/f;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sget-object v2, Lio/ktor/util/internal/d;->b:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 32
    .line 33
    invoke-static {v2, p0, v0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    check-cast v0, Lio/ktor/util/internal/d;

    .line 40
    .line 41
    return-object v0
.end method

.method private final j()Lio/ktor/util/internal/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/ktor/util/internal/d;->_removedRef:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lio/ktor/util/internal/f;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lio/ktor/util/internal/f;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lio/ktor/util/internal/f;-><init>(Lio/ktor/util/internal/d;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lio/ktor/util/internal/d;->c:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 13
    .line 14
    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->lazySet(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final e()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lio/ktor/util/internal/d;->_next:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Lio/ktor/util/internal/e;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    check-cast v0, Lio/ktor/util/internal/e;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Lio/ktor/util/internal/e;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    goto :goto_0
.end method

.method public final f()Lio/ktor/util/internal/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/ktor/util/internal/d;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lio/ktor/util/internal/c;->a(Ljava/lang/Object;)Lio/ktor/util/internal/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final g()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lio/ktor/util/internal/d;->h()Lio/ktor/util/internal/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/ktor/util/internal/d;->_next:Ljava/lang/Object;

    .line 6
    .line 7
    const-string v2, "null cannot be cast to non-null type io.ktor.util.internal.Removed"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v1, Lio/ktor/util/internal/f;

    .line 13
    .line 14
    iget-object v1, v1, Lio/ktor/util/internal/f;->a:Lio/ktor/util/internal/d;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    :goto_0
    move-object v3, v2

    .line 18
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lio/ktor/util/internal/d;->e()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    instance-of v5, v4, Lio/ktor/util/internal/f;

    .line 23
    .line 24
    if-eqz v5, :cond_1

    .line 25
    .line 26
    invoke-direct {v1}, Lio/ktor/util/internal/d;->h()Lio/ktor/util/internal/d;

    .line 27
    .line 28
    .line 29
    check-cast v4, Lio/ktor/util/internal/f;

    .line 30
    .line 31
    iget-object v1, v4, Lio/ktor/util/internal/f;->a:Lio/ktor/util/internal/d;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    invoke-virtual {v0}, Lio/ktor/util/internal/d;->e()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    instance-of v5, v4, Lio/ktor/util/internal/f;

    .line 39
    .line 40
    if-eqz v5, :cond_3

    .line 41
    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    invoke-direct {v0}, Lio/ktor/util/internal/d;->h()Lio/ktor/util/internal/d;

    .line 45
    .line 46
    .line 47
    sget-object v5, Lio/ktor/util/internal/d;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 48
    .line 49
    check-cast v4, Lio/ktor/util/internal/f;

    .line 50
    .line 51
    iget-object v4, v4, Lio/ktor/util/internal/f;->a:Lio/ktor/util/internal/d;

    .line 52
    .line 53
    invoke-static {v5, v3, v0, v4}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-object v0, v3

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v0, v0, Lio/ktor/util/internal/d;->_prev:Ljava/lang/Object;

    .line 59
    .line 60
    invoke-static {v0}, Lio/ktor/util/internal/c;->a(Ljava/lang/Object;)Lio/ktor/util/internal/d;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    if-eq v4, p0, :cond_5

    .line 66
    .line 67
    const-string v3, "null cannot be cast to non-null type io.ktor.util.internal.LockFreeLinkedListNode{ io.ktor.util.internal.LockFreeLinkedListKt.Node }"

    .line 68
    .line 69
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    move-object v3, v4

    .line 73
    check-cast v3, Lio/ktor/util/internal/d;

    .line 74
    .line 75
    if-ne v3, v1, :cond_4

    .line 76
    .line 77
    return-void

    .line 78
    :cond_4
    move-object v6, v3

    .line 79
    move-object v3, v0

    .line 80
    move-object v0, v6

    .line 81
    goto :goto_1

    .line 82
    :cond_5
    sget-object v4, Lio/ktor/util/internal/d;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 83
    .line 84
    invoke-static {v4, v0, p0, v1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    if-eqz v4, :cond_0

    .line 89
    .line 90
    return-void
.end method

.method public i()Z
    .locals 4

    .line 1
    :cond_0
    invoke-virtual {p0}, Lio/ktor/util/internal/d;->e()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lio/ktor/util/internal/f;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    if-ne v0, p0, :cond_2

    .line 12
    .line 13
    return v2

    .line 14
    :cond_2
    const-string v1, "null cannot be cast to non-null type io.ktor.util.internal.LockFreeLinkedListNode{ io.ktor.util.internal.LockFreeLinkedListKt.Node }"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v1, v0

    .line 20
    check-cast v1, Lio/ktor/util/internal/d;

    .line 21
    .line 22
    invoke-direct {v1}, Lio/ktor/util/internal/d;->j()Lio/ktor/util/internal/f;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget-object v3, Lio/ktor/util/internal/d;->a:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 27
    .line 28
    invoke-static {v3, p0, v0, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-direct {p0, v1}, Lio/ktor/util/internal/d;->d(Lio/ktor/util/internal/d;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/16 v1, 0x40

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
