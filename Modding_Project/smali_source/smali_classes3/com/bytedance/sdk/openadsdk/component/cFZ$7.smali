.class Lcom/bytedance/sdk/openadsdk/component/cFZ$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/ba$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;ZLcom/bytedance/sdk/openadsdk/core/model/oJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field final synthetic ex:Lcom/bytedance/sdk/openadsdk/component/cFZ;

.field final synthetic oJ:Z

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/core/model/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/cFZ;ZLcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$7;->ex:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$7;->oJ:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$7;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$7;->tB:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 6

    .line 7
    const-string v0, "TTAppOpenAdLoadManager"

    const-string v1, "preLoadFail: image load fail"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$7;->oJ:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$7;->ex:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/cFZ;I)I

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$7;->ex:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;

    const/16 v2, 0x64

    const/16 v3, 0x2713

    .line 11
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/so;->oJ(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-direct {v1, v5, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;-><init>(IIILjava/lang/String;)V

    .line 12
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/cFZ;Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;)V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;)V
    .locals 4

    .line 1
    const-string p1, "TTAppOpenAdLoadManager"

    const-string v0, "preLoadSuccess: image load success"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$7;->oJ:Z

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$7;->ex:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/cFZ;I)I

    .line 4
    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$7;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$7;->tB:Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    const/4 v2, 0x1

    const/16 v3, 0x64

    invoke-direct {p1, v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;-><init>(IILcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    .line 5
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;->oJ(Z)V

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/cFZ$7;->ex:Lcom/bytedance/sdk/openadsdk/component/cFZ;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/component/cFZ;Lcom/bytedance/sdk/openadsdk/component/Pfn/ZYk;)V

    :cond_0
    return-void
.end method
