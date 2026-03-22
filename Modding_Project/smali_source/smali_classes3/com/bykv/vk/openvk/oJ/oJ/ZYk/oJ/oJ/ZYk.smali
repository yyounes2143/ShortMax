.class public Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/tB;


# instance fields
.field private Pfn:J

.field private final ZYk:Ljava/lang/Object;

.field private volatile ba:J

.field private volatile cFZ:I

.field private final dLZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

.field private ex:Ljava/io/File;

.field private volatile jFA:Z

.field private kkU:Ljava/io/RandomAccessFile;

.field private volatile oJ:J

.field private volatile so:Z

.field private tB:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, -0x80000000

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->oJ:J

    .line 8
    .line 9
    new-instance p1, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ZYk:Ljava/lang/Object;

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    iput-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->Pfn:J

    .line 19
    .line 20
    const-wide/16 v0, -0x1

    .line 21
    .line 22
    iput-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ba:J

    .line 23
    .line 24
    const/16 p1, -0x64

    .line 25
    .line 26
    iput p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->cFZ:I

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->so:Z

    .line 30
    .line 31
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->jFA:Z

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->kkU:Ljava/io/RandomAccessFile;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->dLZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    .line 37
    .line 38
    :try_start_0
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Pfn()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->si()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-static {p1, v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ex/ZYk;->ZYk(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->tB:Ljava/io/File;

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Pfn()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->si()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-static {p1, v0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/ex/ZYk;->tB(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ex:Ljava/io/File;

    .line 65
    .line 66
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ex()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_0

    .line 71
    .line 72
    new-instance p1, Ljava/io/RandomAccessFile;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ex:Ljava/io/File;

    .line 75
    .line 76
    const-string v1, "r"

    .line 77
    .line 78
    invoke-direct {p1, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->kkU:Ljava/io/RandomAccessFile;

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_0
    new-instance p1, Ljava/io/RandomAccessFile;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->tB:Ljava/io/File;

    .line 87
    .line 88
    const-string v1, "rw"

    .line 89
    .line 90
    invoke-direct {p1, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->kkU:Ljava/io/RandomAccessFile;

    .line 94
    .line 95
    :goto_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ex()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_1

    .line 100
    .line 101
    iget-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->tB:Ljava/io/File;

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 104
    .line 105
    .line 106
    move-result-wide v0

    .line 107
    iput-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->Pfn:J

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->oJ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    .line 112
    :cond_1
    return-void

    .line 113
    :catchall_0
    invoke-virtual {p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->eZI()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method private Pfn()J
    .locals 2

    .line 2
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ex:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->tB:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic Pfn(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ZYk:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic ZYk(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->Pfn:J

    return-wide v0
.end method

.method static synthetic ba(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;)Ljava/io/RandomAccessFile;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->kkU:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method private ba()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ZYk:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ex()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->dLZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->eZI()Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->dLZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->si()Ljava/lang/String;

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 6
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->tB:Ljava/io/File;

    iget-object v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ex:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->kkU:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    .line 9
    :cond_1
    :goto_0
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ex:Ljava/io/File;

    const-string v3, "rw"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->kkU:Ljava/io/RandomAccessFile;

    .line 10
    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->dLZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->si()Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->dLZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->eZI()Ljava/lang/String;

    goto :goto_2

    .line 11
    :cond_2
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error renaming file "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->tB:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ex:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for completion!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 12
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 13
    :goto_2
    :try_start_3
    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    .line 14
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 15
    :goto_3
    monitor-exit v0

    throw v1
.end method

.method static synthetic cFZ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->tB:Ljava/io/File;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic ex(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;)Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->dLZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    return-object p0
.end method

.method private ex()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ex:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method static synthetic oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->oJ:J

    return-wide p1
.end method

.method private oJ(ILjava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->jFA:Z

    .line 23
    iput p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->cFZ:I

    .line 24
    iget-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ba:J

    iput-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->oJ:J

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, " "

    const-string v2, "handleFailResponse: "

    filled-new-array {v2, v0, v1, p2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "CSJ_MediaDLPlay"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->ZYk(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->dLZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->dLZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->tB()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 28
    :try_start_0
    const-string v3, "error_real_code"

    invoke-virtual {v0, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 29
    const-string p1, "error_real_msg"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 30
    invoke-static {v1, v2, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method static synthetic oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->oJ(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->jFA:Z

    return p0
.end method

.method static synthetic oJ(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->jFA:Z

    return p1
.end method

.method static synthetic so(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ba()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic tB(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->oJ:J

    return-wide v0
.end method


# virtual methods
.method public ZYk()V
    .locals 3

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->so:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->kkU:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->tB:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ex:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->so:Z

    return-void
.end method

.method public oJ(J[BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    :try_start_0
    iget-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->oJ:J

    cmp-long v0, p1, v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 32
    :goto_0
    iget-boolean v3, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->so:Z

    if-nez v3, :cond_6

    .line 33
    iget-object v3, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ZYk:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    :try_start_1
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->Pfn()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_1

    .line 35
    iget-object v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->kkU:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 36
    iget-object v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->kkU:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p3, p4, p5}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v2

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_1
    add-int/lit8 v0, v0, 0x21

    .line 37
    iget-object v4, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ZYk:Ljava/lang/Object;

    const-wide/16 v5, 0x21

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 38
    :goto_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v2, :cond_2

    return v2

    .line 39
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->dLZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 40
    iget v3, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->cFZ:I

    const/16 v4, -0x64

    if-eq v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->jFA:Z

    if-eqz v3, :cond_3

    iget-wide v3, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->oJ:J

    iget-wide v5, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ba:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    .line 41
    :cond_3
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :cond_4
    :goto_2
    const/16 v3, 0x4e20

    if-ge v0, v3, :cond_5

    goto :goto_0

    .line 42
    :cond_5
    new-instance p1, Ljava/net/SocketTimeoutException;

    invoke-direct {p1}, Ljava/net/SocketTimeoutException;-><init>()V

    throw p1

    .line 43
    :goto_3
    monitor-exit v3

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_6
    return v1

    .line 44
    :goto_4
    instance-of p2, p1, Ljava/io/IOException;

    if-eqz p2, :cond_7

    .line 45
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 46
    :cond_7
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1
.end method

.method public oJ()V
    .locals 6

    .line 5
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->ex()Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->ex()Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;->ZYk()Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;

    const-string v1, "v_cache"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;-><init>(Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->dLZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->RZ()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->oJ(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->dLZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    .line 9
    invoke-virtual {v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->QSm()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5, v3}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->ZYk(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->dLZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    .line 10
    invoke-virtual {v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oq()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5, v3}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->tB(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ$oJ;->oJ()Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->dLZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->si()Ljava/lang/String;

    .line 13
    new-instance v1, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bytes="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->Pfn:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 14
    const-string v3, "RANGE"

    invoke-virtual {v1, v3, v2}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->dLZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;

    .line 15
    invoke-virtual {v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->eZI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->oJ()Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    move-result-object v1

    const-string v2, "videoLoadWhenPlaying"

    .line 17
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    move-result-object v1

    const/16 v2, 0x9

    .line 18
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->oJ(I)Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ZYk/oJ/BTZ$oJ;->ZYk()Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;

    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/BTZ;)Lcom/bytedance/sdk/component/ZYk/oJ/ZYk;

    move-result-object v0

    .line 21
    new-instance v1, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk$1;

    invoke-direct {v1, p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk$1;-><init>(Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ZYk/oJ/ZYk;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/tB;)V

    return-void
.end method

.method public tB()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ex()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ex:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->oJ:J

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ZYk:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 5
    :cond_1
    :try_start_0
    iget-wide v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->oJ:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v4, -0x80000000

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    add-int/lit8 v1, v1, 0xf

    .line 6
    :try_start_1
    iget-object v2, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->ZYk:Ljava/lang/Object;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x4e20

    if-le v1, v2, :cond_1

    .line 7
    :try_start_2
    monitor-exit v0

    const-wide/16 v0, -0x1

    return-wide v0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 8
    :catch_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "total length InterruptException"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :cond_2
    monitor-exit v0

    .line 10
    :goto_0
    iget-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/ZYk/oJ/oJ/ZYk;->oJ:J

    return-wide v0

    .line 11
    :goto_1
    monitor-exit v0

    throw v1
.end method
