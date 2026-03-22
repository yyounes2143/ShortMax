.class public Lcom/bytedance/sdk/component/cFZ/tB/tB;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/cFZ/tB/tB$tB;,
        Lcom/bytedance/sdk/component/cFZ/tB/tB$ZYk;,
        Lcom/bytedance/sdk/component/cFZ/tB/tB$oJ;
    }
.end annotation


# instance fields
.field private ZYk:Lcom/bytedance/sdk/component/cFZ/tB/tB$ZYk;

.field private oJ:Lcom/bytedance/sdk/component/cFZ/tB/tB$oJ;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    sget-object v0, Lcom/bytedance/sdk/component/cFZ/tB/tB$oJ;->ex:Lcom/bytedance/sdk/component/cFZ/tB/tB$oJ;

    iput-object v0, p0, Lcom/bytedance/sdk/component/cFZ/tB/tB;->oJ:Lcom/bytedance/sdk/component/cFZ/tB/tB$oJ;

    .line 4
    new-instance v0, Lcom/bytedance/sdk/component/cFZ/tB/ZYk;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/cFZ/tB/ZYk;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/cFZ/tB/tB;->ZYk:Lcom/bytedance/sdk/component/cFZ/tB/tB$ZYk;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/cFZ/tB/tB$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cFZ/tB/tB;-><init>()V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/component/cFZ/tB/tB$oJ;)V
    .locals 2

    .line 1
    const-class v0, Lcom/bytedance/sdk/component/cFZ/tB/tB;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/cFZ/tB/tB$tB;->oJ()Lcom/bytedance/sdk/component/cFZ/tB/tB;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iput-object p0, v1, Lcom/bytedance/sdk/component/cFZ/tB/tB;->oJ:Lcom/bytedance/sdk/component/cFZ/tB/tB$oJ;

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0

    .line 14
    throw p0
.end method
