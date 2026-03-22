.class public final Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;
.super Ljava/lang/Object;
.source "SnapshotDoubleIndexHeap.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSnapshotDoubleIndexHeap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SnapshotDoubleIndexHeap.kt\nandroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap\n+ 2 SnapshotId.jvm.kt\nandroidx/compose/runtime/snapshots/SnapshotId_jvmKt\n*L\n1#1,201:1\n55#2:202\n58#2,2:203\n55#2:205\n31#2:206\n55#2:207\n55#2:208\n55#2:209\n55#2:210\n31#2:211\n55#2:212\n31#2:213\n55#2:214\n31#2:215\n55#2:216\n31#2:217\n55#2:218\n55#2,5:219\n58#2,2:224\n62#2:226\n65#2,2:227\n*S KotlinDebug\n*F\n+ 1 SnapshotDoubleIndexHeap.kt\nandroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap\n*L\n56#1:202\n66#1:203,2\n92#1:205\n92#1:206\n101#1:207\n102#1:208\n108#1:209\n112#1:210\n112#1:211\n132#1:212\n132#1:213\n133#1:214\n133#1:215\n137#1:216\n137#1:217\n153#1:218\n154#1:219,5\n155#1:224,2\n166#1:226\n171#1:227,2\n*E\n"
    }
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private firstFreeHandle:I

.field private handles:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private index:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private size:I

.field private values:[J
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
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->snapshotIdArrayWithCapacity(I)[J

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[J

    .line 11
    .line 12
    new-array v1, v0, [I

    .line 13
    .line 14
    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    .line 15
    .line 16
    new-array v1, v0, [I

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    :goto_0
    if-ge v2, v0, :cond_0

    .line 20
    .line 21
    add-int/lit8 v3, v2, 0x1

    .line 22
    .line 23
    aput v3, v1, v2

    .line 24
    .line 25
    move v2, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iput-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 28
    .line 29
    return-void
.end method

.method private final allocateHandle()I
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    .line 5
    .line 6
    if-lt v1, v0, :cond_1

    .line 7
    .line 8
    mul-int/lit8 v0, v0, 0x2

    .line 9
    .line 10
    new-array v8, v0, [I

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_0

    .line 14
    .line 15
    add-int/lit8 v2, v1, 0x1

    .line 16
    .line 17
    aput v2, v8, v1

    .line 18
    .line 19
    move v1, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 22
    .line 23
    const/16 v6, 0xe

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    move-object v2, v8

    .line 30
    invoke-static/range {v1 .. v7}, Lkotlin/collections/n;->s([I[IIIIILjava/lang/Object;)[I

    .line 31
    .line 32
    .line 33
    iput-object v8, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 34
    .line 35
    :cond_1
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    .line 36
    .line 37
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 38
    .line 39
    aget v1, v1, v0

    .line 40
    .line 41
    iput v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    .line 42
    .line 43
    return v0
.end method

.method private final ensure(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[J

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    if-gt p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    mul-int/lit8 v0, v0, 0x2

    .line 8
    .line 9
    invoke-static {v0}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->snapshotIdArrayWithCapacity(I)[J

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    new-array v0, v0, [I

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[J

    .line 16
    .line 17
    const/16 v6, 0xc

    .line 18
    .line 19
    const/4 v7, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    const/4 v5, 0x0

    .line 23
    move-object v2, p1

    .line 24
    invoke-static/range {v1 .. v7}, Lkotlin/collections/n;->t([J[JIIIILjava/lang/Object;)[J

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    .line 28
    .line 29
    const/16 v6, 0xe

    .line 30
    .line 31
    move-object v2, v0

    .line 32
    invoke-static/range {v1 .. v7}, Lkotlin/collections/n;->s([I[IIIIILjava/lang/Object;)[I

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[J

    .line 36
    .line 37
    iput-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    .line 38
    .line 39
    return-void
.end method

.method private final freeHandle(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    .line 4
    .line 5
    aput v1, v0, p1

    .line 6
    .line 7
    iput p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->firstFreeHandle:I

    .line 8
    .line 9
    return-void
.end method

.method public static synthetic lowestOrDefault$default(Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;JILjava/lang/Object;)J
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const-wide/16 p1, 0x0

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->lowestOrDefault(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    return-wide p0
.end method

.method private final shiftDown(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[J

    .line 2
    .line 3
    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 4
    .line 5
    shr-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    :goto_0
    if-ge p1, v1, :cond_2

    .line 8
    .line 9
    add-int/lit8 v2, p1, 0x1

    .line 10
    .line 11
    shl-int/lit8 v2, v2, 0x1

    .line 12
    .line 13
    add-int/lit8 v3, v2, -0x1

    .line 14
    .line 15
    iget v4, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 16
    .line 17
    if-ge v2, v4, :cond_1

    .line 18
    .line 19
    aget-wide v4, v0, v2

    .line 20
    .line 21
    aget-wide v6, v0, v3

    .line 22
    .line 23
    invoke-static {v4, v5, v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    if-gez v4, :cond_1

    .line 28
    .line 29
    aget-wide v3, v0, v2

    .line 30
    .line 31
    aget-wide v5, v0, p1

    .line 32
    .line 33
    invoke-static {v3, v4, v5, v6}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-gez v3, :cond_0

    .line 38
    .line 39
    invoke-direct {p0, v2, p1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->swap(II)V

    .line 40
    .line 41
    .line 42
    move p1, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void

    .line 45
    :cond_1
    aget-wide v4, v0, v3

    .line 46
    .line 47
    aget-wide v6, v0, p1

    .line 48
    .line 49
    invoke-static {v4, v5, v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-gez v2, :cond_2

    .line 54
    .line 55
    invoke-direct {p0, v3, p1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->swap(II)V

    .line 56
    .line 57
    .line 58
    move p1, v3

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    return-void
.end method

.method private final shiftUp(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[J

    .line 2
    .line 3
    aget-wide v1, v0, p1

    .line 4
    .line 5
    :goto_0
    if-lez p1, :cond_0

    .line 6
    .line 7
    add-int/lit8 v3, p1, 0x1

    .line 8
    .line 9
    shr-int/lit8 v3, v3, 0x1

    .line 10
    .line 11
    add-int/lit8 v3, v3, -0x1

    .line 12
    .line 13
    aget-wide v4, v0, v3

    .line 14
    .line 15
    invoke-static {v4, v5, v1, v2}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-lez v4, :cond_0

    .line 20
    .line 21
    invoke-direct {p0, v3, p1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->swap(II)V

    .line 22
    .line 23
    .line 24
    move p1, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    return-void
.end method

.method private final swap(II)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[J

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 6
    .line 7
    aget-wide v3, v0, p1

    .line 8
    .line 9
    aget-wide v5, v0, p2

    .line 10
    .line 11
    aput-wide v5, v0, p1

    .line 12
    .line 13
    aput-wide v3, v0, p2

    .line 14
    .line 15
    aget v0, v1, p1

    .line 16
    .line 17
    aget v3, v1, p2

    .line 18
    .line 19
    aput v3, v1, p1

    .line 20
    .line 21
    aput v0, v1, p2

    .line 22
    .line 23
    aput p1, v2, v3

    .line 24
    .line 25
    aput p2, v2, v0

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final add(J)I
    .locals 3

    .line 1
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->ensure(I)V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 9
    .line 10
    add-int/lit8 v1, v0, 0x1

    .line 11
    .line 12
    iput v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 13
    .line 14
    invoke-direct {p0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->allocateHandle()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[J

    .line 19
    .line 20
    aput-wide p1, v2, v0

    .line 21
    .line 22
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    .line 23
    .line 24
    aput v1, p1, v0

    .line 25
    .line 26
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 27
    .line 28
    aput v0, p1, v1

    .line 29
    .line 30
    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->shiftUp(I)V

    .line 31
    .line 32
    .line 33
    return v1
.end method

.method public final getSize()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 2
    .line 3
    return v0
.end method

.method public final lowestOrDefault(J)J
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[J

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    aget-wide v0, p1, p2

    .line 9
    .line 10
    move-wide p1, v0

    .line 11
    :cond_0
    return-wide p1
.end method

.method public final remove(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 2
    .line 3
    aget v0, v0, p1

    .line 4
    .line 5
    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 6
    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->swap(II)V

    .line 10
    .line 11
    .line 12
    iget v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 13
    .line 14
    add-int/lit8 v1, v1, -0x1

    .line 15
    .line 16
    iput v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 17
    .line 18
    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->shiftUp(I)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0, v0}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->shiftDown(I)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1}, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->freeHandle(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final validate()V
    .locals 8
    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->size:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    move v2, v1

    .line 5
    :goto_0
    if-ge v2, v0, :cond_1

    .line 6
    .line 7
    add-int/lit8 v3, v2, 0x1

    .line 8
    .line 9
    shr-int/lit8 v4, v3, 0x1

    .line 10
    .line 11
    sub-int/2addr v4, v1

    .line 12
    iget-object v5, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[J

    .line 13
    .line 14
    aget-wide v6, v5, v4

    .line 15
    .line 16
    aget-wide v4, v5, v2

    .line 17
    .line 18
    invoke-static {v6, v7, v4, v5}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-gtz v4, :cond_0

    .line 23
    .line 24
    move v2, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    new-instance v1, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v3, "Index "

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " is out of place"

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v0

    .line 58
    :cond_1
    return-void
.end method

.method public final validateHandle(IJ)V
    .locals 4
    .annotation build Lorg/jetbrains/annotations/TestOnly;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->handles:[I

    .line 2
    .line 3
    aget v0, v0, p1

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->index:[I

    .line 6
    .line 7
    aget v1, v1, v0

    .line 8
    .line 9
    if-ne v1, p1, :cond_1

    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[J

    .line 12
    .line 13
    aget-wide v2, v1, v0

    .line 14
    .line 15
    cmp-long v1, v2, p2

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "Value for handle "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, " was "

    .line 34
    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Landroidx/compose/runtime/snapshots/SnapshotDoubleIndexHeap;->values:[J

    .line 39
    .line 40
    aget-wide v2, p1, v0

    .line 41
    .line 42
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, " but was supposed to be "

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p2

    .line 67
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 68
    .line 69
    new-instance p3, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v0, "Index for handle "

    .line 75
    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p1, " is corrupted"

    .line 83
    .line 84
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p2
.end method
