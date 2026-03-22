.class public Lcom/bytedance/adsdk/ugeno/ex/ex/ex;
.super Lcom/bytedance/adsdk/ugeno/ex/ex/tB;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/ex/oJ/ex;


# instance fields
.field private dLZ:Lcom/bytedance/adsdk/ugeno/ex/oJ/tB;


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
.method public oJ(Ljava/lang/String;)V
    .locals 3

    .line 5
    const-string p1, "UGBaseEventMonitor"

    const-string v0, "receive: "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ:Lcom/bytedance/adsdk/ugeno/ex/dLZ;

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ba:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->tB:Lcom/bytedance/adsdk/ugeno/ex/ba;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/ex/ba;->ZYk()Ljava/util/List;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/bytedance/adsdk/ugeno/ex/dLZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public varargs oJ([Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->cdg()Lcom/bytedance/adsdk/ugeno/ex/oJ/oJ;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ba:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/ex/oJ/oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ex/oJ/tB;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/ex;->dLZ:Lcom/bytedance/adsdk/ugeno/ex/oJ/tB;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lcom/bytedance/adsdk/ugeno/ex/oJ/tB;->oJ(Lcom/bytedance/adsdk/ugeno/ex/oJ/ex;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ba:Ljava/lang/String;

    new-instance v1, Lcom/bytedance/adsdk/ugeno/ex/oJ/ZYk;

    invoke-direct {v1}, Lcom/bytedance/adsdk/ugeno/ex/oJ/ZYk;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/adsdk/ugeno/ex/oJ/oJ;->oJ(Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/ex/oJ/tB;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
