.class public Lcom/ss/texturerender/TextureRenderConfig;
.super Ljava/lang/Object;
.source "TextureRenderConfig.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TR_TextureRenderConfig"

.field private static gPluginLoader:Lcom/ss/texturerender/ITextureRenderPluginLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getClassLoader(I)Ljava/lang/ClassLoader;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/texturerender/TextureRenderConfig;->gPluginLoader:Lcom/ss/texturerender/ITextureRenderPluginLoader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Lcom/ss/texturerender/ITextureRenderPluginLoader;->loadPlugin(I)Ljava/lang/ClassLoader;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public static getValue(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    const-string p0, ""

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    const-string p0, "3.58.11-tob"

    .line 9
    .line 10
    return-object p0
.end method

.method public static setClassLoaderCallback(Lcom/ss/texturerender/ITextureRenderPluginLoader;)V
    .locals 3

    .line 1
    const-string v0, "TR_TextureRenderConfig"

    .line 2
    .line 3
    const-string v1, "setClassLoaderCallback"

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-static {v2, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object p0, Lcom/ss/texturerender/TextureRenderConfig;->gPluginLoader:Lcom/ss/texturerender/ITextureRenderPluginLoader;

    .line 10
    .line 11
    return-void
.end method
