.class public Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/ugeno/core/cFZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oJ"
.end annotation


# instance fields
.field private Pfn:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;",
            ">;"
        }
    .end annotation
.end field

.field private ZYk:Ljava/lang/String;

.field private ba:Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;

.field private cFZ:Ljava/lang/String;

.field private ex:Lorg/json/JSONObject;

.field private jFA:Z

.field private kkU:Z

.field private oJ:Ljava/lang/String;

.field private so:Ljava/lang/String;

.field private tB:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->oJ:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic ZYk(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->ex:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic ex(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->so:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic oJ(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;)Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->ba:Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;

    return-object p1
.end method

.method static synthetic oJ(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->ZYk:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic oJ(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->tB:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic tB(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->cFZ:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic tB(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;)Lorg/json/JSONObject;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->tB:Lorg/json/JSONObject;

    return-object p0
.end method


# virtual methods
.method public Pfn()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->Pfn:Ljava/util/LinkedList;

    .line 2
    .line 3
    return-object v0
.end method

.method public ZYk()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->cFZ:Ljava/lang/String;

    return-object v0
.end method

.method public ZYk(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->Pfn:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->Pfn:Ljava/util/LinkedList;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->Pfn:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public ZYk(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->kkU:Z

    return-void
.end method

.method public ba()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->ex:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()Lorg/json/JSONObject;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->tB:Lorg/json/JSONObject;

    return-object v0
.end method

.method public oJ()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->oJ:Ljava/lang/String;

    return-object v0
.end method

.method public oJ(ILcom/bytedance/adsdk/ugeno/core/cFZ$oJ;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->Pfn:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 11
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->Pfn:Ljava/util/LinkedList;

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->Pfn:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->Pfn:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->Pfn:Ljava/util/LinkedList;

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->Pfn:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->ZYk:Ljava/lang/String;

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->jFA:Z

    return-void
.end method

.method public tB()Ljava/lang/String;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->ZYk:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "UGNode{id=\'"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->oJ:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x27

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ", name=\'"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/core/cFZ$oJ;->ZYk:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const/16 v1, 0x7d

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method
