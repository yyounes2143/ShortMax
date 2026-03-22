.class public Lcom/bytedance/adsdk/ugeno/ZYk/oJ;
.super Lcom/bytedance/adsdk/ugeno/ZYk/tB;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Landroid/view/ViewGroup;",
        ">",
        "Lcom/bytedance/adsdk/ugeno/ZYk/tB;"
    }
.end annotation


# instance fields
.field protected oJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/ZYk/tB<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/ZYk/oJ;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/ZYk/oJ;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;-><init>(Landroid/content/Context;Lcom/bytedance/adsdk/ugeno/ZYk/oJ;)V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->oJ:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public ZYk(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    .locals 2

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->BTZ:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->oJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public ZYk()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk()V

    return-void
.end method

.method public jFA()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/ZYk/tB<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->oJ:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public kkU()Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/ugeno/ZYk/oJ$oJ;-><init>(Lcom/bytedance/adsdk/ugeno/ZYk/oJ;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public oJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    .locals 2

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->oJ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ex(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->oJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->oJ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method protected tB(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->kkU(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/oJ/oJ;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ZYk/oJ;->oJ:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ba(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    return-object v1

    .line 41
    :cond_2
    const/4 p1, 0x0

    .line 42
    return-object p1
.end method
