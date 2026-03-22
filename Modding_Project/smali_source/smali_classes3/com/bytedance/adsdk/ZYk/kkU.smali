.class public Lcom/bytedance/adsdk/ZYk/kkU;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/adsdk/ZYk/kkU$oJ;
    }
.end annotation


# instance fields
.field private final Pfn:Ljava/lang/String;

.field private final ZYk:I

.field private final ba:Ljava/lang/String;

.field private final cFZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/kkU$oJ;",
            ">;"
        }
    .end annotation
.end field

.field private dLZ:Landroid/graphics/Bitmap;

.field private final ex:Ljava/lang/String;

.field private final jFA:[[I

.field private final kkU:Lorg/json/JSONArray;

.field private final oJ:I

.field private final so:Ljava/lang/String;

.field private final tB:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;[[ILorg/json/JSONArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/kkU$oJ;",
            ">;",
            "Ljava/lang/String;",
            "[[I",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/bytedance/adsdk/ZYk/kkU;->oJ:I

    .line 5
    .line 6
    iput p2, p0, Lcom/bytedance/adsdk/ZYk/kkU;->ZYk:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytedance/adsdk/ZYk/kkU;->tB:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/bytedance/adsdk/ZYk/kkU;->ex:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/bytedance/adsdk/ZYk/kkU;->Pfn:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/bytedance/adsdk/ZYk/kkU;->ba:Ljava/lang/String;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/bytedance/adsdk/ZYk/kkU;->cFZ:Ljava/util/List;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/bytedance/adsdk/ZYk/kkU;->so:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/bytedance/adsdk/ZYk/kkU;->jFA:[[I

    .line 21
    .line 22
    iput-object p10, p0, Lcom/bytedance/adsdk/ZYk/kkU;->kkU:Lorg/json/JSONArray;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public Pfn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/kkU;->so:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ZYk()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ZYk/kkU;->ZYk:I

    .line 2
    .line 3
    return v0
.end method

.method public ba()[[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/kkU;->jFA:[[I

    .line 2
    .line 3
    return-object v0
.end method

.method public cFZ()Lorg/json/JSONArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/kkU;->kkU:Lorg/json/JSONArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public dLZ()Landroid/graphics/Bitmap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/kkU;->dLZ:Landroid/graphics/Bitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/kkU;->ba:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public jFA()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/kkU;->ex:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public kkU()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/kkU;->Pfn:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ZYk/kkU;->oJ:I

    return v0
.end method

.method public oJ(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/adsdk/ZYk/kkU;->dLZ:Landroid/graphics/Bitmap;

    return-void
.end method

.method public so()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/kkU;->tB:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tB()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/adsdk/ZYk/kkU$oJ;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ZYk/kkU;->cFZ:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
