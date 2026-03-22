.class public Lcom/ss/ttvideoengine/TTVideoEngineConfig;
.super Ljava/lang/Object;
.source "TTVideoEngineConfig.java"


# static fields
.field public static final PLUGIN_TYPE_INTERTRUST_DRM:I = 0x64

.field public static final PLUGIN_TYPE_PLAYER_2_0_COM_SS_TTM:I = 0xc8

.field public static final PLUGIN_TYPE_PLAYER_2_0_COM_SS_TTMPLUGIN:I = 0xc9

.field public static final PLUGIN_TYPE_PLAYER_3_0_CN_ORG_MEDIAKIT:I = 0x12c

.field private static gClassLoaderMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field public static gNetClient:Lcom/ss/ttvideoengine/net/TTVNetClient; = null

.field private static gPluginLoader:Lcom/ss/ttvideoengine/IEnginePluginLoader; = null

.field public static openPerformanceUtils:Z = false

.field private static sPlayerCreateErrorListener:Lcom/ss/ttvideoengine/PlayerCreateErrorListener; = null

.field public static setEGLBitDepth:I = 0x8

.field public static setSurfaceTimeoutForCreated:J = -0x8000000000000000L

.field public static setSurfaceTimeoutForDestroy:J = -0x8000000000000000L


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

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
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/TTVideoEngineConfig;->gClassLoaderMap:Ljava/util/HashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/ClassLoader;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/TTVideoEngineConfig;->gPluginLoader:Lcom/ss/ttvideoengine/IEnginePluginLoader;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0, p0}, Lcom/ss/ttvideoengine/IEnginePluginLoader;->loadPlugin(I)Ljava/lang/ClassLoader;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method

.method public static getPlayerCreateErrorListener()Lcom/ss/ttvideoengine/PlayerCreateErrorListener;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/TTVideoEngineConfig;->sPlayerCreateErrorListener:Lcom/ss/ttvideoengine/PlayerCreateErrorListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public static setClassLoader(ILjava/lang/ClassLoader;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/TTVideoEngineConfig;->gClassLoaderMap:Ljava/util/HashMap;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/ss/ttvideoengine/TTVideoEngineConfig;->gClassLoaderMap:Ljava/util/HashMap;

    .line 11
    .line 12
    new-instance v0, Lcom/ss/ttvideoengine/TTVideoEngineConfig$2;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/ss/ttvideoengine/TTVideoEngineConfig$2;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/ss/ttm/player/TTPlayerPluginLoader;->setPluginLoader(Lcom/ss/ttm/player/IPluginLoader;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/TTVideoEngineConfig;->gClassLoaderMap:Ljava/util/HashMap;

    .line 21
    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static setClassLoderCallback(Lcom/ss/ttvideoengine/IEnginePluginLoader;)V
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/TTVideoEngineConfig$1;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/ss/ttvideoengine/TTVideoEngineConfig$1;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lcom/ss/ttm/player/TTPlayerPluginLoader;->setPluginLoader(Lcom/ss/ttm/player/IPluginLoader;)V

    .line 10
    .line 11
    .line 12
    sput-object p0, Lcom/ss/ttvideoengine/TTVideoEngineConfig;->gPluginLoader:Lcom/ss/ttvideoengine/IEnginePluginLoader;

    .line 13
    .line 14
    return-void
.end method

.method public static setPlayerCreateErrorListener(Lcom/ss/ttvideoengine/PlayerCreateErrorListener;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/ss/ttvideoengine/TTVideoEngineConfig;->sPlayerCreateErrorListener:Lcom/ss/ttvideoengine/PlayerCreateErrorListener;

    .line 2
    .line 3
    return-void
.end method
