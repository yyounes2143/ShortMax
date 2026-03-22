.class Lcom/bytedance/adsdk/ZYk/ba$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ZYk/dLZ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ZYk/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/adsdk/ZYk/dLZ<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/adsdk/ZYk/ba;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ZYk/ba;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/ba$7;->oJ:Lcom/bytedance/adsdk/ZYk/ba;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic oJ(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ZYk/ba$7;->oJ(Ljava/lang/Throwable;)V

    return-void
.end method

.method public oJ(Ljava/lang/Throwable;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/ba$7;->oJ:Lcom/bytedance/adsdk/ZYk/ba;

    invoke-static {v0}, Lcom/bytedance/adsdk/ZYk/ba;->oJ(Lcom/bytedance/adsdk/ZYk/ba;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/ba$7;->oJ:Lcom/bytedance/adsdk/ZYk/ba;

    invoke-static {v0}, Lcom/bytedance/adsdk/ZYk/ba;->oJ(Lcom/bytedance/adsdk/ZYk/ba;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ZYk/ba;->setImageResource(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/ba$7;->oJ:Lcom/bytedance/adsdk/ZYk/ba;

    invoke-static {v0}, Lcom/bytedance/adsdk/ZYk/ba;->ZYk(Lcom/bytedance/adsdk/ZYk/ba;)Lcom/bytedance/adsdk/ZYk/dLZ;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/bytedance/adsdk/ZYk/ba;->cFZ()Lcom/bytedance/adsdk/ZYk/dLZ;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/ba$7;->oJ:Lcom/bytedance/adsdk/ZYk/ba;

    invoke-static {v0}, Lcom/bytedance/adsdk/ZYk/ba;->ZYk(Lcom/bytedance/adsdk/ZYk/ba;)Lcom/bytedance/adsdk/ZYk/dLZ;

    move-result-object v0

    .line 5
    :goto_0
    invoke-interface {v0, p1}, Lcom/bytedance/adsdk/ZYk/dLZ;->oJ(Ljava/lang/Object;)V

    return-void
.end method
