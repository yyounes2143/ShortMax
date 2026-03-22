.class Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/ZYk$ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Ljava/lang/String;

.field final synthetic oJ:Ljava/lang/String;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$1;->tB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$1;->oJ:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$1;->ZYk:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$1;->tB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$1;->oJ:Ljava/lang/String;

    const-string v4, ""

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$1;->ZYk:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public oJ(Ljava/lang/Throwable;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$1;->tB:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$1;->oJ:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$1;->ZYk:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
