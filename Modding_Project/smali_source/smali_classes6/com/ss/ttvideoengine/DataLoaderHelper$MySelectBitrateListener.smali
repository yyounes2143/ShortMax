.class Lcom/ss/ttvideoengine/DataLoaderHelper$MySelectBitrateListener;
.super Ljava/lang/Object;
.source "DataLoaderHelper.java"

# interfaces
.implements Lcom/bytedance/vcloud/strategy/ISelectBitrateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/DataLoaderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MySelectBitrateListener"
.end annotation


# instance fields
.field private mCallback:Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;

.field final synthetic this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$MySelectBitrateListener;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$MySelectBitrateListener;->mCallback:Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public selectBitrateJsonString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$MySelectBitrateListener;->mCallback:Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1, p2}, Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;->selectBitrate(I)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance p2, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return-object p1
.end method
