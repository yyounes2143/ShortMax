.class public Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ$oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oJ"
.end annotation


# instance fields
.field private final ZYk:J

.field private final oJ:Ljava/lang/String;

.field private tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$tB;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$tB;->oJ:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$tB;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ$oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$tB;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ$oJ;->oJ:Ljava/lang/String;

    .line 9
    .line 10
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ$oJ;->ZYk:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ;
    .locals 7

    .line 1
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ$oJ;->ZYk:J

    .line 4
    .line 5
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ$oJ;->oJ:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ$oJ;->tB:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$tB;

    .line 8
    .line 9
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ;-><init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$tB;Ljava/lang/Boolean;)V

    .line 13
    .line 14
    .line 15
    return-object v6
.end method
