.class public Lcom/bytedance/sdk/component/Pfn/Pfn/PiB;
.super Lcom/bytedance/sdk/component/Pfn/Pfn/oJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/bytedance/sdk/component/Pfn/Pfn/oJ;"
    }
.end annotation


# instance fields
.field private ZYk:Lcom/bytedance/sdk/component/Pfn/ba;

.field private oJ:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private tB:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/bytedance/sdk/component/Pfn/ba;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/bytedance/sdk/component/Pfn/ba;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Pfn/Pfn/oJ;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/component/Pfn/Pfn/PiB;->oJ:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/component/Pfn/Pfn/PiB;->ZYk:Lcom/bytedance/sdk/component/Pfn/ba;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/bytedance/sdk/component/Pfn/Pfn/PiB;->tB:Z

    .line 9
    .line 10
    return-void
.end method

.method private ZYk()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/Pfn/PiB;->ZYk:Lcom/bytedance/sdk/component/Pfn/ba;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Pfn/ba;->Pfn()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private ZYk(Lcom/bytedance/sdk/component/Pfn/tB/tB;)V
    .locals 5

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->so()Lcom/bytedance/sdk/component/Pfn/eZI;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v1, Lcom/bytedance/sdk/component/Pfn/tB/ex;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/Pfn/tB/ex;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/component/Pfn/Pfn/PiB;->oJ:Ljava/lang/Object;

    invoke-direct {p0}, Lcom/bytedance/sdk/component/Pfn/Pfn/PiB;->ZYk()Ljava/util/Map;

    move-result-object v3

    iget-boolean v4, p0, Lcom/bytedance/sdk/component/Pfn/Pfn/PiB;->tB:Z

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/bytedance/sdk/component/Pfn/tB/ex;->oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB;Ljava/lang/Object;Ljava/util/Map;Z)Lcom/bytedance/sdk/component/Pfn/tB/ex;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/Pfn/eZI;->oJ(Lcom/bytedance/sdk/component/Pfn/dLZ;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public oJ()Ljava/lang/String;
    .locals 1

    .line 11
    const-string v0, "success"

    return-object v0
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Id()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Ry()Lcom/bytedance/sdk/component/Pfn/tB/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->so()Ljava/util/Map;

    move-result-object v1

    .line 3
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Pfn/Pfn/PiB;->ZYk(Lcom/bytedance/sdk/component/Pfn/tB/tB;)V

    return-void

    .line 5
    :cond_0
    monitor-enter v2

    .line 6
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/component/Pfn/tB/tB;

    .line 7
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/component/Pfn/Pfn/PiB;->ZYk(Lcom/bytedance/sdk/component/Pfn/tB/tB;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 9
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    monitor-exit v2

    throw p1
.end method
