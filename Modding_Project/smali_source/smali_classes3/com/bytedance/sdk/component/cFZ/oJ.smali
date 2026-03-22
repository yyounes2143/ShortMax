.class public Lcom/bytedance/sdk/component/cFZ/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/cFZ/oJ$oJ;
    }
.end annotation


# static fields
.field private static oJ:Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/Pfn;


# instance fields
.field private ZYk:Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/cFZ/oJ$oJ;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;-><init>()V

    iget v1, p1, Lcom/bytedance/sdk/component/cFZ/oJ$oJ;->oJ:I

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->oJ(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;

    move-result-object v0

    iget v1, p1, Lcom/bytedance/sdk/component/cFZ/oJ$oJ;->tB:I

    int-to-long v1, v1

    .line 5
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->tB(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;

    move-result-object v0

    iget v1, p1, Lcom/bytedance/sdk/component/cFZ/oJ$oJ;->ZYk:I

    int-to-long v1, v1

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ZYk(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;

    move-result-object v0

    .line 7
    iget-object v1, p1, Lcom/bytedance/sdk/component/cFZ/oJ$oJ;->ex:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 8
    iget-object v1, p1, Lcom/bytedance/sdk/component/cFZ/oJ$oJ;->ex:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/component/ZYk/oJ/so;

    .line 9
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/so;)Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/cFZ/oJ$oJ;->oJ(Lcom/bytedance/sdk/component/cFZ/oJ$oJ;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/component/cFZ/oJ$oJ;->oJ(Lcom/bytedance/sdk/component/cFZ/oJ$oJ;)Landroid/os/Bundle;

    .line 12
    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/cFZ/oJ$oJ;->ZYk(Lcom/bytedance/sdk/component/cFZ/oJ$oJ;)Ljava/util/Set;

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->oJ()Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/cFZ/oJ;->ZYk:Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/cFZ/oJ$oJ;Lcom/bytedance/sdk/component/cFZ/oJ$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/cFZ/oJ;-><init>(Lcom/bytedance/sdk/component/cFZ/oJ$oJ;)V

    return-void
.end method

.method public static Pfn()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/component/cFZ/oJ;->oJ:Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/Pfn;

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
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/Pfn;->oJ()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public static oJ()V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/component/cFZ/tB/tB$oJ;->oJ:Lcom/bytedance/sdk/component/cFZ/tB/tB$oJ;

    invoke-static {v0}, Lcom/bytedance/sdk/component/cFZ/tB/tB;->oJ(Lcom/bytedance/sdk/component/cFZ/tB/tB$oJ;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/Pfn;)V
    .locals 0

    .line 2
    sput-object p0, Lcom/bytedance/sdk/component/cFZ/oJ;->oJ:Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/Pfn;

    return-void
.end method


# virtual methods
.method public ZYk()Lcom/bytedance/sdk/component/cFZ/ZYk/ex;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/component/cFZ/oJ;->ZYk:Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/cFZ/ZYk/ex;-><init>(Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public ba()Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/oJ;->ZYk:Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()Lcom/bytedance/sdk/component/cFZ/ZYk/oJ;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/cFZ/ZYk/oJ;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/component/cFZ/oJ;->ZYk:Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/cFZ/ZYk/oJ;-><init>(Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public tB()Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/component/cFZ/oJ;->ZYk:Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;-><init>(Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method
