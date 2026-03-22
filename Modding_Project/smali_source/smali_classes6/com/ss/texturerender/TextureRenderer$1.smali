.class Lcom/ss/texturerender/TextureRenderer$1;
.super Landroid/os/Handler;
.source "TextureRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/texturerender/TextureRenderer;->init(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/texturerender/TextureRenderer;


# direct methods
.method constructor <init>(Lcom/ss/texturerender/TextureRenderer;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/TextureRenderer$1;->this$0:Lcom/ss/texturerender/TextureRenderer;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/TextureRenderer$1;->this$0:Lcom/ss/texturerender/TextureRenderer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/texturerender/TextureRenderer;->handleTextureRenderMsg(Landroid/os/Message;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
