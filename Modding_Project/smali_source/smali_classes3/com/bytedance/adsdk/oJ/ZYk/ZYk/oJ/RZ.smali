.class public Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ/RZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/oJ/ZYk/ZYk/ZYk;


# instance fields
.field private ZYk:Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;

.field private oJ:Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;

.field private tB:Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public ZYk()Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ/RZ;->oJ:Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;

    invoke-interface {v1}, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;->ZYk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ/RZ;->ZYk:Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;

    invoke-interface {v1}, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;->ZYk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ/RZ;->tB:Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;

    invoke-interface {v1}, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;->ZYk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ZYk(Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ/RZ;->ZYk:Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;

    return-void
.end method

.method public oJ()Lcom/bytedance/adsdk/oJ/ZYk/ex/Pfn;
    .locals 1

    .line 5
    sget-object v0, Lcom/bytedance/adsdk/oJ/ZYk/ex/ba;->oJ:Lcom/bytedance/adsdk/oJ/ZYk/ex/ba;

    return-object v0
.end method

.method public oJ(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ/RZ;->oJ:Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;->oJ(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ/RZ;->ZYk:Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;->oJ(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ/RZ;->tB:Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;

    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;->oJ(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public oJ(Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ/RZ;->oJ:Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;

    return-void
.end method

.method public tB(Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ/RZ;->tB:Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ/RZ;->ZYk()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
