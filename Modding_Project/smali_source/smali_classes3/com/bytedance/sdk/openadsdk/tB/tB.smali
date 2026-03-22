.class public Lcom/bytedance/sdk/openadsdk/tB/tB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/Ln;


# instance fields
.field private Pfn:Lcom/bytedance/sdk/openadsdk/core/Ln$oJ;

.field private final ZYk:Landroid/content/Context;

.field private ex:Z

.field public oJ:Lcom/bytedance/sdk/openadsdk/tB/BTZ;

.field private tB:Lcom/bytedance/sdk/openadsdk/tB/ex;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->ZYk:Landroid/content/Context;

    .line 5
    .line 6
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/tB/tB;->oJ(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/tB/tB;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/tB/tB;->ex()V

    return-void
.end method

.method private ex()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->ZYk:Landroid/content/Context;

    .line 2
    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    check-cast v0, Landroid/app/Activity;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->oJ:Lcom/bytedance/sdk/openadsdk/tB/BTZ;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->oJ:Lcom/bytedance/sdk/openadsdk/tB/BTZ;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/tB/BTZ;->show()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/tB/tB;)Lcom/bytedance/sdk/openadsdk/tB/ex;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->tB:Lcom/bytedance/sdk/openadsdk/tB/ex;

    return-object p0
.end method

.method private oJ(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            ")V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/tB/ex;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->ZYk:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/tB/ex;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->tB:Lcom/bytedance/sdk/openadsdk/tB/ex;

    .line 3
    new-instance p1, Lcom/bytedance/sdk/openadsdk/tB/BTZ;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->ZYk:Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->tB:Lcom/bytedance/sdk/openadsdk/tB/ex;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->getDislikeManager()Lcom/bytedance/sdk/openadsdk/tB/kkU;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/tB/BTZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/tB/kkU;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->oJ:Lcom/bytedance/sdk/openadsdk/tB/BTZ;

    .line 4
    invoke-virtual {p1, p3, p4}, Lcom/bytedance/sdk/openadsdk/tB/BTZ;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->oJ:Lcom/bytedance/sdk/openadsdk/tB/BTZ;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/tB/tB$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/tB/tB$1;-><init>(Lcom/bytedance/sdk/openadsdk/tB/tB;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/tB/BTZ;->oJ(Lcom/bytedance/sdk/openadsdk/tB/BTZ$oJ;)V

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->tB:Lcom/bytedance/sdk/openadsdk/tB/ex;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/tB/tB$2;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/tB/tB$2;-><init>(Lcom/bytedance/sdk/openadsdk/tB/tB;)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/tB/ex;->oJ(Lcom/bytedance/sdk/openadsdk/tB/ex$oJ;)V

    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/tB/tB;)Lcom/bytedance/sdk/openadsdk/core/Ln$oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/Ln$oJ;

    return-object p0
.end method


# virtual methods
.method public ZYk()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->tB:Lcom/bytedance/sdk/openadsdk/tB/ex;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->destroy()V

    :cond_0
    return-void
.end method

.method public oJ()V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->ZYk:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->tB:Lcom/bytedance/sdk/openadsdk/tB/ex;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->tB:Lcom/bytedance/sdk/openadsdk/tB/ex;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/tB/ex;->show()V

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/Ln$oJ;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/Ln$oJ;

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->tB:Lcom/bytedance/sdk/openadsdk/tB/ex;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/tB/ex;->oJ(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->ex:Z

    return-void
.end method

.method public tB()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/tB/tB;->ex:Z

    return v0
.end method
