.class public Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;
.super Ljava/lang/Object;
.source "MasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SessionKey"
.end annotation


# instance fields
.field public mIV:Ljava/lang/String;

.field public mKeyFormat:Ljava/lang/String;

.field public mKeyFormatVersions:Ljava/lang/String;

.field public mMethod:Ljava/lang/String;

.field public mUri:Ljava/lang/String;


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
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;->mMethod:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;->mUri:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;->mKeyFormat:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;->mKeyFormatVersions:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$SessionKey;->mIV:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method
