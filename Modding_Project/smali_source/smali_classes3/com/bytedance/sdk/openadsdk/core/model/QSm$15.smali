.class Lcom/bytedance/sdk/openadsdk/core/model/QSm$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/model/QSm;->dLZ()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$15;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$15;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Ry(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/QSm$15;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Ry(Lcom/bytedance/sdk/openadsdk/core/model/QSm;)Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->ZYk(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
