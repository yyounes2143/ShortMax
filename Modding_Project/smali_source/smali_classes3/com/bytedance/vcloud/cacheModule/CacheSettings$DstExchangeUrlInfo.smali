.class public Lcom/bytedance/vcloud/cacheModule/CacheSettings$DstExchangeUrlInfo;
.super Ljava/lang/Object;
.source "CacheSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/cacheModule/CacheSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DstExchangeUrlInfo"
.end annotation


# instance fields
.field public keyChanged:Z

.field public keyTagLine:Ljava/lang/String;

.field public url:Ljava/lang/String;


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
    iput-boolean v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$DstExchangeUrlInfo;->keyChanged:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$DstExchangeUrlInfo;->keyTagLine:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
