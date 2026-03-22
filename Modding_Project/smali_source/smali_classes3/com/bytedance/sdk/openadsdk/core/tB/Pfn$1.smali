.class Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/tB/ba$ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ(Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->ZYk(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    :catchall_0
    return-void
.end method
