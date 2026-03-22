.class public Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ex;
.super Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static tB(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (_id INTEGER PRIMARY KEY AUTOINCREMENT,id TEXT UNIQUE,value TEXT ,gen_time TEXT , retry INTEGER default 0 , encrypt INTEGER default 0)"

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public ZYk()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/so;->cFZ()Lcom/bytedance/sdk/component/ba/oJ/so;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ba/oJ/so;->ex()Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/oJ/Pfn;->oJ()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return-object v0
.end method

.method protected ba()J
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/cFZ/oJ;->ZYk()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    return-wide v0
.end method

.method public ex()B
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public tB()B
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
