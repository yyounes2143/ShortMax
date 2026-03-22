.class public Lcom/bytedance/bdtracker/j3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/volcengine/onekit/service/Device;


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


# virtual methods
.method public getDeviceID()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getDid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getInstallID()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getIid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getSsID()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/applog/AppLog;->getSsid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
