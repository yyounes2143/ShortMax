.class public final Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;
.super Ljava/lang/Object;
.source "FpsCompressorInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFpsCompressorInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FpsCompressorInfo.kt\ncom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,113:1\n1279#2,2:114\n1293#2,4:116\n216#3,2:120\n*S KotlinDebug\n*F\n+ 1 FpsCompressorInfo.kt\ncom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo\n*L\n44#1:114,2\n44#1:116,4\n67#1:120,2\n*E\n"
    }
.end annotation


# instance fields
.field private final maxFpsLimit:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;->maxFpsLimit:I

    .line 5
    .line 6
    return-void
.end method

.method private final compressAnimation(Ljava/util/Map;Ljava/util/Map;)Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_2

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/util/Map$Entry;

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/Number;

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    check-cast v2, Lo2/a;

    .line 46
    .line 47
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/Integer;

    .line 56
    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    new-instance p1, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;

    .line 74
    .line 75
    invoke-direct {p1, v0, p2, v1}, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    return-object p1
.end method


# virtual methods
.method public final calculateReducedIndexes(III)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p3, v0}, Lkotlin/ranges/e;->e(II)I

    .line 3
    .line 4
    .line 5
    move-result p3

    .line 6
    iget v0, p0, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;->maxFpsLimit:I

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/ranges/e;->j(II)I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    int-to-float p3, p3

    .line 13
    invoke-virtual {p0, p1}, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;->millisecondsToSeconds(I)F

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    mul-float/2addr p3, p1

    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-static {p3, p1}, Lkotlin/ranges/e;->d(FF)F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    int-to-float p3, p2

    .line 24
    invoke-static {p1, p3}, Lkotlin/ranges/e;->i(FF)F

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    div-float/2addr p3, p1

    .line 29
    const/4 p1, 0x0

    .line 30
    invoke-static {p1, p2}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 35
    .line 36
    const/16 v1, 0xa

    .line 37
    .line 38
    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v1}, Lkotlin/collections/p0;->e(I)I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/16 v2, 0x10

    .line 47
    .line 48
    invoke-static {v1, v2}, Lkotlin/ranges/e;->e(II)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-eqz v1, :cond_1

    .line 64
    .line 65
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    move-object v2, v1

    .line 70
    check-cast v2, Ljava/lang/Number;

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    int-to-float v3, v2

    .line 77
    rem-float/2addr v3, p3

    .line 78
    float-to-int v3, v3

    .line 79
    if-nez v3, :cond_0

    .line 80
    .line 81
    move p1, v2

    .line 82
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    return-object v0
.end method

.method public final compress(ILjava/util/Map;I)Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;
    .locals 1
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Lo2/a<",
            "Landroid/graphics/Bitmap;",
            ">;>;I)",
            "Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "frameBitmaps"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0, p1, v0, p3}, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;->calculateReducedIndexes(III)Ljava/util/Map;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-direct {p0, p2, p1}, Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo;->compressAnimation(Ljava/util/Map;Ljava/util/Map;)Lcom/facebook/fresco/animation/bitmap/preparation/loadframe/FpsCompressorInfo$CompressionResult;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final millisecondsToSeconds(I)F
    .locals 1

    .line 1
    int-to-float p1, p1

    .line 2
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 3
    .line 4
    div-float/2addr p1, v0

    .line 5
    return p1
.end method
