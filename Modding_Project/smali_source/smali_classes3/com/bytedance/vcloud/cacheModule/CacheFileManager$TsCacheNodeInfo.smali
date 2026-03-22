.class public Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;
.super Ljava/lang/Object;
.source "CacheFileManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/cacheModule/CacheFileManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TsCacheNodeInfo"
.end annotation


# static fields
.field public static final KEY_TYPE_M3U8:I = 0x1

.field public static final KEY_TYPE_TS:I = 0x2

.field public static final KEY_TYPE_UNKNOWN:I


# instance fields
.field public cacheStatus:I

.field public fileKey:Ljava/lang/String;

.field public keyType:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->version:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->fileKey:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->keyType:I

    .line 12
    .line 13
    sget-object v0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$NodeStatus;->Cached:Lcom/bytedance/vcloud/cacheModule/CacheFileManager$NodeStatus;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheFileManager$TsCacheNodeInfo;->cacheStatus:I

    .line 20
    .line 21
    return-void
.end method
