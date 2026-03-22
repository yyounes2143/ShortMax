.class public Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ$oJ;
    }
.end annotation


# static fields
.field public static oJ:Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;


# instance fields
.field private ZYk:Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ$oJ;

.field private volatile ex:Z

.field private final tB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ$oJ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;->oJ:Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;->tB:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method private ZYk()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ$oJ;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ$oJ;->oJ()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x3

    return v0
.end method

.method private tB()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ$oJ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ$oJ;->ZYk()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/16 v0, 0x1e

    .line 11
    .line 12
    return v0
.end method


# virtual methods
.method public ZYk(Ljava/lang/String;)I
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;->tB:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ$oJ;

    if-nez p1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;->tB()I

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ$oJ;->ZYk()I

    move-result p1

    return p1
.end method

.method public oJ(Ljava/lang/String;)I
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;->oJ()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x4

    return p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;->tB:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ$oJ;

    if-nez p1, :cond_1

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;->ZYk()I

    move-result p1

    return p1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ$oJ;->oJ()I

    move-result p1

    return p1
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ$oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;->ZYk:Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ$oJ;

    return-void
.end method

.method public oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ$oJ;)V
    .locals 1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;->tB:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;->ex:Z

    return-void
.end method

.method public oJ()Z
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;->ex:Z

    return v0
.end method
