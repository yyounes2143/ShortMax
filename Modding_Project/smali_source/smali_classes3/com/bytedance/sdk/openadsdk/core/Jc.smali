.class public Lcom/bytedance/sdk/openadsdk/core/Jc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/LpP;


# static fields
.field private static final tB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ZYk:Ljava/lang/String;

.field private ex:I

.field oJ:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Jc$1;

    .line 2
    .line 3
    const/16 v1, 0xc

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Jc$1;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/Jc;->tB:Ljava/util/Map;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "com.union_test.internationad"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jc;->oJ:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "8025677"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jc;->ZYk:Ljava/lang/String;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jc;->ex:I

    .line 14
    .line 15
    return-void
.end method

.method private ZYk(Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->getBannerSize()Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v2, "width"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getType()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x3

    const-string v4, "height"

    if-ne v2, v3, :cond_0

    .line 8
    :try_start_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getMaxHeight()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getHeight()I

    move-result v2

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    :goto_0
    const-string v2, "type"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/banner/PAGBannerSize;->getType()I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    :cond_1
    return-object v0
.end method

.method public static ba()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Jc$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/Jc$2;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/si/tB;->oJ(Lcom/bytedance/sdk/openadsdk/si/ex;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    const-string v1, "TTAdManagerImpl"

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static cFZ()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Jc$3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/Jc$3;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/si/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/si/ex;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    const-string v1, "TTAdManagerImpl"

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private jFA()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->mu()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "TX"

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->mu()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    return v0

    .line 34
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 35
    return v0
.end method

.method private oJ(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;
    .locals 1

    if-eqz p2, :cond_0

    .line 95
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/jr;

    sget-object v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->BIDDING_TOKEN:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-direct {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/jr;-><init>(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)V

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptType4(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/embedapplog/IDefaultEncrypt;)Lorg/json/JSONObject;

    move-result-object p1

    .line 96
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/Xe;->oJ(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/oJ;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    .line 98
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    return-object p1
.end method

.method public static so()V
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Jc$4;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/Jc$4;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception v0

    .line 11
    const-string v1, "TTAdManagerImpl"

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public Pfn()I
    .locals 1

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA;->dLZ()I

    move-result v0

    return v0
.end method

.method public Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Jc;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->tB(Ljava/lang/String;)V

    return-object p0
.end method

.method public Pfn(I)Lcom/bytedance/sdk/openadsdk/core/LpP;
    .locals 1

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->Pfn(I)V

    return-object p0
.end method

.method public ZYk()I
    .locals 1

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA;->kkU()I

    move-result v0

    return v0
.end method

.method public ZYk(I)Lcom/bytedance/sdk/openadsdk/core/LpP;
    .locals 1

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ex(I)V

    return-object p0
.end method

.method public synthetic ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/LpP;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Jc;->Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Jc;

    move-result-object p1

    return-object p1
.end method

.method public ex()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jc;->ex:I

    return v0
.end method

.method public ex(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Jc;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->oJ(Ljava/lang/String;)V

    return-object p0
.end method

.method public ex(I)Lcom/bytedance/sdk/openadsdk/core/LpP;
    .locals 1

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->tB(I)V

    return-object p0
.end method

.method public oJ()Lcom/bytedance/sdk/openadsdk/core/LpP;
    .locals 1

    .line 3
    const-string v0, "PangleSDK-7504"

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/awB;->oJ(Ljava/lang/String;)V

    .line 4
    invoke-static {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/cFZ/tB;->oJ(Ljava/lang/String;)V

    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/component/utils/awB;->ZYk()V

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/component/cFZ/oJ;->oJ()V

    .line 8
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/cFZ/tB;->oJ()V

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/component/utils/QSm;->oJ()V

    return-object p0
.end method

.method public oJ(I)Lcom/bytedance/sdk/openadsdk/core/LpP;
    .locals 1

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ba(I)V

    return-object p0
.end method

.method public synthetic oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/LpP;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Jc;->ex(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/Jc;

    move-result-object p1

    return-object p1
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 10
    const-string v1, "boot"

    const-string v2, "target_region"

    const-string v3, "ttopenadsdk"

    const-string v4, ""

    :try_start_0
    const-string v5, "getBiddingToken"

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->kkU(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA/tB;->oJ()V

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Jc;->ba()V

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->getAdxId()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->getAdxId()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    move-object v5, v4

    .line 15
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/jFA;->jr()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v6

    invoke-interface {v6}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->BWx()Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    .line 17
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/Jc;->jFA()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v6

    invoke-interface {v6, v5}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->IUZ(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 18
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Jc;->so()V

    return-object v4

    .line 19
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/jFA;->BTZ()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Jc;->so()V

    return-object v4

    .line 21
    :cond_3
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 22
    const-string v7, "is_init"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->Pfn()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v7

    invoke-interface {v7}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->jFA()Ljava/lang/String;

    move-result-object v7

    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v8

    invoke-interface {v8}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Ry()Ljava/lang/String;

    move-result-object v8

    if-eqz v7, :cond_4

    if-eqz v8, :cond_4

    .line 25
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 26
    const-string v12, "version"

    invoke-virtual {v11, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    const-string v7, "param"

    invoke-virtual {v11, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    const-string v7, "abtest"

    invoke-virtual {v6, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    :cond_4
    const-string v7, "language"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/BTZ;->ZYk()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string v7, "ad_sdk_version"

    const-string v8, "7.5.0.4"

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v7, "package_name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ba()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p1, :cond_6

    .line 32
    const-string v7, "user_data"

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->getSlotId()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    new-instance v8, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;->getSlotId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v8

    :goto_2
    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    const-wide/16 v11, 0x3e8

    div-long/2addr v7, v11

    .line 34
    const-string v13, "ts"

    invoke-virtual {v6, v13, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 35
    const-string v7, "key_ipv6"

    invoke-static {v3, v7, v4}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->ZYk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 36
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 37
    const-string v3, "ipv6"

    invoke-virtual {v6, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 38
    :cond_7
    const-string v7, "key_ipv4"

    invoke-static {v3, v7, v4}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->ZYk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 39
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_8

    .line 40
    const-string v7, "ipv4"

    invoke-virtual {v6, v7, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    :cond_8
    :goto_3
    const-string v3, "adx_id"

    invoke-virtual {v6, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->JJ()Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-virtual {v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    const/16 v7, 0xa78

    if-gt v5, v7, :cond_b

    .line 45
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v5

    .line 46
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;

    move-result-object v8

    invoke-virtual {v8, v6}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/ZYk/oJ;->oJ(Lorg/json/JSONObject;)V

    if-eqz p1, :cond_9

    .line 47
    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/Jc;->ZYk(Lcom/bytedance/sdk/openadsdk/api/bidding/PAGBiddingRequest;)Lorg/json/JSONObject;

    move-result-object v8

    .line 48
    const-string v13, "banner"

    invoke-virtual {v6, v13, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    :cond_9
    const-string v8, "app_reg"

    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->YF()Z

    move-result v13

    invoke-virtual {v6, v8, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 50
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v8

    .line 51
    const-string v13, "apk-sign"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->cFZ()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    const-string v13, "screen_scale"

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ba(Landroid/content/Context;)I

    move-result v14

    invoke-virtual {v6, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    const-string v13, "app_set_id_scope"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/ex;->ZYk()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    const-string v13, "app_set_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/ex;->tB()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    const-string v13, "installed_source"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/ex;->ex()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    const-string v13, "app_running_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->oJ()J

    move-result-wide v16

    sub-long v14, v14, v16

    div-long/2addr v14, v11

    invoke-virtual {v6, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 57
    const-string v11, "js_render_ver"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/so/BTZ;->ZYk()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string v11, "js_render_v3_ver"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/so/BTZ;->tB()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    const-string v11, "gp_v_name"

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->Pfn(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    const-string v11, "gp_v_code"

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->ba(Landroid/content/Context;)I

    move-result v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 61
    const-string v11, "vendor"

    sget-object v12, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v11, "model"

    sget-object v12, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v11, "user_agent_device"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ZYk()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v11, "user_agent_webview"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v11, "sys_compiling_time"

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/BTZ;->ZYk(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v11, "screen_height"

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/content/Context;)I

    move-result v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    const-string v11, "screen_width"

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    move-result v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 68
    const-string v11, "rom_version"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/IUZ;->oJ()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v11, "carrier_name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/LpP;->oJ()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v11, "os_version"

    sget-object v12, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v11, "conn_type"

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->so(Landroid/content/Context;)I

    move-result v12

    invoke-virtual {v6, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 72
    invoke-interface {v5, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->tb(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    :cond_a
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lorg/json/JSONObject;)V

    .line 75
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/jFA/tB;->oJ(Lorg/json/JSONObject;)V

    .line 76
    invoke-static {v6, v8}, Lcom/bytedance/sdk/openadsdk/utils/so;->oJ(Lorg/json/JSONObject;Landroid/content/Context;)V

    .line 77
    const-string v1, "is_multi"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v5

    invoke-virtual {v6, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 78
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/Jc;->tB:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    goto :goto_4

    :cond_b
    const/4 v1, 0x2

    :goto_4
    if-lez v1, :cond_c

    .line 79
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v5, v5

    if-le v5, v7, :cond_c

    .line 80
    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/Jc;->tB:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 81
    :cond_c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/ba/ZYk;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ(Lorg/json/JSONObject;)V

    .line 82
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Zzm()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v5

    sget-object v7, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->BIDDING_TOKEN:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-interface {v5, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oJ(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)Z

    move-result v5

    if-eqz v5, :cond_d

    move v9, v10

    .line 83
    :cond_d
    invoke-direct {v0, v6, v9}, Lcom/bytedance/sdk/openadsdk/core/Jc;->oJ(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v5

    :goto_5
    if-lez v1, :cond_e

    .line 84
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    array-length v7, v7

    const/16 v8, 0x1000

    if-le v7, v8, :cond_e

    .line 85
    sget-object v5, Lcom/bytedance/sdk/openadsdk/core/Jc;->tB:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    invoke-direct {v0, v6, v9}, Lcom/bytedance/sdk/openadsdk/core/Jc;->oJ(Lorg/json/JSONObject;Z)Lorg/json/JSONObject;

    move-result-object v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 87
    :cond_e
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_f

    .line 88
    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    :cond_f
    invoke-static {}, Lcom/bytedance/sdk/component/utils/awB;->ex()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 90
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    .line 91
    :cond_10
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 92
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Jc;->cFZ()V

    .line 93
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 94
    :catchall_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/Jc;->so()V

    return-object v4
.end method

.method public oJ(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jc;->oJ:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/Jc;->ZYk:Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 100
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 101
    :cond_1
    :try_start_0
    invoke-static {p1, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/component/reward/kkU;->oJ(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public tB(I)Lcom/bytedance/sdk/openadsdk/core/LpP;
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/Jc;->ex:I

    return-object p0
.end method

.method public tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/LpP;
    .locals 1

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->so(Ljava/lang/String;)V

    return-object p0
.end method

.method public tB()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "7.5.0.4"

    return-object v0
.end method
