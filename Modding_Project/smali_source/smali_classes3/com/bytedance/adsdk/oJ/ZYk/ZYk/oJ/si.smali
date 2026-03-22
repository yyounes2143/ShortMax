.class public abstract Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ/si;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;


# instance fields
.field protected ZYk:Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;

.field protected oJ:Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;

.field protected tB:Lcom/bytedance/adsdk/oJ/ZYk/ex/tB;


# direct methods
.method protected constructor <init>(Lcom/bytedance/adsdk/oJ/ZYk/ex/tB;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ/si;->tB:Lcom/bytedance/adsdk/oJ/ZYk/ex/tB;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public ZYk()Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ/si;->oJ:Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;

    invoke-interface {v1}, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;->ZYk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ/si;->tB:Lcom/bytedance/adsdk/oJ/ZYk/ex/tB;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/oJ/ZYk/ex/tB;->oJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ/si;->ZYk:Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;

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
    iput-object p1, p0, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ/si;->ZYk:Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;

    return-void
.end method

.method public oJ()Lcom/bytedance/adsdk/oJ/ZYk/ex/Pfn;
    .locals 1

    .line 2
    sget-object v0, Lcom/bytedance/adsdk/oJ/ZYk/ex/ba;->oJ:Lcom/bytedance/adsdk/oJ/ZYk/ex/ba;

    return-object v0
.end method

.method public oJ(Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ/si;->oJ:Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/adsdk/oJ/ZYk/ZYk/oJ/si;->ZYk()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
