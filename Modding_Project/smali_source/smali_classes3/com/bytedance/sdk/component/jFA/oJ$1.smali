.class Lcom/bytedance/sdk/component/jFA/oJ$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/jFA/oJ$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/jFA/oJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/component/jFA/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/jFA/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/jFA/oJ$1;->oJ:Lcom/bytedance/sdk/component/jFA/oJ;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/oJ$1;->oJ:Lcom/bytedance/sdk/component/jFA/oJ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/jFA/oJ;->oJ(Lcom/bytedance/sdk/component/jFA/oJ;)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/oJ$1;->oJ:Lcom/bytedance/sdk/component/jFA/oJ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/jFA/oJ;->ZYk(Lcom/bytedance/sdk/component/jFA/oJ;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/oJ$1;->oJ:Lcom/bytedance/sdk/component/jFA/oJ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/jFA/oJ;->tB(Lcom/bytedance/sdk/component/jFA/oJ;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/oJ$1;->oJ:Lcom/bytedance/sdk/component/jFA/oJ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/jFA/oJ;->oJ(Lcom/bytedance/sdk/component/jFA/oJ;)F

    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/oJ$1;->oJ:Lcom/bytedance/sdk/component/jFA/oJ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/jFA/oJ;->ZYk(Lcom/bytedance/sdk/component/jFA/oJ;)F

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/oJ$1;->oJ:Lcom/bytedance/sdk/component/jFA/oJ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/jFA/oJ;->ex(Lcom/bytedance/sdk/component/jFA/oJ;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/jFA/oJ;->oJ(Lcom/bytedance/sdk/component/jFA/oJ;F)F

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/oJ$1;->oJ:Lcom/bytedance/sdk/component/jFA/oJ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/jFA/oJ;->Pfn(Lcom/bytedance/sdk/component/jFA/oJ;)F

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/jFA/oJ;->ZYk(Lcom/bytedance/sdk/component/jFA/oJ;F)F

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/oJ$1;->oJ:Lcom/bytedance/sdk/component/jFA/oJ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/jFA/oJ;->ba(Lcom/bytedance/sdk/component/jFA/oJ;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/jFA/oJ;->oJ(Lcom/bytedance/sdk/component/jFA/oJ;J)J

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/oJ$1;->oJ:Lcom/bytedance/sdk/component/jFA/oJ;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/jFA/oJ;->oJ(Lcom/bytedance/sdk/component/jFA/oJ;Z)Z

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/oJ$1;->oJ:Lcom/bytedance/sdk/component/jFA/oJ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/jFA/oJ;->oJ(Lcom/bytedance/sdk/component/jFA/oJ;)F

    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/oJ$1;->oJ:Lcom/bytedance/sdk/component/jFA/oJ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/jFA/oJ;->ZYk(Lcom/bytedance/sdk/component/jFA/oJ;)F

    return-void
.end method

.method public oJ(I)V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/component/jFA/oJ$1;->oJ:Lcom/bytedance/sdk/component/jFA/oJ;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/jFA/oJ;->oJ(Lcom/bytedance/sdk/component/jFA/oJ;I)I

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/component/jFA/oJ$1;->oJ:Lcom/bytedance/sdk/component/jFA/oJ;

    invoke-static {p1}, Lcom/bytedance/sdk/component/jFA/oJ;->cFZ(Lcom/bytedance/sdk/component/jFA/oJ;)V

    return-void
.end method
