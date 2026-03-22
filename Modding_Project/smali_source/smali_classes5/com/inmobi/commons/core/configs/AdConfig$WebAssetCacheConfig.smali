.class public final Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/AdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WebAssetCacheConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/inmobi/commons/core/configs/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT_CACHE_SIZE_MB:I = 0xf

.field private static final DEFAULT_CACHE_SIZE_TO_DISK_SPACE_PERCENT:I = 0xa

.field private static final DEFAULT_MAX_RETRIES:I = 0x1

.field private static final DEFAULT_MIN_AVAILABLE_DISK_SPACE:I = 0x32

.field private static final DEFAULT_TIMEOUT_MS:I = 0x1388


# instance fields
.field private final cacheSize:I

.field private final cacheSizeToDiskSpaceMaxPercent:I

.field private final maxRetries:I

.field private final minAvailableDiskSpace:I

.field private final timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/commons/core/configs/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->Companion:Lcom/inmobi/commons/core/configs/c;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/16 v6, 0x1f

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;-><init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->cacheSize:I

    .line 4
    iput p2, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->timeout:I

    .line 5
    iput p3, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->maxRetries:I

    .line 6
    iput p4, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->minAvailableDiskSpace:I

    .line 7
    iput p5, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->cacheSizeToDiskSpaceMaxPercent:I

    return-void
.end method

.method public synthetic constructor <init>(IIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/16 p1, 0xf

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    const/16 p2, 0x1388

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    const/4 p3, 0x1

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    const/16 p4, 0x32

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    const/16 p5, 0xa

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    .line 8
    invoke-direct/range {p2 .. p7}, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;-><init>(IIIII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;IIIIIILjava/lang/Object;)Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->cacheSize:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->timeout:I

    .line 12
    .line 13
    :cond_1
    move p7, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget p3, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->maxRetries:I

    .line 19
    .line 20
    :cond_2
    move v0, p3

    .line 21
    and-int/lit8 p2, p6, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget p4, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->minAvailableDiskSpace:I

    .line 26
    .line 27
    :cond_3
    move v1, p4

    .line 28
    and-int/lit8 p2, p6, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget p5, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->cacheSizeToDiskSpaceMaxPercent:I

    .line 33
    .line 34
    :cond_4
    move v2, p5

    .line 35
    move-object p2, p0

    .line 36
    move p3, p1

    .line 37
    move p4, p7

    .line 38
    move p5, v0

    .line 39
    move p6, v1

    .line 40
    move p7, v2

    .line 41
    invoke-virtual/range {p2 .. p7}, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->copy(IIIII)Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->cacheSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->timeout:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->maxRetries:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->minAvailableDiskSpace:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->cacheSizeToDiskSpaceMaxPercent:I

    .line 2
    .line 3
    return v0
.end method

.method public final copy(IIIII)Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move v5, p5

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;-><init>(IIIII)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;

    .line 12
    .line 13
    iget v1, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->cacheSize:I

    .line 14
    .line 15
    iget v3, p1, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->cacheSize:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->timeout:I

    .line 21
    .line 22
    iget v3, p1, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->timeout:I

    .line 23
    .line 24
    if-eq v1, v3, :cond_3

    .line 25
    .line 26
    return v2

    .line 27
    :cond_3
    iget v1, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->maxRetries:I

    .line 28
    .line 29
    iget v3, p1, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->maxRetries:I

    .line 30
    .line 31
    if-eq v1, v3, :cond_4

    .line 32
    .line 33
    return v2

    .line 34
    :cond_4
    iget v1, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->minAvailableDiskSpace:I

    .line 35
    .line 36
    iget v3, p1, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->minAvailableDiskSpace:I

    .line 37
    .line 38
    if-eq v1, v3, :cond_5

    .line 39
    .line 40
    return v2

    .line 41
    :cond_5
    iget v1, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->cacheSizeToDiskSpaceMaxPercent:I

    .line 42
    .line 43
    iget p1, p1, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->cacheSizeToDiskSpaceMaxPercent:I

    .line 44
    .line 45
    if-eq v1, p1, :cond_6

    .line 46
    .line 47
    return v2

    .line 48
    :cond_6
    return v0
.end method

.method public final getCacheSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->cacheSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCacheSizeToDiskSpaceMaxPercent()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->cacheSizeToDiskSpaceMaxPercent:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMaxRetries()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->maxRetries:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMinAvailableDiskSpace()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->minAvailableDiskSpace:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->timeout:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->cacheSize:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->timeout:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, v0

    .line 16
    mul-int/lit8 v1, v1, 0x1f

    .line 17
    .line 18
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->maxRetries:I

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v1, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->minAvailableDiskSpace:I

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v1, v0

    .line 34
    mul-int/lit8 v1, v1, 0x1f

    .line 35
    .line 36
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->cacheSizeToDiskSpaceMaxPercent:I

    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    add-int/2addr v0, v1

    .line 43
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
    const-string v1, "WebAssetCacheConfig(cacheSize="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->cacheSize:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", timeout="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->timeout:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", maxRetries="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->maxRetries:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", minAvailableDiskSpace="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->minAvailableDiskSpace:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", cacheSizeToDiskSpaceMaxPercent="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/inmobi/commons/core/configs/AdConfig$WebAssetCacheConfig;->cacheSizeToDiskSpaceMaxPercent:I

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const/16 v1, 0x29

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    return-object v0
.end method
