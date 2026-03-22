.class Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Z

.field final synthetic oJ:J

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;JZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$9;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$9;->oJ:J

    .line 4
    .line 5
    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$9;->ZYk:Z

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$9;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$9;->oJ:J

    .line 4
    .line 5
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba$9;->ZYk:Z

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->ZYk(JZ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
