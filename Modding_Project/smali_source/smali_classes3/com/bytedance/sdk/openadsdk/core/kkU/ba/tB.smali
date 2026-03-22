.class public Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/core/awB;
.implements Lcom/bytedance/adsdk/ugeno/core/eZI;
.implements Lcom/bytedance/sdk/component/adexpress/ZYk/ex;
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/ex;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/adsdk/ugeno/core/awB;",
        "Lcom/bytedance/adsdk/ugeno/core/eZI;",
        "Lcom/bytedance/sdk/component/adexpress/ZYk/ex<",
        "Landroid/view/View;",
        ">;",
        "Lcom/bytedance/sdk/component/adexpress/dynamic/ex;"
    }
.end annotation


# static fields
.field private static IUZ:J = 0x0L

.field private static Jc:F = 0.0f

.field private static Ln:F = 0.0f

.field private static LpP:F = 0.0f

.field private static nke:F = 0.0f

.field protected static oq:I = 0x18


# instance fields
.field protected BTZ:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

.field private final HL:Z

.field private HyG:Z

.field protected Id:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected Pfn:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field protected PiB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

.field protected QSm:Z

.field protected RZ:J

.field protected Ry:J

.field private UN:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ex;

.field protected WcQ:F

.field private XAo:Ljava/lang/String;

.field protected Xe:Lorg/json/JSONObject;

.field protected ZYk:Landroid/content/Context;

.field protected awB:F

.field protected ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

.field protected cFZ:Landroid/widget/FrameLayout;

.field protected cY:Ljava/lang/String;

.field protected dLZ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected eZI:F

.field protected ex:Lorg/json/JSONObject;

.field protected jFA:Lcom/bytedance/sdk/openadsdk/core/so/awB;

.field public jr:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/ZYk/tB$oJ;",
            ">;"
        }
    .end annotation
.end field

.field protected kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;

.field private mu:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

.field protected oJ:Lcom/bytedance/adsdk/ugeno/core/BTZ;

.field private final ofl:Lcom/bytedance/sdk/component/so/so;

.field protected si:F

.field protected so:Lcom/bytedance/sdk/component/adexpress/ZYk/so;

.field protected tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/adsdk/ugeno/ZYk/tB<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private tb:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

.field private final wd:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ZYk()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sput v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oq:I

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;ZLcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;Landroid/view/ViewGroup;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->QSm:Z

    .line 6
    .line 7
    new-instance v0, Landroid/util/SparseArray;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->jr:Landroid/util/SparseArray;

    .line 13
    .line 14
    const-string v0, ""

    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->XAo:Ljava/lang/String;

    .line 17
    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB$1;

    .line 19
    .line 20
    const-string v1, "ugen_render_template"

    .line 21
    .line 22
    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ofl:Lcom/bytedance/sdk/component/so/so;

    .line 26
    .line 27
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB$2;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->wd:Ljava/lang/Runnable;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->HyG:Z

    .line 36
    .line 37
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ZYk:Landroid/content/Context;

    .line 38
    .line 39
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->HL:Z

    .line 40
    .line 41
    new-instance p3, Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 42
    .line 43
    invoke-direct {p3, p1}, Lcom/bytedance/adsdk/ugeno/core/BTZ;-><init>(Landroid/content/Context;)V

    .line 44
    .line 45
    .line 46
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 47
    .line 48
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 49
    .line 50
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    .line 51
    .line 52
    new-instance p2, Landroid/widget/FrameLayout;

    .line 53
    .line 54
    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->cFZ:Landroid/widget/FrameLayout;

    .line 58
    .line 59
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->dLZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    .line 66
    instance-of p1, p5, Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 67
    .line 68
    if-eqz p1, :cond_0

    .line 69
    .line 70
    check-cast p5, Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 71
    .line 72
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->mu:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    .line 73
    .line 74
    :cond_0
    invoke-virtual {p4}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->ex()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->cY:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ZYk()Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Xe:Lorg/json/JSONObject;

    .line 85
    .line 86
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ex;

    .line 87
    .line 88
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ZYk:Landroid/content/Context;

    .line 89
    .line 90
    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 91
    .line 92
    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->cY:Ljava/lang/String;

    .line 93
    .line 94
    invoke-direct {p2, p3, p4, p5, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ex;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 95
    .line 96
    .line 97
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->UN:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ex;

    .line 98
    .line 99
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->wd:Ljava/lang/Runnable;

    return-object p0
.end method

.method private ZYk(Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;)V
    .locals 7

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;->Jc()Lcom/bytedance/adsdk/ugeno/core/Ry;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Ry;->oJ()V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ex:Lorg/json/JSONObject;

    const/16 v1, 0x85

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "ugen template is null real reason is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->XAo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;->oJ(ILjava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Xe:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 6
    const-string v0, "ugen data is null"

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;->oJ(ILjava/lang/String;)V

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ex()I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ()Z

    move-result v1

    const/16 v2, 0x8a

    if-eqz v1, :cond_3

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ZYk()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    .line 10
    const-string v0, "unknow widget"

    invoke-interface {p1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;->oJ(ILjava/lang/String;)V

    return-void

    .line 11
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "unknow widget;"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;->oJ(ILjava/lang/String;)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    .line 12
    const-string v1, "ugen render fail"

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;->oJ(ILjava/lang/String;)V

    return-void

    .line 13
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    if-eqz v0, :cond_f

    .line 14
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ZYk;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ZYk;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;

    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->oJ(Z)V

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->oJ(I)V

    .line 17
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->HL:Z

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->setSoundMute(Z)V

    .line 18
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->kkU()V

    .line 19
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->so()Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->BTZ:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    if-eqz v0, :cond_5

    .line 20
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/ex/ZYk;

    if-eqz v1, :cond_5

    .line 21
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ZYk;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/ex/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/ex/ZYk;->ex()Lcom/bytedance/adsdk/ugeno/jFA/ZYk/oJ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ZYk;->oJ(Landroid/widget/FrameLayout;)V

    .line 22
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->jFA()Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->UN:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ex;

    if-eqz v1, :cond_6

    .line 24
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ex;->oJ()V

    :cond_6
    if-eqz v0, :cond_7

    .line 25
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 26
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Id:Ljava/lang/ref/WeakReference;

    .line 27
    :cond_7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba()Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->PiB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    if-eqz v0, :cond_8

    .line 28
    instance-of v1, v0, Lcom/bytedance/adsdk/ugeno/jFA/ZYk/ZYk;

    if-eqz v1, :cond_8

    .line 29
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ZYk;->ZYk(Landroid/widget/FrameLayout;)V

    .line 30
    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 31
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->cFZ()Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object v0

    .line 32
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/ZYk/ZYk;

    if-eqz v1, :cond_9

    .line 33
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ZYk;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/ZYk/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ZYk/ZYk/ZYk;->ex()Lcom/bytedance/adsdk/ugeno/jFA/ZYk/oJ;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ZYk;->tB(Landroid/widget/FrameLayout;)V

    .line 34
    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->XAo()I

    move-result v0

    .line 35
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ofl()I

    move-result v1

    .line 36
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->cFZ:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 37
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->cFZ:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {v3}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;->Ln()F

    move-result v0

    .line 39
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;->LpP()F

    move-result v1

    .line 40
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ZYk:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    .line 41
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ZYk:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    .line 42
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB()I

    move-result v4

    const/4 v5, 0x7

    const/4 v6, 0x0

    if-ne v4, v5, :cond_b

    cmpg-float v4, v1, v6

    if-gtz v4, :cond_a

    .line 43
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->cFZ:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v2, v2

    const/4 v5, -0x2

    invoke-direct {v4, v2, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 44
    :cond_a
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->cFZ:Landroid/widget/FrameLayout;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    float-to-int v2, v2

    float-to-int v3, v3

    invoke-direct {v5, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 45
    :cond_b
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->cFZ:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    cmpg-float v2, v1, v6

    const/4 v3, 0x0

    if-lez v2, :cond_d

    cmpg-float v2, v0, v6

    if-gtz v2, :cond_c

    goto :goto_1

    .line 46
    :cond_c
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;

    float-to-double v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->oJ(D)V

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ZYk(D)V

    goto :goto_2

    .line 48
    :cond_d
    :goto_1
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 49
    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 50
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->cFZ:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->measure(II)V

    .line 51
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ZYk:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->cFZ:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ZYk:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->cFZ:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    move-result v1

    .line 53
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;

    int-to-double v4, v0

    invoke-virtual {v2, v4, v5}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->oJ(D)V

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;

    int-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ZYk(D)V

    .line 55
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->dLZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x89

    .line 56
    const-string v1, "ugen render timeout"

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;->oJ(ILjava/lang/String;)V

    return-void

    .line 57
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    const-string v2, "renderDidFinish"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->cFZ:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->kkU:Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;->oJ(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V

    return-void

    .line 59
    :cond_f
    const-string v0, "ugen render error"

    invoke-interface {p1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;->oJ(ILjava/lang/String;)V

    return-void
.end method

.method private ZYk(Ljava/lang/CharSequence;ZIZ)V
    .locals 0

    .line 61
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    if-nez p1, :cond_0

    return-void

    .line 62
    :cond_0
    const-string p3, "skip"

    invoke-virtual {p1, p3}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ex(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 63
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p3, 0x0

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    if-eqz p4, :cond_4

    goto :goto_0

    :cond_4
    const/16 p3, 0x8

    .line 64
    :goto_0
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private kkU()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zF()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 15
    .line 16
    const-string v1, "tvskip"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ex(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/16 v1, 0x8

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->tB(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 30
    .line 31
    const-string v1, "skip"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ex(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-nez v0, :cond_2

    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    instance-of v1, v0, Lcom/bytedance/adsdk/ugeno/jFA/ex/tB;

    .line 41
    .line 42
    if-eqz v1, :cond_4

    .line 43
    .line 44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->PiB(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_3

    .line 63
    .line 64
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    const/4 v2, 0x5

    .line 71
    if-eq v1, v2, :cond_3

    .line 72
    .line 73
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    const/4 v2, 0x6

    .line 80
    if-eq v1, v2, :cond_3

    .line 81
    .line 82
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 83
    .line 84
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TxP()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    const/4 v2, 0x3

    .line 89
    if-ne v1, v2, :cond_4

    .line 90
    .line 91
    :cond_3
    move-object v1, v0

    .line 92
    check-cast v1, Lcom/bytedance/adsdk/ugeno/jFA/ex/tB;

    .line 93
    .line 94
    const-string v2, "local://tt_close_btn"

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Lcom/bytedance/adsdk/ugeno/jFA/ex/tB;->BTZ(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk()V

    .line 100
    .line 101
    .line 102
    :cond_4
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;)Lcom/bytedance/sdk/openadsdk/core/so/QSm;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->mu:Lcom/bytedance/sdk/openadsdk/core/so/QSm;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->XAo:Ljava/lang/String;

    return-object p1
.end method

.method private oJ(Lcom/bytedance/adsdk/ugeno/core/PiB;)V
    .locals 12

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    .line 29
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->so:Lcom/bytedance/sdk/component/adexpress/ZYk/so;

    if-nez v6, :cond_0

    return-void

    .line 30
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/PiB;->tB()Lorg/json/JSONObject;

    move-result-object v6

    .line 31
    const-string v7, "type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 32
    const-string v7, "swiperLeft"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->UN:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ex;

    if-eqz v7, :cond_1

    .line 33
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ex;->ZYk()V

    return-void

    .line 34
    :cond_1
    const-string v7, "swiperRight"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->UN:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ex;

    if-eqz v7, :cond_2

    .line 35
    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ex;->tB()V

    return-void

    .line 36
    :cond_2
    const-string v7, "swiperClick"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->UN:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ex;

    if-eqz v7, :cond_3

    .line 37
    invoke-virtual {v7, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ex;->oJ(Lcom/bytedance/adsdk/ugeno/core/PiB;)Z

    move-result v7

    .line 38
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->UN:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ex;

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ex;->ex()Lorg/json/JSONObject;

    move-result-object v8

    move v9, v5

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    move v7, v4

    move v9, v7

    .line 39
    :goto_0
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    const/4 v10, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v11, "creative"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    move v10, v0

    goto :goto_1

    :sswitch_1
    const-string v11, "video"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    :cond_5
    move v10, v1

    goto :goto_1

    :sswitch_2
    const-string v11, "skip"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    move v10, v2

    goto :goto_1

    :sswitch_3
    const-string v11, "mute"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    goto :goto_1

    :cond_7
    move v10, v5

    goto :goto_1

    :sswitch_4
    const-string v11, "feedback"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    goto :goto_1

    :cond_8
    move v10, v3

    goto :goto_1

    :sswitch_5
    const-string v11, "privacy"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_1

    :cond_9
    move v10, v4

    :goto_1
    packed-switch v10, :pswitch_data_0

    move v0, v9

    goto :goto_2

    :pswitch_0
    move v0, v5

    goto :goto_2

    :pswitch_1
    move v0, v1

    goto :goto_2

    :pswitch_2
    const/4 v0, 0x6

    goto :goto_2

    :pswitch_3
    move v0, v2

    goto :goto_2

    :pswitch_4
    const/4 v0, 0x7

    .line 40
    :goto_2
    :pswitch_5
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/PiB;->oJ()Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object v1

    .line 41
    new-array v2, v5, [I

    .line 42
    new-array v5, v5, [I

    .line 43
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Id:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_b

    .line 44
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;)[I

    move-result-object v6

    if-eqz v6, :cond_a

    move-object v2, v6

    .line 45
    :cond_a
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Id:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/view/View;)[I

    move-result-object v6

    if-eqz v6, :cond_b

    move-object v5, v6

    .line 46
    :cond_b
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;-><init>()V

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->WcQ:F

    .line 47
    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ex(F)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v6

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->awB:F

    .line 48
    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->tB(F)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v6

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->eZI:F

    .line 49
    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ZYk(F)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v6

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->si:F

    .line 50
    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ(F)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v6

    iget-wide v9, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Ry:J

    .line 51
    invoke-virtual {v6, v9, v10}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ZYk(J)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v6

    iget-wide v9, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->RZ:J

    .line 52
    invoke-virtual {v6, v9, v10}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ(J)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v6

    aget v9, v2, v4

    .line 53
    invoke-virtual {v6, v9}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ex(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v6

    aget v2, v2, v3

    .line 54
    invoke-virtual {v6, v2}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->Pfn(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v2

    aget v6, v5, v4

    .line 55
    invoke-virtual {v2, v6}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ba(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v2

    aget v5, v5, v3

    .line 56
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->cFZ(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v2

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->jr:Landroid/util/SparseArray;

    .line 57
    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v2

    .line 58
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/PiB;->ZYk()I

    move-result v5

    if-ne v5, v3, :cond_d

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->QSm:Z

    if-eqz v5, :cond_c

    goto :goto_3

    :cond_c
    move v3, v4

    :cond_d
    :goto_3
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ(Z)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v2

    if-nez v1, :cond_e

    const-string v1, ""

    goto :goto_4

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->mu()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->UN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v7}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ZYk(Z)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v1

    .line 61
    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ZYk(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v1

    .line 62
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/model/eZI;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->so:Lcom/bytedance/sdk/component/adexpress/ZYk/so;

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/PiB;->oJ()Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object p1

    invoke-interface {v2, p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/so;->oJ(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/tB;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x12bedc78 -> :sswitch_5
        -0xb6a147b -> :sswitch_4
        0x335219 -> :sswitch_3
        0x35e57f -> :sswitch_2
        0x6b0147b -> :sswitch_1
        0x6c816faf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ZYk(Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;)V

    return-void
.end method

.method private oJ(Ljava/lang/CharSequence;ZIZ)V
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    const-string v1, "countdown"

    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ex(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 87
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object v0

    .line 88
    instance-of v1, v0, Landroid/widget/TextView;

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x0

    .line 89
    :try_start_0
    move-object v2, p1

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 90
    :catch_0
    const-string v2, "parse duration exception"

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "UGenRender"

    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    :goto_0
    const/16 v3, 0x8

    if-nez p4, :cond_6

    if-lez v2, :cond_6

    .line 91
    iget-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->HyG:Z

    if-eqz p4, :cond_3

    goto :goto_1

    .line 92
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    if-nez p2, :cond_4

    .line 93
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->oJ()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->ex()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/adexpress/ex/ba;->ZYk(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 94
    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->oJ()Landroid/content/Context;

    move-result-object p1

    const-string p2, "tt_reward_full_skip"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 96
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 97
    :cond_4
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->ex()Ljava/lang/String;

    move-result-object p2

    const-string p3, "open_ad"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->oJ()Z

    move-result p2

    if-eqz p2, :cond_5

    const/4 p1, 0x1

    .line 98
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->HyG:Z

    .line 99
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 100
    :cond_5
    check-cast v0, Landroid/widget/TextView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "s"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 101
    :cond_6
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private oJ(Lorg/json/JSONObject;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 21
    :cond_1
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 22
    const-string v1, "nodeId"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {v1, p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ex(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 25
    const-string v1, "onShow"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->tB(I)V

    return-void

    .line 27
    :cond_3
    const-string v1, "onDismiss"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    .line 28
    invoke-virtual {p1, v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->tB(I)V

    :cond_4
    return-void
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;)Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tb:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    return-object p0
.end method


# virtual methods
.method public Pfn()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->cFZ:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    return-object v0
.end method

.method protected ZYk()Lorg/json/JSONObject;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;->nke()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public ba()Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    const-string v1, "PlayableComponent"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Pfn(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public cFZ()Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method protected ex()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/core/awB;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lcom/bytedance/adsdk/ugeno/core/eZI;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ex:Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->UN:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ex;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ex;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;->Jc()Lcom/bytedance/adsdk/ugeno/core/Ry;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Ry;->ZYk()V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;->Jc()Lcom/bytedance/adsdk/ugeno/core/Ry;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Lcom/bytedance/adsdk/ugeno/core/Ry;->tB()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ:Lcom/bytedance/adsdk/ugeno/core/BTZ;

    .line 49
    .line 50
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Xe:Lorg/json/JSONObject;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/core/BTZ;->ZYk(Lorg/json/JSONObject;)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x0

    .line 56
    return v0
.end method

.method protected jFA()Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    const-string v1, "feedback"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ex(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method protected oJ()Lorg/json/JSONObject;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ba:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->tB()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public oJ(JJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Landroid/view/MotionEvent;)V
    .locals 11

    .line 64
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_8

    const/4 v2, -0x1

    if-eq p1, v1, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    :goto_0
    move v4, v2

    goto/16 :goto_2

    .line 65
    :cond_0
    sget p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->nke:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sget v4, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Ln:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr p1, v2

    sput p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->nke:F

    .line 66
    sget p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Jc:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sget v4, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->LpP:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr p1, v2

    sput p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Jc:F

    .line 67
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    sput p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Ln:F

    .line 68
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sput p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->LpP:F

    .line 69
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->IUZ:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xc8

    cmp-long p1, v4, v6

    if-lez p1, :cond_1

    .line 70
    sget p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->nke:F

    sget v2, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oq:I

    int-to-float v4, v2

    cmpl-float p1, p1, v4

    if-gtz p1, :cond_2

    sget p1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Jc:F

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v3

    .line 71
    :cond_2
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->WcQ:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v2, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oq:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-gez p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->awB:F

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v2, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oq:I

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_4

    .line 72
    :cond_3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->QSm:Z

    :cond_4
    move v2, v1

    .line 73
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->eZI:F

    .line 74
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->si:F

    .line 75
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->eZI:F

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->WcQ:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oq:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-gez p1, :cond_6

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->si:F

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->awB:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    sget v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oq:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-ltz p1, :cond_7

    .line 76
    :cond_6
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->QSm:Z

    .line 77
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->RZ:J

    goto/16 :goto_0

    .line 78
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Ry:J

    .line 79
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->WcQ:F

    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->awB:F

    .line 81
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->QSm:Z

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->IUZ:J

    .line 83
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/jFA/tB;->oJ(Landroid/view/MotionEvent;)V

    move v4, v0

    .line 84
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->jr:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ZYk/tB$oJ;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getSize()F

    move-result v2

    float-to-double v5, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPressure()F

    move-result p2

    float-to-double v7, p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/bytedance/sdk/openadsdk/core/ZYk/tB$oJ;-><init>(IDDJ)V

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;Lcom/bytedance/adsdk/ugeno/ex/ba$oJ;)V
    .locals 0

    .line 2
    return-void
.end method

.method public oJ(Lcom/bytedance/adsdk/ugeno/core/PiB;Lcom/bytedance/adsdk/ugeno/core/awB$ZYk;Lcom/bytedance/adsdk/ugeno/core/awB$oJ;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/PiB;->ZYk()I

    move-result p3

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/PiB;->ZYk()I

    move-result p3

    const/4 v0, 0x4

    if-ne p3, v0, :cond_2

    .line 15
    :cond_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ(Lcom/bytedance/adsdk/ugeno/core/PiB;)V

    .line 16
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/PiB;->ZYk()I

    move-result p3

    const/16 v0, 0xa

    if-ne p3, v0, :cond_3

    .line 17
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/PiB;->tB()Lorg/json/JSONObject;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ(Lorg/json/JSONObject;)V

    :cond_3
    if-eqz p2, :cond_4

    .line 18
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/PiB;->ex()Lcom/bytedance/adsdk/ugeno/core/PiB;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/core/PiB;->ex()Lcom/bytedance/adsdk/ugeno/core/PiB;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bytedance/adsdk/ugeno/core/awB$ZYk;->oJ(Lcom/bytedance/adsdk/ugeno/core/PiB;)V

    :cond_4
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tb:Lcom/bytedance/sdk/component/adexpress/ZYk/cFZ;

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ofl:Lcom/bytedance/sdk/component/so/so;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->ZYk(Lcom/bytedance/sdk/component/so/so;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/so;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->so:Lcom/bytedance/sdk/component/adexpress/ZYk/so;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/so/awB;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->jFA:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->UN:Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ex;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;)V

    :cond_0
    return-void
.end method

.method public oJ(Z)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->dLZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public onvideoComplate()V
    .locals 0

    .line 1
    return-void
.end method

.method public setSoundMute(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v1, "mute"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ex(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    move-object p1, v0

    .line 17
    check-cast p1, Lcom/bytedance/adsdk/ugeno/jFA/ex/tB;

    .line 18
    .line 19
    const-string v1, "local://tt_reward_full_mute"

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Lcom/bytedance/adsdk/ugeno/jFA/ex/tB;->BTZ(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    move-object p1, v0

    .line 26
    check-cast p1, Lcom/bytedance/adsdk/ugeno/jFA/ex/tB;

    .line 27
    .line 28
    const-string v1, "local://tt_reward_full_unmute"

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lcom/bytedance/adsdk/ugeno/jFA/ex/tB;->BTZ(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ZYk()V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public setTime(Ljava/lang/CharSequence;IIZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    if-ne p2, v0, :cond_1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_1
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->oJ(Ljava/lang/CharSequence;ZIZ)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->ZYk(Ljava/lang/CharSequence;ZIZ)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setTimeUpdate(I)V
    .locals 0

    .line 1
    return-void
.end method

.method protected so()Lcom/bytedance/adsdk/ugeno/ZYk/tB;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->tB:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    const-string v1, "video"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->ex(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public tB()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/kkU/ba/tB;->Pfn:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uvK()I

    move-result v0

    return v0
.end method
