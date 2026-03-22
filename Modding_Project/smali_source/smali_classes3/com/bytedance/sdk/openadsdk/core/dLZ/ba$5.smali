.class Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(ZF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:F

.field final synthetic oJ:Z

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;ZF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$5;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$5;->oJ:Z

    .line 4
    .line 5
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$5;->ZYk:F

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$5;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$5;->oJ:Z

    .line 4
    .line 5
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$5;->ZYk:F

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;ZF)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
