.class public Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;
.super Ljava/lang/Object;
.source "TTVideoEngineMasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TTVideoEngineIFrameStream"
.end annotation


# instance fields
.field public HDCPLevel:Ljava/lang/String;

.field public averageBandWidth:J

.field public bandWidth:J

.field public codecs:Ljava/lang/String;

.field public programId:J

.field public resolution:Ljava/lang/String;

.field public uri:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;->codecs:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;->resolution:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;->HDCPLevel:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;->uri:Ljava/lang/String;

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;->bandWidth:J

    .line 16
    .line 17
    iput-wide v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;->averageBandWidth:J

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineIFrameStream;->programId:J

    .line 20
    .line 21
    return-void
.end method
