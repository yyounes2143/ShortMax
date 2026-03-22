.class public Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/Pfn/jFA;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$oJ;,
        Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;
    }
.end annotation


# instance fields
.field private BTZ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private HL:Z

.field private IUZ:Lcom/bytedance/sdk/component/Pfn/WcQ;

.field private Id:Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;

.field private Ln:[B

.field private Pfn:Lcom/bytedance/sdk/component/Pfn/eZI;

.field private volatile PiB:Z

.field private QSm:Lcom/bytedance/sdk/component/Pfn/cFZ;

.field private RZ:Z

.field private final Ry:Landroid/os/Handler;

.field private WcQ:Z

.field private Xe:I

.field private ZYk:Ljava/lang/String;

.field private awB:Z

.field private ba:Landroid/widget/ImageView$ScaleType;

.field private cFZ:Landroid/graphics/Bitmap$Config;

.field private cY:Lcom/bytedance/sdk/component/Pfn/ZYk;

.field private dLZ:I

.field private eZI:Lcom/bytedance/sdk/component/Pfn/RZ;

.field private ex:Ljava/lang/String;

.field private jFA:I

.field private jr:I

.field private kkU:Lcom/bytedance/sdk/component/Pfn/so;

.field oJ:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private oq:I

.field private si:I

.field private so:I

.field private tB:Ljava/lang/String;

.field private tb:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->Ry:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->RZ:Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->Ln:[B

    .line 6
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->oJ(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->ZYk:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$oJ;

    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->ZYk(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Lcom/bytedance/sdk/component/Pfn/eZI;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$oJ;-><init>(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;Lcom/bytedance/sdk/component/Pfn/eZI;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->Pfn:Lcom/bytedance/sdk/component/Pfn/eZI;

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->tB(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->BTZ:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->ex(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->ba:Landroid/widget/ImageView$ScaleType;

    .line 10
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->Pfn(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->cFZ:Landroid/graphics/Bitmap$Config;

    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->ba(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->so:I

    .line 12
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->cFZ(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->jFA:I

    .line 13
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->so(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->dLZ:I

    .line 14
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->jFA(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->si:I

    .line 15
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->kkU(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Lcom/bytedance/sdk/component/Pfn/RZ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->eZI:Lcom/bytedance/sdk/component/Pfn/RZ;

    .line 16
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->oJ(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->cY:Lcom/bytedance/sdk/component/Pfn/ZYk;

    .line 17
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->dLZ(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->dLZ(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->ZYk(Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->dLZ(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->oJ(Ljava/lang/String;)V

    .line 20
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->BTZ(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->WcQ:Z

    .line 21
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->PiB(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->awB:Z

    .line 22
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->WcQ(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->Id:Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;

    .line 23
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->awB(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Lcom/bytedance/sdk/component/Pfn/so;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->kkU:Lcom/bytedance/sdk/component/Pfn/so;

    .line 24
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->eZI(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->Xe:I

    .line 25
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->si(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->jr:I

    .line 26
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->Ry(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->tb:Ljava/util/concurrent/ExecutorService;

    .line 27
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->RZ(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->HL:Z

    .line 28
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->QSm(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Lcom/bytedance/sdk/component/Pfn/WcQ;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->IUZ:Lcom/bytedance/sdk/component/Pfn/WcQ;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;-><init>(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)V

    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->dLZ:I

    return p0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->PiB:Z

    return p0
.end method

.method static synthetic ba(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->Ry:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;)Lcom/bytedance/sdk/component/Pfn/so;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->kkU:Lcom/bytedance/sdk/component/Pfn/so;

    return-object p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->BTZ:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic jFA(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->tB:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;)Lcom/bytedance/sdk/component/Pfn/RZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->eZI:Lcom/bytedance/sdk/component/Pfn/RZ;

    return-object p0
.end method

.method private oJ(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Lcom/bytedance/sdk/component/Pfn/ZYk;
    .locals 1

    .line 2
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->oq(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->oq(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->Id(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;->Id(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$ZYk;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk;->oJ(Ljava/io/File;)Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk;->kkU()Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object p1

    return-object p1
.end method

.method private oq()Lcom/bytedance/sdk/component/Pfn/jFA;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->Id:Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->Pfn:Lcom/bytedance/sdk/component/Pfn/eZI;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v2, "not init !"

    .line 11
    .line 12
    const/16 v3, 0x3ed

    .line 13
    .line 14
    invoke-interface {v0, v3, v2, v1}, Lcom/bytedance/sdk/component/Pfn/eZI;->oJ(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    return-object p0

    .line 21
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->oJ()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->Pfn:Lcom/bytedance/sdk/component/Pfn/eZI;

    .line 32
    .line 33
    const-string v2, "url is empty"

    .line 34
    .line 35
    const/16 v3, 0x7d0

    .line 36
    .line 37
    invoke-interface {v0, v3, v2, v1}, Lcom/bytedance/sdk/component/Pfn/eZI;->oJ(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    return-object p0

    .line 41
    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->Id:Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->ba()Lcom/bytedance/sdk/component/Pfn/oq;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "http://"

    .line 48
    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    const-string v3, "https://"

    .line 56
    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-nez v3, :cond_3

    .line 62
    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    const-string v3, "url is not validate "

    .line 66
    .line 67
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    const/16 v3, 0x3ee

    .line 72
    .line 73
    invoke-interface {v2, v3, v0}, Lcom/bytedance/sdk/component/Pfn/oq;->oJ(ILjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->tb:Ljava/util/concurrent/ExecutorService;

    .line 77
    .line 78
    if-nez v0, :cond_4

    .line 79
    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->Id:Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;->Pfn()Ljava/util/concurrent/ExecutorService;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$1;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB$1;-><init>(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;)V

    .line 89
    .line 90
    .line 91
    iget-boolean v2, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->HL:Z

    .line 92
    .line 93
    if-eqz v2, :cond_5

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_5
    iget-object v2, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->tb:Ljava/util/concurrent/ExecutorService;

    .line 100
    .line 101
    if-eqz v2, :cond_6

    .line 102
    .line 103
    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->oJ:Ljava/util/concurrent/Future;

    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_6
    if-eqz v1, :cond_7

    .line 111
    .line 112
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->oJ:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :goto_1
    const-string v1, "ImageRequest"

    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    :cond_7
    :goto_2
    return-object p0
.end method

.method static synthetic so(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->si:I

    return p0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;)Lcom/bytedance/sdk/component/Pfn/jFA;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->oq()Lcom/bytedance/sdk/component/Pfn/jFA;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public BTZ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->dLZ:I

    .line 2
    .line 3
    return v0
.end method

.method public Pfn()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->cFZ:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public PiB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->RZ:Z

    .line 2
    .line 3
    return v0
.end method

.method public QSm()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->kkU()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->BTZ()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method

.method public RZ()Lcom/bytedance/sdk/component/Pfn/WcQ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->IUZ:Lcom/bytedance/sdk/component/Pfn/WcQ;

    .line 2
    .line 3
    return-object v0
.end method

.method public Ry()Lcom/bytedance/sdk/component/Pfn/ZYk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->cY:Lcom/bytedance/sdk/component/Pfn/ZYk;

    .line 2
    .line 3
    return-object v0
.end method

.method public WcQ()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->Ln:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public ZYk()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->so:I

    return v0
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->BTZ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->BTZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x413c0901

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->tB:Ljava/lang/String;

    return-void
.end method

.method public awB()Lcom/bytedance/sdk/component/Pfn/cFZ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->QSm:Lcom/bytedance/sdk/component/Pfn/cFZ;

    .line 2
    .line 3
    return-object v0
.end method

.method public ba()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->jr:I

    return v0
.end method

.method public cFZ()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->Xe:I

    return v0
.end method

.method public dLZ()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->cFZ:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    return-object v0
.end method

.method public eZI()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->oq:I

    .line 2
    .line 3
    return v0
.end method

.method public ex()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->ba:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public jFA()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public kkU()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->tB:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->ZYk:Ljava/lang/String;

    return-object v0
.end method

.method public oJ(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->oq:I

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->ex:Ljava/lang/String;

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->RZ:Z

    return-void
.end method

.method public oJ([B)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->Ln:[B

    return-void
.end method

.method public si()Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->Id:Lcom/bytedance/sdk/component/Pfn/ex/tB/ba;

    .line 2
    .line 3
    return-object v0
.end method

.method public so()Lcom/bytedance/sdk/component/Pfn/eZI;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->Pfn:Lcom/bytedance/sdk/component/Pfn/eZI;

    return-object v0
.end method

.method public tB()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/tB;->jFA:I

    return v0
.end method
