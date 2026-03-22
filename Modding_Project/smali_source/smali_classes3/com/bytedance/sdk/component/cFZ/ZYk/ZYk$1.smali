.class Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/ZYk/oJ/tB;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/component/cFZ/oJ/oJ;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;

.field final synthetic oJ:Lcom/bytedance/sdk/component/cFZ/oJ/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;Lcom/bytedance/sdk/component/cFZ/oJ/oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk$1;->ZYk:Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk$1;->oJ:Lcom/bytedance/sdk/component/cFZ/oJ/oJ;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public oJ(Lcom/bytedance/sdk/component/ZYk/oJ/ZYk;Lcom/bytedance/sdk/component/ZYk/oJ/WcQ;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk$1;->oJ:Lcom/bytedance/sdk/component/cFZ/oJ/oJ;

    if-eqz p1, :cond_2

    .line 4
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ZYk/oJ/WcQ;->cFZ()Lcom/bytedance/sdk/component/ZYk/oJ/ba;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/ba;->oJ()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 7
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ZYk/oJ/ba;->oJ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ZYk/oJ/ba;->ZYk(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ZYk/oJ/WcQ;->ba()Lcom/bytedance/sdk/component/ZYk/oJ/awB;

    move-result-object p1

    if-nez p1, :cond_1

    .line 9
    const-string p1, ""

    :goto_1
    move-object v5, p1

    goto :goto_2

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/awB;->ZYk()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 11
    :goto_2
    new-instance p1, Lcom/bytedance/sdk/component/cFZ/ZYk;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ZYk/oJ/WcQ;->ex()Z

    move-result v1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ZYk/oJ/WcQ;->tB()I

    move-result v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ZYk/oJ/WcQ;->Pfn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ZYk/oJ/WcQ;->ZYk()J

    move-result-wide v6

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ZYk/oJ/WcQ;->oJ()J

    move-result-wide v8

    move-object v0, p1

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/sdk/component/cFZ/ZYk;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    .line 12
    iget-object p2, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk$1;->oJ:Lcom/bytedance/sdk/component/cFZ/oJ/oJ;

    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk$1;->ZYk:Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;

    invoke-virtual {p2, v0, p1}, Lcom/bytedance/sdk/component/cFZ/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Lcom/bytedance/sdk/component/cFZ/ZYk;)V

    :cond_2
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/ZYk/oJ/ZYk;Ljava/io/IOException;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk$1;->oJ:Lcom/bytedance/sdk/component/cFZ/oJ/oJ;

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk$1;->ZYk:Lcom/bytedance/sdk/component/cFZ/ZYk/ZYk;

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/component/cFZ/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Ljava/io/IOException;)V

    :cond_0
    return-void
.end method
