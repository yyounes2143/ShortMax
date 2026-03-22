.class public Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;
.super Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;
    }
.end annotation


# instance fields
.field private ZYk:Lcom/bytedance/adsdk/ugeno/core/Ry;

.field private ex:F

.field private oJ:Lorg/json/JSONObject;

.field private tB:F


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;-><init>(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;)Lorg/json/JSONObject;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;->oJ:Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;)Lcom/bytedance/adsdk/ugeno/core/Ry;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/core/Ry;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;->tB(Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;)F

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;->tB:F

    .line 21
    .line 22
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;->ex(Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ$oJ;)F

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;->ex:F

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public Jc()Lcom/bytedance/adsdk/ugeno/core/Ry;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/core/Ry;

    .line 2
    .line 3
    return-object v0
.end method

.method public Ln()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;->tB:F

    .line 2
    .line 3
    return v0
.end method

.method public LpP()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;->ex:F

    .line 2
    .line 3
    return v0
.end method

.method public nke()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;->oJ:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method
