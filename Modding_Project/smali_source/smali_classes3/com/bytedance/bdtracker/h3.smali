.class public Lcom/bytedance/bdtracker/h3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/volcengine/onekit/service/Analytics;


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
.method public onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    invoke-static {p1, p2}, Lcom/bytedance/applog/AppLog;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
