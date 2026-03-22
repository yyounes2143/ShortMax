.class public Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;
.super Ljava/lang/Object;
.source "MasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rendition"
.end annotation


# instance fields
.field public mAssocLanguage:Ljava/lang/String;

.field public mAutoSelect:Z

.field public mChannels:Ljava/lang/String;

.field public mCharacteristics:Ljava/lang/String;

.field public mDefault:Z

.field public mForced:Z

.field public mGroupId:Ljava/lang/String;

.field public mInStreamId:Ljava/lang/String;

.field public mLanguage:Ljava/lang/String;

.field public mName:Ljava/lang/String;

.field public mType:Ljava/lang/String;

.field public mUri:Ljava/lang/String;


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
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mType:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mUri:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mGroupId:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mLanguage:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mAssocLanguage:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mName:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mDefault:Z

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mAutoSelect:Z

    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mForced:Z

    .line 23
    .line 24
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mInStreamId:Ljava/lang/String;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mCharacteristics:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$Rendition;->mChannels:Ljava/lang/String;

    .line 29
    .line 30
    return-void
.end method
