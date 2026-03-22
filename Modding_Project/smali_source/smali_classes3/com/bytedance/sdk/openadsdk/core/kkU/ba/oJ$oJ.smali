.class public Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;
.super Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oJ"
.end annotation


# instance fields
.field private ZYk:Lcom/bytedance/adsdk/ugeno/core/Ry;

.field private ex:F

.field private oJ:Lorg/json/JSONObject;

.field private tB:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;)Lcom/bytedance/adsdk/ugeno/core/Ry;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/core/Ry;

    return-object p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;->ex:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;)Lorg/json/JSONObject;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;->oJ:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;->tB:F

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public ZYk(F)Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;->ex:F

    return-object p0
.end method

.method public ZYk()Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;
    .locals 1

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;)V

    return-object v0
.end method

.method public synthetic oJ()Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;->ZYk()Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    move-result-object v0

    return-object v0
.end method

.method public oJ(F)Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;
    .locals 0

    .line 5
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;->tB:F

    return-object p0
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/core/Ry;)Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/core/Ry;

    return-object p0
.end method

.method public oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;->oJ:Lorg/json/JSONObject;

    return-object p0
.end method
