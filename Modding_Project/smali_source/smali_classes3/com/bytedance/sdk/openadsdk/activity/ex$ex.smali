.class Lcom/bytedance/sdk/openadsdk/activity/ex$ex;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/ex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ex"
.end annotation


# instance fields
.field public ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field public oJ:I

.field public tB:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;->oJ:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;->tB:Ljava/lang/String;

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ex;->oJ:I

    return-void
.end method
