.class public Lcom/bytedance/sdk/component/ba/oJ/ba/ex;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Pfn:I

.field private final ZYk:Ljava/lang/String;

.field private final ba:Ljava/lang/String;

.field private cFZ:Ljava/lang/String;

.field private dLZ:Z

.field private ex:I

.field private jFA:I

.field private kkU:Ljava/lang/String;

.field private final oJ:Ljava/lang/String;

.field private so:Ljava/lang/String;

.field private final tB:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->ex:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->jFA:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->kkU:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->oJ:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p2, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->ZYk:Ljava/lang/String;

    .line 16
    .line 17
    iput-boolean p3, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->tB:Z

    .line 18
    .line 19
    iput p4, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->Pfn:I

    .line 20
    .line 21
    iput-object p5, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->ba:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public Pfn()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->Pfn:I

    .line 2
    .line 3
    return v0
.end method

.method public ZYk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->ZYk:Ljava/lang/String;

    return-object v0
.end method

.method public ZYk(I)V
    .locals 1

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->jFA:I

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->cFZ:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget p1, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->jFA:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->cFZ:Ljava/lang/String;

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->cFZ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->jFA:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->cFZ:Ljava/lang/String;

    return-void
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->so:Ljava/lang/String;

    return-void
.end method

.method public ba()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->ba:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public cFZ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->cFZ:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public dLZ()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->ex:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    return v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return v0
.end method

.method public ex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->ex:I

    .line 2
    .line 3
    return v0
.end method

.method public jFA()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->so:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public kkU()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->dLZ:Z

    .line 2
    .line 3
    return v0
.end method

.method public oJ(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Runnable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ba/oJ;->oJ()Lcom/bytedance/sdk/component/ba/oJ/ba/ZYk;

    move-result-object v0

    invoke-interface {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/ba/oJ/ba/ZYk;->oJ(Lcom/bytedance/sdk/component/ba/oJ/ba/ex;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Runnable;

    move-result-object p1

    return-object p1
.end method

.method public oJ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->oJ:Ljava/lang/String;

    return-object v0
.end method

.method public oJ(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->ex:I

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->cFZ:Ljava/lang/String;

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->dLZ:Z

    return-void
.end method

.method public so()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->jFA:I

    .line 2
    .line 3
    return v0
.end method

.method public tB(Ljava/lang/String;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->kkU:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->so:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->kkU:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->so:Ljava/lang/String;

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->so:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->kkU:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->so:Ljava/lang/String;

    return-void
.end method

.method public tB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/ba/oJ/ba/ex;->tB:Z

    return v0
.end method
