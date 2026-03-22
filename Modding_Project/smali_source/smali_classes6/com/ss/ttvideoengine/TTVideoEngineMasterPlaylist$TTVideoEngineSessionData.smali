.class public Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionData;
.super Ljava/lang/Object;
.source "TTVideoEngineMasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TTVideoEngineSessionData"
.end annotation


# instance fields
.field public dataId:Ljava/lang/String;

.field public language:Ljava/lang/String;

.field public uri:Ljava/lang/String;

.field public value:Ljava/lang/String;


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
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionData;->dataId:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionData;->value:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionData;->uri:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/TTVideoEngineMasterPlaylist$TTVideoEngineSessionData;->language:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method
