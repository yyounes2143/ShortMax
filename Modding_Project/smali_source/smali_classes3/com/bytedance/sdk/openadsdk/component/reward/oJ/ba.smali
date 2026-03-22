.class public Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    return-object p0
.end method


# virtual methods
.method public oJ([FLcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 2
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 3
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    move-result v0

    .line 4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;-><init>()V

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    const/4 v9, 0x0

    aget v1, p1, v9

    const/4 v10, 0x1

    .line 6
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 7
    aget v2, p1, v10

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->build()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    .line 9
    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->awB:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/QSm;)V

    .line 10
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Lcom/bytedance/sdk/component/adexpress/dynamic/ex;)V

    .line 12
    :cond_0
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$1;

    invoke-direct {v1, p0, v7, v8}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/awB;)V

    .line 13
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;

    invoke-direct {v1, p0, v7, v8}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V

    .line 14
    new-instance v12, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$3;

    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Ljava/lang/String;)I

    move-result v5

    move-object v0, v12

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    .line 15
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$4;

    invoke-direct {v0, p0, v7}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V

    invoke-virtual {v12, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk$oJ;)V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    const/4 v13, 0x3

    const-string v14, "click_scence"

    if-eqz v1, :cond_1

    .line 18
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 19
    :cond_1
    invoke-interface {v0, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :goto_0
    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v1, :cond_2

    .line 21
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/activity/so;->BTZ:I

    add-int/2addr v1, v10

    .line 22
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 23
    const-string v3, "ad_show_order"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 24
    const-string v1, "pag_json_data"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    :catchall_0
    :cond_2
    invoke-virtual {v12, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Ljava/util/Map;)V

    .line 26
    new-instance v10, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$5;

    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Ljava/lang/String;)I

    move-result v5

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$5;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    .line 27
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$6;

    invoke-direct {v0, p0, v7}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$6;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk$oJ;)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 30
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v14, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 31
    :cond_3
    invoke-interface {v0, v14, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :goto_1
    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Ljava/util/Map;)V

    .line 33
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    invoke-virtual {v0, v12, v10}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ(Lcom/bytedance/sdk/openadsdk/core/so/jFA;Lcom/bytedance/sdk/openadsdk/core/so/so;)V

    .line 34
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->RQ()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    .line 35
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 36
    :cond_4
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uvK()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ex;->oJ(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 37
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 38
    :cond_5
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 39
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    goto :goto_2

    .line 40
    :cond_6
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    :goto_2
    const/16 v1, 0x11

    .line 41
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 42
    iget-object v1, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba()Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA()Z

    move-result v0

    if-nez v0, :cond_7

    .line 44
    invoke-virtual {v8, v9}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ(Z)V

    .line 45
    :cond_7
    iget-object v0, v6, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->PiB()V

    return-void
.end method
