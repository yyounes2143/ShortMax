.class public Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;
.super Ljava/lang/Object;
.source "CacheSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/cacheModule/CacheSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OptionKey"
.end annotation


# static fields
.field public static final CACHE_DIR:Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;

.field public static final DOWNLOAD_DIR:Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;

.field public static final ENABLE_PRELOAD_ALL_TS:Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;

.field public static final ENABLE_PRELOAD_FIRST_TS:Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;->CACHE_DIR:Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;

    .line 8
    .line 9
    new-instance v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-direct {v0, v1}, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;->DOWNLOAD_DIR:Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;

    .line 16
    .line 17
    new-instance v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    invoke-direct {v0, v1}, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;-><init>(I)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;->ENABLE_PRELOAD_FIRST_TS:Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;

    .line 24
    .line 25
    new-instance v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;

    .line 26
    .line 27
    const/4 v1, 0x3

    .line 28
    invoke-direct {v0, v1}, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;-><init>(I)V

    .line 29
    .line 30
    .line 31
    sput-object v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;->ENABLE_PRELOAD_ALL_TS:Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;

    .line 32
    .line 33
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;->mValue:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$OptionKey;->mValue:I

    .line 2
    .line 3
    return v0
.end method
