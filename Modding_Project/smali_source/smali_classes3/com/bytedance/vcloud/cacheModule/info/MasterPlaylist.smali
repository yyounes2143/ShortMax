.class public Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;
.super Ljava/lang/Object;
.source "MasterPlaylist.java"


# annotations
.annotation runtime Lcom/bytedance/vcloud/cacheModule/CalledByNative;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;,
        Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionData;,
        Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;,
        Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;,
        Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;,
        Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$BestStream;
    }
.end annotation


# instance fields
.field public mIFrameStreams:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;

.field public mRenditions:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;

.field public mSessionDatas:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionData;

.field public mSessionKeys:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;

.field public mVariantStreams:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mVariantStreams:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mRenditions:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mIFrameStreams:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mSessionDatas:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionData;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mSessionKeys:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public setIFrameStreams([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mIFrameStreams:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$IFrameStream;

    .line 4
    .line 5
    return-void
.end method

.method public setRenditions([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mRenditions:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;

    .line 4
    .line 5
    return-void
.end method

.method public setSessionDatas([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionData;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mSessionDatas:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionData;

    .line 4
    .line 5
    return-void
.end method

.method public setSessionKeys([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mSessionKeys:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;

    .line 4
    .line 5
    return-void
.end method

.method public setVariantStreams([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;->mVariantStreams:[Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$VariantStream;

    .line 4
    .line 5
    return-void
.end method
