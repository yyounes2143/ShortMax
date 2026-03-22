.class public Lcom/bytedance/sdk/openadsdk/core/model/UN;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ZYk:I

.field private ex:Ljava/lang/String;

.field private oJ:I

.field private tB:I


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
.method public ZYk()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/UN;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public ZYk(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/UN;->ZYk:I

    return-void
.end method

.method public oJ()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/model/UN;->tB:I

    return v0
.end method

.method public oJ(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/UN;->oJ:I

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/UN;->ex:Ljava/lang/String;

    return-void
.end method

.method public tB(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/model/UN;->tB:I

    .line 2
    .line 3
    return-void
.end method
