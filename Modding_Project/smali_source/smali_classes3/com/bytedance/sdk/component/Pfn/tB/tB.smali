.class public Lcom/bytedance/sdk/component/Pfn/tB/tB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/Pfn/jFA;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;,
        Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;
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

.field private HL:I

.field private IUZ:Z

.field private Id:I

.field private Ln:Ljava/util/concurrent/ExecutorService;

.field private LpP:Z

.field private Pfn:Lcom/bytedance/sdk/component/Pfn/eZI;

.field private volatile PiB:Z

.field private QSm:Z

.field private final RZ:Landroid/os/Handler;

.field private Ry:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bytedance/sdk/component/Pfn/Pfn/jFA;",
            ">;"
        }
    .end annotation
.end field

.field private WcQ:Z

.field private Xe:Lcom/bytedance/sdk/component/Pfn/ZYk;

.field private ZYk:Ljava/lang/String;

.field private awB:Z

.field private ba:Landroid/widget/ImageView$ScaleType;

.field private cFZ:Landroid/graphics/Bitmap$Config;

.field private cY:Lcom/bytedance/sdk/component/Pfn/tB/ba;

.field private dLZ:I

.field private eZI:Lcom/bytedance/sdk/component/Pfn/RZ;

.field private ex:Ljava/lang/String;

.field private jFA:I

.field private jr:Lcom/bytedance/sdk/component/Pfn/tB/oJ;

.field private kkU:Lcom/bytedance/sdk/component/Pfn/so;

.field private nke:Lcom/bytedance/sdk/component/Pfn/WcQ;

.field oJ:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private oq:Lcom/bytedance/sdk/component/Pfn/cFZ;

.field private si:I

.field private so:I

.field private tB:Ljava/lang/String;

.field private tb:I


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Ry:Ljava/util/Queue;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->RZ:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->QSm:Z

    .line 6
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->ZYk:Ljava/lang/String;

    .line 7
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;

    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->ZYk(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Lcom/bytedance/sdk/component/Pfn/eZI;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;-><init>(Lcom/bytedance/sdk/component/Pfn/tB/tB;Lcom/bytedance/sdk/component/Pfn/eZI;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Pfn:Lcom/bytedance/sdk/component/Pfn/eZI;

    .line 8
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->tB(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->BTZ:Ljava/lang/ref/WeakReference;

    .line 9
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->ex(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->ba:Landroid/widget/ImageView$ScaleType;

    .line 10
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->Pfn(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Landroid/graphics/Bitmap$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->cFZ:Landroid/graphics/Bitmap$Config;

    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->ba(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->so:I

    .line 12
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->cFZ(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->jFA:I

    .line 13
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->so(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->dLZ:I

    .line 14
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->jFA(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->si:I

    .line 15
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->kkU(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Lcom/bytedance/sdk/component/Pfn/RZ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->eZI:Lcom/bytedance/sdk/component/Pfn/RZ;

    .line 16
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Xe:Lcom/bytedance/sdk/component/Pfn/ZYk;

    .line 17
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->dLZ(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->dLZ(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->ZYk(Ljava/lang/String;)V

    .line 19
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->dLZ(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(Ljava/lang/String;)V

    .line 20
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->BTZ(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->WcQ:Z

    .line 21
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->PiB(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->awB:Z

    .line 22
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->WcQ(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Lcom/bytedance/sdk/component/Pfn/tB/ba;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->cY:Lcom/bytedance/sdk/component/Pfn/tB/ba;

    .line 23
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->awB(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Lcom/bytedance/sdk/component/Pfn/so;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->kkU:Lcom/bytedance/sdk/component/Pfn/so;

    .line 24
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->eZI(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->HL:I

    .line 25
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->si(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->tb:I

    .line 26
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->Ry(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Ln:Ljava/util/concurrent/ExecutorService;

    .line 27
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->RZ(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->IUZ:Z

    .line 28
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->QSm(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->LpP:Z

    .line 29
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->oq(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Lcom/bytedance/sdk/component/Pfn/WcQ;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->nke:Lcom/bytedance/sdk/component/Pfn/WcQ;

    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Ry:Ljava/util/Queue;

    new-instance v0, Lcom/bytedance/sdk/component/Pfn/Pfn/tB;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/Pfn/Pfn/tB;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;Lcom/bytedance/sdk/component/Pfn/tB/tB$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;-><init>(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)V

    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->BTZ:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Ry:Ljava/util/Queue;

    return-object p0
.end method

.method static synthetic ba(Lcom/bytedance/sdk/component/Pfn/tB/tB;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->dLZ:I

    return p0
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->RZ:Landroid/os/Handler;

    return-object p0
.end method

.method private cY()Lcom/bytedance/sdk/component/Pfn/jFA;
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->cY:Lcom/bytedance/sdk/component/Pfn/tB/ba;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Pfn:Lcom/bytedance/sdk/component/Pfn/eZI;

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
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ()Ljava/lang/String;

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
    if-eqz v2, :cond_3

    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Pfn:Lcom/bytedance/sdk/component/Pfn/eZI;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    const-string v2, "url is empty"

    .line 36
    .line 37
    const/16 v3, 0x7d0

    .line 38
    .line 39
    invoke-interface {v0, v3, v2, v1}, Lcom/bytedance/sdk/component/Pfn/eZI;->oJ(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-object p0

    .line 43
    :cond_3
    iget-object v2, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->cY:Lcom/bytedance/sdk/component/Pfn/tB/ba;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->Pfn()Lcom/bytedance/sdk/component/Pfn/oq;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "http://"

    .line 50
    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-nez v3, :cond_4

    .line 56
    .line 57
    const-string v3, "https://"

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-nez v3, :cond_4

    .line 64
    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    const-string v3, "url is not validate "

    .line 68
    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/16 v3, 0x3ee

    .line 74
    .line 75
    invoke-interface {v2, v3, v0}, Lcom/bytedance/sdk/component/Pfn/oq;->oJ(ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Ln:Ljava/util/concurrent/ExecutorService;

    .line 79
    .line 80
    if-nez v0, :cond_5

    .line 81
    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->cY:Lcom/bytedance/sdk/component/Pfn/tB/ba;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Pfn/tB/ba;->cFZ()Ljava/util/concurrent/ExecutorService;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :cond_5
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/tB/tB$1;

    .line 89
    .line 90
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/Pfn/tB/tB$1;-><init>(Lcom/bytedance/sdk/component/Pfn/tB/tB;)V

    .line 91
    .line 92
    .line 93
    iget-boolean v2, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->LpP:Z

    .line 94
    .line 95
    if-eqz v2, :cond_6

    .line 96
    .line 97
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_6
    iget-object v2, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Ln:Ljava/util/concurrent/ExecutorService;

    .line 102
    .line 103
    if-eqz v2, :cond_7

    .line 104
    .line 105
    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ:Ljava/util/concurrent/Future;

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_7
    if-eqz v1, :cond_8

    .line 113
    .line 114
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    goto :goto_2

    .line 121
    :goto_1
    const-string v1, "ImageRequest"

    .line 122
    .line 123
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    :cond_8
    :goto_2
    return-object p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Lcom/bytedance/sdk/component/Pfn/jFA;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->cY()Lcom/bytedance/sdk/component/Pfn/jFA;

    move-result-object p0

    return-object p0
.end method

.method static synthetic jFA(Lcom/bytedance/sdk/component/Pfn/tB/tB;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->si:I

    return p0
.end method

.method static synthetic kkU(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->tB:Ljava/lang/String;

    return-object p0
.end method

.method private oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Lcom/bytedance/sdk/component/Pfn/ZYk;
    .locals 1

    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->Id(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->Id(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->cY(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;->cY(Lcom/bytedance/sdk/component/Pfn/tB/tB$ZYk;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/Pfn/tB/oJ/oJ;->oJ(Ljava/io/File;)Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object p1

    return-object p1

    .line 7
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/Pfn/tB/oJ/oJ;->kkU()Lcom/bytedance/sdk/component/Pfn/ZYk;

    move-result-object p1

    return-object p1
.end method

.method private oJ(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 16
    new-instance v0, Lcom/bytedance/sdk/component/Pfn/Pfn/so;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/Pfn/Pfn/so;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Pfn/Pfn/so;->oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB;)V

    .line 17
    iget-object p1, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Ry:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB;ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oJ(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->PiB:Z

    return p0
.end method

.method static synthetic so(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Lcom/bytedance/sdk/component/Pfn/so;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->kkU:Lcom/bytedance/sdk/component/Pfn/so;

    return-object p0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Lcom/bytedance/sdk/component/Pfn/RZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->eZI:Lcom/bytedance/sdk/component/Pfn/RZ;

    return-object p0
.end method


# virtual methods
.method public BTZ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->dLZ:I

    .line 2
    .line 3
    return v0
.end method

.method public Id()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->kkU()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->BTZ()I

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

.method public Pfn()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->cFZ:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public PiB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->WcQ:Z

    .line 2
    .line 3
    return v0
.end method

.method public QSm()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->IUZ:Z

    .line 2
    .line 3
    return v0
.end method

.method public RZ()Lcom/bytedance/sdk/component/Pfn/ZYk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Xe:Lcom/bytedance/sdk/component/Pfn/ZYk;

    .line 2
    .line 3
    return-object v0
.end method

.method public Ry()Lcom/bytedance/sdk/component/Pfn/tB/ba;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->cY:Lcom/bytedance/sdk/component/Pfn/tB/ba;

    .line 2
    .line 3
    return-object v0
.end method

.method public WcQ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->awB:Z

    .line 2
    .line 3
    return v0
.end method

.method public ZYk()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->so:I

    return v0
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->BTZ:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->BTZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x413c0901

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 4
    :cond_0
    iput-object p1, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->tB:Ljava/lang/String;

    return-void
.end method

.method public awB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->QSm:Z

    .line 2
    .line 3
    return v0
.end method

.method public ba()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->tb:I

    return v0
.end method

.method public cFZ()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->HL:I

    return v0
.end method

.method public dLZ()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->cFZ:Landroid/graphics/Bitmap$Config;

    .line 2
    .line 3
    return-object v0
.end method

.method public eZI()Lcom/bytedance/sdk/component/Pfn/cFZ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oq:Lcom/bytedance/sdk/component/Pfn/cFZ;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()Landroid/widget/ImageView$ScaleType;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->ba:Landroid/widget/ImageView$ScaleType;

    return-object v0
.end method

.method public jFA()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->ex:Ljava/lang/String;

    return-object v0
.end method

.method public kkU()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->tB:Ljava/lang/String;

    return-object v0
.end method

.method public oJ()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->ZYk:Ljava/lang/String;

    return-object v0
.end method

.method public oJ(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Id:I

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/cFZ;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->oq:Lcom/bytedance/sdk/component/Pfn/cFZ;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/tB/oJ;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->jr:Lcom/bytedance/sdk/component/Pfn/tB/oJ;

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->ex:Ljava/lang/String;

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->QSm:Z

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/Pfn/jFA;)Z
    .locals 1

    .line 14
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->PiB:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Ry:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public oq()Lcom/bytedance/sdk/component/Pfn/WcQ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->nke:Lcom/bytedance/sdk/component/Pfn/WcQ;

    .line 2
    .line 3
    return-object v0
.end method

.method public si()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Id:I

    .line 2
    .line 3
    return v0
.end method

.method public so()Lcom/bytedance/sdk/component/Pfn/eZI;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Pfn:Lcom/bytedance/sdk/component/Pfn/eZI;

    return-object v0
.end method

.method public tB()I
    .locals 1

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB;->jFA:I

    return v0
.end method
