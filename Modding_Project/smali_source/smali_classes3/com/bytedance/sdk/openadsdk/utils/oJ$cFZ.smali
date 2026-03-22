.class public Lcom/bytedance/sdk/openadsdk/utils/oJ$cFZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/utils/oJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "cFZ"
.end annotation


# instance fields
.field private ZYk:J

.field private ex:Z

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/utils/oJ;

.field private tB:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/oJ;JJZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ$cFZ;->oJ:Lcom/bytedance/sdk/openadsdk/utils/oJ;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ$cFZ;->ZYk:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ$cFZ;->tB:J

    .line 9
    .line 10
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ$cFZ;->ex:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ$cFZ;->ex:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ()Lcom/bytedance/sdk/openadsdk/awB/tB;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ$cFZ;->ZYk:J

    .line 10
    .line 11
    const-wide/16 v3, 0x3e8

    .line 12
    .line 13
    div-long/2addr v1, v3

    .line 14
    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ$cFZ;->tB:J

    .line 15
    .line 16
    div-long/2addr v5, v3

    .line 17
    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(JJ)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/oJ$cFZ;->oJ:Lcom/bytedance/sdk/openadsdk/utils/oJ;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/utils/oJ;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
