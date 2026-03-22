.class public Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$Pfn;
.implements Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ZYk;
.implements Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ba;
.implements Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$cFZ;
.implements Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ex;
.implements Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$oJ;
.implements Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$tB;
.implements Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;
.implements Lcom/bytedance/sdk/component/utils/IUZ$oJ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$oJ;
    }
.end annotation


# static fields
.field private static final oJ:Landroid/util/SparseIntArray;


# instance fields
.field private BTZ:Z

.field private HL:Z

.field private final HyG:Ljava/lang/Runnable;

.field private IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

.field private Id:J

.field private Jc:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Ln:Z

.field private LpP:Ljava/util/concurrent/CountDownLatch;

.field private Pfn:Landroid/graphics/SurfaceTexture;

.field private PiB:Z

.field private QSm:J

.field private RZ:J

.field private Ry:J

.field private UN:Landroid/view/Surface;

.field private volatile WcQ:I

.field private XAo:J

.field private Xe:I

.field private final ZYk:Z

.field private awB:J

.field private ba:Landroid/view/SurfaceHolder;

.field private cFZ:I

.field private cY:Z

.field private cdg:Z

.field private dLZ:Z

.field private eZI:Lcom/bytedance/sdk/component/utils/IUZ;

.field private final ex:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$oJ;

.field private jFA:Z

.field private jr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

.field private volatile mu:Z

.field private volatile nke:I

.field private ofl:J

.field private oq:J

.field private si:Z

.field private so:I

.field private final tB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;",
            ">;>;"
        }
    .end annotation
.end field

.field private tb:Ljava/lang/String;

.field private wd:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB:Ljava/util/List;

    .line 13
    .line 14
    new-instance v1, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$oJ;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$oJ;-><init>(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ex:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$oJ;

    .line 20
    .line 21
    iput v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->cFZ:I

    .line 22
    .line 23
    const/4 v1, 0x3

    .line 24
    iput v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so:I

    .line 25
    .line 26
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->jFA:Z

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->dLZ:Z

    .line 32
    .line 33
    const/16 v2, 0xc9

    .line 34
    .line 35
    iput v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    .line 36
    .line 37
    const-wide/16 v2, -0x1

    .line 38
    .line 39
    iput-wide v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->awB:J

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->si:Z

    .line 42
    .line 43
    const-wide/16 v2, 0x0

    .line 44
    .line 45
    iput-wide v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Ry:J

    .line 46
    .line 47
    const-wide/high16 v4, -0x8000000000000000L

    .line 48
    .line 49
    iput-wide v4, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->RZ:J

    .line 50
    .line 51
    iput-wide v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->QSm:J

    .line 52
    .line 53
    iput-wide v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oq:J

    .line 54
    .line 55
    iput-wide v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Id:J

    .line 56
    .line 57
    iput v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Xe:I

    .line 58
    .line 59
    const-string v4, "0"

    .line 60
    .line 61
    iput-object v4, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tb:Ljava/lang/String;

    .line 62
    .line 63
    iput-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    .line 64
    .line 65
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Ln:Z

    .line 66
    .line 67
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    .line 68
    .line 69
    const/4 v5, 0x1

    .line 70
    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 71
    .line 72
    .line 73
    iput-object v4, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->LpP:Ljava/util/concurrent/CountDownLatch;

    .line 74
    .line 75
    const/16 v4, 0xc8

    .line 76
    .line 77
    iput v4, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->nke:I

    .line 78
    .line 79
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    .line 81
    invoke-direct {v4, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 82
    .line 83
    .line 84
    iput-object v4, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Jc:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 85
    .line 86
    iput-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->UN:Landroid/view/Surface;

    .line 87
    .line 88
    iput-wide v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->XAo:J

    .line 89
    .line 90
    iput-wide v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ofl:J

    .line 91
    .line 92
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->wd:Z

    .line 93
    .line 94
    new-instance v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$1;

    .line 95
    .line 96
    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$1;-><init>(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->HyG:Ljava/lang/Runnable;

    .line 100
    .line 101
    const-string v0, "SSMediaPlayerWrapper"

    .line 102
    .line 103
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method private HL()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->jFA:Z

    .line 3
    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iget-wide v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Id:J

    .line 9
    .line 10
    sub-long/2addr v0, v2

    .line 11
    iget-object v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;

    .line 42
    .line 43
    invoke-interface {v3, p0, v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;J)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method

.method private IUZ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$7;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$7;-><init>(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private Id()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$10;

    .line 6
    .line 7
    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$10;-><init>(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private Ln()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->BTZ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->BTZ:Z

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->jr:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/Runnable;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->jr:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->BTZ:Z

    .line 43
    .line 44
    return-void
.end method

.method private LpP()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->jr:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Ln()V

    .line 13
    .line 14
    .line 15
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic Pfn(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->nke:I

    return p0
.end method

.method private Xe()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 13
    .line 14
    new-instance v1, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$6;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$6;-><init>(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic ZYk(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->RZ:J

    return-wide v0
.end method

.method static synthetic ZYk(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Ry:J

    return-wide p1
.end method

.method private ZYk(II)V
    .locals 7

    const/16 p2, 0x2bd

    const v0, 0x7fffffff

    const/4 v1, 0x1

    if-ne p1, p2, :cond_2

    .line 35
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->XAo:J

    .line 36
    iget p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->cFZ:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->cFZ:I

    .line 37
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;

    const/4 v1, 0x0

    invoke-interface {p2, p0, v0, v1, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;III)V

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    const/16 p2, 0x2be

    if-ne p1, p2, :cond_6

    .line 40
    iget-wide p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->XAo:J

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_3

    .line 41
    iget-wide p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ofl:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->XAo:J

    sub-long/2addr v3, v5

    add-long/2addr p1, v3

    iput-wide p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ofl:J

    .line 42
    iput-wide v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->XAo:J

    .line 43
    :cond_3
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_4

    .line 44
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 45
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;

    invoke-interface {p2, p0, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;I)V

    goto :goto_1

    :cond_5
    return-void

    .line 46
    :cond_6
    iget-boolean p2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->wd:Z

    if-eqz p2, :cond_7

    const/4 p2, 0x3

    if-ne p1, p2, :cond_7

    .line 47
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->LpP()V

    .line 48
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->HL()V

    .line 49
    iget-boolean p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Ln:Z

    invoke-virtual {p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(Z)V

    return-void

    :cond_7
    const/16 p2, 0x325

    if-ne p1, p2, :cond_8

    .line 50
    iput-boolean v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->cdg:Z

    :cond_8
    return-void
.end method

.method private ZYk(J)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ex:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$oJ;

    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$oJ;->oJ(J)V

    .line 5
    iget-boolean p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->HL:Z

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ex:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$oJ;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(Ljava/lang/Runnable;)V

    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ex:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$oJ;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(Ljava/lang/Runnable;)V

    return-void

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ex:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$oJ;

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Ljava/lang/Runnable;)V

    return-void
.end method

.method private ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Ljava/io/File;)V
    .locals 5

    .line 12
    :try_start_0
    invoke-static {p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/cFZ/oJ;->oJ(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->si()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-direct {p0, p2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Ljava/io/File;)V

    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->tB()Lorg/json/JSONObject;

    move-result-object v1

    .line 16
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ZYk()Z

    move-result v2

    if-eqz v1, :cond_1

    .line 17
    const-string v3, "file_hash"

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->si()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v3, "file_real_hash"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    const-string v0, "is_change_play_type"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    const-string v0, "error_real_code"

    const/16 v3, 0x135

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    const-string v0, "error_real_msg"

    const-string v3, "md5_not_match"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    if-eqz v2, :cond_3

    .line 22
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v1, :cond_2

    .line 23
    const-string v2, "delete_cache_file"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2
    if-eqz v0, :cond_3

    .line 24
    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V

    return-void

    .line 25
    :cond_3
    invoke-direct {p0, p2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private ZYk(Ljava/lang/Runnable;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 70
    :cond_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->PiB:Z

    if-nez v0, :cond_1

    .line 71
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 72
    :cond_1
    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private ZYk(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 26
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->oJ(Ljava/io/FileDescriptor;)V

    .line 28
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-void
.end method

.method static synthetic ZYk(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->dLZ:Z

    return p1
.end method

.method private ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->cFZ()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic ba(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Ry:J

    return-wide v0
.end method

.method static synthetic cFZ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->cFZ:I

    return p0
.end method

.method private cY()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$14;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$14;-><init>(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static synthetic dLZ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->awB:J

    return-wide v0
.end method

.method static synthetic ex(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->QSm:J

    return-wide v0
.end method

.method static synthetic ex(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;J)J
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->awB:J

    return-wide p1
.end method

.method static synthetic ex(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Ln:Z

    return p1
.end method

.method static synthetic jFA(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB:Ljava/util/List;

    return-object p0
.end method

.method private jr()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->PiB()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :catchall_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ZYk;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    .line 18
    .line 19
    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$cFZ;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$oJ;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    .line 28
    .line 29
    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ex;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    .line 33
    .line 34
    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$tB;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$Pfn;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    .line 43
    .line 44
    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB$ba;)V

    .line 45
    .line 46
    .line 47
    :try_start_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    .line 48
    .line 49
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->BTZ()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 50
    .line 51
    .line 52
    :catchall_1
    return-void
.end method

.method static synthetic kkU(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Id()V

    return-void
.end method

.method private nke()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->jr:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->jr:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    return p1
.end method

.method static synthetic oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;J)J
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->QSm:J

    return-wide p1
.end method

.method static synthetic oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;
    .locals 0

    .line 4
    iget-object p0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    return-object p0
.end method

.method static synthetic oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;)Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    return-object p1
.end method

.method static synthetic oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;Lcom/bytedance/sdk/component/utils/IUZ;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    return-object p1
.end method

.method static synthetic oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tb:Ljava/lang/String;

    return-object p1
.end method

.method private oJ(JJ)V
    .locals 8

    .line 11
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 13
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;JJ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;II)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(II)V

    return-void
.end method

.method static synthetic oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;JJ)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(JJ)V

    return-void
.end method

.method private oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Ljava/io/File;)V
    .locals 1

    .line 124
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Ljava/io/File;)V

    return-void

    .line 126
    :cond_0
    invoke-direct {p0, p2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Ljava/io/File;)V

    return-void
.end method

.method private oJ(Ljava/io/File;)V
    .locals 1

    .line 127
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 128
    :try_start_0
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->tB()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(Ljava/lang/String;)V

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->oJ(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private oJ(Ljava/lang/Runnable;)V
    .locals 1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->jr:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->jr:Ljava/util/ArrayList;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 156
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->jr:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 157
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method private oJ(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Xe:I

    .line 15
    invoke-static {}, Lcom/bytedance/sdk/component/so/oJ/oJ;->oJ()Lcom/bytedance/sdk/component/so/oJ/oJ;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "csj_"

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/component/so/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/utils/IUZ$oJ;Ljava/lang/String;)Lcom/bytedance/sdk/component/utils/IUZ;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->wd:Z

    .line 17
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Id()V

    return-void
.end method

.method private oJ(II)Z
    .locals 2

    .line 1
    const/16 v0, -0x3f2

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ef

    if-eq p1, v0, :cond_0

    const/16 v0, -0x3ec

    if-eq p1, v0, :cond_0

    const/16 v0, -0x6e

    if-eq p1, v0, :cond_0

    const/16 v0, 0x64

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eq p2, v1, :cond_1

    const/16 v0, 0x2bc

    if-eq p2, v0, :cond_1

    const/16 v0, 0x320

    if-eq p2, v0, :cond_1

    move v1, p1

    :cond_1
    return v1
.end method

.method static synthetic oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;Z)Z
    .locals 0

    .line 10
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->si:Z

    return p1
.end method

.method private oq()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Ry:J

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->cFZ:I

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->QSm:J

    .line 9
    .line 10
    iput-boolean v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->si:Z

    .line 11
    .line 12
    const-wide/high16 v0, -0x8000000000000000L

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->RZ:J

    .line 15
    .line 16
    return-void
.end method

.method static synthetic so(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)Lcom/bytedance/sdk/component/utils/IUZ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    return-object p0
.end method

.method static synthetic tB(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->RZ:J

    return-wide p1
.end method

.method private tB(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 5
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->eZI()Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V

    .line 7
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->eZI()Ljava/lang/String;

    return-void
.end method

.method static synthetic tB(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->si:Z

    return p0
.end method

.method static synthetic tB(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->mu:Z

    return p1
.end method

.method private tb()V
    .locals 3

    .line 1
    sget-object v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    iget v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Xe:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->get(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Xe:I

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public BTZ()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->PiB:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->nke()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 27
    .line 28
    const/16 v1, 0x67

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    .line 33
    :cond_1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Xe()V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :catchall_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Xe()V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public Pfn()I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->awB()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public PiB()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    .line 2
    .line 3
    const/16 v1, 0xcd

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public QSm()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Pfn:Landroid/graphics/SurfaceTexture;

    .line 2
    .line 3
    return-object v0
.end method

.method public RZ()Landroid/view/SurfaceHolder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ba:Landroid/view/SurfaceHolder;

    .line 2
    .line 3
    return-object v0
.end method

.method public Ry()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-wide v1

    .line 10
    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    .line 11
    .line 12
    const/16 v3, 0xce

    .line 13
    .line 14
    if-eq v0, v3, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    .line 17
    .line 18
    const/16 v3, 0xcf

    .line 19
    .line 20
    if-ne v0, v3, :cond_2

    .line 21
    .line 22
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->kkU()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    return-wide v0

    .line 29
    :catchall_0
    :cond_2
    return-wide v1
.end method

.method public WcQ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->cdg:Z

    .line 2
    .line 3
    return v0
.end method

.method public ZYk(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so:I

    return-void
.end method

.method public ZYk(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;)V
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/16 p1, 0xcd

    .line 52
    iput p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    .line 53
    :try_start_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->awB()F

    move-result p1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 55
    new-instance v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk;-><init>()V

    .line 56
    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk;->oJ(F)V

    .line 57
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :catchall_0
    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    if-eqz p1, :cond_3

    .line 59
    iget-boolean p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->mu:Z

    if-eqz p1, :cond_2

    .line 60
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->IUZ()V

    goto :goto_0

    .line 61
    :cond_2
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v0, 0x64

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 62
    :cond_3
    :goto_0
    sget-object p1, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Xe:I

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 63
    iget-boolean p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->wd:Z

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->cY:Z

    if-nez p1, :cond_4

    if-nez v0, :cond_4

    .line 64
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->HL()V

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->cY:Z

    .line 66
    :cond_4
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    .line 67
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 68
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;)V

    goto :goto_1

    :cond_6
    return-void
.end method

.method public ZYk(Z)V
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    if-nez v0, :cond_1

    return-void

    .line 75
    :cond_1
    new-instance v1, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$8;

    invoke-direct {v1, p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$8;-><init>(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public ZYk()Z
    .locals 2

    .line 11
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ZYk(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;II)Z
    .locals 4

    .line 29
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    return v1

    :cond_0
    const/16 p1, -0x3ec

    if-ne p3, p1, :cond_2

    .line 30
    new-instance p1, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;

    invoke-direct {p1, p2, p3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;-><init>(II)V

    .line 31
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_1

    .line 32
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 33
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;

    invoke-interface {v2, p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;)V

    goto :goto_0

    .line 34
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(II)V

    return v1
.end method

.method public awB()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->si:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->QSm:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v2, v0, v2

    .line 10
    .line 11
    if-lez v2, :cond_0

    .line 12
    .line 13
    iget-wide v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Ry:J

    .line 14
    .line 15
    add-long/2addr v2, v0

    .line 16
    return-wide v2

    .line 17
    :cond_0
    iget-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Ry:J

    .line 18
    .line 19
    return-wide v0
.end method

.method public ba()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    const/16 v1, 0xce

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    if-eqz v0, :cond_1

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->mu:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public cFZ()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->mu:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    if-eqz v0, :cond_1

    const/16 v1, 0x64

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dLZ()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    if-eqz v0, :cond_6

    const/16 v1, 0x64

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->mu:Z

    .line 6
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->wd:Z

    const/16 v1, 0x65

    if-nez v0, :cond_3

    .line 7
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->cY:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$12;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$12;-><init>(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Ljava/lang/Runnable;)V

    return-void

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    if-eqz v0, :cond_6

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    .line 11
    :cond_3
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->jFA:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 12
    :cond_4
    new-instance v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$13;

    invoke-direct {v0, p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$13;-><init>(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 13
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    if-eqz v0, :cond_6

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public eZI()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->cFZ:I

    .line 2
    .line 3
    return v0
.end method

.method public ex()I
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->WcQ()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public jFA()V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Jc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    const/16 v2, 0xce

    if-eq v0, v2, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oq()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->mu:Z

    .line 8
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ex:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$oJ;

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$oJ;->oJ(Z)V

    const-wide/16 v0, 0x0

    .line 9
    invoke-direct {p0, v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(J)V

    .line 10
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->HyG:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 12
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->HyG:Ljava/lang/Runnable;

    iget v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->nke:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->LpP:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public kkU()V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Jc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    new-instance v1, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$11;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$11;-><init>(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public oJ(I)V
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 165
    :cond_0
    iput p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->nke:I

    return-void
.end method

.method public oJ(J)V
    .locals 2

    .line 37
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    const/16 v1, 0xcf

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    const/16 v1, 0xce

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    const/16 v1, 0xd1

    if-ne v0, v1, :cond_2

    .line 39
    :cond_1
    new-instance v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$2;-><init>(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;J)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public oJ(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Pfn:Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x1

    .line 43
    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Z)V

    .line 44
    new-instance v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$3;

    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$3;-><init>(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;Landroid/graphics/SurfaceTexture;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public oJ(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 53
    iget v2, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    .line 54
    iget v3, v1, Landroid/os/Message;->what:I

    .line 55
    iget-object v4, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    if-eqz v4, :cond_11

    .line 56
    iget v4, v1, Landroid/os/Message;->what:I

    const/16 v7, 0xcd

    const/16 v8, 0xca

    const/16 v9, 0xcb

    const/16 v10, 0xc9

    const-wide/16 v11, 0x1

    const/16 v13, 0xd0

    const/4 v14, 0x1

    const/16 v15, 0xd1

    const/16 v5, 0xce

    const/16 v6, 0xcf

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_5

    .line 57
    :pswitch_1
    :try_start_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/SurfaceTexture;

    .line 58
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->UN:Landroid/view/Surface;

    .line 59
    iget-object v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    iget-object v2, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->UN:Landroid/view/Surface;

    invoke-interface {v1, v2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->oJ(Landroid/view/Surface;)V

    .line 60
    iget-object v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    invoke-interface {v1, v14}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->ZYk(Z)V

    .line 61
    iget-object v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->LpP:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v11, v12, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 62
    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->LpP()V

    goto/16 :goto_5

    .line 63
    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceHolder;

    .line 64
    iget-object v2, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    invoke-interface {v2, v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->oJ(Landroid/view/SurfaceHolder;)V

    .line 65
    iget-object v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    invoke-interface {v1, v14}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->ZYk(Z)V

    .line 66
    iget-object v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->LpP:Ljava/util/concurrent/CountDownLatch;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v11, v12, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 67
    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->LpP()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/16 :goto_5

    .line 68
    :pswitch_3
    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oq()V

    .line 69
    iget v4, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    if-eq v4, v10, :cond_0

    iget v4, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    if-ne v4, v9, :cond_c

    .line 70
    :cond_0
    :try_start_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    .line 71
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Pfn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->ZYk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Ljava/lang/String;)V

    .line 73
    :cond_1
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Xe()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    iget-object v2, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->eZI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->oJ(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->eZI()Ljava/lang/String;

    goto :goto_0

    .line 76
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Pfn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->si()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 78
    invoke-direct {v0, v1, v2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;Ljava/io/File;)V

    goto :goto_0

    .line 79
    :cond_3
    invoke-direct {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V

    .line 80
    :goto_0
    iput v8, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_5

    .line 81
    :pswitch_4
    iget v4, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    if-eq v4, v5, :cond_4

    iget v4, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    if-eq v4, v6, :cond_4

    iget v4, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    if-ne v4, v15, :cond_c

    .line 82
    :cond_4
    :try_start_2
    iget-object v2, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so:I

    invoke-interface {v2, v3, v4, v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->oJ(JI)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_5

    .line 83
    :pswitch_5
    iget v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    if-eq v1, v7, :cond_5

    iget v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    if-eq v1, v5, :cond_5

    iget v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    if-eq v1, v13, :cond_5

    iget v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    if-eq v1, v6, :cond_5

    iget v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    if-ne v1, v15, :cond_c

    .line 84
    :cond_5
    :try_start_3
    iget-object v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->cFZ()V

    .line 85
    iput v13, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_5

    .line 86
    :pswitch_6
    iget v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    if-eq v1, v8, :cond_6

    iget v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    if-ne v1, v13, :cond_c

    .line 87
    :cond_6
    :try_start_4
    iget-object v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->jFA()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_5

    .line 88
    :pswitch_7
    :try_start_5
    invoke-direct/range {p0 .. p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->jr()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 89
    :catchall_0
    iget-object v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_7

    .line 90
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 91
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;

    invoke-interface {v2, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;->tB(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;)V

    goto :goto_1

    .line 92
    :cond_8
    iput v9, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    goto/16 :goto_5

    .line 93
    :pswitch_8
    :try_start_6
    iget-object v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->PiB()V

    .line 94
    iput v10, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_5

    .line 95
    :pswitch_9
    iget-boolean v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->si:Z

    if-eqz v1, :cond_9

    .line 96
    iget-wide v7, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Ry:J

    iget-wide v9, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->QSm:J

    add-long/2addr v7, v9

    iput-wide v7, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Ry:J

    :cond_9
    const/4 v1, 0x0

    .line 97
    iput-boolean v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->si:Z

    const-wide/16 v7, 0x0

    .line 98
    iput-wide v7, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->QSm:J

    const-wide/high16 v7, -0x8000000000000000L

    .line 99
    iput-wide v7, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->RZ:J

    .line 100
    iget v4, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    if-eq v4, v5, :cond_a

    iget v4, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    if-eq v4, v6, :cond_a

    iget v4, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    if-ne v4, v15, :cond_c

    .line 101
    :cond_a
    :try_start_7
    iget-object v2, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    invoke-interface {v2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->so()V

    .line 102
    iput v6, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    .line 103
    iput-boolean v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->mu:Z

    .line 104
    iget-object v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_b

    .line 105
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_b

    .line 106
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;

    invoke-interface {v2, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;->ex(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 107
    :pswitch_a
    iget v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    if-eq v1, v7, :cond_f

    iget v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    if-eq v1, v6, :cond_f

    iget v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    if-ne v1, v15, :cond_c

    goto :goto_4

    :cond_c
    const/16 v1, 0xc8

    .line 108
    iput v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    .line 109
    iget-boolean v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->dLZ:Z

    if-nez v1, :cond_11

    .line 110
    new-instance v1, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;

    const/16 v4, 0x134

    invoke-direct {v1, v4, v3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;-><init>(II)V

    .line 111
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;->oJ(Ljava/lang/String;)V

    .line 112
    iget-object v2, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_d

    .line 113
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 114
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;

    invoke-interface {v3, v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;)V

    goto :goto_3

    .line 115
    :cond_e
    iput-boolean v14, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->dLZ:Z

    goto :goto_5

    .line 116
    :cond_f
    :goto_4
    :try_start_8
    iget-object v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->ba()V

    .line 117
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Id:J

    .line 118
    iput v5, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    .line 119
    iget-wide v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->awB:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_10

    .line 120
    iget-object v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    iget-wide v2, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->awB:J

    iget v4, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so:I

    invoke-interface {v1, v2, v3, v4}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->oJ(JI)V

    const-wide/16 v1, -0x1

    .line 121
    iput-wide v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->awB:J

    .line 122
    :cond_10
    iget-object v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    if-eqz v1, :cond_11

    .line 123
    iget-boolean v1, v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Ln:Z

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(Z)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    :cond_11
    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public oJ(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 46
    :cond_0
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ba:Landroid/view/SurfaceHolder;

    const/4 v0, 0x1

    .line 47
    invoke-virtual {p0, v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Z)V

    .line 48
    new-instance v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$4;

    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$4;-><init>(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;Landroid/view/SurfaceHolder;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;)V
    .locals 2

    const/16 p1, 0xd1

    .line 135
    iput p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    .line 136
    sget-object p1, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ:Landroid/util/SparseIntArray;

    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Xe:I

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    .line 137
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->HyG:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 141
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;I)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    if-eq v0, p1, :cond_0

    return-void

    .line 132
    :cond_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 133
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;

    invoke-interface {v0, p0, p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;IIII)V
    .locals 0

    .line 158
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/ref/WeakReference;

    if-eqz p4, :cond_0

    .line 159
    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p5

    if-eqz p5, :cond_0

    .line 160
    invoke-virtual {p4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;

    invoke-interface {p4, p0, p2, p3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    if-eqz p1, :cond_2

    .line 51
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->wd:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->cFZ()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->wd:Z

    .line 52
    :cond_2
    new-instance v0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$5;

    invoke-direct {v0, p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$5;-><init>(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V

    invoke-direct {p0, v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public oJ(Z)V
    .locals 2

    .line 18
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 19
    :cond_0
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->HL:Z

    .line 20
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    invoke-interface {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->oJ(Z)V

    return-void

    .line 22
    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    if-eqz v0, :cond_2

    .line 23
    new-instance v1, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$9;

    invoke-direct {v1, p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex$9;-><init>(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public oJ(ZJZ)V
    .locals 2

    .line 24
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->so()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Id()V

    .line 26
    iput-boolean p4, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Ln:Z

    .line 27
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Jc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->mu:Z

    .line 29
    invoke-virtual {p0, p4}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(Z)V

    if-eqz p1, :cond_1

    .line 30
    iput-wide p2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->awB:J

    .line 31
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->cY()V

    goto :goto_0

    .line 32
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(J)V

    .line 33
    :goto_0
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    if-eqz p1, :cond_2

    .line 34
    iget-object p2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->HyG:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 35
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    iget-object p2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->HyG:Ljava/lang/Runnable;

    iget p3, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->nke:I

    int-to-long p3, p3

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 36
    :cond_2
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->LpP:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public oJ()Z
    .locals 1

    .line 40
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->jFA:Z

    return v0
.end method

.method public oJ(F)Z
    .locals 6

    .line 166
    const-string v0, "CSJ_VIDEO_MEDIA"

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    return v3

    .line 167
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    if-nez v2, :cond_1

    return v3

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v2, :cond_2

    return v3

    .line 169
    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    invoke-interface {v2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->Pfn()Landroid/media/PlaybackParams;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 170
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getPlaybackParams error:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 171
    invoke-virtual {v2}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_3
    :goto_1
    cmpl-float v1, v1, p1

    if-eqz v1, :cond_4

    .line 172
    new-instance v1, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk;-><init>()V

    .line 173
    invoke-virtual {v1, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk;->oJ(F)V

    .line 174
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    const/4 p1, 0x1

    return p1

    .line 175
    :goto_2
    const-string v1, "setPlaySpeedRatio error: "

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v3
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;II)Z
    .locals 2

    .line 142
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tb()V

    const/16 p1, 0xc8

    .line 143
    iput p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    .line 144
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI:Lcom/bytedance/sdk/component/utils/IUZ;

    if-eqz p1, :cond_0

    .line 145
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->HyG:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 146
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 147
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Xe()V

    .line 148
    :cond_1
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Jc:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_2

    return v0

    .line 149
    :cond_2
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->Jc:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 150
    new-instance p1, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;

    invoke-direct {p1, p2, p3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;-><init>(II)V

    .line 151
    iget-object p2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_3

    .line 152
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 153
    invoke-virtual {p3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;

    invoke-interface {p3, p0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;)V

    goto :goto_0

    :cond_4
    return v0
.end method

.method public si()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oq:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    .line 11
    .line 12
    const/16 v1, 0xce

    .line 13
    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ:I

    .line 17
    .line 18
    const/16 v1, 0xcf

    .line 19
    .line 20
    if-ne v0, v1, :cond_2

    .line 21
    .line 22
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->kkU:Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;

    .line 23
    .line 24
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;->dLZ()J

    .line 25
    .line 26
    .line 27
    move-result-wide v0

    .line 28
    iput-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oq:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    :catchall_0
    :cond_2
    iget-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oq:J

    .line 31
    .line 32
    return-wide v0
.end method

.method public so()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->PiB:Z

    return v0
.end method

.method public tB(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/tB;)V
    .locals 2

    .line 8
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->tB:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ$oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public tB()Z
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->PiB()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ba()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->cFZ()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
