.class public abstract Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;
.implements Lcom/bytedance/sdk/component/utils/IUZ$oJ;
.implements Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/oJ;


# instance fields
.field protected final BTZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected HL:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$ZYk;",
            ">;"
        }
    .end annotation
.end field

.field private HyG:I

.field protected IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

.field protected Id:Z

.field protected Jc:Z

.field protected Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

.field protected LpP:Z

.field protected Pfn:Landroid/graphics/SurfaceTexture;

.field protected PiB:Z

.field protected QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected RZ:Z

.field protected Ry:Z

.field protected UN:J

.field protected WcQ:Z

.field private XAo:J

.field protected Xe:Z

.field protected final ZYk:I

.field protected awB:Z

.field protected ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

.field protected cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

.field protected cY:Z

.field private final cdg:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final dLZ:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected eZI:Z

.field protected ex:Landroid/view/SurfaceHolder;

.field protected jFA:J

.field protected jr:Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

.field protected kkU:J

.field protected mu:Ljava/lang/Runnable;

.field protected nke:J

.field protected oJ:Ljava/lang/String;

.field private ofl:J

.field protected oq:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected si:Z

.field protected final so:Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected final tB:Lcom/bytedance/sdk/component/utils/IUZ;

.field protected final tb:Landroid/view/ViewGroup;

.field private wd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/view/ViewGroup;)V
    .locals 5
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/cY;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "TTAD.VideoController"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v0, 0x64

    .line 9
    .line 10
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk:I

    .line 11
    .line 12
    new-instance v0, Lcom/bytedance/sdk/component/utils/IUZ;

    .line 13
    .line 14
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/utils/IUZ;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/IUZ$oJ;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 22
    .line 23
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    .line 26
    .line 27
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->kkU:J

    .line 28
    .line 29
    new-instance v2, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->BTZ:Ljava/util/List;

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB:Z

    .line 38
    .line 39
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->WcQ:Z

    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->awB:Z

    .line 43
    .line 44
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->si:Z

    .line 45
    .line 46
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ry:Z

    .line 47
    .line 48
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->RZ:Z

    .line 49
    .line 50
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 53
    .line 54
    .line 55
    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    .line 57
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 60
    .line 61
    .line 62
    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oq:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cY:Z

    .line 65
    .line 66
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Jc:Z

    .line 67
    .line 68
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ$1;

    .line 69
    .line 70
    invoke-direct {v4, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;)V

    .line 71
    .line 72
    .line 73
    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->mu:Ljava/lang/Runnable;

    .line 74
    .line 75
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ofl:J

    .line 76
    .line 77
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->wd:Z

    .line 78
    .line 79
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->HyG:I

    .line 80
    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    .line 83
    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cdg:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 89
    .line 90
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->dLZ:Landroid/content/Context;

    .line 91
    .line 92
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    .line 93
    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ:Ljava/lang/String;

    .line 116
    .line 117
    return-void
.end method

.method private eZI()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->PiB()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ZYk;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v0, v0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ba/ex;

    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method private oJ(JZ)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_1

    .line 56
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ofl()V

    .line 57
    :cond_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    invoke-virtual {p3, p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(J)V

    return-void
.end method

.method private ofl()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex(I)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 10
    .line 11
    invoke-virtual {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(ZZ)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Pfn()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->cFZ()V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private tB(I)Z
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ZYk(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public synthetic BTZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oq()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final HL()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ba()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method protected final IUZ()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ba(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oq:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ$5;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/si/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method public Id()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->awB:Z

    .line 2
    .line 3
    return v0
.end method

.method public Jc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->HyG:I

    .line 2
    .line 3
    return v0
.end method

.method protected final Ln()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Jc:Z

    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk(J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Jc()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    int-to-long v3, v3

    .line 25
    div-long/2addr v1, v3

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex(J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(J)V

    .line 34
    .line 35
    .line 36
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->LpP:Z

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oq()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method protected final LpP()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Jc:Z

    .line 3
    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk(J)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA()J

    .line 17
    .line 18
    .line 19
    move-result-wide v1

    .line 20
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Jc()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    int-to-long v3, v3

    .line 25
    div-long/2addr v1, v3

    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex(J)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ()J

    .line 30
    .line 31
    .line 32
    move-result-wide v1

    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(J)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->si()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->oJ(J)V

    .line 41
    .line 42
    .line 43
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->LpP:Z

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(Z)V

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 49
    .line 50
    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final Pfn(J)V
    .locals 3

    .line 3
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    .line 4
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->kkU:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->kkU:J

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ()V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-eqz p1, :cond_1

    .line 8
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->eZI:Z

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0, v1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(ZJZ)V

    :cond_1
    return-void
.end method

.method public final Pfn(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/View;Z)V

    return-void
.end method

.method public Pfn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cY:Z

    return-void
.end method

.method public PiB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->WcQ:Z

    .line 2
    .line 3
    return v0
.end method

.method protected QSm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 2
    .line 3
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ$3;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected RZ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->BTZ:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->BTZ:Ljava/util/List;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/Runnable;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->BTZ:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method protected Ry()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->eZI()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Pfn:Landroid/graphics/SurfaceTexture;

    .line 13
    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->QSm()Landroid/graphics/SurfaceTexture;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    if-eq v0, v1, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Pfn:Landroid/graphics/SurfaceTexture;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Landroid/graphics/SurfaceTexture;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ex:Landroid/view/SurfaceHolder;

    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->RZ()Landroid/view/SurfaceHolder;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eq v0, v1, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ex:Landroid/view/SurfaceHolder;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Landroid/view/SurfaceHolder;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method public final UN()J
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    add-long/2addr v0, v2

    .line 10
    return-wide v0
.end method

.method public final WcQ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Xe:Z

    .line 2
    .line 3
    return v0
.end method

.method public XAo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->LpP:Z

    .line 2
    .line 3
    return v0
.end method

.method public Xe()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->wd:Z

    .line 2
    .line 3
    return v0
.end method

.method public final ZYk()V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->dLZ()V

    .line 46
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Id:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->LpP()V

    :cond_1
    return-void
.end method

.method public ZYk(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->HyG:I

    return-void
.end method

.method public ZYk(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    .line 2
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->kkU:J

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->kkU:J

    return-void
.end method

.method public final ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;I)V
    .locals 0

    .line 32
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ba()V

    :cond_0
    return-void
.end method

.method public ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB:Z

    .line 9
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-eqz p2, :cond_0

    .line 10
    invoke-virtual {p2, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Pfn:Landroid/graphics/SurfaceTexture;

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->RZ()V

    return-void
.end method

.method public ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB:Z

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ex:Landroid/view/SurfaceHolder;

    .line 6
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p2, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Z)V

    :cond_0
    return-void
.end method

.method public final ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/View;ZZ)V

    return-void
.end method

.method public final ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/View;ZZ)V
    .locals 0

    .line 18
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->RZ:Z

    const/4 p2, 0x1

    xor-int/2addr p1, p2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB(Z)V

    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->dLZ:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    .line 20
    :cond_0
    instance-of p1, p1, Landroid/app/Activity;

    if-nez p1, :cond_1

    return-void

    .line 21
    :cond_1
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->RZ:Z

    const/4 p4, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_2

    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    move p1, p4

    .line 22
    :goto_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(I)V

    .line 23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz p1, :cond_4

    .line 24
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(Landroid/view/ViewGroup;)V

    .line 25
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB(Z)V

    goto :goto_1

    .line 26
    :cond_3
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(I)V

    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz p1, :cond_4

    .line 28
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ZYk(Landroid/view/ViewGroup;)V

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {p1, p4}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->tB(Z)V

    .line 30
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->HL:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$ZYk;

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_6

    .line 31
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->RZ:Z

    invoke-interface {p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$ZYk;->oJ(Z)V

    :cond_6
    return-void
.end method

.method public ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V
    .locals 1

    .line 14
    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jr:Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    .line 15
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->dLZ()Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->eZI:Z

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ex(Ljava/lang/String;)V

    return-void
.end method

.method protected final ZYk(Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 5

    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Jc:Z

    .line 35
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;-><init>()V

    .line 36
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk(J)V

    .line 37
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Jc()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex(J)V

    .line 38
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(J)V

    .line 39
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex(I)V

    .line 40
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->si()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->oJ(J)V

    .line 41
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->LpP:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(Z)V

    .line 42
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-static {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    return-void
.end method

.method protected ZYk(Ljava/lang/Runnable;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->BTZ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final ZYk(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->WcQ:Z

    return-void
.end method

.method public awB()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public ba()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final cFZ()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->awB()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public cY()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->si:Z

    .line 2
    .line 3
    return v0
.end method

.method public dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->UN:J

    return-void
.end method

.method public final ex(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/View;)V
    .locals 1

    .line 3
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->RZ:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB(Z)V

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz p1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ZYk(Landroid/view/ViewGroup;)V

    .line 7
    :cond_0
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(I)V

    return-void

    :cond_1
    const/4 p1, 0x3

    .line 8
    invoke-interface {p0, p2, p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->oJ(ZI)V

    return-void
.end method

.method public final ex(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->wd:Z

    return-void
.end method

.method public final jFA()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;->si()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    return-wide v0
.end method

.method public jr()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->eZI:Z

    .line 2
    .line 3
    return v0
.end method

.method public final kkU()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->kkU:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->UN:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2, v3}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ex/oJ;->oJ(JJ)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method protected final mu()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->WGj()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/jr/oJ;->oJ(Ljava/util/List;ZLcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x5

    .line 21
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/ex/oJ/ex;->oJ(Ljava/util/List;ILjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method protected final nke()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Jc:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jr:Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    .line 9
    .line 10
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final oJ(I)V
    .locals 3

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->dLZ:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 33
    :goto_1
    instance-of v2, v0, Landroid/app/Activity;

    if-nez v2, :cond_3

    return-void

    .line 34
    :cond_3
    check-cast v0, Landroid/app/Activity;

    .line 35
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/16 p1, 0x400

    if-nez v1, :cond_4

    .line 36
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p1}, Landroid/view/Window;->setFlags(II)V

    return-void

    .line 37
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->clearFlags(I)V

    return-void
.end method

.method public oJ(J)V
    .locals 0

    .line 83
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->nke:J

    return-void
.end method

.method protected oJ(JJ)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cdg:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 87
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ba/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/ba/oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ba/oJ;->tB()Z

    move-result v0

    if-eqz v0, :cond_1

    long-to-double p1, p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v0

    long-to-double p3, p3

    div-double/2addr p1, p3

    const-wide p3, 0x3fd3333333333333L    # 0.3

    cmpl-double p1, p1, p3

    if-lez p1, :cond_1

    .line 88
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cdg:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 89
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz p1, :cond_1

    .line 90
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/ba/ZYk;

    move-result-object p1

    const-string p2, "videoPercent30"

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    :cond_1
    return-void
.end method

.method public oJ(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x1

    .line 91
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->LpP:Z

    return-void
.end method

.method public oJ(Landroid/os/Message;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;I)V
    .locals 2

    .line 53
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-nez p1, :cond_0

    return-void

    .line 54
    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->XAo:J

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB(I)Z

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(JZ)V

    return-void
.end method

.method public final oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;IZ)V
    .locals 4

    .line 47
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->dLZ:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    :cond_0
    int-to-long p1, p2

    .line 48
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->UN:J

    mul-long/2addr p1, v0

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    div-float/2addr p1, p2

    float-to-long p1, p1

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_1

    long-to-int p1, p1

    int-to-long p1, p1

    .line 49
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->XAo:J

    goto :goto_0

    .line 50
    :cond_1
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->XAo:J

    .line 51
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz p1, :cond_2

    .line 52
    iget-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->XAo:J

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(J)V

    :cond_2
    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB:Z

    .line 15
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Pfn:Landroid/graphics/SurfaceTexture;

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-eqz p1, :cond_0

    .line 17
    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Landroid/graphics/SurfaceTexture;)V

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB:Z

    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Z)V

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->RZ()V

    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/SurfaceHolder;)V
    .locals 0

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB:Z

    .line 10
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ex:Landroid/view/SurfaceHolder;

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-nez p1, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-virtual {p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(Landroid/view/SurfaceHolder;)V

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->RZ()V

    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/View;Z)V
    .locals 0

    .line 2
    return-void
.end method

.method public final oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/View;ZZ)V
    .locals 1

    .line 38
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->awB:Z

    if-eqz p1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk()V

    :cond_0
    if-eqz p3, :cond_1

    .line 40
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->awB:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tb()Z

    move-result p1

    if-nez p1, :cond_1

    .line 41
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->HL()Z

    move-result p2

    const/4 p3, 0x1

    xor-int/2addr p2, p3

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ZYk(ZZ)V

    .line 42
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {p1, p4, p3, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->oJ(ZZZ)V

    .line 43
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ba()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 44
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ba()V

    .line 45
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Pfn()V

    return-void

    .line 46
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ba()V

    return-void
.end method

.method public final oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$ZYk;)V
    .locals 1

    .line 31
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->HL:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$ex;)V
    .locals 0

    .line 3
    return-void
.end method

.method public final oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->IUZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;

    return-void
.end method

.method protected final oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;)V
    .locals 5

    const/4 v0, 0x1

    .line 68
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Jc:Z

    .line 69
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;-><init>()V

    .line 70
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(J)V

    .line 71
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Jc()I

    move-result v3

    int-to-long v3, v3

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex(J)V

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk(J)V

    .line 73
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/oJ;)V

    .line 74
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->LpP:Z

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oq()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->tB(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)V

    return-void
.end method

.method public final oJ(Lcom/bytedance/sdk/openadsdk/core/widget/RZ$oJ;Ljava/lang/String;)V
    .locals 1

    .line 77
    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ$6;->oJ:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    invoke-interface {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->tB()V

    const/4 p1, 0x0

    .line 79
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->si:Z

    .line 80
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ry:Z

    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-interface {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->ex()V

    return-void

    .line 82
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk()V

    return-void
.end method

.method protected final oJ(Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 6

    .line 58
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Jc:Z

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA()J

    move-result-wide v3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jr()Z

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(JZ)V

    .line 62
    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Xe()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->oJ(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex(J)V

    .line 65
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->WcQ()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk(Z)V

    .line 66
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->LpP:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(Z)V

    .line 67
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-static {v1, v2, v0, p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Landroid/content/Context;Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    return-void
.end method

.method protected oJ(Ljava/lang/Runnable;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->Id()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB:Z

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk(Ljava/lang/Runnable;)V

    return-void
.end method

.method public oJ(Z)V
    .locals 1

    .line 20
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->awB:Z

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz v0, :cond_0

    .line 22
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->ex(Z)V

    :cond_0
    return-void
.end method

.method public final oJ(ZLjava/lang/String;)V
    .locals 1

    .line 23
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->eZI:Z

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk(Z)V

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;ZLjava/lang/String;)V

    .line 27
    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    if-eqz p2, :cond_2

    .line 28
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ZYk/oJ;->oJ()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 29
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->Ln:Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;->oJ(Z)V

    return-void

    .line 30
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB:Lcom/bytedance/sdk/component/utils/IUZ;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ$4;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public oJ(F)Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->oJ(F)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Z
    .locals 0

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->so:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ba(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ$2;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/si/tB;->oJ(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final oq()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 2
    .line 3
    return-object v0
.end method

.method public si()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->nke:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final so()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->eZI()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public tB(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ofl:J

    return-void
.end method

.method public final tB(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/View;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;->jFA()V

    :cond_0
    const/4 p1, 0x1

    const/4 p2, 0x3

    .line 5
    invoke-interface {p0, p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB;->oJ(ZI)V

    return-void
.end method

.method protected tB(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->RZ:Z

    return-void
.end method

.method public final tb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/tB/ex;->ZYk()Z

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
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method
