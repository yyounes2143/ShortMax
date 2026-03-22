.class public Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public BTZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ;",
            ">;"
        }
    .end annotation
.end field

.field private Id:Ljava/lang/String;

.field public Pfn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;"
        }
    .end annotation
.end field

.field private final PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private QSm:Z

.field private RZ:Z

.field private Ry:Z

.field private final WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public ZYk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;"
        }
    .end annotation
.end field

.field private awB:Z

.field public ba:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;"
        }
    .end annotation
.end field

.field public cFZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;"
        }
    .end annotation
.end field

.field public dLZ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/ZYk;",
            ">;"
        }
    .end annotation
.end field

.field private eZI:J

.field public ex:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;"
        }
    .end annotation
.end field

.field public jFA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;"
        }
    .end annotation
.end field

.field public kkU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;"
        }
    .end annotation
.end field

.field public oJ:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;"
        }
    .end annotation
.end field

.field private oq:Ljava/lang/String;

.field private si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field public so:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;"
        }
    .end annotation
.end field

.field public tB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ:Ljava/util/List;

    .line 25
    .line 26
    new-instance v0, Ljava/util/ArrayList;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ZYk:Ljava/util/List;

    .line 32
    .line 33
    new-instance v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->tB:Ljava/util/List;

    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ex:Ljava/util/List;

    .line 46
    .line 47
    new-instance v0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->Pfn:Ljava/util/List;

    .line 53
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ba:Ljava/util/List;

    .line 60
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->cFZ:Ljava/util/List;

    .line 67
    .line 68
    new-instance v0, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->so:Ljava/util/List;

    .line 74
    .line 75
    new-instance v0, Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .line 79
    .line 80
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->jFA:Ljava/util/List;

    .line 81
    .line 82
    new-instance v0, Ljava/util/ArrayList;

    .line 83
    .line 84
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->kkU:Ljava/util/List;

    .line 88
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->dLZ:Ljava/util/List;

    .line 95
    .line 96
    new-instance v0, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->BTZ:Ljava/util/List;

    .line 102
    .line 103
    return-void
.end method

.method private ZYk()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->Id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->Id:Ljava/lang/String;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->Id:Ljava/lang/String;

    return-object v0
.end method

.method private ex()Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->BTZ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ;

    .line 7
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ;->ZYk()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;I)V
    .locals 2

    .line 36
    invoke-static {}, Lcom/bytedance/sdk/component/utils/jFA;->ZYk()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private oJ(Ljava/lang/String;)V
    .locals 3

    .line 37
    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oq:Ljava/lang/String;

    const-string v2, "vast_play_track"

    invoke-static {p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 41
    :cond_0
    const-string v0, "firstQuartile"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 42
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oq:Ljava/lang/String;

    const-string v2, "track_first_quartile"

    invoke-static {p1, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 43
    :cond_1
    const-string v0, "midpoint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oq:Ljava/lang/String;

    const-string v2, "track_midpoint"

    invoke-static {p1, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 45
    :cond_2
    const-string v0, "thirdQuartile"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 46
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oq:Ljava/lang/String;

    const-string v2, "track_third_quartile"

    invoke-static {p1, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    return-void
.end method

.method private oJ(JLjava/util/List;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;",
            ")Z"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .line 51
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(JLjava/util/List;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;)Z

    move-result p1

    return p1
.end method

.method private oJ(JLjava/util/List;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;",
            ")Z"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->dLZ()Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v7, v1

    .line 50
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ZYk()Ljava/lang/String;

    move-result-object v9

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p1

    move-object v8, p5

    invoke-static/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private tB()Lorg/json/JSONArray;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->dLZ:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/ZYk;

    .line 7
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/ZYk;->ZYk()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public BTZ(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->kkU:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public Pfn(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->WcQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ba:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(JLjava/util/List;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;)Z

    :cond_0
    return-void
.end method

.method public Pfn(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;)V"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ba:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public ZYk(J)V
    .locals 7

    .line 1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->tB:Ljava/util/List;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    long-to-float v2, p1

    const-string v4, "pause"

    invoke-direct {v0, v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;F)V

    move-object v5, v0

    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(JLjava/util/List;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oq:Ljava/lang/String;

    const-string v0, "track_pause"

    invoke-static {p1, p2, v0, v6}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public ZYk(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;)V"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->tB:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public ba(J)V
    .locals 7

    .line 1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->cFZ:Ljava/util/List;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

    const-string v1, "skip"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    move-object v5, v0

    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(JLjava/util/List;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oq:Ljava/lang/String;

    const-string v0, "track_skip"

    invoke-static {p1, p2, v0, v6}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public ba(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->cFZ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public cFZ(J)V
    .locals 6

    .line 1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->so:Ljava/util/List;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    if-eqz v0, :cond_0

    const-string v0, "click"

    goto :goto_0

    :cond_0
    const-string v0, "clickTracking"

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {v5, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(JLjava/util/List;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oq:Ljava/lang/String;

    const-string v0, "track_video_click"

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public cFZ(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->so:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public dLZ(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->jFA:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public ex(J)V
    .locals 6

    .line 1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->Pfn:Ljava/util/List;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    if-eqz v0, :cond_0

    const-string v0, "video_progress"

    goto :goto_0

    :cond_0
    const-string v0, "complete"

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v5, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;F)V

    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(JLjava/util/List;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oq:Ljava/lang/String;

    const-string v0, "track_complete"

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public ex(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->Pfn:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public jFA(J)V
    .locals 7

    .line 1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->kkU:Ljava/util/List;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    long-to-float v2, p1

    const-string v4, "unmute"

    invoke-direct {v0, v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;F)V

    move-object v5, v0

    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(JLjava/util/List;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oq:Ljava/lang/String;

    const-string v0, "track_unmute"

    invoke-static {p1, p2, v0, v6}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public jFA(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->BTZ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->BTZ:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public kkU(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public oJ(JF)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JF)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 53
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->dLZ:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 54
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->dLZ:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/ZYk;

    .line 55
    invoke-virtual {v3, p3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/ZYk;->oJ(F)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 56
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_1
    :goto_1
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->BTZ:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge v1, p3, :cond_3

    .line 58
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->BTZ:Ljava/util/List;

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ;

    .line 59
    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ;->oJ(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public oJ()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 63
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "errorTrackers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ZYk:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "impressionTrackers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->tB:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "pauseTrackers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ex:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "resumeTrackers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->Pfn:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "completeTrackers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ba:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "closeTrackers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->cFZ:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "skipTrackers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->so:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "clickTrackers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->jFA:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "muteTrackers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->kkU:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "unMuteTrackers"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v1, "fractionalTrackers"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->tB()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v1, "absoluteTrackers"

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ex()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public oJ(J)V
    .locals 7

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->PiB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ZYk:Ljava/util/List;

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    if-eqz v0, :cond_0

    const-string v0, "show_impression"

    goto :goto_0

    :cond_0
    const-string v0, "impression"

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {v6, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(JLjava/util/List;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oq:Ljava/lang/String;

    const-string v0, "track_impression"

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public oJ(JJLcom/bytedance/sdk/openadsdk/core/dLZ/ba;)V
    .locals 9

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->eZI:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_b

    cmp-long v2, p3, v0

    if-lez v2, :cond_b

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->eZI:J

    long-to-float v2, p1

    long-to-float p3, p3

    div-float/2addr v2, p3

    .line 10
    invoke-virtual {p0, p1, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(JF)Ljava/util/List;

    move-result-object v6

    const/high16 p3, 0x3e800000    # 0.25f

    cmpl-float p4, v2, p3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz p4, :cond_4

    .line 11
    iget-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->Ry:Z

    if-nez p4, :cond_4

    .line 12
    const-string p4, "firstQuartile"

    invoke-direct {p0, p4}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(Ljava/lang/String;)V

    .line 13
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->Ry:Z

    if-eqz p5, :cond_1

    const/4 v2, 0x6

    .line 14
    invoke-direct {p0, p5, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;I)V

    .line 15
    :cond_1
    iget-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    if-nez p5, :cond_2

    .line 16
    new-instance p5, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {p5, p4, v2, p3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;F)V

    :goto_0
    move v2, p3

    goto :goto_1

    :cond_2
    move v2, p3

    :cond_3
    move-object p5, v3

    goto :goto_1

    :cond_4
    const/high16 p3, 0x3f000000    # 0.5f

    cmpl-float p4, v2, p3

    if-ltz p4, :cond_6

    .line 17
    iget-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->RZ:Z

    if-nez p4, :cond_6

    .line 18
    const-string p4, "midpoint"

    invoke-direct {p0, p4}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(Ljava/lang/String;)V

    .line 19
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->RZ:Z

    if-eqz p5, :cond_5

    const/4 v2, 0x7

    .line 20
    invoke-direct {p0, p5, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;I)V

    .line 21
    :cond_5
    iget-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    if-nez p5, :cond_2

    .line 22
    new-instance p5, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {p5, p4, v2, p3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;F)V

    goto :goto_0

    :cond_6
    const/high16 p3, 0x3f400000    # 0.75f

    cmpl-float p4, v2, p3

    if-ltz p4, :cond_3

    .line 23
    iget-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->QSm:Z

    if-nez p4, :cond_3

    .line 24
    const-string p4, "thirdQuartile"

    invoke-direct {p0, p4}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(Ljava/lang/String;)V

    .line 25
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->QSm:Z

    if-eqz p5, :cond_7

    const/16 v2, 0x8

    .line 26
    invoke-direct {p0, p5, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;I)V

    .line 27
    :cond_7
    iget-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    if-nez p5, :cond_2

    .line 28
    new-instance p5, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {p5, p4, v2, p3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;F)V

    goto :goto_0

    :goto_1
    const p3, 0x3cf5c28f    # 0.03f

    cmpg-float p3, v2, p3

    if-gez p3, :cond_8

    const/4 v2, 0x0

    .line 29
    :cond_8
    iget-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    if-nez p3, :cond_9

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_9

    const/4 p3, 0x0

    .line 30
    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;

    .line 31
    instance-of p4, p3, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ;

    if-eqz p4, :cond_9

    check-cast p3, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ;->oJ()J

    move-result-wide p3

    cmp-long p3, p3, v0

    if-nez p3, :cond_9

    .line 32
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oq:Ljava/lang/String;

    const-string p5, "track_start"

    invoke-static {p3, p4, p5, v3}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 33
    new-instance p5, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

    const-string p3, "start"

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {p5, p3, p4, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;F)V

    .line 34
    :cond_9
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_b

    if-eqz p5, :cond_a

    move-object v8, p5

    goto :goto_2

    .line 35
    :cond_a
    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

    const-string p4, "video_progress"

    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-direct {p3, p4, p5, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;F)V

    move-object v8, p3

    :goto_2
    const/4 v7, 0x0

    move-object v3, p0

    move-wide v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(JLjava/util/List;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;)Z

    :cond_b
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;)V
    .locals 1

    .line 94
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->kkU(Ljava/util/List;)V

    .line 95
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ZYk:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(Ljava/util/List;)V

    .line 96
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->tB:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ZYk(Ljava/util/List;)V

    .line 97
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ex:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->tB(Ljava/util/List;)V

    .line 98
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->Pfn:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ex(Ljava/util/List;)V

    .line 99
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ba:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->Pfn(Ljava/util/List;)V

    .line 100
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->cFZ:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ba(Ljava/util/List;)V

    .line 101
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->so:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->cFZ(Ljava/util/List;)V

    .line 102
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->jFA:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->dLZ(Ljava/util/List;)V

    .line 103
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->kkU:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->BTZ(Ljava/util/List;)V

    .line 104
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->dLZ:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->so(Ljava/util/List;)V

    .line 105
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->BTZ:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->jFA(Ljava/util/List;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;)V
    .locals 7

    .line 1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ:Ljava/util/List;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v2, 0x0

    const-string v4, "error"

    invoke-direct {v0, v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;F)V

    move-object v5, v0

    :goto_0
    const-wide/16 v1, -0x1

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(JLjava/util/List;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oq:Ljava/lang/String;

    const-string v1, "track_error"

    invoke-static {p1, v0, v1, v6}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 1

    .line 87
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 88
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ex()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oq:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Br()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    return-void
.end method

.method public oJ(Ljava/lang/String;F)V
    .locals 1

    .line 92
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/ZYk$oJ;

    invoke-direct {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/ZYk$oJ;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/ZYk$oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/ZYk;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->so(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public oJ(Ljava/lang/String;J)V
    .locals 2

    .line 90
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ$oJ;

    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ$oJ;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ$oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/oJ;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->jFA(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public oJ(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;)V"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ZYk:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public oJ(Lorg/json/JSONObject;)V
    .locals 2

    .line 75
    const-string v0, "errorTrackers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->kkU(Ljava/util/List;)V

    .line 76
    const-string v0, "impressionTrackers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(Ljava/util/List;)V

    .line 77
    const-string v0, "pauseTrackers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ZYk(Ljava/util/List;)V

    .line 78
    const-string v0, "resumeTrackers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->tB(Ljava/util/List;)V

    .line 79
    const-string v0, "completeTrackers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ex(Ljava/util/List;)V

    .line 80
    const-string v0, "closeTrackers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->Pfn(Ljava/util/List;)V

    .line 81
    const-string v0, "skipTrackers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ba(Ljava/util/List;)V

    .line 82
    const-string v0, "clickTrackers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->cFZ(Ljava/util/List;)V

    .line 83
    const-string v0, "muteTrackers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->dLZ(Ljava/util/List;)V

    .line 84
    const-string v0, "unMuteTrackers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->oJ(Lorg/json/JSONArray;Z)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->BTZ(Ljava/util/List;)V

    .line 85
    const-string v0, "fractionalTrackers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->ZYk(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->so(Ljava/util/List;)V

    .line 86
    const-string v0, "absoluteTrackers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;->tB(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->jFA(Ljava/util/List;)V

    return-void
.end method

.method public so(J)V
    .locals 7

    .line 1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->jFA:Ljava/util/List;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    long-to-float v2, p1

    const-string v4, "mute"

    invoke-direct {v0, v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;F)V

    move-object v5, v0

    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(JLjava/util/List;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oq:Ljava/lang/String;

    const-string v0, "track_mute"

    invoke-static {p1, p2, v0, v6}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public so(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/ZYk;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->dLZ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->dLZ:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void
.end method

.method public tB(J)V
    .locals 7

    .line 1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ex:Ljava/util/List;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    move-object v5, v6

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    long-to-float v2, p1

    const-string v4, "resume"

    invoke-direct {v0, v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;F)V

    move-object v5, v0

    :goto_0
    const/4 v4, 0x0

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oJ(JLjava/util/List;Lcom/bytedance/sdk/openadsdk/core/dLZ/oJ/oJ;Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$ZYk;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->awB:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->oq:Ljava/lang/String;

    const-string v0, "track_resume"

    invoke-static {p1, p2, v0, v6}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public tB(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;",
            ">;)V"
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ex:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
