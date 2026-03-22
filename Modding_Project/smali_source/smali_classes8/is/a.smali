.class public Lis/a;
.super Lhs/a;
.source "ChunkBuffer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lis/a$d;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nChunkBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChunkBuffer.kt\nio/ktor/utils/io/core/internal/ChunkBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 AtomicFU.common.kt\nkotlinx/atomicfu/AtomicFU_commonKt\n*L\n1#1,180:1\n1#2:181\n360#3,4:182\n360#3,4:186\n382#3,4:190\n*S KotlinDebug\n*F\n+ 1 ChunkBuffer.kt\nio/ktor/utils/io/core/internal/ChunkBuffer\n*L\n89#1:182,4\n99#1:186,4\n116#1:190,4\n*E\n"
    }
.end annotation

.annotation runtime Lms/c;
.end annotation


# static fields
.field public static final j:Lis/a$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final synthetic k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

.field private static final synthetic l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final m:Lio/ktor/utils/io/pool/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/b<",
            "Lis/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final n:Lis/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final o:Lio/ktor/utils/io/pool/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/b<",
            "Lis/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final p:Lio/ktor/utils/io/pool/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/b<",
            "Lis/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final h:Lio/ktor/utils/io/pool/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/b<",
            "Lis/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lis/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private volatile synthetic nextRef:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic refCount:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lis/a$d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lis/a$d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lis/a;->j:Lis/a$d;

    .line 8
    .line 9
    new-instance v0, Lis/a$a;

    .line 10
    .line 11
    invoke-direct {v0}, Lis/a$a;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lis/a;->m:Lio/ktor/utils/io/pool/b;

    .line 15
    .line 16
    new-instance v2, Lis/a;

    .line 17
    .line 18
    sget-object v3, Lfs/c;->a:Lfs/c$a;

    .line 19
    .line 20
    invoke-virtual {v3}, Lfs/c$a;->a()Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-direct {v2, v3, v1, v0, v1}, Lis/a;-><init>(Ljava/nio/ByteBuffer;Lis/a;Lio/ktor/utils/io/pool/b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    .line 26
    .line 27
    sput-object v2, Lis/a;->n:Lis/a;

    .line 28
    .line 29
    new-instance v0, Lis/a$b;

    .line 30
    .line 31
    invoke-direct {v0}, Lis/a$b;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lis/a;->o:Lio/ktor/utils/io/pool/b;

    .line 35
    .line 36
    new-instance v0, Lis/a$c;

    .line 37
    .line 38
    invoke-direct {v0}, Lis/a$c;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lis/a;->p:Lio/ktor/utils/io/pool/b;

    .line 42
    .line 43
    const-class v0, Ljava/lang/Object;

    .line 44
    .line 45
    const-string v1, "nextRef"

    .line 46
    .line 47
    const-class v2, Lis/a;

    .line 48
    .line 49
    invoke-static {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lis/a;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 54
    .line 55
    const-string v0, "refCount"

    .line 56
    .line 57
    invoke-static {v2, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lis/a;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 62
    .line 63
    return-void
.end method

.method private constructor <init>(Ljava/nio/ByteBuffer;Lis/a;Lio/ktor/utils/io/pool/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Lis/a;",
            "Lio/ktor/utils/io/pool/b<",
            "Lis/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "memory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lhs/a;-><init>(Ljava/nio/ByteBuffer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p3, p0, Lis/a;->h:Lio/ktor/utils/io/pool/b;

    if-eq p2, p0, :cond_0

    .line 4
    iput-object v0, p0, Lis/a;->nextRef:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lis/a;->refCount:I

    .line 6
    iput-object p2, p0, Lis/a;->i:Lis/a;

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "A chunk couldn\'t be a view of itself."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;Lis/a;Lio/ktor/utils/io/pool/b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lis/a;-><init>(Ljava/nio/ByteBuffer;Lis/a;Lio/ktor/utils/io/pool/b;)V

    return-void
.end method

.method public static final synthetic t()Lis/a;
    .locals 1

    .line 1
    sget-object v0, Lis/a;->n:Lis/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic u()Lio/ktor/utils/io/pool/b;
    .locals 1

    .line 1
    sget-object v0, Lis/a;->m:Lio/ktor/utils/io/pool/b;

    .line 2
    .line 3
    return-object v0
.end method

.method private final v(Lis/a;)V
    .locals 2

    .line 1
    sget-object v0, Lis/a;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, p0, v1, p1}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 12
    .line 13
    const-string v0, "This chunk has already a next chunk."

    .line 14
    .line 15
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw p1
.end method


# virtual methods
.method public A(Lio/ktor/utils/io/pool/b;)V
    .locals 1
    .param p1    # Lio/ktor/utils/io/pool/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/pool/b<",
            "Lis/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "pool"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lis/a;->B()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    iget-object v0, p0, Lis/a;->i:Lis/a;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lis/a;->D()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lis/a;->A(Lio/ktor/utils/io/pool/b;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-object v0, p0, Lis/a;->h:Lio/ktor/utils/io/pool/b;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object p1, v0

    .line 29
    :goto_0
    invoke-interface {p1, p0}, Lio/ktor/utils/io/pool/b;->y(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    :goto_1
    return-void
.end method

.method public final B()Z
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lis/a;->refCount:I

    .line 2
    .line 3
    if-lez v0, :cond_2

    .line 4
    .line 5
    add-int/lit8 v1, v0, -0x1

    .line 6
    .line 7
    sget-object v2, Lis/a;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 8
    .line 9
    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0

    .line 21
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    .line 23
    const-string v1, "Unable to release: it is already released."

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0
.end method

.method public final C(Lis/a;)V
    .locals 0
    .param p1    # Lis/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lis/a;->w()Lis/a;

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lis/a;->v(Lis/a;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    return-void
.end method

.method public final D()V
    .locals 3

    .line 1
    sget-object v0, Lis/a;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lis/a;->w()Lis/a;

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lis/a;->i:Lis/a;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    const-string v1, "Unable to unlink: buffer is in use."

    .line 21
    .line 22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw v0
.end method

.method public final E()V
    .locals 3

    .line 1
    :cond_0
    iget v0, p0, Lis/a;->refCount:I

    .line 2
    .line 3
    if-ltz v0, :cond_2

    .line 4
    .line 5
    if-gtz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    sget-object v2, Lis/a;->l:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 9
    .line 10
    invoke-virtual {v2, p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v1, "This instance is already in use but somehow appeared in the pool."

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v1, "This instance is already disposed and couldn\'t be borrowed."

    .line 28
    .line 29
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method

.method public final q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lis/a;->i:Lis/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lhs/a;->q()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lis/a;->nextRef:Ljava/lang/Object;

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    const-string v1, "Unable to reset buffer with origin"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public final w()Lis/a;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lis/a;->k:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lis/a;

    .line 9
    .line 10
    return-object v0
.end method

.method public final x()Lis/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lis/a;->nextRef:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lis/a;

    .line 4
    .line 5
    return-object v0
.end method

.method public final y()Lis/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lis/a;->i:Lis/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()I
    .locals 1

    .line 1
    iget v0, p0, Lis/a;->refCount:I

    .line 2
    .line 3
    return v0
.end method
