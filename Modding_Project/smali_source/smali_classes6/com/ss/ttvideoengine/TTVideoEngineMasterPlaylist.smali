.class public Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;
.super Ljava/lang/Object;
.source "TTVideoEngineMasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;,
        Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionData;,
        Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionKey;,
        Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;,
        Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;
    }
.end annotation


# instance fields
.field public iFrameStreams:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;

.field public renditions:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;

.field public sessionDatas:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionData;

.field public sessionKeys:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionKey;

.field public variantStreams:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;


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
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;->variantStreams:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineVariantStream;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;->renditions:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineRendition;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;->sessionKeys:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionKey;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;->sessionDatas:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionData;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;->iFrameStreams:[Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;

    .line 14
    .line 15
    return-void
.end method
