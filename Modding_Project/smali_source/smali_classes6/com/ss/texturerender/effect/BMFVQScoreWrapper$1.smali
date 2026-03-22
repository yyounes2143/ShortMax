.class Lcom/ss/texturerender/effect/BMFVQScoreWrapper$1;
.super Ljava/lang/Object;
.source "BMFVQScoreWrapper.java"

# interfaces
.implements Lcom/bytedance/bmf_mods_api/VqscoreLiveCallbackAPI;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->downloadModel(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;


# direct methods
.method constructor <init>(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$1;->this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public callback(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$1;->this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 2
    .line 3
    iget v0, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string/jumbo v2, "vqscore callback, status: "

    .line 11
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
    const-string v2, "TR_BMFVQScoreWrapper"

    .line 24
    .line 25
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    if-ne p1, v0, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$1;->this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 34
    .line 35
    const/16 v0, 0x97

    .line 36
    .line 37
    const/4 v1, -0x1

    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/ss/texturerender/VideoSurfaceTexture;->setOption(II)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$1;->this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 43
    .line 44
    iget v0, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 45
    .line 46
    const-string v1, "download model fail"

    .line 47
    .line 48
    invoke-static {v0, v2, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$1;->this$0:Lcom/ss/texturerender/effect/BMFVQScoreWrapper;

    .line 52
    .line 53
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget v0, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 58
    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string/jumbo v3, "vqscore download model fail, status: "

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const/16 v2, 0x13

    .line 78
    .line 79
    invoke-virtual {v1, v2, v0, p1}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_1
    :goto_0
    return-void
.end method
