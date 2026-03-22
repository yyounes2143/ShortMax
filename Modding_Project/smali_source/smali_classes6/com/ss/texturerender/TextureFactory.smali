.class public Lcom/ss/texturerender/TextureFactory;
.super Ljava/lang/Object;
.source "TextureFactory.java"

# interfaces
.implements Lcom/ss/texturerender/Texture$OnTextureReturnListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureFactory"


# instance fields
.field private mTextureRenderer:Lcom/ss/texturerender/TextureRenderer;

.field private mTextures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/ss/texturerender/ITexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/texturerender/TextureRenderer;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/texturerender/TextureFactory;->mTextures:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/texturerender/TextureFactory;->mTextureRenderer:Lcom/ss/texturerender/TextureRenderer;

    .line 12
    .line 13
    return-void
.end method

.method private static loadTexture(I)I
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v1, v0, [I

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 6
    .line 7
    .line 8
    aget v0, v1, v2

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {p0, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 15
    .line 16
    .line 17
    const/16 v0, 0x2802

    .line 18
    .line 19
    const v3, 0x812f

    .line 20
    .line 21
    .line 22
    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 23
    .line 24
    .line 25
    const/16 v0, 0x2803

    .line 26
    .line 27
    invoke-static {p0, v0, v3}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 28
    .line 29
    .line 30
    const v0, 0x8d65

    .line 31
    .line 32
    .line 33
    const/16 v3, 0x2800

    .line 34
    .line 35
    const/16 v4, 0x2801

    .line 36
    .line 37
    if-ne p0, v0, :cond_0

    .line 38
    .line 39
    invoke-static {}, Lcom/ss/texturerender/DeviceManager;->isVRDevice()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    const/16 v0, 0x2600

    .line 46
    .line 47
    invoke-static {p0, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 48
    .line 49
    .line 50
    invoke-static {p0, v3, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const/16 v0, 0x2601

    .line 55
    .line 56
    invoke-static {p0, v4, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0, v3, v0}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    aget p0, v1, v2

    .line 63
    .line 64
    return p0

    .line 65
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 66
    .line 67
    const-string v0, "Error gen texture."

    .line 68
    .line 69
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p0
.end method


# virtual methods
.method public createTexture(II)Lcom/ss/texturerender/ITexture;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureFactory;->mTextures:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/ss/texturerender/TextureFactory;->mTextures:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-lez v1, :cond_1

    .line 11
    .line 12
    iget-object v1, p0, Lcom/ss/texturerender/TextureFactory;->mTextures:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/ss/texturerender/ITexture;

    .line 29
    .line 30
    invoke-interface {v2}, Lcom/ss/texturerender/ITexture;->getTexTarget()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-ne v3, p1, :cond_0

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 37
    .line 38
    .line 39
    const-string v1, "TextureFactory"

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v4, "reuse texture:"

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v4, " texTarget:"

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-interface {v2}, Lcom/ss/texturerender/ITexture;->getTexTarget()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    const/4 v2, 0x0

    .line 77
    :goto_0
    if-nez v2, :cond_2

    .line 78
    .line 79
    invoke-static {p1}, Lcom/ss/texturerender/TextureFactory;->loadTexture(I)I

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    new-instance v2, Lcom/ss/texturerender/Texture;

    .line 84
    .line 85
    invoke-direct {v2, v1, p1, p0, p2}, Lcom/ss/texturerender/Texture;-><init>(IILcom/ss/texturerender/Texture$OnTextureReturnListener;I)V

    .line 86
    .line 87
    .line 88
    const-string p1, "TextureFactory"

    .line 89
    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v3, "new Texture = "

    .line 96
    .line 97
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v3, "id = "

    .line 104
    .line 105
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    invoke-interface {v2}, Lcom/ss/texturerender/IRef;->addRef()I

    .line 120
    .line 121
    .line 122
    return-object v2

    .line 123
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    throw p1
.end method

.method public onTextureReturn(Lcom/ss/texturerender/ITexture;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureFactory;->mTextures:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    move-object v1, p1

    .line 5
    check-cast v1, Lcom/ss/texturerender/Texture;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/ss/texturerender/Texture;->getForbidTextureReuse()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_1

    .line 12
    .line 13
    iget-object v1, p0, Lcom/ss/texturerender/TextureFactory;->mTextureRenderer:Lcom/ss/texturerender/TextureRenderer;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const-string v2, "TextureFactory"

    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v4, "release texture = "

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    goto :goto_2

    .line 46
    :cond_0
    :goto_0
    check-cast p1, Lcom/ss/texturerender/Texture;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/ss/texturerender/Texture;->release()V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    iget-object v1, p0, Lcom/ss/texturerender/TextureFactory;->mTextureRenderer:Lcom/ss/texturerender/TextureRenderer;

    .line 53
    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/ss/texturerender/TextureRenderer;->texType()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    const-string v2, "TextureFactory"

    .line 61
    .line 62
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v4, "add texture = "

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const-string/jumbo v4, "size = "

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-object v4, p0, Lcom/ss/texturerender/TextureFactory;->mTextures:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    iget-object v1, p0, Lcom/ss/texturerender/TextureFactory;->mTextures:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    :goto_1
    monitor-exit v0

    .line 103
    return-void

    .line 104
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    throw p1
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureFactory;->mTextures:Ljava/util/ArrayList;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/ss/texturerender/TextureFactory;->mTextures:Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lcom/ss/texturerender/Texture;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/ss/texturerender/Texture;->release()V

    .line 23
    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw v1
.end method
