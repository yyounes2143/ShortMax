.class Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$oJ;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Z

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$oJ;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$oJ;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$3;->tB:Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$oJ;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$3;->ZYk:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$3;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$oJ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$3;->ZYk:Z

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/tB/oJ$oJ;->oJ(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
