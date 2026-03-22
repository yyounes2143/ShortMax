.class Lcom/bytedance/adsdk/ZYk/ba$6;
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
        "Lcom/bytedance/adsdk/ZYk/cFZ;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/adsdk/ZYk/ba;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ZYk/ba;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/ba$6;->oJ:Lcom/bytedance/adsdk/ZYk/ba;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ(Lcom/bytedance/adsdk/ZYk/cFZ;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/ba$6;->oJ:Lcom/bytedance/adsdk/ZYk/ba;

    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ZYk/ba;->setComposition(Lcom/bytedance/adsdk/ZYk/cFZ;)V

    return-void
.end method

.method public bridge synthetic oJ(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/adsdk/ZYk/cFZ;

    invoke-virtual {p0, p1}, Lcom/bytedance/adsdk/ZYk/ba$6;->oJ(Lcom/bytedance/adsdk/ZYk/cFZ;)V

    return-void
.end method
