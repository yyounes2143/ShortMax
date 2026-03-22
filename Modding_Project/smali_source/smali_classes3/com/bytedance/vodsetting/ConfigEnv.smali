.class public Lcom/bytedance/vodsetting/ConfigEnv;
.super Ljava/lang/Object;
.source "ConfigEnv.java"


# static fields
.field private static APP_INFO:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static BASE_PATH:Ljava/lang/String; = "/vod/settings/v1"

.field private static CN_NORTH:Ljava/lang/String; = null

.field private static REGION:Ljava/lang/String; = null

.field public static REGION_CN:Ljava/lang/String; = "cn-north-1"

.field public static REGION_SG:Ljava/lang/String; = "ap-singapore-1"

.field public static REGION_US:Ljava/lang/String; = "us-east-1"

.field private static SDK_INFO:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static SG_SINGAPORE:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ConfigEnv"

.field private static US_EAST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static _transMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_1

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    .line 57
    :cond_2
    return-object v0
.end method

.method public static getAPPInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/vodsetting/ConfigEnv;->APP_INFO:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/vodsetting/ConfigEnv;->_transMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method static getHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "ConfigEnv"

    .line 8
    .line 9
    const-string v0, "region is null"

    .line 10
    .line 11
    invoke-static {p0, v0}, Lcom/bytedance/vodsetting/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :cond_0
    sget-object v0, Lcom/bytedance/vodsetting/ConfigEnv;->CN_NORTH:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v1, Lcom/bytedance/vodsetting/ConfigEnv;->REGION_US:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    sget-object v0, Lcom/bytedance/vodsetting/ConfigEnv;->US_EAST:Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sget-object v1, Lcom/bytedance/vodsetting/ConfigEnv;->REGION_SG:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    sget-object v0, Lcom/bytedance/vodsetting/ConfigEnv;->SG_SINGAPORE:Ljava/lang/String;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    sget-object v1, Lcom/bytedance/vodsetting/ConfigEnv;->REGION_CN:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-eqz p0, :cond_3

    .line 47
    .line 48
    sget-object v0, Lcom/bytedance/vodsetting/ConfigEnv;->CN_NORTH:Ljava/lang/String;

    .line 49
    .line 50
    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getHostForCN()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/vodsetting/ConfigEnv;->CN_NORTH:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getHostForSG()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/vodsetting/ConfigEnv;->SG_SINGAPORE:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getHostForUS()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/vodsetting/ConfigEnv;->US_EAST:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getPath()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/vodsetting/ConfigEnv;->BASE_PATH:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/vodsetting/ConfigEnv;->REGION:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getSDKInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/vodsetting/ConfigEnv;->SDK_INFO:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/vodsetting/ConfigEnv;->_transMap(Ljava/util/Map;)Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static setAppInfo(Ljava/util/Map;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Class<",
            "Lcom/bytedance/vodsetting/ConfigEnv;",
            ">;"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/bytedance/vodsetting/ConfigEnv;->APP_INFO:Ljava/util/Map;

    .line 2
    .line 3
    const-class p0, Lcom/bytedance/vodsetting/ConfigEnv;

    .line 4
    .line 5
    return-object p0
.end method

.method public static setHostForCN(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "Lcom/bytedance/vodsetting/ConfigEnv;",
            ">;"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/bytedance/vodsetting/ConfigEnv;->CN_NORTH:Ljava/lang/String;

    .line 2
    .line 3
    const-class p0, Lcom/bytedance/vodsetting/ConfigEnv;

    .line 4
    .line 5
    return-object p0
.end method

.method public static setHostForSG(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "Lcom/bytedance/vodsetting/ConfigEnv;",
            ">;"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/bytedance/vodsetting/ConfigEnv;->SG_SINGAPORE:Ljava/lang/String;

    .line 2
    .line 3
    const-class p0, Lcom/bytedance/vodsetting/ConfigEnv;

    .line 4
    .line 5
    return-object p0
.end method

.method public static setHostForUS(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "Lcom/bytedance/vodsetting/ConfigEnv;",
            ">;"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/bytedance/vodsetting/ConfigEnv;->US_EAST:Ljava/lang/String;

    .line 2
    .line 3
    const-class p0, Lcom/bytedance/vodsetting/ConfigEnv;

    .line 4
    .line 5
    return-object p0
.end method

.method public static setPath(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "Lcom/bytedance/vodsetting/ConfigEnv;",
            ">;"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/bytedance/vodsetting/ConfigEnv;->BASE_PATH:Ljava/lang/String;

    .line 2
    .line 3
    const-class p0, Lcom/bytedance/vodsetting/ConfigEnv;

    .line 4
    .line 5
    return-object p0
.end method

.method public static setRegion(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "Lcom/bytedance/vodsetting/ConfigEnv;",
            ">;"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/bytedance/vodsetting/ConfigEnv;->REGION:Ljava/lang/String;

    .line 2
    .line 3
    const-class p0, Lcom/bytedance/vodsetting/ConfigEnv;

    .line 4
    .line 5
    return-object p0
.end method

.method public static setSDKInfo(Ljava/util/Map;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Class<",
            "Lcom/bytedance/vodsetting/ConfigEnv;",
            ">;"
        }
    .end annotation

    .line 1
    sput-object p0, Lcom/bytedance/vodsetting/ConfigEnv;->SDK_INFO:Ljava/util/Map;

    .line 2
    .line 3
    const-class p0, Lcom/bytedance/vodsetting/ConfigEnv;

    .line 4
    .line 5
    return-object p0
.end method
