.class Lcom/bytedance/adsdk/ZYk/oJ$1;
.super Lcom/bytedance/adsdk/ZYk/awB;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ZYk/oJ;->ZYk()Lcom/bytedance/adsdk/ZYk/awB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/adsdk/ZYk/awB<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/adsdk/ZYk/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ZYk/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/oJ$1;->oJ:Lcom/bytedance/adsdk/ZYk/oJ;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bytedance/adsdk/ZYk/awB;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected ZYk()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "not a map"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method protected oJ()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ$1;->oJ:Lcom/bytedance/adsdk/ZYk/oJ;

    iget v0, v0, Lcom/bytedance/adsdk/ZYk/oJ;->ZYk:I

    return v0
.end method

.method protected oJ(Ljava/lang/Object;)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ$1;->oJ:Lcom/bytedance/adsdk/ZYk/oJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/oJ;->oJ(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method protected oJ(II)Ljava/lang/Object;
    .locals 0

    .line 2
    iget-object p2, p0, Lcom/bytedance/adsdk/ZYk/oJ$1;->oJ:Lcom/bytedance/adsdk/ZYk/oJ;

    iget-object p2, p2, Lcom/bytedance/adsdk/ZYk/oJ;->oJ:[Ljava/lang/Object;

    aget-object p1, p2, p1

    return-object p1
.end method

.method protected oJ(I)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ$1;->oJ:Lcom/bytedance/adsdk/ZYk/oJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/oJ;->tB(I)Ljava/lang/Object;

    return-void
.end method

.method protected tB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ$1;->oJ:Lcom/bytedance/adsdk/ZYk/oJ;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/oJ;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
