.class Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$1;
.super Ljava/lang/Object;
.source "DataLoaderHelperAdapter.java"

# interfaces
.implements Lcom/bytedance/vcloud/cacheModule/PlaylistLoader$ILoaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;->initHlsPreloadManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelperAdapter$1;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelperAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCompleted(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->onNotify(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->onNotify(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onStart(Ljava/lang/String;Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/DataLoaderHelper;->getDataLoader()Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/ss/ttvideoengine/DataLoaderHelper;->onNotify(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderNotifyInfo;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
