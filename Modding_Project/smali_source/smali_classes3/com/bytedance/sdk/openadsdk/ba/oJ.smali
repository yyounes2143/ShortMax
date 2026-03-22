.class public Lcom/bytedance/sdk/openadsdk/ba/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile oJ:Lcom/bytedance/sdk/openadsdk/ba/oJ;


# instance fields
.field private BTZ:[I

.field private Pfn:[I

.field private PiB:Z

.field private WcQ:Z

.field private ZYk:Z

.field private awB:I

.field private ba:[I

.field private cFZ:[I

.field private dLZ:Z

.field private eZI:Z

.field private ex:Z

.field private jFA:[I

.field private kkU:Z

.field private si:Z

.field private so:[I

.field private tB:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ba/oJ;->ZYk()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/ba/oJ;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->tB:Z

    return p1
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/ba/oJ;[I)[I
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->so:[I

    return-object p1
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/ba/oJ;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->si:Z

    return p1
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/ba/oJ;[I)[I
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->ba:[I

    return-object p1
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/ba/oJ;[Ljava/lang/String;)[I
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/ba/oJ;->ZYk([Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method private ZYk([Ljava/lang/String;)[I
    .locals 2

    .line 5
    array-length v0, p1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 6
    aget-object p1, p1, v1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/ba/oJ;->tB([Ljava/lang/String;)[I

    move-result-object p1

    return-object p1

    .line 7
    :cond_0
    new-array p1, v1, [I

    return-object p1
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/ba/oJ;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->ex:Z

    return p1
.end method

.method static synthetic ba(Lcom/bytedance/sdk/openadsdk/ba/oJ;[I)[I
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->jFA:[I

    return-object p1
.end method

.method static synthetic cFZ(Lcom/bytedance/sdk/openadsdk/ba/oJ;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->kkU:Z

    return p1
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/ba/oJ;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->ZYk:Z

    return p1
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/ba/oJ;[I)[I
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->BTZ:[I

    return-object p1
.end method

.method static synthetic jFA(Lcom/bytedance/sdk/openadsdk/ba/oJ;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->PiB:Z

    return p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/ba/oJ;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->awB:I

    return p1
.end method

.method public static oJ()Lcom/bytedance/sdk/openadsdk/ba/oJ;
    .locals 2

    .line 6
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/ba/oJ;

    if-nez v0, :cond_1

    .line 7
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/tB;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/ba/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/ba/oJ;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/bytedance/sdk/openadsdk/ba/oJ;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/ba/oJ;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/ba/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/ba/oJ;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    .line 11
    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/ba/oJ;

    return-object v0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/ba/oJ;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->WcQ:Z

    return p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/ba/oJ;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->WcQ:Z

    return p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/ba/oJ;[Ljava/lang/String;)Z
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/ba/oJ;->oJ([Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private oJ([Ljava/lang/String;)Z
    .locals 4

    .line 12
    array-length v0, p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    const-string v3, "session"

    if-ne v0, v1, :cond_0

    .line 13
    aget-object p1, p1, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 14
    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    if-ne v0, v2, :cond_1

    .line 15
    aget-object p1, p1, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/ba/oJ;[I)[I
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->Pfn:[I

    return-object p1
.end method

.method static synthetic so(Lcom/bytedance/sdk/openadsdk/ba/oJ;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->dLZ:Z

    return p1
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/ba/oJ;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->eZI:Z

    return p1
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/ba/oJ;[I)[I
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->cFZ:[I

    return-object p1
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/ba/oJ;[Ljava/lang/String;)[I
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/ba/oJ;->tB([Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method private tB([Ljava/lang/String;)[I
    .locals 7

    .line 4
    array-length v0, p1

    new-array v1, v0, [I

    .line 5
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v6, p1, v4

    .line 6
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aput v6, v1, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    :catch_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eq v5, v0, :cond_2

    .line 7
    new-array p1, v5, [I

    .line 8
    invoke-static {v1, v3, p1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public BTZ()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->so:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public Pfn()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->eZI:Z

    return v0
.end method

.method public PiB()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->jFA:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public Ry()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->si:Z

    .line 2
    .line 3
    return v0
.end method

.method public WcQ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->kkU:Z

    .line 2
    .line 3
    return v0
.end method

.method public ZYk()V
    .locals 2

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/ba/oJ$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/ba/oJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/ba/oJ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public awB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->dLZ:Z

    .line 2
    .line 3
    return v0
.end method

.method public ba()Z
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->ZYk:Z

    return v0
.end method

.method public cFZ()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->tB:Z

    return v0
.end method

.method public dLZ()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->cFZ:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public eZI()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->BTZ:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()I
    .locals 1

    .line 3
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->awB:I

    return v0
.end method

.method public jFA()[I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->Pfn:[I

    return-object v0
.end method

.method public kkU()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->ba:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public si()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->PiB:Z

    .line 2
    .line 3
    return v0
.end method

.method public so()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->ex:Z

    return v0
.end method

.method public tB()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ba/oJ;->WcQ:Z

    return v0
.end method
