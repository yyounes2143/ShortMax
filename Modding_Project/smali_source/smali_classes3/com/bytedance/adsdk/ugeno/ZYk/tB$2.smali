.class Lcom/bytedance/adsdk/ugeno/ZYk/tB$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ex()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/adsdk/ugeno/ZYk/tB;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB$2;->oJ:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p1, "GesThrough_UGenWidget"

    .line 2
    .line 3
    const-string v0, "UGenWidget onClick handling"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB$2;->oJ:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->SCr:Lcom/bytedance/adsdk/ugeno/core/awB;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-static {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->tB(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB$2;->oJ:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->SCr:Lcom/bytedance/adsdk/ugeno/core/awB;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->eXp:Ljava/util/Map;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Lcom/bytedance/adsdk/ugeno/core/PiB;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ZYk/tB$2;->oJ:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 38
    .line 39
    invoke-interface {v0, p1, v1, v1}, Lcom/bytedance/adsdk/ugeno/core/awB;->oJ(Lcom/bytedance/adsdk/ugeno/core/PiB;Lcom/bytedance/adsdk/ugeno/core/awB$ZYk;Lcom/bytedance/adsdk/ugeno/core/awB$oJ;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
