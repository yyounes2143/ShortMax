.class public Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/model/cY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oJ"
.end annotation


# instance fields
.field private BTZ:Ljava/lang/String;

.field private Pfn:Ljava/lang/String;

.field private PiB:Ljava/lang/String;

.field private WcQ:Ljava/lang/String;

.field private ZYk:Ljava/lang/String;

.field private ba:Ljava/lang/String;

.field private cFZ:Ljava/lang/String;

.field private dLZ:Ljava/lang/String;

.field private ex:Ljava/lang/String;

.field private jFA:Ljava/lang/String;

.field private kkU:Ljava/lang/String;

.field private oJ:Ljava/lang/String;

.field private so:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tB:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->ex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->WcQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->PiB()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->awB()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;->ex(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;

    move-result-object p0

    .line 6
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;->Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/kkU/so/oJ;

    move-result-object p0

    return-object p0
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/oJ/tB/ex;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/ex;->oJ()Lcom/bytedance/sdk/component/adexpress/oJ/tB/ex;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->ex()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/ex;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/oJ/tB/ex;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->Pfn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/ex;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/oJ/tB/ex;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->ba()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/ex;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/oJ/tB/ex;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->cFZ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/ex;->ex(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/oJ/tB/ex;

    move-result-object v0

    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->tB()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/ex;->Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/oJ/tB/ex;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/ex;->ba(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/oJ/tB/ex;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public BTZ(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->PiB:Ljava/lang/String;

    return-void
.end method

.method public BTZ()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->kkU:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->kkU:Ljava/lang/String;

    const-string v1, "v3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public Pfn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->ZYk:Ljava/lang/String;

    return-object v0
.end method

.method public Pfn(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->tB:Ljava/lang/String;

    return-void
.end method

.method public PiB()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->BTZ:Ljava/lang/String;

    return-object v0
.end method

.method public PiB(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->WcQ:Ljava/lang/String;

    return-void
.end method

.method public WcQ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->PiB:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ZYk()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->jFA:Ljava/lang/String;

    return-object v0
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->ba:Ljava/lang/String;

    return-void
.end method

.method public awB()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->WcQ:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ba()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->tB:Ljava/lang/String;

    return-object v0
.end method

.method public ba(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->ex:Ljava/lang/String;

    return-void
.end method

.method public cFZ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public cFZ(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->Pfn:Ljava/lang/String;

    return-void
.end method

.method public dLZ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->kkU:Ljava/lang/String;

    return-object v0
.end method

.method public dLZ(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->BTZ:Ljava/lang/String;

    return-void
.end method

.method public ex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->oJ:Ljava/lang/String;

    return-object v0
.end method

.method public ex(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->ZYk:Ljava/lang/String;

    return-void
.end method

.method public jFA()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->cFZ:Ljava/lang/String;

    return-object v0
.end method

.method public jFA(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->dLZ:Ljava/lang/String;

    return-void
.end method

.method public kkU()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->dLZ:Ljava/lang/String;

    return-object v0
.end method

.method public kkU(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->kkU:Ljava/lang/String;

    return-void
.end method

.method public oJ()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->so:Ljava/util/List;

    return-object v0
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->jFA:Ljava/lang/String;

    return-void
.end method

.method public oJ(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->so:Ljava/util/List;

    return-void
.end method

.method public so()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->Pfn:Ljava/lang/String;

    return-object v0
.end method

.method public so(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->cFZ:Ljava/lang/String;

    return-void
.end method

.method public tB()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->ba:Ljava/lang/String;

    return-object v0
.end method

.method public tB(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->oJ:Ljava/lang/String;

    return-void
.end method
