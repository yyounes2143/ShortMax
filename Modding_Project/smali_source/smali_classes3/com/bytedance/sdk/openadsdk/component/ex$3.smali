.class Lcom/bytedance/sdk/openadsdk/component/ex$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/ex;->show(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/ex;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/ex;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/ex$3;->oJ:Lcom/bytedance/sdk/openadsdk/component/ex;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ex$3;->oJ:Lcom/bytedance/sdk/openadsdk/component/ex;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/ex;->tB(Lcom/bytedance/sdk/openadsdk/component/ex;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ex$3;->oJ:Lcom/bytedance/sdk/openadsdk/component/ex;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/ex;->ex(Lcom/bytedance/sdk/openadsdk/component/ex;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ex$3;->oJ:Lcom/bytedance/sdk/openadsdk/component/ex;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/ex;->ex(Lcom/bytedance/sdk/openadsdk/component/ex;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cFZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ex$3;->oJ:Lcom/bytedance/sdk/openadsdk/component/ex;

    .line 30
    .line 31
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/ex;->ex(Lcom/bytedance/sdk/openadsdk/component/ex;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cMS()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/ex$3;->oJ:Lcom/bytedance/sdk/openadsdk/component/ex;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/ex;->Pfn(Lcom/bytedance/sdk/openadsdk/component/ex;)Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/ba;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ex$3;->oJ:Lcom/bytedance/sdk/openadsdk/component/ex;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/ex;->tB(Lcom/bytedance/sdk/openadsdk/component/ex;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/ba;->ba(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/ex$3;->oJ:Lcom/bytedance/sdk/openadsdk/component/ex;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/ex;->tB(Lcom/bytedance/sdk/openadsdk/component/ex;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/ba;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    .line 77
    :catchall_0
    :cond_0
    return-void
.end method
