.class Lcom/bytedance/vcloud/cacheModule/CacheSettings$CacheSettingsHandler;
.super Ljava/lang/Object;
.source "CacheSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/cacheModule/CacheSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CacheSettingsHandler"
.end annotation


# static fields
.field public static sInstance:Lcom/bytedance/vcloud/cacheModule/CacheSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/bytedance/vcloud/cacheModule/CacheSettings;-><init>(Lcom/bytedance/vcloud/cacheModule/CacheSettings$1;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/bytedance/vcloud/cacheModule/CacheSettings$CacheSettingsHandler;->sInstance:Lcom/bytedance/vcloud/cacheModule/CacheSettings;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
