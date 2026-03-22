.class public Lcom/ss/texturerender/Texture;
.super Ljava/lang/Object;
.source "Texture.java"

# interfaces
.implements Lcom/ss/texturerender/ITexture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/texturerender/Texture$OnTextureReturnListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ITexture"


# instance fields
.field private mForbidTextureReuse:I

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mRef:Lcom/ss/texturerender/IRef;

.field private mTexTarget:I

.field private mTexType:I

.field private mTextureId:I

.field private mTextureReturnListener:Lcom/ss/texturerender/Texture$OnTextureReturnListener;


# direct methods
.method public constructor <init>(IILcom/ss/texturerender/Texture$OnTextureReturnListener;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/texturerender/Texture;->mForbidTextureReuse:I

    .line 6
    .line 7
    iput p4, p0, Lcom/ss/texturerender/Texture;->mTexType:I

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "new texture = "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "ITexture"

    .line 27
    .line 28
    invoke-static {p4, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iput p1, p0, Lcom/ss/texturerender/Texture;->mTextureId:I

    .line 32
    .line 33
    iput-object p3, p0, Lcom/ss/texturerender/Texture;->mTextureReturnListener:Lcom/ss/texturerender/Texture$OnTextureReturnListener;

    .line 34
    .line 35
    new-instance p1, Lcom/ss/texturerender/Ref;

    .line 36
    .line 37
    invoke-direct {p1}, Lcom/ss/texturerender/Ref;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lcom/ss/texturerender/Texture;->mRef:Lcom/ss/texturerender/IRef;

    .line 41
    .line 42
    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/ss/texturerender/Texture;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 48
    .line 49
    iput p2, p0, Lcom/ss/texturerender/Texture;->mTexTarget:I

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public addRef()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/Texture;->mRef:Lcom/ss/texturerender/IRef;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/texturerender/IRef;->addRef()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/ss/texturerender/Texture;->mTexType:I

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, " add ref "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "ITexture"

    .line 30
    .line 31
    invoke-static {v1, v3, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return v0
.end method

.method public decRef()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/Texture;->mRef:Lcom/ss/texturerender/IRef;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/texturerender/IRef;->decRef()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/ss/texturerender/Texture;->mTexType:I

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v3, " dec ref "

    .line 18
    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const-string v3, "ITexture"

    .line 30
    .line 31
    invoke-static {v1, v3, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    if-ne v0, v1, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/ss/texturerender/Texture;->mTextureReturnListener:Lcom/ss/texturerender/Texture$OnTextureReturnListener;

    .line 38
    .line 39
    invoke-interface {v0, p0}, Lcom/ss/texturerender/Texture$OnTextureReturnListener;->onTextureReturn(Lcom/ss/texturerender/ITexture;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    if-lt v0, v1, :cond_1

    .line 44
    .line 45
    :goto_0
    const/4 v0, 0x0

    .line 46
    return v0

    .line 47
    :cond_1
    new-instance v2, Ljava/lang/Exception;

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v4, "reference idx "

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    sub-int/2addr v0, v1

    .line 60
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v0, " app abort!!"

    .line 64
    .line 65
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    .line 76
    .line 77
    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 78
    .line 79
    .line 80
    throw v0
.end method

.method public getForbidTextureReuse()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/Texture;->mForbidTextureReuse:I

    .line 2
    .line 3
    return v0
.end method

.method public getTexTarget()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/texturerender/Texture;->mTexTarget:I

    .line 2
    .line 3
    return v0
.end method

.method public lock()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/Texture;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->isHeldByCurrentThread()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/texturerender/Texture;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lcom/ss/texturerender/Texture;->mTextureId:I

    .line 15
    .line 16
    return v0

    .line 17
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    .line 18
    .line 19
    const-string v1, "Dead lock!!"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0
.end method

.method public refCnt()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/Texture;->mRef:Lcom/ss/texturerender/IRef;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/ss/texturerender/IRef;->refCnt()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public release()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/ss/texturerender/Texture;->mTexType:I

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, "release = "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v2, p0, Lcom/ss/texturerender/Texture;->mTextureId:I

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "ITexture"

    .line 26
    .line 27
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/ss/texturerender/Texture;->lock()I

    .line 31
    .line 32
    .line 33
    iget v0, p0, Lcom/ss/texturerender/Texture;->mTextureId:I

    .line 34
    .line 35
    filled-new-array {v0}, [I

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    const/4 v3, 0x1

    .line 41
    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/ss/texturerender/Texture;->unlock()V

    .line 45
    .line 46
    .line 47
    iget v0, p0, Lcom/ss/texturerender/Texture;->mTexType:I

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, "release end = "

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget v3, p0, Lcom/ss/texturerender/Texture;->mTextureId:I

    .line 63
    .line 64
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method public setForbidTextureReuse(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/texturerender/Texture;->mTexType:I

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v2, ", setForbidTextureReuse: "

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const-string v2, "ITexture"

    .line 24
    .line 25
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput p1, p0, Lcom/ss/texturerender/Texture;->mForbidTextureReuse:I

    .line 29
    .line 30
    return-void
.end method

.method public tryLock(I)I
    .locals 4

    .line 1
    const/4 v0, -0x1

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ss/texturerender/Texture;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 3
    .line 4
    int-to-long v2, p1

    .line 5
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    .line 7
    invoke-virtual {v1, v2, v3, p1}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/ss/texturerender/Texture;->mTextureId:I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    :catch_0
    :cond_0
    return v0
.end method

.method public unlock()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/Texture;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
