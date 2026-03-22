.class Lcom/ss/ttvideoengine/TTVideoEngineImpl$URLInfo;
.super Ljava/lang/Object;
.source "TTVideoEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "URLInfo"
.end annotation


# instance fields
.field public hostURL:Ljava/lang/String;

.field public ipURL:Ljava/lang/String;

.field public isIp:Z

.field final synthetic this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;


# direct methods
.method private constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$URLInfo;->this$0:Lcom/ss/ttvideoengine/TTVideoEngineImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$URLInfo;->isIp:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;Lcom/ss/ttvideoengine/TTVideoEngineImpl$1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/TTVideoEngineImpl$URLInfo;-><init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V

    return-void
.end method


# virtual methods
.method public getCurrentURL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$URLInfo;->isIp:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$URLInfo;->ipURL:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$URLInfo;->hostURL:Ljava/lang/String;

    .line 9
    .line 10
    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$URLInfo;->hostURL:Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$URLInfo;->ipURL:Ljava/lang/String;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$URLInfo;->isIp:Z

    .line 8
    .line 9
    return-void
.end method

.method public setHostURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$URLInfo;->hostURL:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$URLInfo;->isIp:Z

    .line 5
    .line 6
    return-void
.end method

.method public setIpURL(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$URLInfo;->ipURL:Ljava/lang/String;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/TTVideoEngineImpl$URLInfo;->isIp:Z

    .line 5
    .line 6
    return-void
.end method
