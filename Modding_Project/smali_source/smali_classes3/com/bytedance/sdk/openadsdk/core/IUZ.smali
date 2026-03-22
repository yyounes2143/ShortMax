.class public Lcom/bytedance/sdk/openadsdk/core/IUZ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/IUZ$oJ;
    }
.end annotation


# static fields
.field private static oJ:Lcom/bytedance/sdk/openadsdk/core/IUZ;


# instance fields
.field private Pfn:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

.field private ZYk:I

.field private ba:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

.field private final cFZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/IUZ$oJ;",
            ">;"
        }
    .end annotation
.end field

.field private ex:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

.field private tB:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/openadsdk/core/model/oJ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->ZYk:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->tB:Ljava/util/Map;

    .line 13
    .line 14
    new-instance v0, Ljava/util/HashMap;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->cFZ:Ljava/util/Map;

    .line 20
    .line 21
    return-void
.end method

.method private static ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->iPr()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static oJ(Landroid/content/Intent;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    .line 15
    const-string v1, "meta_index"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public static oJ()Lcom/bytedance/sdk/openadsdk/core/IUZ;
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/IUZ;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/IUZ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/IUZ;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/IUZ;

    .line 3
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/IUZ;

    return-object v0
.end method


# virtual methods
.method public Pfn()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->ex:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->Pfn:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->ba:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    .line 7
    .line 8
    return-void
.end method

.method public ZYk(I)Lcom/bytedance/sdk/openadsdk/core/model/oJ;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->tB:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    return-object p1
.end method

.method public ZYk()Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->ex:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    return-object v0
.end method

.method public ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->cFZ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/IUZ$oJ;

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/IUZ$oJ;->oJ()V

    :cond_1
    return-void
.end method

.method public ex()Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->ba:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    return-object v0
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I
    .locals 1

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;-><init>()V

    .line 7
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 8
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)I

    move-result p1

    return p1
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)I
    .locals 2

    .line 12
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->ZYk:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->ZYk:I

    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->tB:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->ZYk:I

    return p1
.end method

.method public oJ(I)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->tB:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->awB()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/core/IUZ$oJ;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->cFZ:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->ex:Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->ba:Lcom/bytedance/sdk/openadsdk/oJ/ex/ZYk;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->Pfn:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    return-void
.end method

.method public tB()Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->Pfn:Lcom/bytedance/sdk/openadsdk/oJ/tB/ZYk;

    return-object v0
.end method

.method public tB(I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->tB:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/IUZ;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/IUZ;->cFZ:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
