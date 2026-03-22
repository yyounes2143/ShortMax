.class public Lcom/bytedance/adsdk/ugeno/ex/ZYk/ZYk;
.super Lcom/bytedance/adsdk/ugeno/ex/ZYk/oJ;
.source "SourceFile"


# instance fields
.field private jFA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/ex/oJ/ex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/adsdk/ugeno/ex/ZYk/oJ;-><init>(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ZYk/ZYk;->jFA:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ZYk/oJ;->ba:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ZYk/oJ;->ba:Ljava/util/Map;

    .line 13
    .line 14
    const-string v1, "name"

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ZYk/oJ;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->cdg()Lcom/bytedance/adsdk/ugeno/ex/oJ/oJ;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/bytedance/adsdk/ugeno/ex/oJ/oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ex/oJ/tB;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-interface {v1, v0}, Lcom/bytedance/adsdk/ugeno/ex/oJ/tB;->oJ(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method
