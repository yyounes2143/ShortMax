.class Lcom/bytedance/sdk/openadsdk/ex/PiB$ZYk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/ex/PiB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZYk"
.end annotation


# instance fields
.field public ZYk:I

.field public oJ:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x12c

    .line 5
    .line 6
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/ex/PiB$ZYk;->oJ:I

    .line 7
    .line 8
    const/16 v0, 0x1770

    .line 9
    .line 10
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/ex/PiB$ZYk;->ZYk:I

    .line 11
    .line 12
    return-void
.end method

.method public static oJ()Lcom/bytedance/sdk/openadsdk/ex/PiB$ZYk;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/PiB$ZYk;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/PiB$ZYk;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
