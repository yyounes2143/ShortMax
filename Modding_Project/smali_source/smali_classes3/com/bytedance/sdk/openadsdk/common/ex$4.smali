.class Lcom/bytedance/sdk/openadsdk/common/ex$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/common/ex;->oJ(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/common/ex;

.field final synthetic oJ:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/common/ex;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/ex$4;->ZYk:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/common/ex$4;->oJ:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ex$4;->ZYk:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/ex;->tB(Lcom/bytedance/sdk/openadsdk/common/ex;)Lcom/bytedance/sdk/openadsdk/common/tB;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ex$4;->ZYk:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/ex;->ex(Lcom/bytedance/sdk/openadsdk/common/ex;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ex$4;->ZYk:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/ex;->tB(Lcom/bytedance/sdk/openadsdk/common/ex;)Lcom/bytedance/sdk/openadsdk/common/tB;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ex$4;->ZYk:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/ex;->Pfn(Lcom/bytedance/sdk/openadsdk/common/ex;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ex$4;->ZYk:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/ex;->ba(Lcom/bytedance/sdk/openadsdk/common/ex;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/common/ex$4;->oJ:I

    .line 38
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ex$4;->ZYk:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/ex;->cFZ(Lcom/bytedance/sdk/openadsdk/common/ex;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ex$4;->ZYk:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/ex;->so(Lcom/bytedance/sdk/openadsdk/common/ex;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v7

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ex$4;->ZYk:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/ex;->jFA(Lcom/bytedance/sdk/openadsdk/common/ex;)Z

    .line 54
    .line 55
    .line 56
    move-result v9

    .line 57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ex$4;->ZYk:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 58
    .line 59
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/ex;->kkU(Lcom/bytedance/sdk/openadsdk/common/ex;)I

    .line 60
    .line 61
    .line 62
    move-result v10

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ex$4;->ZYk:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/ex;->dLZ(Lcom/bytedance/sdk/openadsdk/common/ex;)J

    .line 66
    .line 67
    .line 68
    move-result-wide v11

    .line 69
    invoke-virtual/range {v2 .. v12}, Lcom/bytedance/sdk/openadsdk/common/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILjava/lang/String;JZIJ)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/ex$4;->ZYk:Lcom/bytedance/sdk/openadsdk/common/ex;

    .line 73
    .line 74
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/common/ex;->oJ(Lcom/bytedance/sdk/openadsdk/common/ex;I)I

    .line 75
    .line 76
    .line 77
    :cond_0
    return-void
.end method
