.class final Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$1;
.super Lcom/bytedance/sdk/component/cFZ/oJ/oJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field final synthetic ex:Ljava/lang/String;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;

.field final synthetic tB:J


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;Lcom/bytedance/sdk/openadsdk/core/model/cY;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$1;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$1;->tB:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$1;->ex:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cFZ/oJ/oJ;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Lcom/bytedance/sdk/component/cFZ/ZYk;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ba()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->Pfn()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->Pfn()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$1;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->Pfn()Ljava/io/File;

    move-result-object p2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$1;->tB:J

    sub-long/2addr v1, v3

    invoke-static {p1, p2, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;J)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$1;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->tB()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$1;->tB:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {p1, p2, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ZJ)V

    .line 4
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex;->oJ()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$1;->ex:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Ljava/io/IOException;)V
    .locals 4

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$1;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$1;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Pfn$oJ;->tB()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$1;->tB:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    invoke-static {p1, p2, v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ZJ)V

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex;->oJ()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$1;->ex:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
