.class public Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ZYk/tB/ZYk/tB;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ$oJ;
    }
.end annotation


# instance fields
.field private final Pfn:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

.field private final ZYk:Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ$oJ;

.field private final ba:Z

.field private final ex:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

.field private final oJ:Ljava/lang/String;

.field private final tB:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ$oJ;Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->oJ:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->ZYk:Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ$oJ;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->tB:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->ex:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->Pfn:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 13
    .line 14
    iput-boolean p6, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->ba:Z

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public Pfn()Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->Pfn:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 2
    .line 3
    return-object v0
.end method

.method public ZYk()Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ$oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->ZYk:Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ$oJ;

    .line 2
    .line 3
    return-object v0
.end method

.method public ba()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->ba:Z

    .line 2
    .line 3
    return v0
.end method

.method public ex()Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->tB:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ(Lcom/bytedance/adsdk/ZYk/jFA;Lcom/bytedance/adsdk/ZYk/cFZ;Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;)Lcom/bytedance/adsdk/ZYk/oJ/oJ/tB;
    .locals 0

    .line 2
    new-instance p1, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;

    invoke-direct {p1, p3, p0}, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oq;-><init>(Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;)V

    return-object p1
.end method

.method public oJ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->oJ:Ljava/lang/String;

    return-object v0
.end method

.method public tB()Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->ex:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Trim Path: {start: "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->tB:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", end: "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->ex:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", offset: "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/tB/ZYk/RZ;->Pfn:Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, "}"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method
