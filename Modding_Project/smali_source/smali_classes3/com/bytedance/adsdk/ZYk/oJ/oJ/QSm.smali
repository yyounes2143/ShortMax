.class public Lcom/bytedance/adsdk/ZYk/oJ/oJ/QSm;
.super Lcom/bytedance/adsdk/ZYk/oJ/oJ/oJ;
.source "SourceFile"


# instance fields
.field private final Pfn:Ljava/lang/String;

.field private final ba:Z

.field private final cFZ:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final ex:Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;

.field private so:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ<",
            "Landroid/graphics/ColorFilter;",
            "Landroid/graphics/ColorFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bytedance/adsdk/ZYk/jFA;Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;Lcom/bytedance/adsdk/ZYk/tB/ZYk/Ry;)V
    .locals 11

    .line 1
    invoke-virtual {p3}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/Ry;->cFZ()Lcom/bytedance/adsdk/ZYk/tB/ZYk/Ry$oJ;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/Ry$oJ;->oJ()Landroid/graphics/Paint$Cap;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-virtual {p3}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/Ry;->so()Lcom/bytedance/adsdk/ZYk/tB/ZYk/Ry$ZYk;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/Ry$ZYk;->oJ()Landroid/graphics/Paint$Join;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {p3}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/Ry;->jFA()F

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    invoke-virtual {p3}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/Ry;->tB()Lcom/bytedance/adsdk/ZYk/tB/oJ/ex;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {p3}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/Ry;->ex()Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 26
    .line 27
    .line 28
    move-result-object v8

    .line 29
    invoke-virtual {p3}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/Ry;->Pfn()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    invoke-virtual {p3}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/Ry;->ba()Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    move-object v1, p0

    .line 38
    move-object v2, p1

    .line 39
    move-object v3, p2

    .line 40
    invoke-direct/range {v1 .. v10}, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oJ;-><init>(Lcom/bytedance/adsdk/ZYk/jFA;Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLcom/bytedance/adsdk/ZYk/tB/oJ/ex;Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;Ljava/util/List;Lcom/bytedance/adsdk/ZYk/tB/oJ/ZYk;)V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/QSm;->ex:Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;

    .line 44
    .line 45
    invoke-virtual {p3}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/Ry;->oJ()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/QSm;->Pfn:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p3}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/Ry;->kkU()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/QSm;->ba:Z

    .line 56
    .line 57
    invoke-virtual {p3}, Lcom/bytedance/adsdk/ZYk/tB/ZYk/Ry;->ZYk()Lcom/bytedance/adsdk/ZYk/tB/oJ/oJ;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ZYk/tB/oJ/oJ;->oJ()Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/QSm;->cFZ:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;

    .line 66
    .line 67
    invoke-virtual {p1, p0}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->oJ(Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ$oJ;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/ZYk/tB/tB/oJ;->oJ(Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method public oJ(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/QSm;->ba:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oJ;->ZYk:Landroid/graphics/Paint;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/QSm;->cFZ:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;

    .line 9
    .line 10
    check-cast v1, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/ZYk;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/ZYk;->jFA()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/QSm;->so:Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oJ;->ZYk:Landroid/graphics/Paint;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ZYk/oJ/ZYk/oJ;->cFZ()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroid/graphics/ColorFilter;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/adsdk/ZYk/oJ/oJ/oJ;->oJ(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    .line 35
    .line 36
    .line 37
    return-void
.end method
