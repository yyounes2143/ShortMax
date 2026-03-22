.class Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;
.super Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 2
    .line 3
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 6
    .line 7
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public oJ(Landroid/view/View;FFFFLandroid/util/SparseArray;IIIZ)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/ZYk/tB$oJ;",
            ">;IIIZ)V"
        }
    .end annotation

    move-object v1, p0

    move-object v3, p1

    .line 1
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    const v0, 0x22000001

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 3
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 4
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Ljava/lang/String;)V

    .line 5
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "duration"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    const-string v4, "click_scence"

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_1
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 10
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 11
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :goto_0
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    move v4, p2

    move/from16 v5, p3

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {v2, v0, p2, v5}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(Ljava/util/Map;FF)V

    .line 14
    :cond_3
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Ljava/util/Map;)V

    .line 15
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->e_()V

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v2, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Vh:I

    if-ne v0, v2, :cond_5

    .line 17
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 19
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 20
    :try_start_0
    const-string v0, "playable_url"

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->BTZ()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 21
    const-string v6, "TTAD.RFReportManager"

    const-string v7, "onRewardBarClick json error"

    invoke-static {v6, v7, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 22
    :cond_4
    :goto_1
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v6, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    const-string v7, "click_playable_download_button_loading"

    invoke-static {v0, v6, v7, v2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 23
    :cond_5
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jr:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ex;

    new-instance v12, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4$1;

    invoke-direct {v12, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;)V

    move-object v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v12}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ex;->oJ(Landroid/view/View;FFFFLandroid/util/SparseArray;IIILcom/bytedance/sdk/openadsdk/component/reward/oJ/ex$oJ;)V

    .line 24
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 25
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->cdg()V

    return-void
.end method
