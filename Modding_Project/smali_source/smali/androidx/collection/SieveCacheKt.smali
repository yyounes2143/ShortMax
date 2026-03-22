.class public final Landroidx/collection/SieveCacheKt;
.super Ljava/lang/Object;
.source "SieveCache.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSieveCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SieveCache.kt\nandroidx/collection/SieveCacheKt\n*L\n1#1,1148:1\n1147#1:1149\n1147#1:1150\n*S KotlinDebug\n*F\n+ 1 SieveCache.kt\nandroidx/collection/SieveCacheKt\n*L\n1097#1:1149\n1099#1:1150\n*E\n"
    }
.end annotation


# static fields
.field public static final EmptyNode:J = 0x3fffffffffffffffL

.field private static final EmptyNodes:[J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final InvalidMapping:J = 0x7fffffff7fffffffL

.field public static final InvalidMappingLink:I = 0x7fffffff

.field private static final MaxSize:J = 0x7ffffffeL

.field public static final NodeInvalidLink:I = 0x7fffffff

.field public static final NodeLinkMask:J = 0x7fffffffL

.field public static final NodeLinksMask:J = 0x3fffffffffffffffL

.field public static final NodeMetaAndNextMask:J = -0x3fffffff80000001L

.field public static final NodeMetaAndPreviousMask:J = -0x80000000L

.field public static final NodeMetaMask:J = -0x4000000000000000L

.field public static final NodeVisitedBit:J = 0x4000000000000000L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    sput-object v0, Landroidx/collection/SieveCacheKt;->EmptyNodes:[J

    .line 5
    .line 6
    return-void
.end method

.method public static final clearVisitedBit(J)J
    .locals 2

    .line 1
    const-wide v0, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    and-long/2addr p0, v0

    .line 7
    return-wide p0
.end method

.method public static final createDstMapping(JI)J
    .locals 2

    .line 1
    const-wide v0, -0x100000000L

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    and-long/2addr p0, v0

    .line 7
    int-to-long v0, p2

    .line 8
    or-long/2addr p0, v0

    .line 9
    return-wide p0
.end method

.method public static final createLinkToNext(I)J
    .locals 4

    .line 1
    int-to-long v0, p0

    .line 2
    const-wide/32 v2, 0x7fffffff

    .line 3
    .line 4
    .line 5
    and-long/2addr v0, v2

    .line 6
    const-wide v2, 0x3fffffff80000000L    # 1.9999995231628418

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    or-long/2addr v0, v2

    .line 12
    return-wide v0
.end method

.method public static final createLinks(JII[I)J
    .locals 3
    .param p4    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mapping"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    and-long/2addr p0, v0

    const v0, 0x7fffffff

    if-ne p2, v0, :cond_0

    move p2, v0

    goto :goto_0

    .line 3
    :cond_0
    aget p2, p4, p2

    :goto_0
    int-to-long v1, p2

    or-long/2addr p0, v1

    const/16 p2, 0x1f

    shl-long/2addr p0, p2

    if-ne p3, v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    aget v0, p4, p3

    :goto_1
    int-to-long p2, v0

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public static final createLinks(JII[J)J
    .locals 5
    .param p4    # [J
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mapping"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    and-long/2addr p0, v0

    const-wide v0, 0xffffffffL

    const v2, 0x7fffffff

    if-ne p2, v2, :cond_0

    move p2, v2

    goto :goto_0

    .line 1
    :cond_0
    aget-wide v3, p4, p2

    and-long/2addr v3, v0

    long-to-int p2, v3

    :goto_0
    int-to-long v3, p2

    or-long/2addr p0, v3

    const/16 p2, 0x1f

    shl-long/2addr p0, p2

    if-ne p3, v2, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    aget-wide p2, p4, p3

    and-long/2addr p2, v0

    long-to-int v2, p2

    :goto_1
    int-to-long p2, v2

    or-long/2addr p0, p2

    return-wide p0
.end method

.method public static final createMapping(II)J
    .locals 2

    .line 1
    int-to-long v0, p0

    .line 2
    const/16 p0, 0x20

    .line 3
    .line 4
    shl-long/2addr v0, p0

    .line 5
    int-to-long p0, p1

    .line 6
    or-long/2addr p0, v0

    .line 7
    return-wide p0
.end method

.method public static final createSrcMapping(JI)J
    .locals 4

    .line 1
    int-to-long v0, p2

    .line 2
    const/16 p2, 0x20

    .line 3
    .line 4
    shl-long/2addr v0, p2

    .line 5
    const-wide v2, 0xffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    and-long/2addr p0, v2

    .line 11
    or-long/2addr p0, v0

    .line 12
    return-wide p0
.end method

.method public static final eraseSrcMapping(J)J
    .locals 2

    .line 1
    const-wide v0, 0xffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    and-long/2addr p0, v0

    .line 7
    const-wide v0, -0x100000000L

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    or-long/2addr p0, v0

    .line 13
    return-wide p0
.end method

.method public static final getDst(J)I
    .locals 2

    .line 1
    const-wide v0, 0xffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    and-long/2addr p0, v0

    .line 7
    long-to-int p0, p0

    .line 8
    return p0
.end method

.method public static final getEmptyNodes()[J
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/collection/SieveCacheKt;->EmptyNodes:[J

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getNextNode(J)I
    .locals 2

    .line 1
    const-wide/32 v0, 0x7fffffff

    .line 2
    .line 3
    .line 4
    and-long/2addr p0, v0

    .line 5
    long-to-int p0, p0

    .line 6
    return p0
.end method

.method public static synthetic getNextNode$annotations(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getNodeInvalidLink$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static synthetic getNodeLinkMask$annotations()V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getPreviousNode(J)I
    .locals 2

    .line 1
    const/16 v0, 0x1f

    .line 2
    .line 3
    shr-long/2addr p0, v0

    .line 4
    const-wide/32 v0, 0x7fffffff

    .line 5
    .line 6
    .line 7
    and-long/2addr p0, v0

    .line 8
    long-to-int p0, p0

    .line 9
    return p0
.end method

.method public static synthetic getPreviousNode$annotations(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public static final getSrc(J)I
    .locals 2

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    shr-long/2addr p0, v0

    .line 4
    const-wide v0, 0xffffffffL

    .line 5
    .line 6
    .line 7
    .line 8
    .line 9
    and-long/2addr p0, v0

    .line 10
    long-to-int p0, p0

    .line 11
    return p0
.end method

.method public static final getVisited(J)I
    .locals 2

    .line 1
    const/16 v0, 0x3e

    .line 2
    .line 3
    shr-long/2addr p0, v0

    .line 4
    const-wide/16 v0, 0x1

    .line 5
    .line 6
    and-long/2addr p0, v0

    .line 7
    long-to-int p0, p0

    .line 8
    return p0
.end method

.method public static final setLinkToNext(JI)J
    .locals 4

    .line 1
    const-wide/32 v0, -0x80000000

    .line 2
    .line 3
    .line 4
    and-long/2addr p0, v0

    .line 5
    int-to-long v0, p2

    .line 6
    const-wide/32 v2, 0x7fffffff

    .line 7
    .line 8
    .line 9
    and-long/2addr v0, v2

    .line 10
    or-long/2addr p0, v0

    .line 11
    return-wide p0
.end method

.method public static final setLinkToPrevious(JI)J
    .locals 4

    .line 1
    const-wide v0, -0x3fffffff80000001L    # -2.000000953674316

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    and-long/2addr p0, v0

    .line 7
    int-to-long v0, p2

    .line 8
    const-wide/32 v2, 0x7fffffff

    .line 9
    .line 10
    .line 11
    and-long/2addr v0, v2

    .line 12
    const/16 p2, 0x1f

    .line 13
    .line 14
    shl-long/2addr v0, p2

    .line 15
    or-long/2addr p0, v0

    .line 16
    return-wide p0
.end method
