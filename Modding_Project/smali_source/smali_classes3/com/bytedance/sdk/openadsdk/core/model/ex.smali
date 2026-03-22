.class public Lcom/bytedance/sdk/openadsdk/core/model/ex;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ZYk:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/kkU;",
            ">;"
        }
    .end annotation
.end field

.field private oJ:Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ:Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ex;->ZYk:Ljava/util/Set;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public ZYk()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/kkU;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ex;->ZYk:Ljava/util/Set;

    return-object v0
.end method

.method public ZYk(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/kkU;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ex;->ZYk:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ:Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    return-object v0
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;)V
    .locals 0

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;-><init>()V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ:Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ:Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    :cond_0
    return-void
.end method

.method public oJ(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/kkU;",
            ">;)V"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/ex;->ZYk:Ljava/util/Set;

    return-void
.end method
