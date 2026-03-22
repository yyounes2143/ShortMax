.class public Lcom/bytedance/sdk/component/so/tB/ba$oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/so/tB/ba;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oJ"
.end annotation


# instance fields
.field private Pfn:J

.field private ZYk:I

.field private ba:Z

.field private cFZ:Ljava/util/concurrent/TimeUnit;

.field private ex:I

.field private jFA:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private kkU:Ljava/util/concurrent/ThreadFactory;

.field private oJ:Ljava/lang/String;

.field private so:Z

.field private tB:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "cache"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->oJ:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    iput v0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->ZYk:I

    .line 10
    .line 11
    const/16 v0, 0x64

    .line 12
    .line 13
    iput v0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->tB:I

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->ex:I

    .line 17
    .line 18
    const-wide/16 v1, 0x7530

    .line 19
    .line 20
    iput-wide v1, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->Pfn:J

    .line 21
    .line 22
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->ba:Z

    .line 23
    .line 24
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->cFZ:Ljava/util/concurrent/TimeUnit;

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->so:Z

    .line 29
    .line 30
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->jFA:Ljava/util/concurrent/BlockingQueue;

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->kkU:Ljava/util/concurrent/ThreadFactory;

    .line 39
    .line 40
    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/component/so/tB/ba$oJ;)Ljava/util/concurrent/ThreadFactory;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->kkU:Ljava/util/concurrent/ThreadFactory;

    return-object p0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/component/so/tB/ba$oJ;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->Pfn:J

    return-wide v0
.end method

.method static synthetic ba(Lcom/bytedance/sdk/component/so/tB/ba$oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/component/so/tB/ba$oJ;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->tB:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic ex(Lcom/bytedance/sdk/component/so/tB/ba$oJ;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->jFA:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic jFA(Lcom/bytedance/sdk/component/so/tB/ba$oJ;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->so:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic kkU(Lcom/bytedance/sdk/component/so/tB/ba$oJ;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->ba:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/component/so/tB/ba$oJ;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->ZYk:I

    return p0
.end method

.method static synthetic so(Lcom/bytedance/sdk/component/so/tB/ba$oJ;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->ex:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/component/so/tB/ba$oJ;)Ljava/util/concurrent/TimeUnit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->cFZ:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method


# virtual methods
.method public Pfn(I)Lcom/bytedance/sdk/component/so/tB/ba$oJ;
    .locals 0

    .line 1
    return-object p0
.end method

.method public ZYk(I)Lcom/bytedance/sdk/component/so/tB/ba$oJ;
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->tB:I

    return-object p0
.end method

.method public ZYk(Z)Lcom/bytedance/sdk/component/so/tB/ba$oJ;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->so:Z

    return-object p0
.end method

.method public ex(I)Lcom/bytedance/sdk/component/so/tB/ba$oJ;
    .locals 0

    .line 1
    return-object p0
.end method

.method public oJ(I)Lcom/bytedance/sdk/component/so/tB/ba$oJ;
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->ZYk:I

    return-object p0
.end method

.method public oJ(J)Lcom/bytedance/sdk/component/so/tB/ba$oJ;
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->Pfn:J

    return-object p0
.end method

.method public oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/so/tB/ba$oJ;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->oJ:Ljava/lang/String;

    return-object p0
.end method

.method public oJ(Z)Lcom/bytedance/sdk/component/so/tB/ba$oJ;
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->ba:Z

    return-object p0
.end method

.method public oJ()Lcom/bytedance/sdk/component/so/tB/ba;
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->kkU:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcom/bytedance/sdk/component/so/tB/ex;

    iget-object v1, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->oJ:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/so/tB/ex;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->kkU:Ljava/util/concurrent/ThreadFactory;

    .line 8
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->ZYk:I

    if-gez v0, :cond_1

    const/16 v0, 0x8

    .line 9
    iput v0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->ZYk:I

    .line 10
    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->ZYk:I

    if-nez v0, :cond_2

    .line 11
    new-instance v0, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v0}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->jFA:Ljava/util/concurrent/BlockingQueue;

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->jFA:Ljava/util/concurrent/BlockingQueue;

    if-nez v0, :cond_3

    .line 13
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->jFA:Ljava/util/concurrent/BlockingQueue;

    .line 14
    :cond_3
    iget v0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->tB:I

    const/16 v1, 0x64

    if-le v0, v1, :cond_4

    .line 15
    iput v1, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->tB:I

    .line 16
    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->tB:I

    iget v1, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->ZYk:I

    if-ge v0, v1, :cond_5

    .line 17
    iput v1, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->tB:I

    .line 18
    :cond_5
    new-instance v0, Lcom/bytedance/sdk/component/so/tB/ba;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/so/tB/ba;-><init>(Lcom/bytedance/sdk/component/so/tB/ba$oJ;Lcom/bytedance/sdk/component/so/tB/ba$1;)V

    return-object v0
.end method

.method public tB(I)Lcom/bytedance/sdk/component/so/tB/ba$oJ;
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/component/so/tB/ba$oJ;->ex:I

    return-object p0
.end method
