.class public Lcom/ss/texturerender/effect/EffectConfig;
.super Ljava/lang/Object;
.source "EffectConfig.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EffectConfig"


# instance fields
.field private mEGLBitDepth:I

.field private mEffectOpenMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTexType:I

.field private openSR:Z

.field private openSharpen:Z

.field private openTile:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 8
    invoke-direct {p0, v0}, Lcom/ss/texturerender/effect/EffectConfig;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->openSR:Z

    .line 3
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->openSharpen:Z

    .line 4
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->openTile:Z

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->mEffectOpenMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v0, 0x8

    .line 6
    iput v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->mEGLBitDepth:I

    .line 7
    iput p1, p0, Lcom/ss/texturerender/effect/EffectConfig;->mTexType:I

    return-void
.end method


# virtual methods
.method public getEGLBitDepth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->mEGLBitDepth:I

    .line 2
    .line 3
    return v0
.end method

.method public getEffectConfigMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->mEffectOpenMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEffectOpen(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->mEffectOpenMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne p1, v1, :cond_1

    .line 23
    .line 24
    move v0, v1

    .line 25
    :cond_1
    return v0
.end method

.method public hasFboEffect()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->mEffectOpenMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x1

    .line 34
    if-eq v2, v3, :cond_0

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    const/4 v2, 0x5

    .line 47
    if-eq v1, v2, :cond_0

    .line 48
    .line 49
    return v3

    .line 50
    :cond_1
    const/4 v0, 0x0

    .line 51
    return v0
.end method

.method public isOpenSR()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->openSR:Z

    .line 2
    .line 3
    return v0
.end method

.method public isOpenSharpen()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->openSharpen:Z

    .line 2
    .line 3
    return v0
.end method

.method public isOpenTile()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->openTile:Z

    .line 2
    .line 3
    return v0
.end method

.method public isSubSet(Lcom/ss/texturerender/effect/EffectConfig;)Z
    .locals 4

    .line 1
    iget-boolean v0, p1, Lcom/ss/texturerender/effect/EffectConfig;->openSR:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->openSR:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-boolean v0, p1, Lcom/ss/texturerender/effect/EffectConfig;->openSharpen:Z

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->openSharpen:Z

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    const/16 v0, 0xe

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    return v1

    .line 35
    :cond_2
    const/16 v2, 0x10

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_3

    .line 48
    .line 49
    return v1

    .line 50
    :cond_3
    iget-boolean v3, p1, Lcom/ss/texturerender/effect/EffectConfig;->openSharpen:Z

    .line 51
    .line 52
    if-nez v3, :cond_5

    .line 53
    .line 54
    iget-boolean v3, p1, Lcom/ss/texturerender/effect/EffectConfig;->openSR:Z

    .line 55
    .line 56
    if-nez v3, :cond_5

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-nez v3, :cond_5

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_5

    .line 69
    .line 70
    iget-boolean p1, p0, Lcom/ss/texturerender/effect/EffectConfig;->openSR:Z

    .line 71
    .line 72
    if-nez p1, :cond_4

    .line 73
    .line 74
    iget-boolean p1, p0, Lcom/ss/texturerender/effect/EffectConfig;->openSharpen:Z

    .line 75
    .line 76
    if-nez p1, :cond_4

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_4

    .line 83
    .line 84
    invoke-virtual {p0, v2}, Lcom/ss/texturerender/effect/EffectConfig;->getEffectOpen(I)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_5

    .line 89
    .line 90
    :cond_4
    return v1

    .line 91
    :cond_5
    const/4 p1, 0x1

    .line 92
    return p1
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->mEffectOpenMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->openSR:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->openSharpen:Z

    .line 10
    .line 11
    return-void
.end method

.method public setEGLBitDepth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/texturerender/effect/EffectConfig;->mEGLBitDepth:I

    .line 2
    .line 3
    return-void
.end method

.method public setEffectOpen(II)Lcom/ss/texturerender/effect/EffectConfig;
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->mTexType:I

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v2, "setEffectOpen effect:"

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ",isOpen:"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "EffectConfig"

    .line 30
    .line 31
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    const/4 v1, 0x1

    .line 36
    if-ne p1, v1, :cond_1

    .line 37
    .line 38
    if-ne p2, v1, :cond_0

    .line 39
    .line 40
    move v2, v1

    .line 41
    goto :goto_0

    .line 42
    :cond_0
    move v2, v0

    .line 43
    :goto_0
    iput-boolean v2, p0, Lcom/ss/texturerender/effect/EffectConfig;->openSharpen:Z

    .line 44
    .line 45
    :cond_1
    const/4 v2, 0x5

    .line 46
    if-ne p1, v2, :cond_3

    .line 47
    .line 48
    if-ne p2, v1, :cond_2

    .line 49
    .line 50
    move v0, v1

    .line 51
    :cond_2
    iput-boolean v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->openSR:Z

    .line 52
    .line 53
    :cond_3
    iget-object v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->mEffectOpenMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    return-object p0
.end method

.method public setOpenSR(Z)Lcom/ss/texturerender/effect/EffectConfig;
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/EffectConfig;->openSR:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->mEffectOpenMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public setOpenSharpen(Z)Lcom/ss/texturerender/effect/EffectConfig;
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/EffectConfig;->openSharpen:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->mEffectOpenMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method public setOpenTile(Z)Lcom/ss/texturerender/effect/EffectConfig;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/EffectConfig;->openTile:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setTexType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/texturerender/effect/EffectConfig;->mTexType:I

    .line 2
    .line 3
    return-void
.end method

.method public texType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/EffectConfig;->mTexType:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Config:[opengSR:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/ss/texturerender/effect/EffectConfig;->openSR:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " opengSharpen:"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/ss/texturerender/effect/EffectConfig;->openSharpen:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, " config:"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/ss/texturerender/effect/EffectConfig;->mEffectOpenMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, "]"

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method
