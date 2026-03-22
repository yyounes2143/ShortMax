.class Lcom/bytedance/sdk/openadsdk/core/jFA$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/jFA;->ex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:I

.field final synthetic oJ:Ljava/lang/Integer;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/core/jFA;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/jFA;Ljava/lang/Integer;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/jFA$2;->tB:Lcom/bytedance/sdk/openadsdk/core/jFA;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/jFA$2;->oJ:Ljava/lang/Integer;

    .line 4
    .line 5
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/jFA$2;->ZYk:I

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
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA$2;->tB:Lcom/bytedance/sdk/openadsdk/core/jFA;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/jFA$2;->oJ:Ljava/lang/Integer;

    .line 4
    .line 5
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/jFA$2;->ZYk:I

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/core/jFA;Ljava/lang/Integer;I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
