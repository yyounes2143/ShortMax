.class Lcom/bytedance/sdk/openadsdk/core/tB/oJ$7$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/tB/oJ$7;->oJ(Z)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/tB/oJ$7;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/tB/oJ$7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$7$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/oJ$7;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$7$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/oJ$7;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$7;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->kkU(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$7$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/oJ$7;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$7;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->tB(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$7$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/oJ$7;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/tB/oJ$7;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/oJ;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/tB/oJ;->dLZ(Lcom/bytedance/sdk/openadsdk/core/tB/oJ;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
