.class public Lcom/bytedance/sdk/openadsdk/core/RZ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ZYk:Z

.field private oJ:Ljava/lang/String;

.field private final tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/RZ;->tB:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public ZYk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/RZ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/RZ;->oJ:Ljava/lang/String;

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/RZ;->ZYk:Z

    return-void
.end method

.method public oJ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/RZ;->ZYk:Z

    return v0
.end method
