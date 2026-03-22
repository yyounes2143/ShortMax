.class public Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionKey;
.super Ljava/lang/Object;
.source "TTVideoEngineMasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TTVideoEngineSessionKey"
.end annotation


# instance fields
.field public IV:Ljava/lang/String;

.field public keyFormat:Ljava/lang/String;

.field public keyFormatVersions:Ljava/lang/String;

.field public method:Ljava/lang/String;

.field public uri:Ljava/lang/String;


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
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionKey;->method:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionKey;->uri:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionKey;->keyFormat:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionKey;->keyFormatVersions:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionKey;->IV:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method
