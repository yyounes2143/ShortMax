.class public final Lcom/bytedance/sdk/openadsdk/component/so/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ZYk:J

.field private ex:J

.field private oJ:F

.field private tB:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public ZYk()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->oJ:F

    return v0
.end method

.method public ZYk(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->ZYk:J

    return-void
.end method

.method public oJ()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->ex:J

    return-wide v0
.end method

.method public oJ(F)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setTotalTime() called with: time = ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->oJ:F

    return-void
.end method

.method public oJ(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->ex:J

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->tB:Z

    return-void
.end method

.method public tB()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/so/oJ;->ZYk:J

    .line 2
    .line 3
    return-wide v0
.end method
