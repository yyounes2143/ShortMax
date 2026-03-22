.class public final Landroidx/compose/runtime/snapshots/SnapshotWeakSet;
.super Ljava/lang/Object;
.source "SnapshotWeakSet.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSnapshotWeakSet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotWeakSet.kt\nandroidx/compose/runtime/snapshots/SnapshotWeakSet\n+ 2 ArrayUtils.android.kt\nandroidx/compose/runtime/collection/ArrayUtils_androidKt\n*L\n1#1,243:1\n27#2,2:244\n27#2,2:246\n27#2,2:248\n*S KotlinDebug\n*F\n+ 1 SnapshotWeakSet.kt\nandroidx/compose/runtime/snapshots/SnapshotWeakSet\n*L\n74#1:244,2\n80#1:246,2\n96#1:248,2\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private hashes:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private size:I

.field private values:[Landroidx/compose/runtime/internal/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroidx/compose/runtime/internal/WeakReference<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    new-array v1, v0, [I

    .line 7
    .line 8
    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    .line 9
    .line 10
    new-array v0, v0, [Landroidx/compose/runtime/internal/WeakReference;

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    .line 13
    .line 14
    return-void
.end method

.method private final find(Ljava/lang/Object;I)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->size:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-gt v1, v0, :cond_4

    .line 7
    .line 8
    add-int v2, v1, v0

    .line 9
    .line 10
    ushr-int/lit8 v2, v2, 0x1

    .line 11
    .line 12
    iget-object v3, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    .line 13
    .line 14
    aget v3, v3, v2

    .line 15
    .line 16
    if-ge v3, p2, :cond_0

    .line 17
    .line 18
    add-int/lit8 v1, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    if-le v3, p2, :cond_1

    .line 22
    .line 23
    add-int/lit8 v0, v2, -0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    .line 27
    .line 28
    aget-object v0, v0, v2

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    :goto_1
    if-ne p1, v0, :cond_3

    .line 39
    .line 40
    return v2

    .line 41
    :cond_3
    invoke-direct {p0, v2, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->findExactIndex(ILjava/lang/Object;I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1

    .line 46
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    neg-int p1, v1

    .line 49
    return p1
.end method

.method private final findExactIndex(ILjava/lang/Object;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;I)I"
        }
    .end annotation

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 2
    .line 3
    :goto_0
    const/4 v1, 0x0

    .line 4
    const/4 v2, -0x1

    .line 5
    if-ge v2, v0, :cond_3

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    .line 8
    .line 9
    aget v2, v2, v0

    .line 10
    .line 11
    if-eq v2, p3, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    .line 15
    .line 16
    aget-object v2, v2, v0

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    :cond_1
    if-ne v1, p2, :cond_2

    .line 25
    .line 26
    return v0

    .line 27
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 31
    .line 32
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->size:I

    .line 33
    .line 34
    :goto_2
    if-ge p1, v0, :cond_7

    .line 35
    .line 36
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    .line 37
    .line 38
    aget v2, v2, p1

    .line 39
    .line 40
    if-eq v2, p3, :cond_4

    .line 41
    .line 42
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 43
    .line 44
    neg-int p1, p1

    .line 45
    return p1

    .line 46
    :cond_4
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    .line 47
    .line 48
    aget-object v2, v2, p1

    .line 49
    .line 50
    if-eqz v2, :cond_5

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    goto :goto_4

    .line 57
    :cond_5
    move-object v2, v1

    .line 58
    :goto_4
    if-ne v2, p2, :cond_6

    .line 59
    .line 60
    return p1

    .line 61
    :cond_6
    add-int/lit8 p1, p1, 0x1

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_7
    iget p1, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->size:I

    .line 65
    .line 66
    goto :goto_3
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 14
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->size:I

    .line 2
    .line 3
    invoke-static {p1}, Landroidx/compose/runtime/internal/System_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, p1, v1}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->find(Ljava/lang/Object;I)I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ltz v3, :cond_1

    .line 15
    .line 16
    return v2

    .line 17
    :cond_0
    const/4 v3, -0x1

    .line 18
    :cond_1
    const/4 v4, 0x1

    .line 19
    add-int/2addr v3, v4

    .line 20
    neg-int v3, v3

    .line 21
    iget-object v5, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    .line 22
    .line 23
    array-length v6, v5

    .line 24
    if-ne v0, v6, :cond_2

    .line 25
    .line 26
    mul-int/lit8 v6, v6, 0x2

    .line 27
    .line 28
    new-array v12, v6, [Landroidx/compose/runtime/internal/WeakReference;

    .line 29
    .line 30
    new-array v13, v6, [I

    .line 31
    .line 32
    add-int/lit8 v6, v3, 0x1

    .line 33
    .line 34
    sub-int v7, v0, v3

    .line 35
    .line 36
    invoke-static {v5, v3, v12, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    .line 38
    .line 39
    iget-object v5, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    .line 40
    .line 41
    invoke-static {v5, v2, v12, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    .line 45
    .line 46
    invoke-static {v2, v13, v6, v3, v0}, Lkotlin/collections/n;->l([I[IIII)[I

    .line 47
    .line 48
    .line 49
    iget-object v5, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    .line 50
    .line 51
    const/4 v10, 0x6

    .line 52
    const/4 v11, 0x0

    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v8, 0x0

    .line 55
    move-object v6, v13

    .line 56
    move v9, v3

    .line 57
    invoke-static/range {v5 .. v11}, Lkotlin/collections/n;->s([I[IIIIILjava/lang/Object;)[I

    .line 58
    .line 59
    .line 60
    iput-object v12, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    .line 61
    .line 62
    iput-object v13, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    add-int/lit8 v2, v3, 0x1

    .line 66
    .line 67
    sub-int v6, v0, v3

    .line 68
    .line 69
    invoke-static {v5, v3, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    .line 71
    .line 72
    iget-object v5, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    .line 73
    .line 74
    invoke-static {v5, v5, v2, v3, v0}, Lkotlin/collections/n;->l([I[IIII)[I

    .line 75
    .line 76
    .line 77
    :goto_0
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    .line 78
    .line 79
    new-instance v2, Landroidx/compose/runtime/internal/WeakReference;

    .line 80
    .line 81
    invoke-direct {v2, p1}, Landroidx/compose/runtime/internal/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    aput-object v2, v0, v3

    .line 85
    .line 86
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    .line 87
    .line 88
    aput v1, p1, v3

    .line 89
    .line 90
    iget p1, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->size:I

    .line 91
    .line 92
    add-int/2addr p1, v4

    .line 93
    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->size:I

    .line 94
    .line 95
    return v4
.end method

.method public final getHashes$runtime()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSize$runtime()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->size:I

    .line 2
    .line 3
    return v0
.end method

.method public final getValues$runtime()[Landroidx/compose/runtime/internal/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Landroidx/compose/runtime/internal/WeakReference<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isValid$runtime()Z
    .locals 8
    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->size:I

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    .line 6
    .line 7
    array-length v3, v1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-le v0, v3, :cond_0

    .line 10
    .line 11
    return v4

    .line 12
    :cond_0
    const/high16 v5, -0x80000000

    .line 13
    .line 14
    move v6, v4

    .line 15
    :goto_0
    if-ge v6, v0, :cond_4

    .line 16
    .line 17
    aget v7, v2, v6

    .line 18
    .line 19
    if-ge v7, v5, :cond_1

    .line 20
    .line 21
    return v4

    .line 22
    :cond_1
    aget-object v5, v1, v6

    .line 23
    .line 24
    if-nez v5, :cond_2

    .line 25
    .line 26
    return v4

    .line 27
    :cond_2
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    if-eqz v5, :cond_3

    .line 32
    .line 33
    invoke-static {v5}, Landroidx/compose/runtime/internal/System_jvmKt;->identityHashCode(Ljava/lang/Object;)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    if-eq v7, v5, :cond_3

    .line 38
    .line 39
    return v4

    .line 40
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 41
    .line 42
    move v5, v7

    .line 43
    goto :goto_0

    .line 44
    :cond_4
    :goto_1
    if-ge v0, v3, :cond_7

    .line 45
    .line 46
    aget v5, v2, v0

    .line 47
    .line 48
    if-eqz v5, :cond_5

    .line 49
    .line 50
    return v4

    .line 51
    :cond_5
    aget-object v5, v1, v0

    .line 52
    .line 53
    if-eqz v5, :cond_6

    .line 54
    .line 55
    return v4

    .line 56
    :cond_6
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_7
    const/4 v0, 0x1

    .line 60
    return v0
.end method

.method public final removeIf(Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getSize$runtime()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    move v3, v2

    .line 8
    :goto_0
    const/4 v4, 0x0

    .line 9
    if-ge v2, v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getValues$runtime()[Landroidx/compose/runtime/internal/WeakReference;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    aget-object v5, v5, v2

    .line 16
    .line 17
    if-eqz v5, :cond_0

    .line 18
    .line 19
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    :cond_0
    if-eqz v4, :cond_2

    .line 24
    .line 25
    invoke-interface {p1, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-nez v4, :cond_2

    .line 36
    .line 37
    if-eq v3, v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getValues$runtime()[Landroidx/compose/runtime/internal/WeakReference;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    aput-object v5, v4, v3

    .line 44
    .line 45
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getHashes$runtime()[I

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getHashes$runtime()[I

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    aget v5, v5, v2

    .line 54
    .line 55
    aput v5, v4, v3

    .line 56
    .line 57
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 58
    .line 59
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    move p1, v3

    .line 63
    :goto_1
    if-ge p1, v0, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getValues$runtime()[Landroidx/compose/runtime/internal/WeakReference;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    aput-object v4, v2, p1

    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->getHashes$runtime()[I

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    aput v1, v2, p1

    .line 76
    .line 77
    add-int/lit8 p1, p1, 0x1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    if-eq v3, v0, :cond_5

    .line 81
    .line 82
    invoke-virtual {p0, v3}, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->setSize$runtime(I)V

    .line 83
    .line 84
    .line 85
    :cond_5
    return-void
.end method

.method public final setHashes$runtime([I)V
    .locals 0
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->hashes:[I

    .line 2
    .line 3
    return-void
.end method

.method public final setSize$runtime(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->size:I

    .line 2
    .line 3
    return-void
.end method

.method public final setValues$runtime([Landroidx/compose/runtime/internal/WeakReference;)V
    .locals 0
    .param p1    # [Landroidx/compose/runtime/internal/WeakReference;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroidx/compose/runtime/internal/WeakReference<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotWeakSet;->values:[Landroidx/compose/runtime/internal/WeakReference;

    .line 2
    .line 3
    return-void
.end method
