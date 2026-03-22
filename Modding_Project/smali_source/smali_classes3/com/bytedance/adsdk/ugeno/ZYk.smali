.class public Lcom/bytedance/adsdk/ugeno/ZYk;
.super Lcom/bytedance/adsdk/ugeno/ZYk/oJ;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/ba/tB;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/ugeno/ZYk/oJ<",
        "Lcom/bytedance/adsdk/ugeno/ba/ZYk;",
        ">;",
        "Lcom/bytedance/adsdk/ugeno/ba/tB;"
    }
.end annotation


# instance fields
.field private Amz:Z

.field private BWx:Z

.field private JJ:Z

.field private LE:F

.field private MVA:Ljava/lang/String;

.field private NX:I

.field private Oof:F

.field private Qzd:Ljava/lang/String;

.field private SB:Z

.field private UUI:I

.field private WGj:I

.field private XSu:Ljava/lang/String;

.field private YF:I

.field private ZMY:Z

.field private Zjw:I

.field private Zzm:F

.field private eW:I

.field private edj:Z

.field private hwh:F

.field private ib:F

.field private oo:F

.field private rg:F

.field private sQ:F

.field private uaj:F

.field private uq:F

.field private yB:Lorg/json/JSONArray;

.field private ypD:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->YF:I

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->BWx:Z

    .line 9
    .line 10
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->JJ:Z

    .line 11
    .line 12
    const/high16 v1, 0x43fa0000    # 500.0f

    .line 13
    .line 14
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->hwh:F

    .line 15
    .line 16
    const/high16 v1, 0x44fa0000    # 2000.0f

    .line 17
    .line 18
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->ib:F

    .line 19
    .line 20
    const-string v1, "slide"

    .line 21
    .line 22
    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->Qzd:Ljava/lang/String;

    .line 23
    .line 24
    const-string v1, "dot"

    .line 25
    .line 26
    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->MVA:Ljava/lang/String;

    .line 27
    .line 28
    const/high16 v1, 0x41000000    # 8.0f

    .line 29
    .line 30
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->sQ:F

    .line 31
    .line 32
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->Zzm:F

    .line 33
    .line 34
    const/high16 v2, 0x42480000    # 50.0f

    .line 35
    .line 36
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->oo:F

    .line 37
    .line 38
    const/high16 v2, 0x42b40000    # 90.0f

    .line 39
    .line 40
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->rg:F

    .line 41
    .line 42
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->ZMY:Z

    .line 43
    .line 44
    const-string v2, "#666666"

    .line 45
    .line 46
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->NX:I

    .line 51
    .line 52
    const-string v2, "#ffffff"

    .line 53
    .line 54
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->Zjw:I

    .line 59
    .line 60
    const-string v2, "row"

    .line 61
    .line 62
    iput-object v2, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->XSu:Ljava/lang/String;

    .line 63
    .line 64
    const/high16 v2, 0x3f800000    # 1.0f

    .line 65
    .line 66
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->Oof:F

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->uq:F

    .line 70
    .line 71
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->uaj:F

    .line 72
    .line 73
    iput v2, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->LE:F

    .line 74
    .line 75
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->WGj:I

    .line 76
    .line 77
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->UUI:I

    .line 78
    .line 79
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->Amz:Z

    .line 80
    .line 81
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->ypD:Z

    .line 82
    .line 83
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->SB:Z

    .line 84
    .line 85
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk:Landroid/content/Context;

    .line 86
    .line 87
    invoke-static {p1, v1}, Lcom/bytedance/adsdk/ugeno/cFZ/so;->oJ(Landroid/content/Context;F)F

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->sQ:F

    .line 92
    .line 93
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->Zzm:F

    .line 94
    .line 95
    return-void
.end method

.method private LS()V
    .locals 7

    .line 1
    const-string v0, "$chunk"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->oJ:Ljava/util/List;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_3

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->oJ:Ljava/util/List;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->yB:Lorg/json/JSONArray;

    .line 23
    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->yB:Lorg/json/JSONArray;

    .line 28
    .line 29
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-ge v2, v3, :cond_3

    .line 34
    .line 35
    new-instance v3, Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 36
    .line 37
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk:Landroid/content/Context;

    .line 38
    .line 39
    invoke-direct {v3, v4}, Lcom/bytedance/adsdk/ugeno/core/BTZ;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, v3}, Lcom/bytedance/adsdk/ugeno/ZYk;->oJ(Lcom/bytedance/adsdk/ugeno/core/BTZ;)V

    .line 43
    .line 44
    .line 45
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->SCr:Lcom/bytedance/adsdk/ugeno/core/awB;

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/core/awB;)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->yB:Lorg/json/JSONArray;

    .line 51
    .line 52
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    if-nez v4, :cond_1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_1
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    const-string v6, "$item"

    .line 64
    .line 65
    if-eqz v5, :cond_2

    .line 66
    .line 67
    :try_start_1
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ex:Lorg/json/JSONObject;

    .line 68
    .line 69
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ex:Lorg/json/JSONObject;

    .line 78
    .line 79
    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->LpP()Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ex:Lorg/json/JSONObject;

    .line 87
    .line 88
    const/4 v6, 0x0

    .line 89
    invoke-virtual {v3, v4, v5, v6}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    iget-object v4, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    .line 94
    .line 95
    check-cast v4, Lcom/bytedance/adsdk/ugeno/ba/ZYk;

    .line 96
    .line 97
    invoke-virtual {v4, v3}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ(Ljava/lang/Object;)Lcom/bytedance/adsdk/ugeno/ba/oJ;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    .line 100
    :catchall_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    return-void
.end method

.method private NO()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->oJ:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->oJ:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v2, Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk:Landroid/content/Context;

    .line 23
    .line 24
    invoke-direct {v2, v3}, Lcom/bytedance/adsdk/ugeno/core/BTZ;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v2}, Lcom/bytedance/adsdk/ugeno/ZYk;->oJ(Lcom/bytedance/adsdk/ugeno/core/BTZ;)V

    .line 28
    .line 29
    .line 30
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->SCr:Lcom/bytedance/adsdk/ugeno/core/awB;

    .line 31
    .line 32
    invoke-virtual {v2, v3}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/core/awB;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->LpP()Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ex:Lorg/json/JSONObject;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-virtual {v2, v1, v3, v4}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    .line 47
    .line 48
    check-cast v2, Lcom/bytedance/adsdk/ugeno/ba/ZYk;

    .line 49
    .line 50
    invoke-virtual {v2, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ(Ljava/lang/Object;)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    .line 51
    .line 52
    .line 53
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/adsdk/ugeno/ZYk;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    return-object p0
.end method

.method private cFZ(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->XQY:Lcom/bytedance/adsdk/ugeno/ex/jFA;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->eW:I

    .line 7
    .line 8
    const-string v1, "BaseSwiper"

    .line 9
    .line 10
    const-string v2, "SwiperView://reloop"

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/ZYk;->jB()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    sub-int/2addr v0, v3

    .line 20
    if-ne p1, v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->XQY:Lcom/bytedance/adsdk/ugeno/ex/jFA;

    .line 23
    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v0, v2, v4}, Lcom/bytedance/adsdk/ugeno/ex/jFA;->oJ(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const-string v0, "onPageSelected: reloop monitor FIRST_TO_LAST"

    .line 36
    .line 37
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    :cond_1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->eW:I

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/ZYk;->jB()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    sub-int/2addr v4, v3

    .line 47
    if-ne v0, v4, :cond_2

    .line 48
    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->XQY:Lcom/bytedance/adsdk/ugeno/ex/jFA;

    .line 52
    .line 53
    const/4 v0, 0x0

    .line 54
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {p1, v2, v0}, Lcom/bytedance/adsdk/ugeno/ex/jFA;->oJ(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    const-string p1, "onPageSelected: reloop monitor LAST_TO_FIRST"

    .line 66
    .line 67
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :cond_2
    return-void
.end method

.method private jB()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->WGj:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->oJ:Ljava/util/List;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0

    .line 16
    :cond_0
    return v2

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->yB:Lorg/json/JSONArray;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    return v0

    .line 26
    :cond_2
    return v2
.end method

.method static synthetic oJ(Lcom/bytedance/adsdk/ugeno/ZYk;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    return-object p0
.end method

.method private oJ(Lcom/bytedance/adsdk/ugeno/core/BTZ;)V
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->ypD:Z

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Lcom/bytedance/adsdk/ugeno/ZYk$1;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/ZYk$1;-><init>(Lcom/bytedance/adsdk/ugeno/ZYk;)V

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/core/Pfn;)V

    :cond_0
    return-void
.end method

.method private oJ(ZIF)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->XQY:Lcom/bytedance/adsdk/ugeno/ex/jFA;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/ZYk;->jB()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->SB:Z

    if-eqz p1, :cond_1

    .line 51
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->XQY:Lcom/bytedance/adsdk/ugeno/ex/jFA;

    const-string p2, "SwiperView://finish"

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Object;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/adsdk/ugeno/ex/jFA;->oJ(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    const-string p1, "BaseSwiper"

    const-string p2, "onPageScrolled: finish monitor"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iput-boolean p3, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->SB:Z

    :cond_1
    return-void
.end method

.method private so(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->XQY:Lcom/bytedance/adsdk/ugeno/ex/jFA;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->edj:Z

    .line 7
    .line 8
    xor-int/lit8 v1, v1, 0x1

    .line 9
    .line 10
    iget v2, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->eW:I

    .line 11
    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    filled-new-array {v2, p1, v1}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v1, "SwiperView://slide"

    .line 29
    .line 30
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/adsdk/ugeno/ex/jFA;->oJ(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 2

    .line 2
    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->ZYk()V

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/ba/ZYk;

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->hwh:F

    float-to-int v1, v1

    .line 4
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->tB(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->ypD:Z

    .line 5
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Pfn(Z)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->MVA:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->sQ:F

    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ(F)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->Zzm:F

    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk(F)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->oo:F

    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->tB(F)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->rg:F

    .line 10
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ex(F)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->XSu:Ljava/lang/String;

    .line 11
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->YF:I

    .line 12
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk()Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->BWx:Z

    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ex(Z)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->JJ:Z

    .line 15
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->oJ(Z)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->hwh:F

    float-to-int v1, v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->ib:F

    float-to-int v1, v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ex(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->Amz:Z

    .line 18
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ZYk(Z)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->ZMY:Z

    .line 19
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->tB(Z)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->NX:I

    .line 20
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->ba(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->Zjw:I

    .line 21
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Pfn(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->uaj:F

    float-to-int v1, v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->so(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->LE:F

    float-to-int v1, v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->jFA(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->uq:F

    float-to-int v1, v1

    .line 24
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->cFZ(I)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->Oof:F

    .line 25
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->Pfn(F)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->Qzd:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->tB(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ba/oJ;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->UUI:I

    .line 27
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->PiB(I)V

    .line 28
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/ba/ZYk;

    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->setOnPageChangeListener(Lcom/bytedance/adsdk/ugeno/ba/tB;)V

    .line 29
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->WGj:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 30
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/ZYk;->NO()V

    goto :goto_0

    .line 31
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/ZYk;->LS()V

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/ba/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->tB()V

    return-void
.end method

.method public ex()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/bytedance/adsdk/ugeno/ba/ZYk;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->getCurrentItem()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    .line 10
    .line 11
    check-cast v1, Lcom/bytedance/adsdk/ugeno/ba/ZYk;

    .line 12
    .line 13
    add-int/lit8 v0, v0, -0x1

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->PiB(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public oJ()Landroid/view/View;
    .locals 2

    .line 2
    new-instance v0, Lcom/bytedance/adsdk/ugeno/ba/ZYk;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/ugeno/ba/ZYk;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    .line 3
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/ba/ZYk;->oJ(Lcom/bytedance/adsdk/ugeno/ex;)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    return-object v0
.end method

.method public oJ(I)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/ba/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->getCurrentItem()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    check-cast v0, Lcom/bytedance/adsdk/ugeno/ba/ZYk;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->PiB(I)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->oJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->oJ:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public oJ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 7
    invoke-super {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/high16 v2, 0x41000000    # 8.0f

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "dataList"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0x17

    goto/16 :goto_0

    :sswitch_1
    const-string v5, "autoplay"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0x16

    goto/16 :goto_0

    :sswitch_2
    const-string v5, "indicatorSelectedColor"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x15

    goto/16 :goto_0

    :sswitch_3
    const-string v5, "pageMargin"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0x14

    goto/16 :goto_0

    :sswitch_4
    const-string v5, "pageCount"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v4, 0x13

    goto/16 :goto_0

    :sswitch_5
    const-string v5, "allowTouchMove"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v4, 0x12

    goto/16 :goto_0

    :sswitch_6
    const-string v5, "indicatorDirection"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v4, 0x11

    goto/16 :goto_0

    :sswitch_7
    const-string v5, "speed"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v4, 0x10

    goto/16 :goto_0

    :sswitch_8
    const-string v5, "delay"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v4, 0xf

    goto/16 :goto_0

    :sswitch_9
    const-string v5, "loop"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v4, 0xe

    goto/16 :goto_0

    :sswitch_a
    const-string v5, "previousMargin"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v4, 0xd

    goto/16 :goto_0

    :sswitch_b
    const-string v5, "indicatorY"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v4, 0xc

    goto/16 :goto_0

    :sswitch_c
    const-string v5, "indicatorX"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v4, 0xb

    goto/16 :goto_0

    :sswitch_d
    const-string v5, "indicator"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_e
    const-string v5, "disableOnInteraction"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_f
    const-string v5, "direction"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_10
    const-string v5, "effect"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto :goto_0

    :cond_11
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_11
    const-string v5, "driveMode"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_12
    const-string v5, "nextMargin"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_0

    :cond_13
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_13
    const-string v5, "indicatorHeight"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_0

    :cond_14
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_14
    const-string v5, "indicatorWidth"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    goto :goto_0

    :cond_15
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_15
    const-string v5, "indicatorStyle"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    goto :goto_0

    :cond_16
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_16
    const-string v5, "indicatorColor"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    goto :goto_0

    :cond_17
    move v4, v1

    goto :goto_0

    :sswitch_17
    const-string v5, "startIndex"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto :goto_0

    :cond_18
    move v4, v0

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const/4 p1, 0x0

    .line 10
    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/cFZ/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->yB:Lorg/json/JSONArray;

    return-void

    .line 11
    :pswitch_1
    invoke-static {p2, v1}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->JJ:Z

    return-void

    .line 12
    :pswitch_2
    iget p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->Zjw:I

    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/cFZ/oJ;->oJ(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->Zjw:I

    return-void

    .line 13
    :pswitch_3
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk:Landroid/content/Context;

    invoke-static {p2, v3}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cFZ/so;->oJ(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->uq:F

    return-void

    :pswitch_4
    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->Oof:F

    return-void

    .line 15
    :pswitch_5
    invoke-static {p2, v1}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->Amz:Z

    return-void

    .line 16
    :pswitch_6
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->XSu:Ljava/lang/String;

    return-void

    :pswitch_7
    const/high16 p1, 0x43fa0000    # 500.0f

    .line 17
    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->hwh:F

    return-void

    :pswitch_8
    const/high16 p1, 0x44fa0000    # 2000.0f

    .line 18
    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->ib:F

    return-void

    .line 19
    :pswitch_9
    invoke-static {p2, v1}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->BWx:Z

    return-void

    .line 20
    :pswitch_a
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk:Landroid/content/Context;

    invoke-static {p2, v3}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cFZ/so;->oJ(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->uaj:F

    return-void

    :pswitch_b
    const/high16 p1, 0x42b40000    # 90.0f

    .line 21
    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->rg:F

    return-void

    :pswitch_c
    const/high16 p1, 0x42480000    # 50.0f

    .line 22
    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->oo:F

    return-void

    .line 23
    :pswitch_d
    invoke-static {p2, v0}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->ZMY:Z

    return-void

    .line 24
    :pswitch_e
    invoke-static {p2, v0}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->ypD:Z

    :goto_1
    return-void

    .line 25
    :pswitch_f
    const-string p1, "vertical"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 26
    iput v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->YF:I

    return-void

    .line 27
    :cond_19
    iput v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->YF:I

    return-void

    .line 28
    :pswitch_10
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->Qzd:Ljava/lang/String;

    return-void

    .line 29
    :pswitch_11
    invoke-static {p2, v0}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->WGj:I

    return-void

    .line 30
    :pswitch_12
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk:Landroid/content/Context;

    invoke-static {p2, v3}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cFZ/so;->oJ(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->LE:F

    return-void

    .line 31
    :pswitch_13
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk:Landroid/content/Context;

    invoke-static {p2, v2}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cFZ/so;->oJ(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->Zzm:F

    return-void

    .line 32
    :pswitch_14
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk:Landroid/content/Context;

    invoke-static {p2, v2}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;F)F

    move-result p2

    invoke-static {p1, p2}, Lcom/bytedance/adsdk/ugeno/cFZ/so;->oJ(Landroid/content/Context;F)F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->sQ:F

    return-void

    .line 33
    :pswitch_15
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->MVA:Ljava/lang/String;

    return-void

    .line 34
    :pswitch_16
    iget p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->NX:I

    invoke-static {p2, p1}, Lcom/bytedance/adsdk/ugeno/cFZ/oJ;->oJ(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->NX:I

    return-void

    .line 35
    :pswitch_17
    invoke-static {p2, v0}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->UUI:I

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5efd1e70 -> :sswitch_17
        -0x5dec0d6c -> :sswitch_16
        -0x5d081f1e -> :sswitch_15
        -0x5cd50f09 -> :sswitch_14
        -0x579bcbea -> :sswitch_13
        -0x56a0457f -> :sswitch_12
        -0x51808db3 -> :sswitch_11
        -0x4dd9466f -> :sswitch_10
        -0x395ff881 -> :sswitch_f
        -0x32ffa355 -> :sswitch_e
        -0x2a7041f1 -> :sswitch_d
        -0x2397fbd7 -> :sswitch_c
        -0x2397fbd6 -> :sswitch_b
        -0xc0b287b -> :sswitch_a
        0x32c6a4 -> :sswitch_9
        0x5b0b983 -> :sswitch_8
        0x6890047 -> :sswitch_7
        0xba5ca30 -> :sswitch_6
        0x1dacf667 -> :sswitch_5
        0x33223fc0 -> :sswitch_4
        0x416f6d1d -> :sswitch_3
        0x4757b7b9 -> :sswitch_2
        0x55cdf963 -> :sswitch_1
        0x6a9f2f68 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public oJ(ZI)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->edj:Z

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 46
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->SB:Z

    :cond_2
    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->edj:Z

    .line 48
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageScrollStateChanged: loop="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; state="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseSwiper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public oJ(ZIFI)V
    .locals 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageScrolled: loop="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "; position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; positionOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "; positionOffsetPixels="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "BaseSwiper"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/ZYk;->oJ(ZIF)V

    return-void
.end method

.method public oJ(ZIIZZ)V
    .locals 2

    .line 40
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->eW:I

    if-eq v0, p2, :cond_0

    .line 41
    invoke-direct {p0, p2}, Lcom/bytedance/adsdk/ugeno/ZYk;->cFZ(I)V

    .line 42
    invoke-direct {p0, p2}, Lcom/bytedance/adsdk/ugeno/ZYk;->so(I)V

    .line 43
    iput p2, p0, Lcom/bytedance/adsdk/ugeno/ZYk;->eW:I

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPageSelected: loop="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; position="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; loopPosition="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; isFirst="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "; isLast="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseSwiper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public tB()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    .line 2
    .line 3
    check-cast v0, Lcom/bytedance/adsdk/ugeno/ba/ZYk;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->getCurrentItem()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    .line 10
    .line 11
    check-cast v1, Lcom/bytedance/adsdk/ugeno/ba/ZYk;

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/bytedance/adsdk/ugeno/ba/oJ;->PiB(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
