.class public Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallbackV2;
.super Ljava/lang/Object;
.source "CacheSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/cacheModule/CacheSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IExchangeUrlCallbackV2"
.end annotation


# instance fields
.field private mExchangeUrlVer:I


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallbackV2;->mExchangeUrlVer:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallbackV2;->mExchangeUrlVer:I

    return-void
.end method

.method static synthetic access$100(Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallbackV2;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$IExchangeUrlCallbackV2;->mExchangeUrlVer:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public exchangeUrl(Lcom/bytedance/vcloud/cacheModule/CacheSettings$ExchangeUrlInfo;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public exchangeUrl2(Lcom/bytedance/vcloud/cacheModule/CacheSettings$ExchangeUrlInfo;)Lcom/bytedance/vcloud/cacheModule/CacheSettings$DstExchangeUrlInfo;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method
