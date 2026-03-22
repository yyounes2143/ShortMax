.class Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ/Pfn$oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ/Pfn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "oJ"
.end annotation


# instance fields
.field final Pfn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;"
        }
    .end annotation
.end field

.field ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/oJ$oJ;

.field final ba:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;"
        }
    .end annotation
.end field

.field cFZ:F

.field ex:Ljava/lang/String;

.field oJ:Ljava/lang/String;

.field tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/oJ$ZYk;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ/Pfn$oJ;->Pfn:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ/Pfn$oJ;->ba:Ljava/util/List;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ/Pfn$oJ;->cFZ:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/oJ$oJ;Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/oJ$ZYk;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ/Pfn$oJ;->Pfn:Ljava/util/List;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ/Pfn$oJ;->ba:Ljava/util/List;

    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ/Pfn$oJ;->cFZ:F

    .line 9
    invoke-virtual {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ/Pfn$oJ;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/oJ$oJ;Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/oJ$ZYk;)V

    return-void
.end method


# virtual methods
.method public ZYk(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ/Pfn$oJ;->ba:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$oJ;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$oJ;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ/Pfn$oJ;->Pfn:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$oJ;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$oJ;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/oJ$oJ;Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/oJ$ZYk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ/Pfn$oJ;->oJ:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ/Pfn$oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/oJ$oJ;

    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ/Pfn$oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/oJ$ZYk;

    return-void
.end method
