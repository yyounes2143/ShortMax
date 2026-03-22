.class public Lcom/bytedance/adsdk/ZYk/tB/oJ/kkU;
.super Lcom/bytedance/adsdk/ZYk/tB/oJ/WcQ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/ZYk/tB/oJ/WcQ<",
        "Lcom/bytedance/adsdk/ZYk/tB/ZYk;",
        "Lcom/bytedance/adsdk/ZYk/tB/ZYk;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/cFZ/oJ<",
            "Lcom/bytedance/adsdk/ZYk/tB/ZYk;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ZYk/tB/oJ/WcQ;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic ZYk()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/adsdk/ZYk/tB/oJ/WcQ;->ZYk()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public ex()Lcom/bytedance/adsdk/ZYk/oJ/ZYk/awB;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/awB;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/tB/oJ/WcQ;->oJ:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/awB;-><init>(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public synthetic oJ()Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ZYk/tB/oJ/kkU;->ex()Lcom/bytedance/adsdk/ZYk/oJ/ZYk/awB;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic tB()Ljava/util/List;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/adsdk/ZYk/tB/oJ/WcQ;->tB()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/bytedance/adsdk/ZYk/tB/oJ/WcQ;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
