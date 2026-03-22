.class public abstract Lcom/bytedance/adsdk/ugeno/ex/ex/tB;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ugeno/ex/ex/tB$oJ;
    }
.end annotation


# instance fields
.field protected Pfn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

.field protected ba:Ljava/lang/String;

.field protected cFZ:Ljava/lang/String;

.field protected ex:Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;

.field protected jFA:Ljava/lang/String;

.field protected kkU:Landroid/content/Context;

.field protected oJ:Lcom/bytedance/adsdk/ugeno/ex/dLZ;

.field protected so:Ljava/lang/String;

.field protected tB:Lcom/bytedance/adsdk/ugeno/ex/ba;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->kkU:Landroid/content/Context;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public Pfn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->so:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ba:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/ex/ba;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->tB:Lcom/bytedance/adsdk/ugeno/ex/ba;

    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/ex/dLZ;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ:Lcom/bytedance/adsdk/ugeno/ex/dLZ;

    return-void
.end method

.method public varargs abstract oJ([Ljava/lang/Object;)Z
.end method

.method public tB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->tB:Lcom/bytedance/adsdk/ugeno/ex/ba;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ex/ba;->oJ()Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ex:Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->tB:Lcom/bytedance/adsdk/ugeno/ex/ba;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ex/ba;->oJ()Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ex:Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;

    .line 19
    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;->tB()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn:Ljava/util/Map;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ex:Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;->ZYk()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ba:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ex:Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;->oJ()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->cFZ:Ljava/lang/String;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ex:Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;->ex()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->so:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ex:Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;->Pfn()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->jFA:Ljava/lang/String;

    .line 60
    .line 61
    return-void
.end method
