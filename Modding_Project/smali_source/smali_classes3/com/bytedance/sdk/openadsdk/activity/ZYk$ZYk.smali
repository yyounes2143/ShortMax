.class abstract Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/ZYk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ZYk"
.end annotation


# instance fields
.field private final BTZ:I

.field private HL:Z

.field private IUZ:I

.field private Id:I

.field private Ln:Z

.field private LpP:Z

.field protected Pfn:I

.field private PiB:Z

.field private QSm:I

.field private RZ:I

.field private Ry:I

.field private WcQ:Z

.field private Xe:Z

.field protected ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private awB:Z

.field protected ba:I

.field cFZ:Z

.field private cY:I

.field private final dLZ:Landroid/content/Context;

.field private eZI:F

.field protected ex:I

.field private final jFA:Landroid/os/Handler;

.field private jr:Z

.field private final kkU:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

.field protected final oJ:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

.field private oq:I

.field private si:I

.field public so:I

.field protected tB:F

.field private tb:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->jFA:Landroid/os/Handler;

    .line 14
    .line 15
    const/16 v0, 0x3e8

    .line 16
    .line 17
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->BTZ:I

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ba:I

    .line 21
    .line 22
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->si:I

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Ln:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->cFZ:Z

    .line 28
    .line 29
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->so:I

    .line 30
    .line 31
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 32
    .line 33
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 34
    .line 35
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->kkU:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 36
    .line 37
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->dLZ:Landroid/content/Context;

    .line 42
    .line 43
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex:I

    .line 48
    .line 49
    return-void
.end method

.method private Pfn(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->LpP:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Pfn:I

    const/16 v0, 0x3e8

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ(II)V

    :cond_0
    return-void
.end method

.method private cFZ()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ba:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    .line 7
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ba:I

    .line 8
    .line 9
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ba:I

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->awB:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->awB:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->so()Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->so()Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 37
    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->Xe()V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method private ex(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ba:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->awB:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Pfn:I

    const/16 v0, 0x3e8

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ(II)V

    :cond_0
    return-void
.end method

.method private oJ(II)V
    .locals 3

    .line 18
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Ln:Z

    if-eqz v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->jFA:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->jFA:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private oJ(Landroid/os/Message;)V
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 9
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex:I

    if-lez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->kkU:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->setSkipText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->cFZ()V

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Pfn()V

    .line 13
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex:I

    if-ltz v0, :cond_1

    .line 14
    iget p1, p1, Landroid/os/Message;->what:I

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->si:I

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ(II)V

    return-void

    :cond_0
    const/4 p1, 0x3

    .line 15
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex(I)V

    const/4 p1, 0x4

    .line 16
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Pfn(I)V

    .line 17
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->so()V

    :cond_1
    return-void
.end method

.method private so()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/ZYk;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->kkU:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->showSkipButton()V

    .line 13
    .line 14
    .line 15
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->PiB:Z

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->WcQ:Z

    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->kkU:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->showCloseButton()V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->kkU:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->setShowPlayableNextAd(ZLcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public Pfn()V
    .locals 5

    .line 4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->tb:I

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Xe:Z

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->jr:Z

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->HL:Z

    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->LpP:Z

    if-nez v1, :cond_1

    return-void

    .line 6
    :cond_1
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->WcQ:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 7
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->LpP:Z

    :cond_2
    if-eqz v3, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 8
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->tb:I

    if-eqz v2, :cond_4

    .line 9
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oq:I

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Id:I

    goto :goto_0

    .line 10
    :cond_4
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Ry:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->RZ:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Id:I

    .line 11
    :goto_0
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Ry:I

    if-lt v0, v2, :cond_6

    .line 12
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->cFZ:Z

    if-nez v0, :cond_5

    .line 13
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->IUZ:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->IUZ:I

    .line 14
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->cFZ:Z

    .line 15
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 16
    const-string v2, "click_countdown_remaining"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 17
    const-string v2, "hint_sequence"

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->IUZ:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 18
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->so()Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/activity/so;->b_()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ba(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :catchall_0
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->tB(Lcom/bytedance/sdk/openadsdk/activity/ZYk;)Lcom/bytedance/sdk/openadsdk/activity/tB;

    move-result-object v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->cY:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->cY:I

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex:I

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(II)V

    goto :goto_1

    .line 20
    :cond_6
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->cFZ:Z

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->tB(Lcom/bytedance/sdk/openadsdk/activity/ZYk;)Lcom/bytedance/sdk/openadsdk/activity/tB;

    move-result-object v0

    const/4 v2, -0x1

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex:I

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/tB;->oJ(II)V

    .line 22
    :goto_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->jr:Z

    if-eqz v0, :cond_7

    .line 23
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->tb:I

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->QSm:I

    if-lt v0, v2, :cond_7

    .line 24
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->PiB:Z

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->WcQ:Z

    if-nez v0, :cond_7

    if-nez v2, :cond_7

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->kkU:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->setShowPlayableNextAd(ZLcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 26
    :cond_7
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->tb:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Id:I

    if-lt v0, v1, :cond_8

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->so()Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->so()Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object v0

    .line 29
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    if-eqz v1, :cond_8

    .line 30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->jFA:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 31
    check-cast v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->Xe()V

    :cond_8
    return-void
.end method

.method public ZYk()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->LpP:Z

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->cFZ:Z

    .line 3
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->IUZ:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->so:I

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Ln:Z

    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->kkU:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v1, :cond_0

    .line 7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->setShowPlayableNextAd(ZLcom/bytedance/sdk/openadsdk/core/model/cY;)V

    :cond_0
    return-void
.end method

.method public ZYk(I)V
    .locals 4

    .line 8
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->so:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    if-eq p1, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 9
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->so:I

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->jFA:Landroid/os/Handler;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Pfn:I

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 11
    :cond_2
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Ln:Z

    if-eqz p1, :cond_3

    return-void

    .line 12
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->so()Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->so()Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->tb()Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->so()Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->tb()Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->dLZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_4

    return-void

    .line 14
    :cond_4
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex:I

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->PiB:Z

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Pfn:I

    if-eq v3, v1, :cond_7

    if-ne v3, v2, :cond_5

    goto :goto_0

    :cond_5
    const/4 p1, 0x3

    if-ne v3, p1, :cond_6

    .line 15
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex(I)V

    return-void

    :cond_6
    const/4 p1, 0x4

    if-ne v3, p1, :cond_8

    .line 16
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Pfn(I)V

    goto :goto_1

    :cond_7
    :goto_0
    if-ltz p1, :cond_8

    if-nez v0, :cond_8

    .line 17
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->WcQ:Z

    if-nez p1, :cond_8

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->jFA:Landroid/os/Handler;

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->si:I

    int-to-long v0, v0

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_8
    :goto_1
    return-void
.end method

.method public ZYk(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/high16 p1, 0x447a0000    # 1000.0f

    .line 19
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->eZI:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->si:I

    return-void

    :cond_0
    const/16 p1, 0x3e8

    .line 20
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->si:I

    return-void
.end method

.method public ba()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Xe:Z

    .line 3
    .line 4
    return-void
.end method

.method public ex()V
    .locals 3

    .line 4
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->PiB:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->WcQ:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ(I)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Ln:Z

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->kkU:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v1, :cond_1

    .line 8
    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->setSkipText(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->kkU:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->setShowEndCardNextAd(ZLcom/bytedance/sdk/openadsdk/core/model/cY;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ(Landroid/os/Message;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x2

    .line 11
    if-ne v0, v2, :cond_1

    .line 12
    .line 13
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ(Landroid/os/Message;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/4 v2, 0x3

    .line 18
    const/16 v3, 0x3e8

    .line 19
    .line 20
    if-ne v0, v2, :cond_2

    .line 21
    .line 22
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ba:I

    .line 23
    .line 24
    if-lez v0, :cond_3

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->cFZ()V

    .line 27
    .line 28
    .line 29
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ba:I

    .line 30
    .line 31
    if-ltz v0, :cond_3

    .line 32
    .line 33
    iget p1, p1, Landroid/os/Message;->what:I

    .line 34
    .line 35
    invoke-direct {p0, p1, v3}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ(II)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v2, 0x4

    .line 40
    if-ne v0, v2, :cond_3

    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->LpP:Z

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Pfn()V

    .line 47
    .line 48
    .line 49
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->LpP:Z

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->HL:Z

    .line 54
    .line 55
    if-nez v0, :cond_3

    .line 56
    .line 57
    iget p1, p1, Landroid/os/Message;->what:I

    .line 58
    .line 59
    invoke-direct {p0, p1, v3}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ(II)V

    .line 60
    .line 61
    .line 62
    :cond_3
    :goto_0
    return v1
.end method

.method public oJ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex:I

    return v0
.end method

.method protected abstract oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I
.end method

.method public oJ(I)V
    .locals 2

    .line 6
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Pfn:I

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 7
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->so:I

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->jFA:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public oJ(ILcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 35
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zxE()Lcom/bytedance/sdk/openadsdk/core/model/LpP;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zxE()Lcom/bytedance/sdk/openadsdk/core/model/LpP;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/LpP;->oJ()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->eZI:F

    .line 37
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 38
    :cond_0
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex:I

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->PiB:Z

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->WcQ:Z

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Pfn:I

    if-nez v0, :cond_5

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    int-to-float p1, p1

    .line 39
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->tB:F

    int-to-float p2, p2

    cmpl-float p2, p1, p2

    if-lez p2, :cond_2

    if-nez v2, :cond_3

    const/4 p1, 0x1

    .line 40
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Pfn:I

    goto :goto_0

    :cond_2
    const/4 p2, 0x2

    .line 41
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Pfn:I

    float-to-int p1, p1

    .line 42
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex:I

    .line 43
    :cond_3
    :goto_0
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Pfn:I

    if-ne v2, p1, :cond_4

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->jFA:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 44
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->jFA:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->jFA:Landroid/os/Handler;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Pfn:I

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_1
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Z)V
    .locals 2

    .line 21
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->cY(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Ry:I

    .line 22
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->HL(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->RZ:I

    .line 23
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->IUZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->QSm:I

    .line 24
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Ln(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oq:I

    .line 25
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->RZ:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->cY:I

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Xe:Z

    .line 27
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->jr:Z

    .line 28
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->tb:I

    const/4 v1, 0x1

    .line 29
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->LpP:Z

    .line 30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->kkU:Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;->setShowPlayableNextAd(ZLcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 32
    :cond_0
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->HL:Z

    .line 33
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex:I

    if-lez p1, :cond_1

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->PiB:Z

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x4

    .line 34
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Pfn(I)V

    :cond_2
    return-void
.end method

.method public oJ(Z)V
    .locals 2

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->jr:Z

    if-eqz p1, :cond_0

    .line 3
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oq:I

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->RZ:I

    sub-int v1, p1, v0

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Ry:I

    .line 4
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->cY:I

    .line 5
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Id:I

    :cond_0
    return-void
.end method

.method public tB()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->jFA:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Pfn:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public tB(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ba:I

    if-lez p1, :cond_1

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->awB:Z

    .line 4
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex:I

    if-lez p1, :cond_0

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->PiB:Z

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x3

    .line 5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex(I)V

    :cond_1
    return-void
.end method
