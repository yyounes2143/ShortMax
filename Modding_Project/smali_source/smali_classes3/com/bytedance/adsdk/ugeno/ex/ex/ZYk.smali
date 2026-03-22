.class public Lcom/bytedance/adsdk/ugeno/ex/ex/ZYk;
.super Lcom/bytedance/adsdk/ugeno/ex/ex/tB;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/oJ/ZYk;


# instance fields
.field private dLZ:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/ZYk;->dLZ:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "complete"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/ZYk;->dLZ:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ:Lcom/bytedance/adsdk/ugeno/ex/dLZ;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ba:Ljava/lang/String;

    .line 26
    .line 27
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->tB:Lcom/bytedance/adsdk/ugeno/ex/ba;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/ex/ba;->ZYk()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/ex/dLZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    return-void
.end method

.method public oJ()V
    .locals 4

    .line 9
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/ZYk;->dLZ:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/ZYk;->dLZ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ:Lcom/bytedance/adsdk/ugeno/ex/dLZ;

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ba:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->tB:Lcom/bytedance/adsdk/ugeno/ex/ba;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/ex/ba;->ZYk()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/ex/dLZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public varargs oJ([Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn:Ljava/util/Map;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn:Ljava/util/Map;

    const-string v2, "state"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/ZYk;->dLZ:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {v1, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 6
    :cond_2
    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ba(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object v1

    .line 7
    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->kkU(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/oJ/oJ;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/ugeno/oJ/oJ;->oJ(Lcom/bytedance/adsdk/ugeno/oJ/ZYk;)V

    :cond_3
    :goto_0
    return v0
.end method
