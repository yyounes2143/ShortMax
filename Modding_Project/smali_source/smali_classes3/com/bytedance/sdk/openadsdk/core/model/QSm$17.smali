.class Lcom/bytedance/sdk/openadsdk/core/model/QSm$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/model/QSm;->BTZ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$17;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$17;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->cFZ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$17;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)Landroid/app/Activity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$17;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)Landroid/app/Activity;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    .line 28
    .line 29
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->e_()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$17;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$17;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->tB()V

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method
