.class public Lcom/bytedance/sdk/openadsdk/jFA/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/Pfn/eZI;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/Pfn/eZI<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final ZYk:Ljava/lang/String;

.field private final ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private final oJ:J

.field private final tB:Lcom/bytedance/sdk/component/Pfn/eZI;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/Pfn/eZI<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/component/Pfn/eZI;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/Pfn/eZI<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;->oJ:J

    .line 9
    .line 10
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;->tB:Lcom/bytedance/sdk/component/Pfn/eZI;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;->ZYk:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->ZYk()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    .line 22
    new-instance p2, Lcom/bytedance/sdk/openadsdk/jFA/ZYk$1;

    .line 23
    .line 24
    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/jFA/ZYk$1;-><init>(Lcom/bytedance/sdk/openadsdk/jFA/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/si/tB;->oJ(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/jFA/ZYk;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/jFA/ZYk;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;->ZYk:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public oJ(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 11
    .param p3    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;->tB:Lcom/bytedance/sdk/component/Pfn/eZI;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/Pfn/eZI;->oJ(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_2

    .line 14
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;->oJ:J

    sub-long v6, v0, v2

    .line 17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk$4;

    move-object v4, v0

    move-object v5, p0

    move v8, p1

    move-object v9, p3

    move-object v10, p2

    invoke-direct/range {v4 .. v10}, Lcom/bytedance/sdk/openadsdk/jFA/ZYk$4;-><init>(Lcom/bytedance/sdk/openadsdk/jFA/ZYk;JILjava/lang/Throwable;Ljava/lang/String;)V

    const-string p1, "load_image_error"

    const/4 p2, 0x0

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/awB/ZYk;)V

    .line 18
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->ZYk()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    new-instance p1, Lcom/bytedance/sdk/openadsdk/jFA/ZYk$5;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/jFA/ZYk$5;-><init>(Lcom/bytedance/sdk/openadsdk/jFA/ZYk;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    :cond_2
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/dLZ;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/Pfn/dLZ<",
            "TT;>;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;->tB:Lcom/bytedance/sdk/component/Pfn/eZI;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/Pfn/eZI;->oJ(Lcom/bytedance/sdk/component/Pfn/dLZ;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;->ex:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;->oJ:J

    sub-long v6, v0, v2

    .line 6
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/dLZ;->cFZ()I

    move-result v0

    div-int/lit16 v8, v0, 0x400

    .line 7
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/dLZ;->ba()Z

    move-result v9

    .line 8
    new-instance p1, Lcom/bytedance/sdk/openadsdk/jFA/ZYk$2;

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/jFA/ZYk$2;-><init>(Lcom/bytedance/sdk/openadsdk/jFA/ZYk;JII)V

    const-string v0, "load_image_success"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/awB/ZYk;)V

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->ZYk()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    new-instance p1, Lcom/bytedance/sdk/openadsdk/jFA/ZYk$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/jFA/ZYk$3;-><init>(Lcom/bytedance/sdk/openadsdk/jFA/ZYk;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/si/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    :cond_1
    return-void
.end method
