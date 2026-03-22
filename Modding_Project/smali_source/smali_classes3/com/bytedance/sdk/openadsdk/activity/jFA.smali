.class public Lcom/bytedance/sdk/openadsdk/activity/jFA;
.super Lcom/bytedance/sdk/openadsdk/activity/tB;
.source "SourceFile"


# instance fields
.field private BTZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;

.field public Pfn:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

.field private PiB:I

.field private WcQ:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

.field private awB:Lcom/bytedance/sdk/openadsdk/activity/so;

.field private final ba:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/activity/so;",
            ">;"
        }
    .end annotation
.end field

.field private cFZ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

.field private dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

.field private eZI:I

.field private jFA:Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

.field private kkU:Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

.field private so:Lcom/bytedance/sdk/openadsdk/WcQ/dLZ;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/activity/ZYk;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/tB;-><init>(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/activity/ZYk;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    .line 10
    .line 11
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    .line 12
    .line 13
    invoke-direct {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->jFA:Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    .line 17
    .line 18
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 19
    .line 20
    const/16 v0, 0x23

    .line 21
    .line 22
    if-lt p3, v0, :cond_0

    .line 23
    .line 24
    const/4 p3, 0x1

    .line 25
    invoke-virtual {p2, p3}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->jFA:Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private QSm()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->PiB(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->tB()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-direct {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ZYk(IZ)I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 41
    .line 42
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_1

    .line 47
    .line 48
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    .line 49
    .line 50
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 51
    .line 52
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 53
    .line 54
    add-int/lit8 v5, v2, 0x1

    .line 55
    .line 56
    const/4 v6, 0x1

    .line 57
    invoke-static {v3, v4, v2, v5, v6}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZ)Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move v2, v5

    .line 65
    :cond_1
    invoke-direct {p0, v2, v0}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->oJ(IZ)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private ZYk(IZ)I
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BnM()Ljava/util/List;

    move-result-object v1

    .line 2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 4
    iput v2, v0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->PiB:I

    move/from16 v7, p1

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v2, :cond_7

    add-int/lit8 v4, v2, -0x1

    if-ne v15, v4, :cond_0

    const/4 v4, 0x1

    move v14, v4

    goto :goto_1

    :cond_0
    const/4 v14, 0x0

    .line 5
    :goto_1
    invoke-interface {v1, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    invoke-static {v13}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    new-instance v11, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    add-int/lit8 v16, v7, 0x1

    const/4 v9, 0x1

    const/16 v17, 0x0

    move-object v4, v11

    move-object v6, v13

    move v8, v15

    move v10, v14

    move-object v3, v11

    move/from16 v11, v17

    invoke-direct/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZZZ)V

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v14

    move/from16 v11, v16

    move-object/from16 v16, v1

    move v1, v15

    move-object v15, v13

    goto :goto_2

    .line 9
    :cond_1
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    add-int/lit8 v11, v7, 0x1

    invoke-static {v4, v13, v7, v15, v14}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZ)Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    add-int/lit8 v7, v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v8, v4

    move-object v10, v13

    move v12, v15

    move-object/from16 v18, v13

    move v13, v5

    move v5, v14

    move-object/from16 v16, v1

    move v1, v15

    move v15, v6

    invoke-direct/range {v8 .. v15}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZZZ)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v7

    move-object/from16 v15, v18

    goto :goto_2

    :cond_2
    move-object/from16 v16, v1

    move-object/from16 v18, v13

    move v5, v14

    move v1, v15

    .line 11
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    add-int/lit8 v6, v7, 0x1

    move-object/from16 v15, v18

    invoke-static {v4, v15, v7, v1, v5}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZ)Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v6

    :goto_2
    if-eqz p2, :cond_5

    .line 12
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v3, v15}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v3

    if-nez v5, :cond_3

    .line 13
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ZYk()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 14
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    add-int/lit8 v6, v11, 0x1

    const/4 v13, 0x0

    const/4 v7, 0x0

    move-object v8, v4

    move-object v10, v15

    move v12, v1

    move v14, v5

    move v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZZZ)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v6

    goto :goto_4

    .line 15
    :cond_3
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    invoke-static {v15}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 16
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    add-int/lit8 v6, v11, 0x1

    const/4 v13, 0x0

    const/4 v7, 0x0

    move-object v8, v4

    move-object v10, v15

    move v12, v1

    move v14, v5

    move-object/from16 v17, v15

    move v15, v7

    invoke-direct/range {v8 .. v15}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZZZ)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v6

    goto :goto_3

    :cond_4
    move-object/from16 v17, v15

    .line 17
    :goto_3
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ba()Ljava/lang/String;

    move-result-object v3

    .line 18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 19
    new-instance v3, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    add-int/lit8 v4, v11, 0x1

    const/4 v13, 0x0

    const/4 v15, 0x1

    move-object v8, v3

    move-object/from16 v10, v17

    move v12, v1

    move v14, v5

    invoke-direct/range {v8 .. v15}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZZZ)V

    iput-object v3, v0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->WcQ:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 20
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v7, v4

    goto :goto_4

    :cond_5
    move v7, v11

    :goto_4
    add-int/lit8 v15, v1, 0x1

    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_6
    move/from16 v7, p1

    :cond_7
    return v7
.end method

.method private ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;)V
    .locals 4

    .line 59
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_multiple_ad_indicator"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/cY;->ZYk(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 60
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/activity/so;->BTZ:I

    .line 61
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->PiB:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 63
    const-string v0, "SeqSwitchLayoutManager"

    const-string v1, "updateCurrentAdIndex: "

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V
    .locals 4

    .line 21
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->BTZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;

    if-nez p3, :cond_1

    .line 22
    instance-of p3, p2, Lcom/bytedance/sdk/openadsdk/activity/ba;

    if-eqz p3, :cond_0

    .line 23
    new-instance p3, Lcom/bytedance/sdk/openadsdk/activity/ZYk$oJ;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->cFZ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    invoke-direct {p3, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$oJ;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->BTZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;

    goto :goto_0

    .line 24
    :cond_0
    new-instance p3, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ex;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->cFZ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    invoke-direct {p3, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ex;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->BTZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;

    .line 25
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->BTZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ZYk()V

    .line 26
    iget p3, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_7

    .line 27
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 28
    iget-boolean v2, v1, Lcom/bytedance/sdk/openadsdk/activity/so;->si:Z

    .line 29
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/so;->ofl()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_7

    .line 30
    :cond_2
    instance-of v3, v1, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    if-eqz v3, :cond_4

    .line 31
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v1

    if-eqz v1, :cond_3

    int-to-double v2, v0

    .line 32
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ba()D

    move-result-wide v0

    add-double/2addr v2, v0

    double-to-int v0, v2

    goto :goto_2

    :cond_3
    int-to-long v0, v0

    const-wide/16 v2, 0xa

    add-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_2

    .line 33
    :cond_4
    instance-of v3, v1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    if-eqz v3, :cond_6

    if-eqz v2, :cond_5

    .line 34
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cY(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    move-result v2

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->HL(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    move-result v1

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    goto :goto_2

    .line 35
    :cond_5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ZYk()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 36
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kZ()Z

    move-result v2

    if-nez v2, :cond_6

    .line 37
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->na()Lcom/bytedance/sdk/openadsdk/core/model/Xe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Xe;->tB()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 38
    :cond_7
    instance-of p3, p2, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    if-eqz p3, :cond_8

    move-object v1, p2

    check-cast v1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ:Z

    if-nez v1, :cond_8

    iget-boolean v1, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->si:Z

    if-nez v1, :cond_8

    iget-object v1, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kZ()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 39
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->BTZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex()V

    goto :goto_3

    .line 40
    :cond_8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->BTZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;

    iget-object v2, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ(ILcom/bytedance/sdk/openadsdk/core/model/cY;)V

    if-eqz p3, :cond_b

    .line 41
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/so;->ofl()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-boolean v1, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->si:Z

    if-nez v1, :cond_9

    .line 42
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->tB(Lcom/bytedance/sdk/openadsdk/activity/so;)V

    goto :goto_3

    .line 43
    :cond_9
    iget-boolean v1, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->si:Z

    if-nez v1, :cond_a

    .line 44
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->BTZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;

    iget-object v2, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->na()Lcom/bytedance/sdk/openadsdk/core/model/Xe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Xe;->tB()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->tB(I)V

    goto :goto_3

    .line 45
    :cond_a
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->BTZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;

    iget-object v2, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-boolean v3, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->Ry:Z

    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Z)V

    .line 46
    :cond_b
    :goto_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->Pfn:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    if-eqz v1, :cond_c

    if-nez p1, :cond_c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    .line 47
    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->oJ(J)V

    .line 48
    :cond_c
    instance-of p1, p2, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    if-eqz p1, :cond_d

    .line 49
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->eZI:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->eZI:I

    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->oJ(F)V

    .line 51
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;)V

    return-void

    :cond_d
    if-eqz p3, :cond_10

    .line 52
    iget-boolean p1, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->si:Z

    const/16 p3, 0x8

    if-eqz p1, :cond_e

    .line 53
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    .line 54
    iget p1, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->BTZ:I

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->eZI:I

    if-lt p1, p2, :cond_10

    add-int/lit8 p2, p2, 0x1

    .line 55
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->eZI:I

    return-void

    .line 56
    :cond_e
    move-object p1, p2

    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ:Z

    if-nez p1, :cond_f

    .line 57
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;)V

    return-void

    .line 58
    :cond_f
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    return-void
.end method

.method private static oJ(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZ)Lcom/bytedance/sdk/openadsdk/activity/so;
    .locals 7

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kO()Z

    move-result v0

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BHY()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getDurationSlotType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/cFZ;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZ)V

    return-object v0

    .line 8
    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/ba;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/ba;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZ)V

    return-object v0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/jFA;)Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->cFZ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    return-object p0
.end method

.method private oJ(IZ)V
    .locals 0

    .line 9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB()Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    move-result-object p1

    if-eqz p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->tB()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->oq()V

    :cond_1
    return-void
.end method

.method private oq()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    .line 2
    .line 3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/jFA$1;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/jFA$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/jFA;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/jFA;->oJ(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/utils/jFA$oJ;)Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->Pfn:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    .line 13
    .line 14
    return-void
.end method

.method private tB(Lcom/bytedance/sdk/openadsdk/activity/so;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->so:Lcom/bytedance/sdk/openadsdk/WcQ/dLZ;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->cFZ(Landroid/view/View;)V

    .line 3
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->so:Lcom/bytedance/sdk/openadsdk/WcQ/dLZ;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->cFZ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->cFZ(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->cFZ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->getITopLayout()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->cFZ(Landroid/view/View;)V

    .line 7
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->cFZ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->BTZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->tB()V

    .line 10
    :cond_2
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    if-eqz v0, :cond_3

    .line 11
    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->nQI()V

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->Pfn:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    if-eqz p1, :cond_4

    .line 13
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->tB()V

    :cond_4
    return-void
.end method


# virtual methods
.method public BTZ()Lcom/bytedance/sdk/openadsdk/activity/so;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 2
    .line 3
    return-object v0
.end method

.method public Pfn()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x1

    .line 18
    sub-int/2addr v2, v3

    .line 19
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 24
    .line 25
    instance-of v2, v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 30
    .line 31
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ:Z

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    return v3

    .line 36
    :cond_1
    return v1
.end method

.method public PiB()Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->cFZ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 2
    .line 3
    return-object v0
.end method

.method public RZ()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    .line 6
    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    return v0
.end method

.method public WcQ()Lcom/bytedance/sdk/openadsdk/activity/so;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    .line 8
    .line 9
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v0, v2, :cond_3

    .line 18
    .line 19
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 26
    .line 27
    instance-of v3, v2, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    .line 28
    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    return-object v2

    .line 32
    :cond_2
    instance-of v3, v2, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 37
    .line 38
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    iget-boolean v3, v2, Lcom/bytedance/sdk/openadsdk/activity/so;->si:Z

    .line 45
    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    return-object v2

    .line 49
    :cond_3
    return-object v1
.end method

.method public ZYk()V
    .locals 2

    .line 64
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk()V

    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->tB()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->BTZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    .line 68
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ZYk(I)V

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->Pfn:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    if-eqz v0, :cond_2

    .line 70
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->oJ()V

    :cond_2
    return-void
.end method

.method public ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;I)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->BTZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    .line 72
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ(I)V

    .line 73
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->Pfn:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    if-eqz p1, :cond_4

    .line 74
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->ZYk()V

    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 75
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ZYk(I)V

    .line 76
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->Pfn:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    if-eqz p1, :cond_4

    .line 77
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->oJ()V

    return-void

    :cond_2
    const/4 p1, 0x3

    if-eq p2, p1, :cond_3

    const/4 p1, 0x4

    if-ne p2, p1, :cond_4

    .line 78
    :cond_3
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->tb()Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->LpP()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 79
    const-string p2, "SeqSwitchLayoutManager"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public awB()Lcom/bytedance/sdk/openadsdk/activity/Pfn;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->WcQ:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    const/4 v0, -0x1

    .line 14
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/lit8 v1, v1, -0x1

    .line 21
    .line 22
    :goto_1
    if-le v1, v0, :cond_3

    .line 23
    .line 24
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 31
    .line 32
    instance-of v3, v2, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    check-cast v2, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 37
    .line 38
    iget-boolean v3, v2, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ:Z

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->WcQ:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    add-int/lit8 v1, v1, -0x1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->WcQ:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 49
    .line 50
    return-object v0
.end method

.method public cFZ()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->cFZ()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->BTZ()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public dLZ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->eZI:I

    .line 2
    .line 3
    return v0
.end method

.method public eZI()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BnM()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public ex()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->Rl()V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->RZ()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 32
    .line 33
    iget v3, v2, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    .line 34
    .line 35
    if-lt v3, v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/activity/so;->QSm()V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->BTZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->tB()V

    .line 46
    .line 47
    .line 48
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->Pfn:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    .line 49
    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->tB()V

    .line 53
    .line 54
    .line 55
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 56
    .line 57
    if-eqz v0, :cond_5

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->cY()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_5

    .line 64
    .line 65
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cMS()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_5

    .line 72
    .line 73
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/ZYk$tB;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 80
    .line 81
    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$tB;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    .line 86
    .line 87
    :cond_5
    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 89
    .line 90
    return-void
.end method

.method public jFA()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->BTZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public kkU()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->kkU()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->oq()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public oJ()V
    .locals 0

    .line 2
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ()V

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->QSm()V

    return-void
.end method

.method public oJ(F)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->so:Lcom/bytedance/sdk/openadsdk/WcQ/dLZ;

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/WcQ/dLZ;->setProgress(F)V

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    .line 83
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->so:Lcom/bytedance/sdk/openadsdk/WcQ/dLZ;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 84
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->so:Lcom/bytedance/sdk/openadsdk/WcQ/dLZ;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    if-lez p1, :cond_2

    .line 85
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->so:Lcom/bytedance/sdk/openadsdk/WcQ/dLZ;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_2

    .line 86
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->so:Lcom/bytedance/sdk/openadsdk/WcQ/dLZ;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public oJ(II)V
    .locals 2

    .line 74
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(II)V

    if-ltz p1, :cond_1

    .line 75
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->tB:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 76
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p2

    const-string v0, "tt_multiple_playable_wait_tips"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/utils/cY;->ZYk(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    .line 77
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->tB:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public oJ(Landroid/app/Activity;)V
    .locals 1

    .line 135
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Landroid/app/Activity;)V

    .line 136
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public oJ(Landroid/os/Bundle;)V
    .locals 4

    .line 12
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Landroid/os/Bundle;)V

    .line 13
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->kkU:Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->jFA:Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    new-instance p1, Lcom/bytedance/sdk/openadsdk/WcQ/dLZ;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/WcQ/dLZ;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->so:Lcom/bytedance/sdk/openadsdk/WcQ/dLZ;

    .line 16
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v0

    invoke-direct {p1, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x50

    .line 17
    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->jFA:Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->so:Lcom/bytedance/sdk/openadsdk/WcQ/dLZ;

    invoke-virtual {v0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/Pfn/so;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 20
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    const/high16 v0, 0x41700000    # 15.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 22
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    const/4 v0, 0x0

    const/high16 v1, -0x1000000

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v3, v0, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 23
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 24
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    const/high16 v3, 0x42700000    # 60.0f

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 25
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const v1, 0x800035

    .line 26
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 27
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->jFA:Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->dLZ:Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    invoke-virtual {v1, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    invoke-direct {p1, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->cFZ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 29
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->jFA:Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->cFZ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 31
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->cFZ:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->setShowDislike(Z)V

    .line 32
    new-instance p1, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;-><init>(ILcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 33
    invoke-virtual {p0, v1, v1, p1}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    return-void
.end method

.method public oJ(Landroid/view/View;)V
    .locals 2

    .line 120
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Landroid/view/View;)V

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    .line 122
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->kkU:Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public oJ(Landroid/view/View;Z)V
    .locals 1

    .line 124
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Landroid/view/View;Z)V

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->kkU:Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x4

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->kkU:Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-eqz p2, :cond_2

    .line 129
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->kkU:Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void

    .line 130
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->kkU:Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/oJ;Z)V
    .locals 1

    .line 103
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Lcom/bytedance/sdk/openadsdk/activity/oJ;Z)V

    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-ne p1, v0, :cond_0

    .line 105
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->BTZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;

    if-eqz p1, :cond_0

    .line 106
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ZYk(Z)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;)V
    .locals 2

    .line 107
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;)V

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPlayableLoadingDismiss [scene=]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/bytedance/sdk/openadsdk/activity/so;->PiB:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeqSwitchLayoutManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/activity/so;->PiB:Z

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->BTZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;

    if-eqz p1, :cond_1

    .line 111
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ba()V

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->WcQ()Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object p1

    .line 113
    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    if-eqz v0, :cond_2

    .line 114
    check-cast p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->Id()V

    :cond_2
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V
    .locals 8

    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 88
    instance-of p1, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    if-eqz p1, :cond_2

    .line 89
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->tb()Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->tb()Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->tb()Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->PiB()J

    move-result-wide v0

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 91
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/activity/so;->BTZ:I

    add-int/lit8 p1, p1, 0x1

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/activity/so;->b_()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/bytedance/sdk/openadsdk/activity/jFA$2;

    invoke-direct {v7, p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/activity/jFA$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/jFA;JI)V

    const-string p1, "dislike_skip"

    move-object v4, v5

    move-object v5, v6

    move-object v6, p1

    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(JLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;)V

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->WcQ()Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object p1

    if-nez p1, :cond_3

    .line 94
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB()Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    move-result-object p1

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V
    .locals 4

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    return-void

    .line 35
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->RZ()I

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 37
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v1, :cond_2

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    add-int/2addr v1, v0

    goto :goto_0

    :cond_2
    move v1, p1

    .line 38
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 39
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/activity/so;

    :cond_3
    if-nez p2, :cond_4

    .line 40
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ex()V

    return-void

    .line 41
    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v1, :cond_9

    if-ne v1, p2, :cond_5

    return-void

    .line 42
    :cond_5
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/so;->PiB()V

    .line 43
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/so;->ex()V

    .line 44
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 45
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->kkU:Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 46
    :cond_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/so;->QSm()V

    .line 47
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    iput-boolean p1, v1, Lcom/bytedance/sdk/openadsdk/activity/so;->PiB:Z

    .line 48
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ZYk()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 49
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/activity/oJ;

    if-eqz v2, :cond_9

    .line 50
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    add-int/2addr v1, v0

    .line 51
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    .line 52
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/activity/so;

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    .line 53
    :goto_1
    instance-of v2, v1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    if-eqz v2, :cond_9

    if-eq v1, p2, :cond_9

    .line 54
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 55
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_8

    .line 56
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 57
    :cond_8
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/activity/so;->QSm()V

    .line 58
    :cond_9
    iput-boolean v0, p2, Lcom/bytedance/sdk/openadsdk/activity/so;->PiB:Z

    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 60
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 61
    invoke-direct {p0, v0, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    .line 62
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ:Landroid/app/Activity;

    invoke-virtual {p2, v1, p3}, Lcom/bytedance/sdk/openadsdk/activity/so;->ZYk(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    .line 63
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/jFA;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 64
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 65
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->kkU:Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    if-ne v1, v2, :cond_a

    .line 66
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 67
    :cond_a
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_b

    .line 68
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 69
    :cond_b
    :goto_2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_c

    .line 70
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->kkU:Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    if-eqz v0, :cond_d

    .line 71
    iget p1, v0, Lcom/bytedance/sdk/openadsdk/activity/so;->dLZ:I

    :cond_d
    :goto_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_e

    .line 72
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/activity/so;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {p2, v0, v1, p3}, Lcom/bytedance/sdk/openadsdk/activity/so;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 73
    :cond_e
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/tB;->ex:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Z)V
    .locals 2

    .line 115
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Z)V

    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setIsHappenInteraction [scene=]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",isActive="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/bytedance/sdk/openadsdk/activity/so;->PiB:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isHappenInteraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SeqSwitchLayoutManager"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/activity/so;->PiB:Z

    if-eqz p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->BTZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;

    if-eqz p1, :cond_1

    .line 119
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ(Z)V

    :cond_1
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;ZZZI)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    return-void

    .line 97
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB()Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 98
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->tb()Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-direct {v1, p5, p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;-><init>(ILcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V

    .line 99
    iget-object p1, v1, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;->oJ:Landroid/os/Bundle;

    const-string p5, "isSkip"

    invoke-virtual {p1, p5, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    iget-object p1, v1, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;->oJ:Landroid/os/Bundle;

    const-string p2, "force"

    invoke-virtual {p1, p2, p3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    iget-object p1, v1, Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;->oJ:Landroid/os/Bundle;

    const-string p2, "isFromLandingPage"

    invoke-virtual {p1, p2, p4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 102
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    :cond_2
    return-void
.end method

.method public oJ(Z)V
    .locals 1

    .line 132
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(Z)V

    .line 133
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->tB(Z)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/activity/so;I)Z
    .locals 1

    .line 131
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->ba:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public so()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->so()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->ex()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public tB()V
    .locals 2

    .line 14
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/tB;->tB()V

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->awB:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_0

    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->PiB()V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->BTZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;

    if-eqz v0, :cond_1

    const/4 v1, -0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ(I)V

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA;->Pfn:Lcom/bytedance/sdk/openadsdk/utils/WcQ;

    if-eqz v0, :cond_2

    .line 20
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/utils/WcQ;->ZYk()V

    :cond_2
    return-void
.end method
