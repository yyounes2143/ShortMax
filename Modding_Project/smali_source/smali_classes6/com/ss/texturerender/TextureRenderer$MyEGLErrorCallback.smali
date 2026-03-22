.class Lcom/ss/texturerender/TextureRenderer$MyEGLErrorCallback;
.super Ljava/lang/Object;
.source "TextureRenderer.java"

# interfaces
.implements Lcom/ss/texturerender/base/EGLRuntime$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/texturerender/TextureRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEGLErrorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/texturerender/TextureRenderer;


# direct methods
.method private constructor <init>(Lcom/ss/texturerender/TextureRenderer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/TextureRenderer$MyEGLErrorCallback;->this$0:Lcom/ss/texturerender/TextureRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/texturerender/TextureRenderer;Lcom/ss/texturerender/TextureRenderer$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/ss/texturerender/TextureRenderer$MyEGLErrorCallback;-><init>(Lcom/ss/texturerender/TextureRenderer;)V

    return-void
.end method


# virtual methods
.method public onError(Lcom/ss/texturerender/base/EGLRuntime;ILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ss/texturerender/TextureRenderer$MyEGLErrorCallback;->this$0:Lcom/ss/texturerender/TextureRenderer;

    .line 2
    .line 3
    invoke-virtual {p1, p2, p3}, Lcom/ss/texturerender/TextureRenderer;->notifyEGLError(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
