.class public Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;
.super Ljava/lang/Object;
.source "InMobiMemoryCache.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MemoryCache"


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private limit:J

.field size:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3fc00000    # 1.5f

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    const-wide/32 v0, 0xf4240

    .line 4
    iput-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->limit:J

    .line 5
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->setLimit(J)V

    return-void
.end method

.method constructor <init>(Ljava/lang/Long;)V
    .locals 4
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3fc00000    # 1.5f

    const/4 v2, 0x1

    const/16 v3, 0xa

    invoke-direct {v0, v3, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    const-wide/32 v0, 0xf4240

    .line 9
    iput-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->limit:J

    .line 10
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->setLimit(J)V

    return-void
.end method

.method private checkSize()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "cache size="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " length="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "MemoryCache"

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-wide v2, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    .line 40
    .line 41
    iget-wide v4, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->limit:J

    .line 42
    .line 43
    cmp-long v0, v2, v4

    .line 44
    .line 45
    if-lez v0, :cond_2

    .line 46
    .line 47
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v2

    .line 61
    if-eqz v2, :cond_1

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Ljava/util/Map$Entry;

    .line 68
    .line 69
    iget-wide v3, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    .line 70
    .line 71
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 76
    .line 77
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-direct {p0, v2}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->getSizeInBytes(Landroid/graphics/Bitmap;)J

    .line 82
    .line 83
    .line 84
    move-result-wide v5

    .line 85
    sub-long/2addr v3, v5

    .line 86
    iput-wide v3, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 89
    .line 90
    .line 91
    iget-wide v2, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    .line 92
    .line 93
    iget-wide v4, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->limit:J

    .line 94
    .line 95
    cmp-long v2, v2, v4

    .line 96
    .line 97
    if-gtz v2, :cond_0

    .line 98
    .line 99
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v2, "Clean cache. New size "

    .line 105
    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    .line 110
    .line 111
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 112
    .line 113
    .line 114
    move-result v2

    .line 115
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    .line 124
    .line 125
    :cond_2
    return-void
.end method

.method private getSizeInBytes(Landroid/graphics/Bitmap;)J
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-wide/16 v0, 0x0

    .line 4
    .line 5
    return-wide v0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    mul-int/2addr v0, p1

    .line 15
    int-to-long v0, v0

    .line 16
    return-wide v0
.end method

.method private setLimit(J)V
    .locals 4

    .line 1
    iput-wide p1, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->limit:J

    .line 2
    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string p2, "MemoryCache will use up to "

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->limit:J

    .line 14
    .line 15
    long-to-double v0, v0

    .line 16
    const-wide/high16 v2, 0x4090000000000000L    # 1024.0

    .line 17
    .line 18
    div-double/2addr v0, v2

    .line 19
    div-double/2addr v0, v2

    .line 20
    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string p2, "MB"

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string p2, "MemoryCache"

    .line 33
    .line 34
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    .line 3
    .line 4
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    .line 19
    return-object p1

    .line 20
    :catch_0
    move-exception p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-direct {p0, v2}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->getSizeInBytes(Landroid/graphics/Bitmap;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v2

    .line 27
    sub-long/2addr v0, v2

    .line 28
    iput-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->cache:Ljava/util/Map;

    .line 34
    .line 35
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    .line 39
    .line 40
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 41
    .line 42
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->getSizeInBytes(Landroid/graphics/Bitmap;)J

    .line 47
    .line 48
    .line 49
    move-result-wide p1

    .line 50
    add-long/2addr v0, p1

    .line 51
    iput-wide v0, p0, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->size:J

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/google/ads/mediation/inmobi/InMobiMemoryCache;->checkSize()V

    .line 54
    .line 55
    .line 56
    const-string p1, "MemoryCache"

    .line 57
    .line 58
    const-string p2, "Drawable used from cache"

    .line 59
    .line 60
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_2

    .line 64
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    :goto_2
    return-void
.end method
