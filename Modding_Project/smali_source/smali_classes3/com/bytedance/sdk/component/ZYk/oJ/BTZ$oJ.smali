.class public Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oJ"
.end annotation


# instance fields
.field Pfn:Ljava/lang/Object;

.field ZYk:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field ba:Lcom/bytedance/sdk/component/ZYk/oJ/PiB;

.field cFZ:I

.field ex:Ljava/lang/String;

.field oJ:Lcom/bytedance/sdk/component/ZYk/oJ/oJ;

.field so:Ljava/lang/String;

.field tB:Lcom/bytedance/sdk/component/ZYk/oJ/cFZ;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->ZYk:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;->ZYk()Lcom/bytedance/sdk/component/ZYk/oJ/cFZ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->tB:Lcom/bytedance/sdk/component/ZYk/oJ/cFZ;

    .line 5
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;->tB()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->ex:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;->ex()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->ZYk:Ljava/util/Map;

    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;->oJ()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->Pfn:Ljava/lang/Object;

    .line 8
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;->so()Lcom/bytedance/sdk/component/ZYk/oJ/PiB;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->ba:Lcom/bytedance/sdk/component/ZYk/oJ/PiB;

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;->Pfn()Lcom/bytedance/sdk/component/ZYk/oJ/oJ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->oJ:Lcom/bytedance/sdk/component/ZYk/oJ/oJ;

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;->cFZ()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->cFZ:I

    .line 11
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;->ba()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->so:Ljava/lang/String;

    return-void
.end method

.method private oJ(Ljava/lang/String;Lcom/bytedance/sdk/component/ZYk/oJ/PiB;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->ex:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->ba:Lcom/bytedance/sdk/component/ZYk/oJ/PiB;

    return-object p0
.end method


# virtual methods
.method public ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/cFZ;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/cFZ;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/cFZ;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    move-result-object p1

    return-object p1
.end method

.method public ZYk(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->ZYk:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->ZYk:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->ZYk:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public ZYk()Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;
    .locals 1

    .line 5
    new-instance v0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ$1;-><init>(Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;)V

    return-object v0
.end method

.method public oJ()Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;
    .locals 2

    .line 7
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/component/ZYk/oJ/PiB;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    move-result-object v0

    return-object v0
.end method

.method public oJ(I)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->cFZ:I

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/component/ZYk/oJ/PiB;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;
    .locals 1

    .line 10
    const-string v0, "POST"

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/component/ZYk/oJ/PiB;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    move-result-object p1

    return-object p1
.end method

.method public oJ(Lcom/bytedance/sdk/component/ZYk/oJ/cFZ;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->tB:Lcom/bytedance/sdk/component/ZYk/oJ/cFZ;

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/component/ZYk/oJ/oJ;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->oJ:Lcom/bytedance/sdk/component/ZYk/oJ/oJ;

    return-object p0
.end method

.method public oJ(Ljava/lang/Object;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->Pfn:Ljava/lang/Object;

    return-object p0
.end method

.method public oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->so:Ljava/lang/String;

    return-object p0
.end method

.method public oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;
    .locals 0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->ZYk(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    move-result-object p1

    return-object p1
.end method
