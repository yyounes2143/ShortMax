.class Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->ZYk(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:J

.field final synthetic ex:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

.field final synthetic oJ:J

.field final synthetic tB:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;JJI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$5;->ex:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$5;->oJ:J

    .line 4
    .line 5
    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$5;->ZYk:J

    .line 6
    .line 7
    iput p6, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$5;->tB:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$5;->ex:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->edj(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$5;->oJ:J

    .line 8
    .line 9
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$5;->ZYk:J

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(JJ)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$5;->ex:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->eW(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$5;->tB:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(I)V

    .line 23
    .line 24
    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$5;->ex:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->dZS(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$5;->ex:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->Wd(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$5;->oJ:J

    .line 40
    .line 41
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$5;->ZYk:J

    .line 42
    .line 43
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;->oJ(JJ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 50
    :goto_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ$5;->ex:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;

    .line 51
    .line 52
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;->TNk(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/oJ;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "onProgressUpdate error: "

    .line 57
    .line 58
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
