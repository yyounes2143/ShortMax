.class public Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;
.super Ljava/lang/Object;
.source "CacheFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/cacheModule/CacheFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HlsCacheNodeInfo"
.end annotation


# instance fields
.field public cacheStatus:I

.field public expireTime:J

.field public fileKey:Ljava/lang/String;

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;->version:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;->fileKey:Ljava/lang/String;

    .line 9
    .line 10
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$NodeStatus;->Cached:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$NodeStatus;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;->cacheStatus:I

    .line 17
    .line 18
    const-wide/16 v0, 0x0

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$HlsCacheNodeInfo;->expireTime:J

    .line 21
    .line 22
    return-void
.end method
