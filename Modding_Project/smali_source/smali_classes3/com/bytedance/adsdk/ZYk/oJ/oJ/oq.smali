.class public Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ$oJ;
.implements Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;


# instance fields
.field private final Pfn:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final ZYk:Z

.field private final ba:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final cFZ:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final ex:Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ$oJ;

.field private final oJ:Ljava/lang/String;

.field private final tB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ$oJ;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;->tB:Ljava/util/List;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->oJ()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;->oJ:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->ba()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;->ZYk:Z

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->ZYk()Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ$oJ;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;->ex:Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ$oJ;

    .line 28
    .line 29
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->ex()Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;->oJ()Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;->Pfn:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->tB()Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;->oJ()Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;->ba:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->Pfn()Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2}, Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;->oJ()Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iput-object p2, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;->cFZ:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;->oJ(Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;->oJ(Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;->oJ(Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->oJ(Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ$oJ;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p0}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->oJ(Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ$oJ;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p0}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->oJ(Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ$oJ;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method


# virtual methods
.method public Pfn()Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;->cFZ:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method ZYk()Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ$oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;->ex:Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ$oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method public ba()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;->ZYk:Z

    .line 2
    .line 3
    return v0
.end method

.method public ex()Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;->ba:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ()V
    .locals 2

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;->tB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;->tB:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ$oJ;

    invoke-interface {v1}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ$oJ;->oJ()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method oJ(Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ$oJ;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;->tB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public oJ(Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public tB()Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;->Pfn:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;

    .line 2
    .line 3
    return-object v0
.end method
