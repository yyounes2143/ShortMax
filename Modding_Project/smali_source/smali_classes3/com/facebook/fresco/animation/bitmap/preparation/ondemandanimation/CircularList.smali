.class public final Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;
.super Ljava/lang/Object;
.source "CircularList.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCircularList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CircularList.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,30:1\n1#2:31\n1557#3:32\n1628#3,3:33\n*S KotlinDebug\n*F\n+ 1 CircularList.kt\ncom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList\n*L\n28#1:32\n28#1:33,3\n*E\n"
    }
.end annotation


# instance fields
.field private final size:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->size:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getPosition(I)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->size:I

    .line 2
    .line 3
    rem-int/2addr p1, v0

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-ltz v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->size:I

    .line 24
    .line 25
    add-int/2addr p1, v0

    .line 26
    :goto_1
    return p1
.end method

.method public final getSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->size:I

    .line 2
    .line 3
    return v0
.end method

.method public final isTargetAhead(III)Z
    .locals 2

    .line 1
    add-int/2addr p3, p1

    .line 2
    invoke-virtual {p0, p3}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->getPosition(I)I

    .line 3
    .line 4
    .line 5
    move-result p3

    .line 6
    const/4 v0, 0x1

    .line 7
    const/4 v1, 0x0

    .line 8
    if-ge p1, p3, :cond_1

    .line 9
    .line 10
    if-gt p1, p2, :cond_0

    .line 11
    .line 12
    if-gt p2, p3, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    if-gt p1, p2, :cond_2

    .line 18
    .line 19
    iget p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->size:I

    .line 20
    .line 21
    if-gt p2, p1, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    if-ltz p2, :cond_0

    .line 25
    .line 26
    if-gt p2, p3, :cond_0

    .line 27
    .line 28
    :goto_0
    return v0
.end method

.method public final sublist(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, p2}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 3
    .line 4
    .line 5
    move-result-object p2

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    move-object v1, p2

    .line 28
    check-cast v1, Lkotlin/collections/m0;

    .line 29
    .line 30
    invoke-virtual {v1}, Lkotlin/collections/m0;->nextInt()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    add-int/2addr v1, p1

    .line 35
    invoke-virtual {p0, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/ondemandanimation/CircularList;->getPosition(I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    return-object v0
.end method
