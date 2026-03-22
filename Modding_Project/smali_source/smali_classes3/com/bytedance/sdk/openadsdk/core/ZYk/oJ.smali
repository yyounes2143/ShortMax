.class public Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;
.super Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ$oJ;
    }
.end annotation


# instance fields
.field private XAo:Z

.field private ZYk:Z

.field private mu:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ$oJ;",
            ">;"
        }
    .end annotation
.end field

.field private oJ:Z

.field private ofl:I

.field private tB:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/cY;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->ZYk:Z

    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->tB:Z

    .line 11
    .line 12
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->XAo:Z

    .line 13
    .line 14
    return-void
.end method

.method private ZYk(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 3
    const-string v0, "open_ad"

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v1, "banner_call"

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "slide_banner_ad"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_1
    const-string v3, "interaction"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_2
    const-string v3, "embeded_ad"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_4
    const-string v3, "banner_ad"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 4
    const-string p1, ""

    return-object p1

    :pswitch_0
    return-object v1

    .line 5
    :pswitch_1
    const-string p1, "interaction_call"

    return-object p1

    .line 6
    :pswitch_2
    const-string p1, "feed_call"

    return-object p1

    :pswitch_3
    return-object v0

    :pswitch_4
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x65146dea -> :sswitch_4
        -0x4b4ad1c8 -> :sswitch_3
        -0x2a77c376 -> :sswitch_2
        0x6deace12 -> :sswitch_1
        0x7cab2108 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private ex(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/eZI;->sQ:I

    if-eq v1, v3, :cond_6

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/eZI;->cdg:I

    if-eq v1, v3, :cond_6

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Rl:I

    if-eq v1, v3, :cond_6

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Jm:I

    if-eq v1, v3, :cond_6

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/eZI;->Qu:I

    if-ne v1, v3, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x1f00001e

    if-eq v1, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sget v3, Lcom/bytedance/sdk/openadsdk/utils/eZI;->NX:I

    if-ne v1, v3, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    move v1, v0

    .line 9
    :goto_0
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 10
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->ex(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    return v0

    :cond_6
    :goto_2
    return v2
.end method

.method private jFA()Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/so;

    .line 2
    .line 3
    return v0
.end method

.method private kkU()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ba:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->jFA()Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_1

    .line 12
    .line 13
    return v1

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Dc()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x5

    .line 19
    if-eq v2, v3, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Dc()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/16 v4, 0xf

    .line 26
    .line 27
    if-eq v2, v4, :cond_2

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->ofl:I

    .line 31
    .line 32
    if-nez v2, :cond_3

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->qnr()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->ofl:I

    .line 39
    .line 40
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->ZYk()Z

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ()Z

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->tB()Z

    .line 47
    .line 48
    .line 49
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->ofl:I

    .line 50
    .line 51
    if-ne v0, v3, :cond_4

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->so()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->ZYk()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->tB()Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_4

    .line 76
    .line 77
    return v1

    .line 78
    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->ofl:I

    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    if-eq v0, v2, :cond_6

    .line 82
    .line 83
    const/4 v4, 0x2

    .line 84
    if-eq v0, v4, :cond_6

    .line 85
    .line 86
    if-ne v0, v3, :cond_5

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    return v1

    .line 90
    :cond_6
    :goto_0
    return v2
.end method

.method private so()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ba:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jXJ()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method


# virtual methods
.method public ZYk(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->ZYk:Z

    return-void
.end method

.method public ZYk()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public ex(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->XAo:Z

    return-void
.end method

.method public oJ(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "FFFF",
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/ZYk/tB$oJ;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v10, p1

    move/from16 v9, p7

    const/4 v2, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    .line 2
    invoke-virtual/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Landroid/view/View;IFFFFLandroid/util/SparseArray;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v8, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ba:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v6, 0x1

    .line 4
    invoke-virtual {v8, v6}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->dLZ(Z)V

    .line 5
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Geh()V

    .line 6
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->awB()Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {v8, v6}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Z)V

    .line 8
    :cond_1
    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->cFZ:Ljava/lang/String;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->nnj()J

    move-result-wide v1

    invoke-static {v8, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;J)V

    .line 10
    :cond_2
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->WcQ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->si:Ljava/util/Map;

    if-nez v0, :cond_3

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->si:Ljava/util/Map;

    .line 13
    :cond_3
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->si:Ljava/util/Map;

    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->WcQ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->ba()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_4
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BP()I

    move-result v7

    const/4 v5, 0x0

    .line 15
    invoke-virtual {v8, v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Rl(I)V

    .line 16
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->eZI:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    if-eqz v0, :cond_6

    if-lez v7, :cond_5

    move v1, v7

    goto :goto_0

    :cond_5
    move v1, v5

    .line 17
    :goto_0
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;->oJ(I)V

    .line 18
    :cond_6
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->si:Ljava/util/Map;

    const-string v4, "auto_click"

    const-string v1, "click_probability_jump"

    const-string v2, "dsp_click_type"

    if-eqz v0, :cond_7

    .line 19
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->si:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->si:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_7
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    move-result v0

    if-lez v7, :cond_a

    .line 23
    iget-object v3, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->si:Ljava/util/Map;

    if-nez v3, :cond_8

    .line 24
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->si:Ljava/util/Map;

    :cond_8
    const/16 v3, 0xb

    if-eqz v0, :cond_9

    if-ge v7, v3, :cond_9

    .line 25
    iget-object v12, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->si:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v12, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    if-lt v7, v3, :cond_a

    .line 26
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->GSK()I

    move-result v2

    if-nez v2, :cond_a

    .line 27
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/model/jFA;->oJ(I)I

    move-result v2

    .line 28
    iget-object v3, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->si:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_a
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    move-result-object v1

    if-nez v0, :cond_b

    if-eqz v1, :cond_12

    .line 30
    :cond_b
    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->mu:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_c

    .line 31
    iget-object v2, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->mu:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ$oJ;

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ$oJ;->getVideoProgress()J

    move-result-wide v2

    goto :goto_1

    :cond_c
    const-wide/16 v2, 0x0

    :goto_1
    if-nez v0, :cond_d

    if-eqz v1, :cond_d

    .line 32
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 33
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->cFZ(J)V

    :cond_d
    if-eqz v0, :cond_12

    if-eqz v10, :cond_e

    const v0, 0x22000001

    .line 34
    invoke-virtual {v10, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 35
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 36
    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 37
    :cond_e
    const-string v0, "VAST_ACTION_BUTTON"

    :goto_2
    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Du()Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 38
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->Pfn(Ljava/lang/String;)V

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_f

    .line 40
    invoke-virtual {v11, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Ljava/lang/String;)V

    .line 41
    :cond_f
    const-string v12, "VAST_ICON"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    .line 42
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->ZYk()Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 43
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->oJ(J)V

    goto :goto_3

    .line 44
    :cond_10
    const-string v12, "VAST_END_CARD"

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 45
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->tB()Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 46
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB;->oJ(J)V

    goto :goto_3

    .line 47
    :cond_11
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 48
    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->cFZ(J)V

    .line 49
    :cond_12
    :goto_3
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->kkU()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct/range {p0 .. p1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->ex(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-boolean v0, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->tB:Z

    if-nez v0, :cond_13

    .line 50
    invoke-super/range {p0 .. p7}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    return-void

    .line 51
    :cond_13
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ex:Landroid/content/Context;

    if-nez v0, :cond_14

    .line 52
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    iput-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ex:Landroid/content/Context;

    .line 53
    :cond_14
    iget-object v0, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ex:Landroid/content/Context;

    if-nez v0, :cond_15

    return-void

    .line 54
    :cond_15
    invoke-virtual {v11, v10, v9}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Landroid/view/View;Z)Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 55
    :cond_16
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->oJ(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    .line 56
    iget-object v1, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->Pfn:Lcom/bytedance/sdk/openadsdk/core/model/eZI;

    const/16 v19, -0x1

    const/16 v20, 0x0

    if-eqz v1, :cond_17

    .line 57
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->BTZ:I

    .line 58
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->PiB:Lorg/json/JSONObject;

    .line 59
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->si:Lorg/json/JSONObject;

    .line 60
    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/core/model/eZI;->Ry:Z

    move/from16 v16, v0

    move/from16 v21, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    goto :goto_4

    :cond_17
    move-object/from16 v17, v0

    move/from16 v21, v5

    move/from16 v16, v19

    move-object/from16 v18, v20

    .line 61
    :goto_4
    iget-wide v2, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/tB;->Xe:J

    iget-wide v0, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/tB;->tb:J

    iget-object v12, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->jFA:Ljava/lang/ref/WeakReference;

    if-nez v12, :cond_18

    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ex()Landroid/view/View;

    move-result-object v12

    :goto_5
    move-object/from16 v22, v12

    goto :goto_6

    :cond_18
    invoke-virtual {v12}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    goto :goto_5

    :goto_6
    iget-object v12, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->kkU:Ljava/lang/ref/WeakReference;

    if-nez v12, :cond_19

    .line 63
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->Pfn()Landroid/view/View;

    move-result-object v12

    :goto_7
    move-object/from16 v23, v12

    goto :goto_8

    :cond_19
    invoke-virtual {v12}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    goto :goto_7

    .line 64
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ba()Ljava/lang/String;

    move-result-object v12

    iget-object v13, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ex:Landroid/content/Context;

    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->so(Landroid/content/Context;)F

    move-result v13

    iget-object v14, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ex:Landroid/content/Context;

    invoke-static {v14}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->kkU(Landroid/content/Context;)I

    move-result v14

    iget-object v15, v11, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ex:Landroid/content/Context;

    invoke-static {v15}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->jFA(Landroid/content/Context;)F

    move-result v15

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v26, v2

    move/from16 v2, p3

    move/from16 v3, p4

    move-object/from16 v28, v4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v29, v6

    move/from16 v30, v7

    move-wide/from16 v6, v26

    move-object/from16 p2, v8

    move-wide/from16 v8, v24

    move-object/from16 v10, v22

    move-object/from16 v11, v23

    .line 65
    invoke-virtual/range {v0 .. v18}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(FFFFLandroid/util/SparseArray;JJLandroid/view/View;Landroid/view/View;Ljava/lang/String;FIFILorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/BTZ;

    move-result-object v0

    move-object/from16 v10, p0

    iput-object v0, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/core/model/BTZ;

    const/4 v11, 0x2

    if-eqz v21, :cond_1b

    .line 66
    iget-object v1, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->cFZ:Ljava/lang/String;

    iget-object v2, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->si:Ljava/util/Map;

    if-eqz p7, :cond_1a

    move/from16 v11, v29

    :cond_1a
    const-string v3, "click"

    const/4 v4, 0x1

    move-object/from16 p1, v3

    move-object/from16 p3, v0

    move-object/from16 p4, v1

    move/from16 p5, v4

    move-object/from16 p6, v2

    move/from16 p7, v11

    invoke-static/range {p1 .. p7}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/BTZ;Ljava/lang/String;ZLjava/util/Map;I)V

    return-void

    .line 67
    :cond_1b
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-eq v0, v11, :cond_1c

    if-eq v0, v2, :cond_1c

    if-eq v0, v1, :cond_21

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1d

    const/16 v3, 0x8

    if-eq v0, v3, :cond_1c

    move-object/from16 v12, p1

    move/from16 v0, v19

    goto/16 :goto_16

    :cond_1c
    move-object/from16 v12, p1

    move-object/from16 v13, p2

    const/4 v14, 0x0

    goto/16 :goto_10

    .line 68
    :cond_1d
    iget-object v1, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->cFZ:Ljava/lang/String;

    invoke-direct {v10, v1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->ZYk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 69
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1f

    .line 70
    iget-object v3, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/core/model/BTZ;

    iget-object v6, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->si:Ljava/util/Map;

    if-eqz p7, :cond_1e

    move/from16 v7, v29

    goto :goto_9

    :cond_1e
    move v7, v11

    :goto_9
    const-string v1, "click_call"

    const/4 v5, 0x1

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/BTZ;Ljava/lang/String;ZLjava/util/Map;I)V

    .line 71
    :cond_1f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ZYk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 72
    iget-object v3, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/core/model/BTZ;

    iget-object v4, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->cFZ:Ljava/lang/String;

    iget-object v6, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->si:Ljava/util/Map;

    if-eqz p7, :cond_20

    move/from16 v7, v29

    goto :goto_a

    :cond_20
    move v7, v11

    :goto_a
    const-string v1, "click"

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/BTZ;Ljava/lang/String;ZLjava/util/Map;I)V

    move-object/from16 v12, p1

    goto/16 :goto_16

    .line 73
    :cond_21
    invoke-static/range {p2 .. p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->PiB:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    if-nez v1, :cond_22

    iget-object v1, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->Ry:Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    if-eqz v1, :cond_23

    :cond_22
    move-object/from16 v12, p1

    goto :goto_b

    :cond_23
    move-object/from16 v12, p1

    goto :goto_e

    :goto_b
    if-eqz v12, :cond_24

    .line 74
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v20

    :cond_24
    if-nez v20, :cond_25

    .line 75
    iget-object v1, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ex:Landroid/content/Context;

    goto :goto_c

    :cond_25
    move-object/from16 v1, v20

    .line 76
    :goto_c
    iget v3, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->so:I

    iget-object v4, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->PiB:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    iget-object v5, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->Ry:Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    iget-object v6, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->cFZ:Ljava/lang/String;

    iget-object v7, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->eZI:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    const/4 v8, 0x1

    move-object/from16 v2, p2

    move/from16 v9, v30

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/XAo;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/core/tB/oJ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;ZI)Z

    move-result v5

    .line 77
    iget-boolean v1, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ:Z

    if-eqz v1, :cond_35

    .line 78
    iget-object v3, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/core/model/BTZ;

    iget-object v4, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->cFZ:Ljava/lang/String;

    iget-object v6, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->si:Ljava/util/Map;

    if-eqz p7, :cond_26

    move/from16 v7, v29

    goto :goto_d

    :cond_26
    move v7, v11

    :goto_d
    const-string v1, "click"

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/BTZ;Ljava/lang/String;ZLjava/util/Map;I)V

    goto/16 :goto_16

    .line 79
    :goto_e
    iget-object v1, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->eZI:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    if-eqz v1, :cond_35

    move-object/from16 v13, p2

    .line 80
    invoke-interface {v1, v13}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 81
    iget-object v6, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->si:Ljava/util/Map;

    .line 82
    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->awB()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->WcQ()Z

    move-result v1

    if-nez v1, :cond_27

    .line 83
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v2, v28

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v14, 0x0

    .line 84
    invoke-virtual {v13, v14}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ex(Z)V

    .line 85
    :cond_27
    iget-boolean v1, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ:Z

    if-eqz v1, :cond_35

    .line 86
    iget-object v3, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/core/model/BTZ;

    iget-object v4, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->cFZ:Ljava/lang/String;

    if-eqz p7, :cond_28

    move/from16 v7, v29

    goto :goto_f

    :cond_28
    move v7, v11

    :goto_f
    const-string v1, "click"

    const/4 v5, 0x1

    move-object v2, v13

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/BTZ;Ljava/lang/String;ZLjava/util/Map;I)V

    goto/16 :goto_16

    :goto_10
    if-ne v0, v2, :cond_2a

    .line 87
    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Oof()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string v3, "play.google.com/store"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 89
    const-string v3, "?id="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 90
    iget-object v3, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ex:Landroid/content/Context;

    iget-object v4, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->cFZ:Ljava/lang/String;

    invoke-static {v3, v2, v1, v4, v13}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 91
    iget-boolean v1, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ:Z

    if-eqz v1, :cond_35

    .line 92
    iget-object v3, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/core/model/BTZ;

    iget-object v4, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->cFZ:Ljava/lang/String;

    iget-object v6, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->si:Ljava/util/Map;

    if-eqz p7, :cond_29

    move/from16 v7, v29

    goto :goto_11

    :cond_29
    move v7, v11

    :goto_11
    const-string v1, "click"

    const/4 v5, 0x1

    move-object v2, v13

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/BTZ;Ljava/lang/String;ZLjava/util/Map;I)V

    goto/16 :goto_16

    .line 93
    :cond_2a
    iget-object v1, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->PiB:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    if-nez v1, :cond_2b

    iget-boolean v1, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->ZYk:Z

    if-eqz v1, :cond_2d

    .line 94
    :cond_2b
    iget-object v3, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/core/model/BTZ;

    iget-object v4, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->cFZ:Ljava/lang/String;

    iget-object v6, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->si:Ljava/util/Map;

    if-eqz p7, :cond_2c

    move/from16 v7, v29

    goto :goto_12

    :cond_2c
    move v7, v11

    :goto_12
    const-string v1, "click_button"

    const/4 v5, 0x1

    move-object v2, v13

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/BTZ;Ljava/lang/String;ZLjava/util/Map;I)V

    :cond_2d
    if-eqz v12, :cond_2e

    .line 95
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x1f00001e

    if-eq v1, v2, :cond_2f

    instance-of v1, v12, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;

    if-nez v1, :cond_2f

    :cond_2e
    const v1, 0x1f000042

    .line 96
    invoke-virtual {v12, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 97
    :cond_2f
    invoke-static/range {v29 .. v29}, Lcom/bytedance/sdk/openadsdk/core/XAo;->oJ(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_30
    if-eqz v12, :cond_31

    .line 98
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v20

    :cond_31
    if-nez v20, :cond_32

    .line 99
    iget-object v1, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ex:Landroid/content/Context;

    goto :goto_13

    :cond_32
    move-object/from16 v1, v20

    .line 100
    :goto_13
    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v2

    if-eqz v2, :cond_33

    iget-boolean v2, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->XAo:Z

    if-eqz v2, :cond_33

    move v5, v14

    goto :goto_14

    .line 101
    :cond_33
    iget v3, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->so:I

    iget-object v4, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->PiB:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    iget-object v5, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->Ry:Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    iget-object v6, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->cFZ:Ljava/lang/String;

    iget-object v7, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->eZI:Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    const/4 v8, 0x1

    move-object v2, v13

    move/from16 v9, v30

    invoke-static/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/XAo;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;ILcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;Lcom/bytedance/sdk/openadsdk/core/tB/oJ;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;ZI)Z

    move-result v1

    .line 102
    invoke-static {v14}, Lcom/bytedance/sdk/openadsdk/core/XAo;->oJ(Z)V

    move v5, v1

    .line 103
    :goto_14
    iget-boolean v1, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ:Z

    if-eqz v1, :cond_35

    .line 104
    iget-object v3, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->dLZ:Lcom/bytedance/sdk/openadsdk/core/model/BTZ;

    iget-object v4, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->cFZ:Ljava/lang/String;

    iget-object v6, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->si:Ljava/util/Map;

    if-eqz p7, :cond_34

    move/from16 v7, v29

    goto :goto_15

    :cond_34
    move v7, v11

    :goto_15
    const-string v1, "click"

    move-object v2, v13

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/BTZ;Ljava/lang/String;ZLjava/util/Map;I)V

    .line 105
    :cond_35
    :goto_16
    iget-object v1, v10, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->BTZ:Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk$oJ;

    if-eqz v1, :cond_36

    .line 106
    invoke-interface {v1, v12, v0}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk$oJ;->oJ(Landroid/view/View;I)V

    :cond_36
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ$oJ;)V
    .locals 1

    .line 114
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->mu:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ:Z

    return-void
.end method

.method protected oJ()Z
    .locals 5

    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->ba:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 108
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    move-result v0

    .line 109
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->ZYk(I)I

    move-result v0

    .line 110
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/Ry;->tB(Landroid/content/Context;)I

    move-result v2

    if-eq v0, v1, :cond_8

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x5

    if-eq v0, v3, :cond_1

    return v1

    .line 111
    :cond_1
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ba(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v4

    :cond_3
    :goto_0
    return v1

    :cond_4
    return v4

    .line 112
    :cond_5
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Pfn(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex(I)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ba(I)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    return v4

    :cond_7
    :goto_1
    return v1

    .line 113
    :cond_8
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex(I)Z

    move-result v0

    return v0
.end method

.method public tB(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->tB:Z

    return-void
.end method

.method public tB()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method
