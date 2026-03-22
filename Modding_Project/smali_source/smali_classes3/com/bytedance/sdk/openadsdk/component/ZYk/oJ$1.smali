.class Lcom/bytedance/sdk/openadsdk/component/ZYk/oJ$1;
.super Lcom/bytedance/sdk/openadsdk/core/oq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/ZYk/oJ;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/common/ba;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pfn:Lcom/bytedance/sdk/openadsdk/component/ZYk/oJ;

.field final synthetic ZYk:Landroid/content/Context;

.field final synthetic ex:Lcom/bytedance/sdk/openadsdk/utils/wd;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/common/ba;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/AdSlot;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/common/ba;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/utils/wd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk/oJ$1;->Pfn:Lcom/bytedance/sdk/openadsdk/component/ZYk/oJ;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk/oJ$1;->oJ:Lcom/bytedance/sdk/openadsdk/common/ba;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk/oJ$1;->ZYk:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk/oJ$1;->tB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk/oJ$1;->ex:Lcom/bytedance/sdk/openadsdk/utils/wd;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/oq;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public oJ(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk/oJ$1;->oJ:Lcom/bytedance/sdk/openadsdk/common/ba;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/common/ba;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk/oJ$1;->Pfn:Lcom/bytedance/sdk/openadsdk/component/ZYk/oJ;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk/oJ$1;->ZYk:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk/oJ$1;->tB:Lcom/bytedance/sdk/openadsdk/AdSlot;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk/oJ$1;->oJ:Lcom/bytedance/sdk/openadsdk/common/ba;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/ZYk/oJ$1;->ex:Lcom/bytedance/sdk/openadsdk/utils/wd;

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/ZYk/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/component/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/common/ba;Lcom/bytedance/sdk/openadsdk/utils/wd;)V

    return-void
.end method
