.class public Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk$oJ;
    }
.end annotation


# static fields
.field private static oJ:Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;


# instance fields
.field private ZYk:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->ZYk:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;-><init>()V

    return-void
.end method

.method public static ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;
    .locals 1

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk$oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public Pfn()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->Pfn()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    return-object v0
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->ZYk(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public ba()J
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->ba()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    .line 12
    return-wide v0
.end method

.method public cFZ()I
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->cFZ()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    return v0
.end method

.method public ex()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->ex()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    const-string v0, ""

    .line 13
    .line 14
    return-object v0
.end method

.method public oJ(Ljava/lang/String;[B)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ(Ljava/lang/String;[B)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 12
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public oJ()V
    .locals 1

    .line 6
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->tB()V

    :cond_0
    return-void
.end method

.method public oJ(Landroid/view/MotionEvent;)V
    .locals 1

    .line 13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public oJ(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public oJ(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->oJ(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public tB()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA/oJ;->ZYk()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
