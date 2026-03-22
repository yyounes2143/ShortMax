.class Lcom/bytedance/sdk/openadsdk/core/dLZ/ex$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:I

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex$1;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 4
    .line 5
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex$1;->ZYk:I

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex$1;->ZYk:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
