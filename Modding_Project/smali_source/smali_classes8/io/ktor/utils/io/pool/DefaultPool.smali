.class public abstract Lio/ktor/utils/io/pool/DefaultPool;
.super Ljava/lang/Object;
.source "DefaultPool.kt"

# interfaces
.implements Lio/ktor/utils/io/pool/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/ktor/utils/io/pool/DefaultPool$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/ktor/utils/io/pool/b<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDefaultPool.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultPool.kt\nio/ktor/utils/io/pool/DefaultPool\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Atomic.kt\nio/ktor/utils/io/utils/AtomicKt\n*L\n1#1,114:1\n1#2:115\n7#3:116\n*S KotlinDebug\n*F\n+ 1 DefaultPool.kt\nio/ktor/utils/io/pool/DefaultPool\n*L\n111#1:116\n*E\n"
    }
.end annotation


# static fields
.field public static final f:Lio/ktor/utils/io/pool/DefaultPool$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "Lio/ktor/utils/io/pool/DefaultPool<",
            "*>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:Ljava/util/concurrent/atomic/AtomicReferenceArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReferenceArray<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile top:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/ktor/utils/io/pool/DefaultPool$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/ktor/utils/io/pool/DefaultPool$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/ktor/utils/io/pool/DefaultPool;->f:Lio/ktor/utils/io/pool/DefaultPool$a;

    .line 8
    .line 9
    sget-object v0, Lio/ktor/utils/io/pool/DefaultPool$Companion$Top$1;->a:Lio/ktor/utils/io/pool/DefaultPool$Companion$Top$1;

    .line 10
    .line 11
    const-class v1, Lio/ktor/utils/io/pool/DefaultPool;

    .line 12
    .line 13
    invoke-interface {v0}, Lkotlin/reflect/KCallable;->getName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "newUpdater(Owner::class.java, p.name)"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lio/ktor/utils/io/pool/DefaultPool;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 27
    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lio/ktor/utils/io/pool/DefaultPool;->a:I

    .line 5
    .line 6
    if-lez p1, :cond_1

    .line 7
    .line 8
    const v0, 0x1fffffff

    .line 9
    .line 10
    .line 11
    if-gt p1, v0, :cond_0

    .line 12
    .line 13
    mul-int/lit8 p1, p1, 0x4

    .line 14
    .line 15
    add-int/lit8 p1, p1, -0x1

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    mul-int/lit8 p1, p1, 0x2

    .line 22
    .line 23
    iput p1, p0, Lio/ktor/utils/io/pool/DefaultPool;->b:I

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    .line 30
    .line 31
    iput v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->c:I

    .line 32
    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 34
    .line 35
    add-int/lit8 v1, p1, 0x1

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;-><init>(I)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 41
    .line 42
    add-int/lit8 p1, p1, 0x1

    .line 43
    .line 44
    new-array p1, p1, [I

    .line 45
    .line 46
    iput-object p1, p0, Lio/ktor/utils/io/pool/DefaultPool;->e:[I

    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v1, "capacity should be less or equal to 536870911 but it is "

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v1, "capacity should be positive but it is "

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    throw v0
.end method

.method public static final synthetic a(Lio/ktor/utils/io/pool/DefaultPool;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->top:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic b(Lio/ktor/utils/io/pool/DefaultPool;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/ktor/utils/io/pool/DefaultPool;->top:J

    .line 2
    .line 3
    return-void
.end method

.method private final k()I
    .locals 10

    .line 1
    :cond_0
    iget-wide v2, p0, Lio/ktor/utils/io/pool/DefaultPool;->top:J

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    cmp-long v0, v2, v0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    return v1

    .line 11
    :cond_1
    const/16 v0, 0x20

    .line 12
    .line 13
    shr-long v4, v2, v0

    .line 14
    .line 15
    const-wide v6, 0xffffffffL

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    and-long/2addr v4, v6

    .line 21
    const-wide/16 v8, 0x1

    .line 22
    .line 23
    add-long/2addr v4, v8

    .line 24
    and-long/2addr v6, v2

    .line 25
    long-to-int v6, v6

    .line 26
    if-nez v6, :cond_2

    .line 27
    .line 28
    return v1

    .line 29
    :cond_2
    iget-object v1, p0, Lio/ktor/utils/io/pool/DefaultPool;->e:[I

    .line 30
    .line 31
    aget v1, v1, v6

    .line 32
    .line 33
    shl-long/2addr v4, v0

    .line 34
    int-to-long v0, v1

    .line 35
    or-long/2addr v4, v0

    .line 36
    sget-object v0, Lio/ktor/utils/io/pool/DefaultPool;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 37
    .line 38
    move-object v1, p0

    .line 39
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    return v6
.end method

.method private final m(I)V
    .locals 10

    .line 1
    if-lez p1, :cond_1

    .line 2
    .line 3
    :cond_0
    iget-wide v2, p0, Lio/ktor/utils/io/pool/DefaultPool;->top:J

    .line 4
    .line 5
    const/16 v0, 0x20

    .line 6
    .line 7
    shr-long v4, v2, v0

    .line 8
    .line 9
    const-wide v6, 0xffffffffL

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    and-long/2addr v4, v6

    .line 15
    const-wide/16 v8, 0x1

    .line 16
    .line 17
    add-long/2addr v4, v8

    .line 18
    and-long/2addr v6, v2

    .line 19
    long-to-int v1, v6

    .line 20
    shl-long/2addr v4, v0

    .line 21
    int-to-long v6, p1

    .line 22
    or-long/2addr v4, v6

    .line 23
    iget-object v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->e:[I

    .line 24
    .line 25
    aput v1, v0, p1

    .line 26
    .line 27
    sget-object v0, Lio/ktor/utils/io/pool/DefaultPool;->g:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 28
    .line 29
    move-object v1, p0

    .line 30
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 38
    .line 39
    const-string v0, "index should be positive"

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1
.end method

.method private final o()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/pool/DefaultPool;->k()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Lio/ktor/utils/io/pool/DefaultPool;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 10
    .line 11
    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->getAndSet(ILjava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :goto_0
    return-object v1
.end method

.method private final p(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, -0x61c88647

    .line 6
    .line 7
    .line 8
    mul-int/2addr v0, v1

    .line 9
    iget v1, p0, Lio/ktor/utils/io/pool/DefaultPool;->c:I

    .line 10
    .line 11
    ushr-int/2addr v0, v1

    .line 12
    const/4 v1, 0x1

    .line 13
    add-int/2addr v0, v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    const/16 v4, 0x8

    .line 17
    .line 18
    if-ge v3, v4, :cond_2

    .line 19
    .line 20
    iget-object v4, p0, Lio/ktor/utils/io/pool/DefaultPool;->d:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    invoke-static {v4, v0, v5, p1}, Ljs/c;->a(Ljava/util/concurrent/atomic/AtomicReferenceArray;ILjava/lang/Object;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    invoke-direct {p0, v0}, Lio/ktor/utils/io/pool/DefaultPool;->m(I)V

    .line 30
    .line 31
    .line 32
    return v1

    .line 33
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    if-nez v0, :cond_1

    .line 36
    .line 37
    iget v0, p0, Lio/ktor/utils/io/pool/DefaultPool;->b:I

    .line 38
    .line 39
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    return v2
.end method


# virtual methods
.method protected c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "instance"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public close()V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/ktor/utils/io/pool/b$a;->a(Lio/ktor/utils/io/pool/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected d(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "instance"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final dispose()V
    .locals 1

    .line 1
    :goto_0
    invoke-direct {p0}, Lio/ktor/utils/io/pool/DefaultPool;->o()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/pool/DefaultPool;->d(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0
.end method

.method protected abstract l()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final p0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/pool/DefaultPool;->o()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lio/ktor/utils/io/pool/DefaultPool;->c(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/pool/DefaultPool;->l()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    return-object v0
.end method

.method protected q(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "instance"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final y(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    const-string v0, "instance"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->q(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->p(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/pool/DefaultPool;->d(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
