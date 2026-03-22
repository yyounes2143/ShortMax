.class public Lcom/bytedance/adsdk/ugeno/core/BTZ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private BTZ:Z

.field private Pfn:Lcom/bytedance/adsdk/ugeno/core/awB;

.field private PiB:Lcom/bytedance/adsdk/ugeno/ex/oJ/oJ;

.field private RZ:Lcom/bytedance/adsdk/ugeno/core/jFA;

.field private Ry:F

.field private WcQ:Z

.field private ZYk:Lorg/json/JSONObject;

.field private awB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ba:Lcom/bytedance/adsdk/ugeno/core/Ry;

.field private cFZ:Lcom/bytedance/adsdk/ugeno/core/eZI;

.field private dLZ:Z

.field private eZI:Lcom/bytedance/adsdk/ugeno/core/Pfn;

.field private ex:Lcom/bytedance/adsdk/ugeno/core/so;

.field private jFA:Ljava/lang/String;

.field private kkU:Lcom/bytedance/adsdk/ugeno/core/dLZ;

.field private oJ:Landroid/content/Context;

.field private si:F

.field private so:Lcom/bytedance/adsdk/ugeno/core/cFZ;

.field private tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/ugeno/ZYk/tB<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->dLZ:Z

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->BTZ:Z

    .line 9
    .line 10
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method

.method private ZYk(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V
    .locals 2

    .line 55
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->nke()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->LpP()Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->LpP()Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->ba()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 56
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    const-string v1, "i18n"

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->LpP()Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->ba()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ZYk:Lorg/json/JSONObject;

    const-string v1, "xNode"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/ZYk/tB<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 113
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->tb()Lorg/json/JSONObject;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 115
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Jc()Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 116
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->kkU()Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 117
    :goto_0
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ZYk(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    .line 118
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 120
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ZYk:Lorg/json/JSONObject;

    invoke-static {v4, v5}, Lcom/bytedance/adsdk/ugeno/tB/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 121
    invoke-virtual {p1, v3, v4}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 122
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ:Landroid/content/Context;

    invoke-virtual {v2, v5, v3, v4}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 123
    :cond_3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ex:Lcom/bytedance/adsdk/ugeno/core/so;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Lcom/bytedance/adsdk/ugeno/core/so;)V

    .line 124
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->Pfn:Lcom/bytedance/adsdk/ugeno/core/awB;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Lcom/bytedance/adsdk/ugeno/core/awB;)V

    .line 125
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->cFZ:Lcom/bytedance/adsdk/ugeno/core/eZI;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Lcom/bytedance/adsdk/ugeno/core/eZI;)V

    .line 126
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->RZ:Lcom/bytedance/adsdk/ugeno/core/jFA;

    if-eqz v0, :cond_4

    .line 127
    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Lcom/bytedance/adsdk/ugeno/core/ba;)V

    .line 128
    :cond_4
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->eZI:Lcom/bytedance/adsdk/ugeno/core/Pfn;

    if-eqz v0, :cond_5

    .line 129
    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Lcom/bytedance/adsdk/ugeno/core/Pfn;)V

    .line 130
    :cond_5
    instance-of v0, p1, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    if-eqz v0, :cond_6

    .line 131
    move-object v0, p1

    check-cast v0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->jFA()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 132
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 133
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 134
    invoke-direct {p0, v1}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    .line 135
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->oJ()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    :cond_7
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk()V

    return-void
.end method


# virtual methods
.method public ZYk(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;",
            "Lcom/bytedance/adsdk/ugeno/ZYk/tB<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/bytedance/adsdk/ugeno/ZYk/tB<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/core/cFZ;->ex(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->tB()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/core/ex;->oJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/core/ZYk;

    move-result-object v2

    const/4 v3, 0x1

    .line 4
    const-string v4, "UGTemplateEngine"

    if-nez v2, :cond_2

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "not found component "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iput-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->WcQ:Z

    .line 7
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->awB:Ljava/util/List;

    if-nez p1, :cond_1

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->awB:Ljava/util/List;

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->awB:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    .line 10
    :cond_2
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/bytedance/adsdk/ugeno/core/ZYk;->oJ(Landroid/content/Context;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v1

    .line 11
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->oJ()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ZYk:Lorg/json/JSONObject;

    invoke-static {v5, v6}, Lcom/bytedance/adsdk/ugeno/tB/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v2, v5}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->cFZ(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->so(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->ex()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->tB(Lorg/json/JSONObject;)V

    .line 15
    invoke-virtual {v2, p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;)V

    .line 16
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->kkU:Lcom/bytedance/adsdk/ugeno/core/dLZ;

    invoke-virtual {v2, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Lcom/bytedance/adsdk/ugeno/core/dLZ;)V

    .line 17
    instance-of v0, p2, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    if-eqz v0, :cond_4

    .line 18
    check-cast p2, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    invoke-virtual {v2, p2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/oJ;)V

    .line 19
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->kkU()Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;

    move-result-object v1

    .line 20
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->ex()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 21
    :cond_5
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 22
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 23
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->ex()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ZYk:Lorg/json/JSONObject;

    invoke-static {v5, v6}, Lcom/bytedance/adsdk/ugeno/tB/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-virtual {v2, v0, v5}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_5

    .line 25
    iget-object v6, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ:Landroid/content/Context;

    invoke-virtual {v1, v6, v0, v5}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_6
    instance-of p2, v2, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    if-eqz p2, :cond_d

    .line 27
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->Pfn()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 28
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_7

    goto :goto_2

    .line 29
    :cond_7
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->mu()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Swiper"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 30
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eq p2, v3, :cond_8

    .line 31
    const-string p2, "Swiper must be only one widget"

    invoke-static {v4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;

    .line 33
    invoke-virtual {p0, p2, v2}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ZYk(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 34
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->wd()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 35
    move-object v0, v2

    check-cast v0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    invoke-virtual {v0, p2}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    goto :goto_1

    .line 36
    :cond_a
    :goto_2
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->mu()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecyclerLayout"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 37
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->so:Lcom/bytedance/adsdk/ugeno/core/cFZ;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/cFZ;->tB()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_c

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;

    .line 40
    invoke-virtual {p0, p2, v2}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ZYk(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 41
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->wd()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 42
    move-object v0, v2

    check-cast v0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    invoke-virtual {v0, p2}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    goto :goto_3

    :cond_c
    return-object v2

    :cond_d
    if-eqz v1, :cond_e

    .line 43
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->oJ()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    :cond_e
    iput-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    return-object v2
.end method

.method public ZYk()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->awB:Ljava/util/List;

    return-object v0
.end method

.method public ZYk(Lorg/json/JSONObject;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ba:Lcom/bytedance/adsdk/ugeno/core/Ry;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Ry;->tB()V

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ZYk:Lorg/json/JSONObject;

    .line 48
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Lorg/json/JSONObject;)V

    .line 49
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    .line 50
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ba:Lcom/bytedance/adsdk/ugeno/core/Ry;

    if-eqz p1, :cond_1

    .line 51
    new-instance p1, Lcom/bytedance/adsdk/ugeno/core/si;

    invoke-direct {p1}, Lcom/bytedance/adsdk/ugeno/core/si;-><init>()V

    const/4 v0, 0x0

    .line 52
    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/core/si;->oJ(I)V

    .line 53
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/core/si;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    .line 54
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ba:Lcom/bytedance/adsdk/ugeno/core/Ry;

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ugeno/core/Ry;->oJ(Lcom/bytedance/adsdk/ugeno/core/si;)V

    :cond_1
    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;",
            "Lcom/bytedance/adsdk/ugeno/ZYk/tB<",
            "Landroid/view/View;",
            ">;)",
            "Lcom/bytedance/adsdk/ugeno/ZYk/tB<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 39
    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/core/cFZ;->ex(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 40
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->tB()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/core/ex;->oJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/core/ZYk;

    move-result-object v2

    .line 42
    const-string v3, "UGTemplateEngine"

    const/4 v4, 0x1

    if-nez v2, :cond_2

    .line 43
    iput-boolean v4, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->WcQ:Z

    .line 44
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->awB:Ljava/util/List;

    if-nez v2, :cond_1

    .line 45
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->awB:Ljava/util/List;

    .line 46
    :cond_1
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->awB:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    const-string v0, "View"

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->oJ(Ljava/lang/String;)V

    .line 48
    invoke-static {v0}, Lcom/bytedance/adsdk/ugeno/core/ex;->oJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/core/ZYk;

    move-result-object v2

    .line 49
    const-string v5, "unknown component; use view widget"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_2

    .line 50
    const-string p1, "not found component "

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 51
    :cond_2
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ:Landroid/content/Context;

    invoke-virtual {v2, v5}, Lcom/bytedance/adsdk/ugeno/core/ZYk;->oJ(Landroid/content/Context;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object v2

    if-nez v2, :cond_3

    return-object v1

    .line 52
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->ex()Lorg/json/JSONObject;

    move-result-object v5

    .line 53
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->oJ()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ZYk:Lorg/json/JSONObject;

    invoke-static {v6, v7}, Lcom/bytedance/adsdk/ugeno/tB/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    .line 54
    invoke-virtual {v2, v6}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->cFZ(Ljava/lang/String;)V

    .line 55
    invoke-virtual {v2, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->so(Ljava/lang/String;)V

    .line 56
    invoke-virtual {v2, v5}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->tB(Lorg/json/JSONObject;)V

    .line 57
    invoke-virtual {v2, p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;)V

    .line 58
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ZYk:Lorg/json/JSONObject;

    invoke-virtual {v2, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk(Lorg/json/JSONObject;)V

    .line 59
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->so:Lcom/bytedance/adsdk/ugeno/core/cFZ;

    if-nez v0, :cond_4

    .line 60
    invoke-virtual {v2, v4}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Z)V

    goto :goto_0

    .line 61
    :cond_4
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/cFZ;->ex()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Z)V

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->kkU:Lcom/bytedance/adsdk/ugeno/core/dLZ;

    invoke-virtual {v2, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Lcom/bytedance/adsdk/ugeno/core/dLZ;)V

    .line 63
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->PiB:Lcom/bytedance/adsdk/ugeno/ex/oJ/oJ;

    invoke-virtual {v2, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Lcom/bytedance/adsdk/ugeno/ex/oJ/oJ;)V

    .line 64
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 65
    instance-of v6, p2, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    if-eqz v6, :cond_5

    .line 66
    check-cast p2, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->kkU()Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;

    move-result-object v6

    .line 67
    invoke-virtual {v2, p2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/oJ;)V

    goto :goto_1

    :cond_5
    move-object v6, v1

    .line 68
    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 69
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 70
    invoke-virtual {v5, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ZYk:Lorg/json/JSONObject;

    invoke-static {v7, v8}, Lcom/bytedance/adsdk/ugeno/tB/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v7

    .line 71
    invoke-virtual {v2, p2, v7}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v8, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->RZ:Lcom/bytedance/adsdk/ugeno/core/jFA;

    if-nez v8, :cond_7

    if-eqz v6, :cond_6

    .line 73
    iget-object v8, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ:Landroid/content/Context;

    invoke-virtual {v6, v8, p2, v7}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 74
    :cond_7
    throw v1

    :cond_8
    if-eqz v6, :cond_9

    .line 75
    invoke-virtual {v6}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;->oJ()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    invoke-virtual {v2, p2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    :cond_9
    instance-of p2, v2, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    if-eqz p2, :cond_10

    .line 77
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->Pfn()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 78
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_a

    goto :goto_3

    .line 79
    :cond_a
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->mu()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Swiper"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 80
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eq p2, v4, :cond_b

    .line 81
    const-string p2, "Swiper must be only one widget"

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_b
    :try_start_0
    new-instance p2, Lcom/bytedance/adsdk/ugeno/core/BTZ$1;

    invoke-direct {p2, p0}, Lcom/bytedance/adsdk/ugeno/core/BTZ$1;-><init>(Lcom/bytedance/adsdk/ugeno/core/BTZ;)V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :catchall_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_10

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;

    .line 84
    invoke-virtual {p0, p2, v2}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 85
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->mwH()Z

    move-result v0

    if-nez v0, :cond_c

    .line 86
    move-object v0, v2

    check-cast v0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Ln()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 87
    :cond_d
    :goto_3
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->mu()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RecyclerLayout"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 88
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->so:Lcom/bytedance/adsdk/ugeno/core/cFZ;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/cFZ;->tB()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 89
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_f

    .line 90
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;

    .line 91
    invoke-virtual {p0, p2, v2}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 92
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->wd()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 93
    move-object v0, v2

    check-cast v0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    invoke-virtual {v0, p2}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    goto :goto_4

    :cond_f
    return-object v2

    .line 94
    :cond_10
    iput-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    return-object v2
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/bytedance/adsdk/ugeno/ZYk/tB<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 27
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ZYk:Lorg/json/JSONObject;

    .line 28
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ba:Lcom/bytedance/adsdk/ugeno/core/Ry;

    if-eqz p2, :cond_0

    .line 29
    invoke-interface {p2}, Lcom/bytedance/adsdk/ugeno/core/Ry;->oJ()V

    .line 30
    :cond_0
    new-instance p2, Lcom/bytedance/adsdk/ugeno/ex/oJ/oJ;

    invoke-direct {p2}, Lcom/bytedance/adsdk/ugeno/ex/oJ/oJ;-><init>()V

    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->PiB:Lcom/bytedance/adsdk/ugeno/ex/oJ/oJ;

    .line 31
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->Pfn:Lcom/bytedance/adsdk/ugeno/core/awB;

    instance-of p2, p2, Lcom/bytedance/adsdk/ugeno/core/oJ/ZYk;

    const/4 p3, 0x0

    if-nez p2, :cond_2

    .line 32
    invoke-virtual {p0, p1, p3}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 33
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ba:Lcom/bytedance/adsdk/ugeno/core/Ry;

    if-eqz p1, :cond_1

    .line 34
    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/core/Ry;->ZYk()V

    .line 35
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ba:Lcom/bytedance/adsdk/ugeno/core/Ry;

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Lcom/bytedance/adsdk/ugeno/core/Ry;)V

    .line 36
    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    .line 37
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    return-object p1

    .line 38
    :cond_2
    throw p3
.end method

.method public oJ(Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/bytedance/adsdk/ugeno/ZYk/tB<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ba:Lcom/bytedance/adsdk/ugeno/core/Ry;

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Ry;->oJ()V

    .line 97
    :cond_0
    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/cFZ;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ZYk:Lorg/json/JSONObject;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/adsdk/ugeno/core/cFZ;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->so:Lcom/bytedance/adsdk/ugeno/core/cFZ;

    .line 98
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->Pfn:Lcom/bytedance/adsdk/ugeno/core/awB;

    instance-of p1, p1, Lcom/bytedance/adsdk/ugeno/core/oJ/ZYk;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 99
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/cFZ;->oJ()Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;

    move-result-object p1

    .line 100
    invoke-virtual {p0, p1, v1}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ZYk(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 101
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ba:Lcom/bytedance/adsdk/ugeno/core/Ry;

    if-eqz p1, :cond_1

    .line 102
    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/core/Ry;->ZYk()V

    .line 103
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ba:Lcom/bytedance/adsdk/ugeno/core/Ry;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Lcom/bytedance/adsdk/ugeno/core/Ry;)V

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    return-object p1

    .line 105
    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/cFZ;->ZYk()Ljava/lang/String;

    throw v1
.end method

.method public oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/bytedance/adsdk/ugeno/ZYk/tB<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 4
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ZYk:Lorg/json/JSONObject;

    .line 5
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ba:Lcom/bytedance/adsdk/ugeno/core/Ry;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Ry;->oJ()V

    .line 7
    :cond_0
    new-instance v0, Lcom/bytedance/adsdk/ugeno/core/cFZ;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/core/cFZ;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->so:Lcom/bytedance/adsdk/ugeno/core/cFZ;

    .line 8
    iget p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->si:F

    iget p2, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->Ry:F

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/adsdk/ugeno/core/cFZ;->oJ(FF)V

    .line 9
    new-instance p1, Lcom/bytedance/adsdk/ugeno/ex/oJ/oJ;

    invoke-direct {p1}, Lcom/bytedance/adsdk/ugeno/ex/oJ/oJ;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->PiB:Lcom/bytedance/adsdk/ugeno/ex/oJ/oJ;

    .line 10
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->Pfn:Lcom/bytedance/adsdk/ugeno/core/awB;

    instance-of p1, p1, Lcom/bytedance/adsdk/ugeno/core/oJ/ZYk;

    const/4 p2, 0x0

    if-nez p1, :cond_4

    .line 11
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->so:Lcom/bytedance/adsdk/ugeno/core/cFZ;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/cFZ;->oJ()Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;

    move-result-object p1

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 13
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->RZ:Lcom/bytedance/adsdk/ugeno/core/jFA;

    if-nez p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ba:Lcom/bytedance/adsdk/ugeno/core/Ry;

    if-eqz p1, :cond_1

    .line 15
    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/core/Ry;->ZYk()V

    .line 16
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ba:Lcom/bytedance/adsdk/ugeno/core/Ry;

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Lcom/bytedance/adsdk/ugeno/core/Ry;)V

    .line 17
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ba:Lcom/bytedance/adsdk/ugeno/core/Ry;

    invoke-interface {p1}, Lcom/bytedance/adsdk/ugeno/core/Ry;->tB()V

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    .line 19
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ba:Lcom/bytedance/adsdk/ugeno/core/Ry;

    if-eqz p1, :cond_2

    .line 20
    new-instance p1, Lcom/bytedance/adsdk/ugeno/core/si;

    invoke-direct {p1}, Lcom/bytedance/adsdk/ugeno/core/si;-><init>()V

    const/4 p2, 0x0

    .line 21
    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/core/si;->oJ(I)V

    .line 22
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/core/si;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    .line 23
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ba:Lcom/bytedance/adsdk/ugeno/core/Ry;

    invoke-interface {p2, p1}, Lcom/bytedance/adsdk/ugeno/core/Ry;->oJ(Lcom/bytedance/adsdk/ugeno/core/si;)V

    .line 24
    :cond_2
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    return-object p1

    .line 25
    :cond_3
    throw p2

    .line 26
    :cond_4
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->so:Lcom/bytedance/adsdk/ugeno/core/cFZ;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/cFZ;->ZYk()Ljava/lang/String;

    throw p2
.end method

.method public varargs oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    instance-of v0, p1, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    if-eqz v0, :cond_2

    .line 145
    check-cast p1, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->jFA()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 146
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 147
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 148
    invoke-virtual {p0, v0, p2, p3}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Lorg/json/JSONObject;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 106
    :cond_0
    instance-of v0, p1, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    if-eqz v0, :cond_3

    .line 107
    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Lorg/json/JSONObject;)V

    .line 108
    check-cast p1, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->jFA()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 109
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 111
    invoke-virtual {p0, v0, p2}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    .line 112
    :cond_3
    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oJ(Lorg/json/JSONObject;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/core/Pfn;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->eZI:Lcom/bytedance/adsdk/ugeno/core/Pfn;

    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/core/awB;)V
    .locals 1

    .line 137
    invoke-static {}, Lcom/bytedance/adsdk/ugeno/Pfn;->oJ()Lcom/bytedance/adsdk/ugeno/Pfn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/Pfn;->Pfn()Lcom/bytedance/adsdk/ugeno/core/oJ/oJ;

    move-result-object v0

    if-nez v0, :cond_0

    .line 138
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->Pfn:Lcom/bytedance/adsdk/ugeno/core/awB;

    return-void

    .line 139
    :cond_0
    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ugeno/core/oJ/oJ;->oJ(Lcom/bytedance/adsdk/ugeno/core/awB;)Lcom/bytedance/adsdk/ugeno/core/oJ/ZYk;

    move-result-object v0

    if-nez v0, :cond_1

    .line 140
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->Pfn:Lcom/bytedance/adsdk/ugeno/core/awB;

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 141
    throw p1
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/core/eZI;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->cFZ:Lcom/bytedance/adsdk/ugeno/core/eZI;

    return-void
.end method

.method public oJ(Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/core/dLZ;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->kkU:Lcom/bytedance/adsdk/ugeno/core/dLZ;

    .line 2
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->jFA:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ugeno/core/dLZ;->oJ()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ZYk:Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method public oJ()Z
    .locals 1

    .line 149
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/core/BTZ;->WcQ:Z

    return v0
.end method
