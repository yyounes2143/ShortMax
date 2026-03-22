.class public Lcom/bytedance/adsdk/ZYk/tB/ZYk/BTZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ZYk/tB/ZYk/tB;


# instance fields
.field private final Pfn:Z

.field private final ZYk:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

.field private final ex:Lcom/bytedance/adsdk/ZYk/tB/oJ/BTZ;

.field private final oJ:Ljava/lang/String;

.field private final tB:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;Lcom/bytedance/adsdk/ZYk/tB/oJ/BTZ;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/BTZ;->oJ:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/BTZ;->ZYk:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/BTZ;->tB:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/BTZ;->ex:Lcom/bytedance/adsdk/ZYk/tB/oJ/BTZ;

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/BTZ;->Pfn:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public Pfn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/BTZ;->Pfn:Z

    .line 2
    .line 3
    return v0
.end method

.method public ZYk()Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/BTZ;->ZYk:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()Lcom/bytedance/adsdk/ZYk/tB/oJ/BTZ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/BTZ;->ex:Lcom/bytedance/adsdk/ZYk/tB/oJ/BTZ;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ(Lcom/bytedance/adsdk/ZYk/jFA;Lcom/bytedance/adsdk/ZYk/cFZ;Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;)Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;
    .locals 0

    .line 2
    new-instance p2, Lcom/bytedance/adsdk/ZYk/oJ/oJ/eZI;

    invoke-direct {p2, p1, p3, p0}, Lcom/bytedance/adsdk/ZYk/oJ/oJ/eZI;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;Lcom/bytedance/adsdk/ZYk/tB/ZYk/BTZ;)V

    return-object p2
.end method

.method public oJ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/BTZ;->oJ:Ljava/lang/String;

    return-object v0
.end method

.method public tB()Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/BTZ;->tB:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 2
    .line 3
    return-object v0
.end method
