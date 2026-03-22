.class final Lcom/ss/ttvideoengine/TTVideoEngineConfig$1;
.super Ljava/lang/Object;
.source "TTVideoEngineConfig.java"

# interfaces
.implements Lcom/ss/ttm/player/IPluginLoader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/TTVideoEngineConfig;->setClassLoderCallback(Lcom/ss/ttvideoengine/IEnginePluginLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public loadPlugin(I)Ljava/lang/ClassLoader;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ss/ttvideoengine/TTVideoEngineConfig;->getClassLoader(I)Ljava/lang/ClassLoader;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
