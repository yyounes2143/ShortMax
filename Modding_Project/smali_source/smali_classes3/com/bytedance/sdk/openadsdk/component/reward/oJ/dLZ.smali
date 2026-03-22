.class public Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ZYk:Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;

.field private final oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field private final tB:Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->tB:Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    .line 13
    .line 14
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$1;

    .line 15
    .line 16
    iget-object v3, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    .line 17
    .line 18
    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 19
    .line 20
    iget-object v5, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    .line 21
    .line 22
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ex:Z

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    const/4 p1, 0x7

    .line 27
    :goto_0
    move v6, p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    const/4 p1, 0x5

    .line 30
    goto :goto_0

    .line 31
    :goto_1
    move-object v1, v0

    .line 32
    move-object v2, p0

    .line 33
    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;

    .line 37
    .line 38
    return-void
.end method

.method private ZYk(Landroid/view/View;FFFFLandroid/util/SparseArray;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/ZYk/tB$oJ;",
            ">;III)V"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->so()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 32
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 33
    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Pfn:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->ex:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->tB:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->ZYk:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->BTZ:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->SCr:I

    if-eq p1, v0, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->si:I

    if-eq p1, v0, :cond_1

    const v0, 0x1f000009

    if-eq p1, v0, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->dLZ:I

    if-eq p1, v0, :cond_1

    const v0, 0x1f00000b

    if-eq p1, v0, :cond_1

    sget v0, Lcom/bytedance/sdk/openadsdk/utils/eZI;->cFZ:I

    if-ne p1, v0, :cond_3

    .line 34
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->kkU(Landroid/content/Context;)I

    move-result p1

    .line 35
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->so(Landroid/content/Context;)F

    move-result v0

    .line 36
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->jFA(Landroid/content/Context;)F

    move-result v1

    .line 37
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;-><init>()V

    .line 38
    invoke-virtual {v2, p2}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ba(F)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    .line 39
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->Pfn(F)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    .line 40
    invoke-virtual {p2, p4}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ex(F)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    .line 41
    invoke-virtual {p2, p5}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->tB(F)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ZYk(J)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    const-wide/16 p3, 0x0

    .line 43
    invoke-virtual {p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->oJ(J)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 44
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->dLZ()Landroid/view/View;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;)[I

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ZYk([I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    const/4 p3, 0x0

    .line 45
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;)[I

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->oJ([I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p4, p4, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 46
    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->dLZ()Landroid/view/View;

    move-result-object p4

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/view/View;)[I

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->tB([I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    .line 47
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/view/View;)[I

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ex([I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    .line 48
    invoke-virtual {p2, p8}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ex(I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    .line 49
    invoke-virtual {p2, p9}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->Pfn(I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    .line 50
    invoke-virtual {p2, p7}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ba(I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    .line 51
    invoke-virtual {p2, p6}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->oJ(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    .line 52
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/jFA;->oJ()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p3, 0x1

    goto :goto_0

    :cond_2
    const/4 p3, 0x2

    :goto_0
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ZYk(I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    .line 53
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->tB(I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p1

    .line 54
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->oJ(F)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p1

    .line 55
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ZYk(F)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/model/BTZ;

    move-result-object p4

    .line 57
    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    .line 58
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {p7, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p3, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object p5, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    const/4 p6, 0x1

    const/4 p8, -0x1

    const-string p2, "click_other"

    invoke-static/range {p2 .. p8}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/BTZ;Ljava/lang/String;ZLjava/util/Map;I)V

    :cond_3
    :goto_1
    return-void
.end method

.method private jFA()Lorg/json/JSONObject;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Id()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->cY()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    new-instance v3, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :try_start_1
    const-string v4, "duration"

    .line 23
    .line 24
    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    const-string v0, "percent"

    .line 28
    .line 29
    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    .line 31
    .line 32
    return-object v3

    .line 33
    :catchall_0
    const/4 v3, 0x0

    .line 34
    :catchall_1
    return-object v3
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    return-object p0
.end method

.method private oJ(Landroid/view/View;FFFFLandroid/util/SparseArray;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/ZYk/tB$oJ;",
            ">;III)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Pfn:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 43
    const-string v0, "click_play_star_level"

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 44
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->ex:I

    if-eq v0, v1, :cond_a

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->cFZ:I

    if-ne v0, v1, :cond_2

    goto/16 :goto_1

    .line 46
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->tB:I

    if-ne v0, v1, :cond_3

    .line 47
    const-string v0, "click_play_source"

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto/16 :goto_2

    .line 48
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->ZYk:I

    if-ne v0, v1, :cond_4

    .line 49
    const-string v0, "click_play_logo"

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 50
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->BTZ:I

    if-eq v0, v1, :cond_9

    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->SCr:I

    if-eq v0, v1, :cond_9

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->si:I

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 53
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1f000009

    if-ne v0, v1, :cond_6

    .line 54
    const-string v0, "click_start_play"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->jFA()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 55
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->dLZ:I

    if-ne v0, v1, :cond_7

    .line 56
    const-string v0, "click_video"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->jFA()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 57
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1f00000b

    if-eq v0, v1, :cond_8

    .line 58
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/bytedance/sdk/openadsdk/utils/eZI;->so:I

    if-ne v0, v1, :cond_b

    .line 59
    :cond_8
    const-string v0, "fallback_endcard_click"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->jFA()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 60
    :cond_9
    :goto_0
    const-string v0, "click_start_play_bar"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->jFA()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_2

    .line 61
    :cond_a
    :goto_1
    const-string v0, "click_play_star_nums"

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 62
    :cond_b
    :goto_2
    invoke-direct/range {p0 .. p9}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->ZYk(Landroid/view/View;FFFFLandroid/util/SparseArray;III)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;Landroid/view/View;FFFFLandroid/util/SparseArray;III)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p9}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Landroid/view/View;FFFFLandroid/util/SparseArray;III)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;Lorg/json/JSONObject;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Lorg/json/JSONObject;)V

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_0

    .line 31
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/so;->BTZ:I

    iput v0, p1, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;->ZYk:I

    :cond_0
    return-void
.end method

.method private oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ex:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {v1, v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private oJ(Lorg/json/JSONObject;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_0

    .line 22
    :try_start_0
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/so;->BTZ:I

    add-int/lit8 v0, v0, 0x1

    .line 23
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(ILorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private so()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->hwh()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    return v2

    .line 17
    :cond_1
    return v1
.end method


# virtual methods
.method public Pfn()Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->tB:Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    .line 2
    .line 3
    return-object v0
.end method

.method public ZYk()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oq()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Yg:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->lY()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    if-eqz v1, :cond_2

    .line 5
    const-string v4, "dynamic_show_type"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->kkU()I

    move-result v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move v1, v2

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_2
    move v1, v3

    .line 7
    :goto_0
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Lorg/json/JSONObject;)V

    .line 9
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    const v6, 0x1020002

    invoke-virtual {v5, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 10
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    :try_start_1
    const-string v8, "width"

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 12
    const-string v8, "height"

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    const-string v8, "alpha"

    invoke-virtual {v5}, Landroid/view/View;->getAlpha()F

    move-result v5

    float-to-double v9, v5

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :catchall_0
    :try_start_2
    const-string v5, "root_view"

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 16
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    invoke-static {v4, v2, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->jFA()V

    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->kkU()I

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v1, -0x1

    :goto_1
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;-><init>(I)V

    .line 19
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;)V

    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-virtual {v1, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v4, v0}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;)V

    .line 21
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    .line 22
    :goto_2
    const-string v1, "TTAD.RFReportManager"

    const-string v2, "reportShowWhenBindVideoAd error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public ZYk(Z)V
    .locals 6

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 24
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-wide v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oIC:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 25
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-wide v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oIC:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v4, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Pfn()Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    move-result-object v1

    invoke-static {v0, v4, v5, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iput-wide v2, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oIC:J

    goto :goto_0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oIC:J

    .line 29
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/16 v1, 0x8

    const/4 v2, 0x4

    if-eqz p1, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz p1, :cond_3

    move v1, v2

    :cond_3
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    return-void
.end method

.method public ba()V
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 17
    .line 18
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ(Lorg/json/JSONObject;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 24
    .line 25
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x1

    .line 32
    if-eqz v1, :cond_4

    .line 33
    .line 34
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 35
    .line 36
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->tB()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UN:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->ex()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    const/4 v2, 0x3

    .line 56
    goto :goto_0

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ex()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_3

    .line 66
    .line 67
    const/4 v2, 0x2

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    const/4 v2, 0x0

    .line 70
    :goto_0
    :try_start_0
    const-string v1, "endcard_content"

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    const-string v1, "endCardNotShow"

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    .line 81
    :catch_0
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 82
    .line 83
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 84
    .line 85
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    .line 86
    .line 87
    const-string v3, "click_close"

    .line 88
    .line 89
    invoke-static {v2, v1, v3, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method public cFZ()V
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Lorg/json/JSONObject;)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 10
    .line 11
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public ex()Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;
    .locals 9

    .line 64
    new-instance v8, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    iget-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ex:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    :goto_1
    move-object v0, v8

    move-object v1, p0

    move-object v3, p2

    move-object v6, p2

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$4;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    return-object v8
.end method

.method public oJ()V
    .locals 5

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oq()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Yg:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->lY()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 8
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 10
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Lorg/json/JSONObject;)V

    .line 11
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 12
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cdg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->jFA()V

    .line 14
    new-instance v0, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;

    const/4 v2, -0x1

    invoke-direct {v0, v2}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;-><init>(I)V

    .line 15
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ(Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;)V

    .line 16
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn$oJ;)V

    .line 17
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 18
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object v0

    if-eqz v0, :cond_3

    const-wide/16 v1, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(J)V

    :cond_3
    return-void
.end method

.method public oJ(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oq()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Yg:Z

    if-nez v1, :cond_1

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->lY()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 29
    :cond_2
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;Ljava/util/Map;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public oJ(Z)V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    move-result v0

    .line 34
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->iPr()Ljava/lang/String;

    move-result-object v1

    .line 35
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;->ZYk()Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;

    move-result-object v2

    if-eqz p1, :cond_1

    const/4 p1, 0x7

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 36
    :goto_0
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;->oJ(I)Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;

    move-result-object p1

    .line 37
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;->Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->cY()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;->ZYk(I)Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 39
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->jr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;->ba(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;->cFZ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;->ex(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;

    .line 41
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ()Lcom/bytedance/sdk/openadsdk/awB/tB;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/awB/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;)V

    return-void
.end method

.method public tB()Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->tB:Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->HyG:Landroid/app/Activity;

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->tB:Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->wd:Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    const v2, 0x1f000011

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ZYk(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jr:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ex;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ex;->tB()Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->tB:Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->jr:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ex;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ex;->tB()Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->tB:Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;)V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->tB:Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ$3;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ$oJ;)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->tB:Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;

    invoke-virtual {v0, v1, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/tB;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->XAo:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->tB:Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->tB:Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    return-object v0
.end method

.method public tB(Z)V
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 11
    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tjr()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Id()Z

    move-result p1

    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ba(Z)V

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Pfn:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PLU()Lcom/bytedance/sdk/openadsdk/utils/wd;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/wd;)V

    :cond_1
    return-void
.end method
