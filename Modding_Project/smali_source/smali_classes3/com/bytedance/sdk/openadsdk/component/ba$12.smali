.class Lcom/bytedance/sdk/openadsdk/component/ba$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/utils/si$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/nke;Lcom/bytedance/sdk/openadsdk/component/ba$oJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pfn:Lcom/bytedance/sdk/openadsdk/component/ba$oJ;

.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/utils/wd;

.field final synthetic ba:Lcom/bytedance/sdk/openadsdk/component/ba;

.field final synthetic ex:Lcom/bytedance/sdk/openadsdk/core/model/nke;

.field final synthetic oJ:I

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/ba;ILcom/bytedance/sdk/openadsdk/utils/wd;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/nke;Lcom/bytedance/sdk/openadsdk/component/ba$oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba$12;->ba:Lcom/bytedance/sdk/openadsdk/component/ba;

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/component/ba$12;->oJ:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/ba$12;->ZYk:Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/ba$12;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/ba$12;->ex:Lcom/bytedance/sdk/openadsdk/core/model/nke;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/component/ba$12;->Pfn:Lcom/bytedance/sdk/openadsdk/component/ba$oJ;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba$12;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ba$12;->ZYk:Lcom/bytedance/sdk/openadsdk/utils/wd;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ex()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/component/ex/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;JZ)V

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba$12;->Pfn:Lcom/bytedance/sdk/openadsdk/component/ba$oJ;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/component/ba$oJ;->oJ()V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;)V
    .locals 4
    .param p1    # Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;->Pfn()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba$12;->ba:Lcom/bytedance/sdk/openadsdk/component/ba;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/component/ba$12;->oJ:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/ba;->ZYk(I)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba$12;->ZYk:Lcom/bytedance/sdk/openadsdk/utils/wd;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ex()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ba$12;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/component/ex/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;JZ)V

    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/ba$12;->ex:Lcom/bytedance/sdk/openadsdk/core/model/nke;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/nke;->oJ(J)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba$12;->ex:Lcom/bytedance/sdk/openadsdk/core/model/nke;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/nke;->oJ(I)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba$12;->Pfn:Lcom/bytedance/sdk/openadsdk/component/ba$oJ;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/ba$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;)V

    return-void

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba$12;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ba$12;->ZYk:Lcom/bytedance/sdk/openadsdk/utils/wd;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/utils/wd;->ex()J

    move-result-wide v0

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/ex/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;JZ)V

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ba$12;->Pfn:Lcom/bytedance/sdk/openadsdk/component/ba$oJ;

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/component/ba$oJ;->oJ()V

    return-void
.end method
