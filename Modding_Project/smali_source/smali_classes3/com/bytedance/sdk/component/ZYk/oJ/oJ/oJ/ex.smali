.class public Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ex;
.super Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;
.source "SourceFile"


# instance fields
.field public jFA:Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/oJ;

.field public so:Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ba;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;-><init>(Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ba;

    .line 5
    .line 6
    invoke-direct {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ba;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ex;->so:Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ba;

    .line 10
    .line 11
    new-instance v0, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/oJ;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ba;->ZYk()Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-direct {v0, p1}, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/oJ;-><init>(Ljava/util/concurrent/ExecutorService;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ex;->jFA:Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/oJ;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public oJ(Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;)Lcom/bytedance/sdk/component/ZYk/oJ/ZYk;
    .locals 2

    .line 2
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;)V

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;->ZYk()Lcom/bytedance/sdk/component/ZYk/oJ/cFZ;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;->ZYk()Lcom/bytedance/sdk/component/ZYk/oJ/cFZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/cFZ;->oJ()Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;->ZYk()Lcom/bytedance/sdk/component/ZYk/oJ/cFZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/cFZ;->oJ()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/kkU;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/oJ;->oJ:Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/kkU;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/kkU;->ZYk()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ex;->jFA:Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/oJ;

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/oJ;->Pfn()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "setting"

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;->ba()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ZYk;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ex;->jFA:Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/oJ;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ZYk;-><init>(Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;Lcom/bytedance/sdk/component/ZYk/oJ/ex;)V

    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ex;->jFA:Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/oJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/oJ;->tB()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ZYk;

    iget-object v1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ex;->so:Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ba;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ZYk;-><init>(Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;Lcom/bytedance/sdk/component/ZYk/oJ/ex;)V

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ex;->so:Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ba;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ba;->tB()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public oJ()Lcom/bytedance/sdk/component/ZYk/oJ/ex;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ex;->so:Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/ba;

    return-object v0
.end method
