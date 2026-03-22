.class Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field final synthetic oJ:Ljava/lang/String;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$4;->tB:Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$4;->oJ:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$4;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$4;->tB:Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;)Lcom/bytedance/sdk/openadsdk/common/si;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$4;->tB:Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;

    .line 10
    .line 11
    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/si;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$4;->tB:Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;

    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/si;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->oJ(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;Lcom/bytedance/sdk/openadsdk/common/si;)Lcom/bytedance/sdk/openadsdk/common/si;

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$4;->tB:Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;)Lcom/bytedance/sdk/openadsdk/common/si;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$4;->oJ:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$4;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 30
    .line 31
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/common/si;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$4;->tB:Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;)Lcom/bytedance/sdk/openadsdk/common/si;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity$4;->tB:Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;)Lcom/bytedance/sdk/openadsdk/common/si;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/common/si;->show()V

    .line 51
    .line 52
    .line 53
    return-void
.end method
