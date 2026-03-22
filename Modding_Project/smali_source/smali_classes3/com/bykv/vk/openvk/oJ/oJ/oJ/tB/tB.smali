.class public Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private BTZ:I

.field private HL:Lorg/json/JSONObject;

.field private Id:I

.field public Pfn:I

.field private PiB:Ljava/lang/String;

.field private QSm:I

.field private RZ:Z

.field private Ry:Z

.field private WcQ:I

.field private Xe:I

.field public ZYk:Ljava/lang/String;

.field private awB:I

.field private ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

.field private cFZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

.field private cY:I

.field private dLZ:I

.field private eZI:Ljava/lang/String;

.field public final ex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private jFA:Z

.field private jr:I

.field private kkU:I

.field protected oJ:F

.field private oq:I

.field private si:J

.field private so:Ljava/lang/String;

.field public tB:I

.field private tb:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x32000

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->kkU:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->dLZ:I

    .line 11
    .line 12
    iput v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->BTZ:I

    .line 13
    .line 14
    const/high16 v1, -0x40800000    # -1.0f

    .line 15
    .line 16
    iput v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ:F

    .line 17
    .line 18
    iput v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->QSm:I

    .line 19
    .line 20
    iput v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oq:I

    .line 21
    .line 22
    new-instance v1, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ex:Ljava/util/HashMap;

    .line 28
    .line 29
    const/16 v1, 0x2710

    .line 30
    .line 31
    iput v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Id:I

    .line 32
    .line 33
    iput v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->cY:I

    .line 34
    .line 35
    iput v1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->jr:I

    .line 36
    .line 37
    iput v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Xe:I

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Pfn:I

    .line 41
    .line 42
    new-instance v0, Lorg/json/JSONObject;

    .line 43
    .line 44
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 45
    .line 46
    .line 47
    iput-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->HL:Lorg/json/JSONObject;

    .line 48
    .line 49
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->so:Ljava/lang/String;

    .line 50
    .line 51
    iput-object p2, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 52
    .line 53
    iput-object p3, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->cFZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 54
    .line 55
    iput p4, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->QSm:I

    .line 56
    .line 57
    iput p5, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oq:I

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public BTZ()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->WcQ()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->cFZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->Pfn()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    return-wide v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->Pfn()J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    return-wide v0

    .line 23
    :cond_1
    const-wide/16 v0, 0x0

    .line 24
    .line 25
    return-wide v0
.end method

.method public Id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Xe:I

    .line 2
    .line 3
    return v0
.end method

.method public declared-synchronized Pfn(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ex:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public Pfn()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->so:Ljava/lang/String;

    return-object v0
.end method

.method public Pfn(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Id:I

    return-void
.end method

.method public PiB()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->WcQ()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->cFZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->oq()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->oq()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_1
    const/4 v0, 0x1

    .line 24
    return v0
.end method

.method public QSm()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->cY:I

    .line 2
    .line 3
    return v0
.end method

.method public RZ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Id:I

    .line 2
    .line 3
    return v0
.end method

.method public Ry()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->QSm:I

    .line 2
    .line 3
    return v0
.end method

.method public WcQ()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oq:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->cFZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->dLZ()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB;->ba()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x2

    .line 25
    if-ne v0, v2, :cond_0

    .line 26
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 28
    .line 29
    const/16 v2, 0x1a

    .line 30
    .line 31
    if-lt v0, v2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->QSm:I

    .line 35
    .line 36
    if-ne v0, v1, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :goto_0
    return v1
.end method

.method public Xe()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->jFA:Z

    .line 2
    .line 3
    return v0
.end method

.method public ZYk(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->WcQ:I

    return-void
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->PiB:Ljava/lang/String;

    return-void
.end method

.method public ZYk(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->jFA:Z

    return-void
.end method

.method public ZYk()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->tb:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public awB()F
    .locals 3

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ:F

    .line 2
    .line 3
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    .line 5
    cmpl-float v2, v0, v1

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return v0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->WcQ()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->cFZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->so()F

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    return v0

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->so()F

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    return v0

    .line 32
    :cond_2
    return v1
.end method

.method public ba()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->WcQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->cFZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->awB()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->awB()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public ba(I)V
    .locals 0

    .line 5
    iput p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->cY:I

    return-void
.end method

.method public cFZ(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->jr:I

    return-void
.end method

.method public cFZ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->RZ:Z

    return v0
.end method

.method public cY()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 2
    .line 3
    return-object v0
.end method

.method public dLZ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Ry:Z

    .line 2
    .line 3
    return v0
.end method

.method public eZI()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->WcQ()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->cFZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->dLZ()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->dLZ()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return-object v0
.end method

.method public ex()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->HL:Lorg/json/JSONObject;

    const-string v1, "pitaya_cache_size"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ex(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->tB:I

    return-void
.end method

.method public ex(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ZYk:Ljava/lang/String;

    return-void
.end method

.method public jFA()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->awB:I

    .line 2
    .line 3
    return v0
.end method

.method public jr()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->cFZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 2
    .line 3
    return-object v0
.end method

.method public kkU()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->si:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public oJ(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->tb:I

    return-void
.end method

.method public oJ(J)V
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->si:J

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->so:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized oJ(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ex:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public oJ(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Ry:Z

    return-void
.end method

.method public oJ()Z
    .locals 3

    .line 2
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->tb:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public oq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->jr:I

    .line 2
    .line 3
    return v0
.end method

.method public si()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->WcQ()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->cFZ:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->WcQ()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ba:Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->WcQ()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return-object v0
.end method

.method public so()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->WcQ:I

    return v0
.end method

.method public so(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->Xe:I

    return-void
.end method

.method public tB()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->HL:Lorg/json/JSONObject;

    return-object v0
.end method

.method public tB(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->awB:I

    return-void
.end method

.method public tB(Ljava/lang/String;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->eZI:Ljava/lang/String;

    return-void
.end method
