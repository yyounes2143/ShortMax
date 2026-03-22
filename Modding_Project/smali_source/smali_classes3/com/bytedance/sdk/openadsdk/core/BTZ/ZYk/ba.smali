.class public Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;
.super Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;
.source "SourceFile"

# interfaces
.implements Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;
.implements Lcom/bytedance/sdk/component/utils/IUZ$oJ;
.implements Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$oJ;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$oJ;,
        Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$ZYk;
    }
.end annotation


# static fields
.field private static final Id:Ljava/lang/Integer;

.field private static final cY:Ljava/lang/Integer;


# instance fields
.field protected BTZ:Ljava/lang/String;

.field private HL:Z

.field private HyG:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private IUZ:Z

.field private Jc:Z

.field private final Jm:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Ln:J

.field private final LpP:Z

.field public Pfn:Z

.field protected PiB:I

.field private QSm:Z

.field private final Qu:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private RZ:Z

.field private final Rl:Ljava/lang/Runnable;

.field private Ry:Landroid/view/ViewGroup;

.field private UN:J

.field WcQ:Z

.field private final XAo:Ljava/lang/String;

.field private Xe:Z

.field protected ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

.field protected awB:Z

.field public ba:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

.field protected cFZ:Landroid/widget/RelativeLayout;

.field private final cdg:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected dLZ:Z

.field public eZI:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$ZYk;

.field protected ex:Z

.field protected jFA:Landroid/widget/ImageView;

.field private jr:Ljava/lang/String;

.field protected kkU:Landroid/widget/ImageView;

.field private mu:Z

.field private final nke:Landroid/os/Handler;

.field protected final oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private ofl:Landroid/view/View;

.field private oq:Ljava/lang/String;

.field private final si:Landroid/content/Context;

.field protected so:Landroid/widget/ImageView;

.field protected tB:Landroid/widget/FrameLayout;

.field private tb:Z

.field private wd:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$tB;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Id:Ljava/lang/Integer;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cY:Ljava/lang/Integer;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/cY;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;ZLcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ZZLcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/cY;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    .line 2
    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;ZLjava/lang/String;ZZLcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;ZLcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/cY;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1
    const-string v4, "embeded_ad"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;ZLjava/lang/String;ZZLcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;ZLjava/lang/String;ZZLcom/bytedance/sdk/openadsdk/ex/cFZ;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/sdk/openadsdk/core/model/cY;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/tB;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->RZ:Z

    .line 6
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ex:Z

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->QSm:Z

    .line 8
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Pfn:Z

    .line 9
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Xe:Z

    .line 10
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->tb:Z

    .line 11
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->HL:Z

    .line 12
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->dLZ:Z

    .line 13
    const-string v2, "embeded_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->BTZ:Ljava/lang/String;

    const/16 v2, 0x32

    .line 14
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->PiB:I

    .line 15
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->IUZ:Z

    .line 16
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->LpP:Z

    .line 17
    new-instance v2, Lcom/bytedance/sdk/component/utils/IUZ;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/bytedance/sdk/component/utils/IUZ;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/IUZ$oJ;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->nke:Landroid/os/Handler;

    .line 18
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->mu:Z

    .line 19
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->XAo:Ljava/lang/String;

    .line 20
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->WcQ:Z

    .line 21
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->awB:Z

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cdg:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Rl:Ljava/lang/Runnable;

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Jm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$6;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Qu:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 26
    :try_start_0
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;->ZYk()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->jr:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    if-eqz p7, :cond_1

    .line 28
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ba:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    .line 29
    :cond_1
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->BTZ:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->si:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 32
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->QSm:Z

    .line 33
    const-string p1, "NativeVideoTsView"

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 34
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->tb:Z

    .line 35
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->HL:Z

    .line 36
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk()V

    .line 37
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Pfn()V

    return-void
.end method

.method private HL()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Jc()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Xe()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    .line 16
    const-string v1, "sp_multi_native_video_data"

    .line 17
    .line 18
    const-string v2, "key_video_isfromvideodetailpage"

    .line 19
    .line 20
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "key_video_is_from_detail_page"

    .line 24
    .line 25
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-void
.end method

.method private IUZ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->nke:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->tB()Landroid/os/Handler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Rl:Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private Id()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->eZI:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$ZYk;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Jc()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->ofl()V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->dLZ()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(Z)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cY()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private Jc()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->QSm:Z

    .line 2
    .line 3
    return v0
.end method

.method private Ln()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Jc()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Xe()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const-string v2, "key_video_is_update_flag"

    .line 17
    .line 18
    const-string v3, "sp_multi_native_video_data"

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Xe()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA()J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ()J

    .line 44
    .line 45
    .line 46
    move-result-wide v6

    .line 47
    add-long/2addr v6, v4

    .line 48
    const-string v0, "key_native_video_complete"

    .line 49
    .line 50
    invoke-static {v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const-string v1, "key_video_current_play_position"

    .line 55
    .line 56
    const-wide/16 v8, 0x0

    .line 57
    .line 58
    invoke-static {v3, v1, v8, v9}, Lcom/bytedance/sdk/openadsdk/multipro/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v8

    .line 62
    const-string v1, "key_video_total_play_duration"

    .line 63
    .line 64
    invoke-static {v3, v1, v6, v7}, Lcom/bytedance/sdk/openadsdk/multipro/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;J)J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    const-string v1, "key_video_duration"

    .line 69
    .line 70
    invoke-static {v3, v1, v4, v5}, Lcom/bytedance/sdk/openadsdk/multipro/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;J)J

    .line 71
    .line 72
    .line 73
    move-result-wide v4

    .line 74
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-static {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk(Z)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 85
    .line 86
    invoke-virtual {v0, v8, v9}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk(J)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 90
    .line 91
    invoke-virtual {v0, v6, v7}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->tB(J)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 95
    .line 96
    invoke-virtual {v0, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ex(J)V

    .line 97
    .line 98
    .line 99
    :cond_1
    :goto_0
    return-void
.end method

.method private LpP()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->ZYk(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne v1, v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method private Pfn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->si:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(Landroid/content/Context;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->RZ()V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private QSm()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->RZ:Z

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ex(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB$oJ;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private RZ()V
    .locals 10

    .line 1
    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->si:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->tB:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->BTZ:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Jc()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    xor-int/lit8 v5, v0, 0x1

    .line 16
    .line 17
    iget-boolean v6, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->tb:Z

    .line 18
    .line 19
    iget-boolean v7, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->HL:Z

    .line 20
    .line 21
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ba:Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    .line 22
    .line 23
    move-object v0, v9

    .line 24
    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ZZZLcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 25
    .line 26
    .line 27
    iput-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->QSm()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->HyG:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$3;

    .line 37
    .line 38
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;)V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->HyG:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 42
    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ry:Landroid/view/ViewGroup;

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->HyG:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method private Ry()V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->nke:Landroid/os/Handler;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->UN:J

    .line 10
    .line 11
    sub-long v3, v0, v3

    .line 12
    .line 13
    const-wide/16 v5, 0x1f4

    .line 14
    .line 15
    cmp-long v3, v3, v5

    .line 16
    .line 17
    if-lez v3, :cond_0

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->UN:J

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {v2, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private UN()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->jFA:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cFZ:Landroid/widget/RelativeLayout;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/view/View;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private Xe()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

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
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->AEN()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;)Landroid/view/ViewGroup;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ry:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private ZYk(Landroid/content/Context;)Landroid/widget/RelativeLayout;
    .locals 7

    .line 24
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/Pfn/cFZ;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/cFZ;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 26
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/cFZ;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x8

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 28
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    invoke-direct {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 30
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 31
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 33
    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->so:Landroid/widget/ImageView;

    .line 34
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;

    invoke-direct {v4, p1}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;-><init>(Landroid/content/Context;)V

    .line 35
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 36
    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 37
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/Pfn/ex;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 39
    const-string v1, "tt_new_play_video"

    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/utils/cY;->tB(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 40
    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->kkU:Landroid/widget/ImageView;

    .line 41
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private cY()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cdg:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cdg:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(ZI)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Jm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private ex()V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(JI)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->wd:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$tB;

    .line 9
    .line 10
    return-void
.end method

.method private jr()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->BTZ()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Jc:Z

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Rl:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private nke()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->ZYk(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x5

    .line 16
    if-ne v1, v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method private oJ(Landroid/content/Context;)Landroid/view/View;
    .locals 5

    .line 9
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 10
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 11
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x8

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ry:Landroid/view/ViewGroup;

    .line 14
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 15
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 17
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 19
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->tB:Landroid/widget/FrameLayout;

    .line 20
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 22
    invoke-virtual {v1, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 24
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ofl:Landroid/view/View;

    return-object v0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->HyG:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object p1
.end method

.method private oJ(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 25
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 26
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    .line 27
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 28
    invoke-virtual {p2, p1, v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 29
    :cond_0
    invoke-virtual {p2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V
    .locals 1

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zF()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->jr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ry()V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;ZI)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(ZI)V

    return-void
.end method

.method private oJ(ZI)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->tb()Z

    move-result v0

    .line 56
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->HL()V

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 57
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB()Z

    .line 59
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk(Z)V

    .line 60
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ex()V

    return-void

    :cond_1
    if-eqz p1, :cond_8

    .line 61
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Xe:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cY()Z

    move-result p1

    if-nez p1, :cond_8

    .line 62
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    move-result-object p1

    invoke-interface {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;->cFZ()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 63
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->RZ:Z

    if-nez p1, :cond_2

    if-ne p2, v1, :cond_9

    .line 64
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    if-eqz p1, :cond_3

    .line 65
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jr()Z

    move-result p1

    const-string p2, "changeVideoStatus"

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(ZLjava/lang/String;)V

    .line 66
    :cond_3
    const-string p1, "ALP-AL00"

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->XAo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 67
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->tB()V

    goto :goto_0

    .line 68
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->awB()Z

    move-result p1

    if-nez p1, :cond_5

    move v0, v1

    .line 69
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->cFZ(Z)V

    .line 70
    :goto_0
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(Z)V

    .line 71
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->wd:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$tB;

    if-eqz p1, :cond_9

    .line 72
    invoke-interface {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$tB;->i_()V

    return-void

    .line 73
    :cond_6
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->RZ:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    move-result-object p1

    if-nez p1, :cond_9

    .line 74
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cdg:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_7

    .line 75
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cdg:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 76
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Jm:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 77
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oq()V

    return-void

    .line 78
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 79
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    move-result-object p1

    invoke-interface {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;->ba()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 80
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk()V

    .line 81
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(Z)V

    .line 82
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->wd:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$tB;

    if-eqz p1, :cond_9

    .line 83
    invoke-interface {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$tB;->h_()V

    :cond_9
    :goto_1
    return-void
.end method

.method private oq()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->RZ()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Jc()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->eZI()V

    .line 20
    .line 21
    .line 22
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 23
    .line 24
    if-eqz v0, :cond_6

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cdg:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_6

    .line 33
    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cdg:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->so()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_4

    .line 48
    .line 49
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cFZ:Landroid/widget/RelativeLayout;

    .line 50
    .line 51
    const/16 v2, 0x8

    .line 52
    .line 53
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->jFA:Landroid/widget/ImageView;

    .line 57
    .line 58
    if-eqz v0, :cond_2

    .line 59
    .line 60
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 61
    .line 62
    .line 63
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rQ()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;->tB()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 88
    .line 89
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ZYk(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ry:Landroid/view/ViewGroup;

    .line 103
    .line 104
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ZYk(I)V

    .line 109
    .line 110
    .line 111
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ry:Landroid/view/ViewGroup;

    .line 112
    .line 113
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->tB(I)V

    .line 118
    .line 119
    .line 120
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 121
    .line 122
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->tB(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-wide/16 v2, 0x0

    .line 130
    .line 131
    invoke-virtual {v0, v2, v3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(J)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->jFA()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    invoke-virtual {v0, v2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Z)V

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V

    .line 142
    .line 143
    .line 144
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 145
    .line 146
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Z

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 150
    .line 151
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk(Z)V

    .line 152
    .line 153
    .line 154
    :cond_3
    return-void

    .line 155
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB()Z

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    if-eqz v0, :cond_5

    .line 162
    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB()Z

    .line 166
    .line 167
    .line 168
    const/4 v0, 0x1

    .line 169
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk(Z)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cFZ()V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cFZ:Landroid/widget/RelativeLayout;

    .line 177
    .line 178
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 179
    .line 180
    .line 181
    :cond_6
    return-void
.end method

.method static synthetic si()Ljava/lang/Integer;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Id:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Jc:Z

    return p0
.end method

.method private tb()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Jc()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Xe()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const-string v0, "key_video_isfromvideodetailpage"

    .line 16
    .line 17
    const-string v2, "sp_multi_native_video_data"

    .line 18
    .line 19
    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const-string v3, "key_video_is_from_detail_page"

    .line 24
    .line 25
    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/multipro/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_2

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    return v1

    .line 35
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 36
    return v0

    .line 37
    :cond_3
    :goto_1
    return v1
.end method


# virtual methods
.method BTZ()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->BTZ:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->ZYk(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x5

    .line 12
    :goto_0
    const/16 v1, 0x32

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {p0, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/mu;->oJ(Landroid/view/View;IIZ)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public PiB()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/Ry;->tB(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;->ba()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Id:Ljava/lang/Integer;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(ZI)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->nke:Landroid/os/Handler;

    .line 43
    .line 44
    const/4 v1, 0x1

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 48
    .line 49
    .line 50
    :cond_1
    return v1
.end method

.method public WcQ()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oq()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method protected ZYk()V
    .locals 6

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    move-result v0

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->ZYk(I)I

    move-result v1

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/Ry;->tB(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_9

    const/4 v5, 0x2

    if-eq v1, v5, :cond_6

    const/4 v5, 0x3

    if-eq v1, v5, :cond_5

    const/4 v5, 0x4

    if-eq v1, v5, :cond_4

    const/4 v5, 0x5

    if-eq v1, v5, :cond_1

    goto :goto_4

    .line 7
    :cond_1
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex(I)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ba(I)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v4

    :goto_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->RZ:Z

    goto :goto_4

    .line 8
    :cond_4
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->WcQ:Z

    goto :goto_4

    .line 9
    :cond_5
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->RZ:Z

    goto :goto_4

    .line 10
    :cond_6
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Pfn(I)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex(I)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ba(I)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    move v1, v3

    goto :goto_3

    :cond_8
    :goto_2
    move v1, v4

    :goto_3
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->RZ:Z

    goto :goto_4

    .line 11
    :cond_9
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->RZ:Z

    .line 12
    :goto_4
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->QSm:Z

    if-nez v1, :cond_b

    .line 13
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Pfn:Z

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->BTZ:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->ZYk(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 14
    :cond_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->ZYk(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ex:Z

    goto :goto_5

    .line 15
    :cond_b
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ex:Z

    .line 16
    :cond_c
    :goto_5
    const-string v0, "open_ad"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->BTZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 17
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->RZ:Z

    .line 18
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ex:Z

    .line 19
    :cond_d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->BTZ:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->ZYk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 20
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ex:Z

    .line 21
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    if-eqz v0, :cond_f

    .line 22
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->RZ:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ex(Z)V

    .line 23
    :cond_f
    iput-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Pfn:Z

    return-void
.end method

.method public ZYk(JI)V
    .locals 0

    .line 1
    return-void
.end method

.method public ZYk(Z)V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk(Z)V

    .line 45
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oq()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 46
    invoke-interface {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;->ZYk()V

    .line 47
    invoke-interface {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;->tB()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 50
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 52
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    new-instance v2, Ljava/lang/ref/WeakReference;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->si:Landroid/content/Context;

    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0, v2, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;->oJ(Ljava/lang/Object;Ljava/lang/ref/WeakReference;Z)V

    :cond_1
    return-void
.end method

.method public awB()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/Ry;->tB(Landroid/content/Context;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->BTZ()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-wide/16 v1, 0x1f4

    .line 26
    .line 27
    const/4 v3, 0x1

    .line 28
    if-eqz v0, :cond_5

    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;->cFZ()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cY:Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-direct {p0, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(ZI)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk()V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->nke:Landroid/os/Handler;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 59
    .line 60
    .line 61
    :cond_2
    return-void

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;->ZYk()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_5

    .line 73
    .line 74
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->awB:Z

    .line 75
    .line 76
    if-nez v0, :cond_5

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->kkU()V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 82
    .line 83
    if-eqz v0, :cond_4

    .line 84
    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->HyG()V

    .line 88
    .line 89
    .line 90
    :cond_4
    return-void

    .line 91
    :cond_5
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->so()Z

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    if-nez v0, :cond_8

    .line 96
    .line 97
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Jm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    if-nez v0, :cond_8

    .line 104
    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Jm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 106
    .line 107
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 108
    .line 109
    .line 110
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->UN()V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->UN()V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rQ()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;->tB()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 146
    .line 147
    invoke-static {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 152
    .line 153
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ZYk(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ry:Landroid/view/ViewGroup;

    .line 161
    .line 162
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ZYk(I)V

    .line 167
    .line 168
    .line 169
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ry:Landroid/view/ViewGroup;

    .line 170
    .line 171
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->tB(I)V

    .line 176
    .line 177
    .line 178
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 179
    .line 180
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->tB(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ln:J

    .line 188
    .line 189
    invoke-virtual {v0, v4, v5}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(J)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->jFA()Z

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Z)V

    .line 197
    .line 198
    .line 199
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 200
    .line 201
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rQ()I

    .line 202
    .line 203
    .line 204
    move-result v4

    .line 205
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    invoke-interface {v4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;->tB()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v0, v4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V

    .line 217
    .line 218
    .line 219
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 220
    .line 221
    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Z

    .line 222
    .line 223
    .line 224
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->nke:Landroid/os/Handler;

    .line 225
    .line 226
    if-eqz v0, :cond_7

    .line 227
    .line 228
    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 229
    .line 230
    .line 231
    :cond_7
    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(Z)V

    .line 233
    .line 234
    .line 235
    :cond_8
    return-void
.end method

.method public ba()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->wd:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$tB;->g_()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public cFZ()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->si:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ofl:Landroid/view/View;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 16
    .line 17
    if-eqz v0, :cond_4

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cFZ:Landroid/widget/RelativeLayout;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ofl:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->si:Landroid/content/Context;

    .line 31
    .line 32
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk(Landroid/content/Context;)Landroid/widget/RelativeLayout;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    instance-of v2, v0, Landroid/view/ViewGroup;

    .line 39
    .line 40
    if-eqz v2, :cond_1

    .line 41
    .line 42
    check-cast v0, Landroid/view/ViewGroup;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ofl:Landroid/view/View;

    .line 45
    .line 46
    invoke-direct {p0, v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cFZ:Landroid/widget/RelativeLayout;

    .line 50
    .line 51
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->dLZ:Z

    .line 52
    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->kkU:Landroid/widget/ImageView;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    if-eqz v0, :cond_3

    .line 68
    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->kkU()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_3

    .line 80
    .line 81
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->kkU()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->tB()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ZYk()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->so:Landroid/widget/ImageView;

    .line 116
    .line 117
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 118
    .line 119
    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->kkU:Landroid/widget/ImageView;

    .line 123
    .line 124
    if-eqz v0, :cond_4

    .line 125
    .line 126
    const/4 v1, 0x1

    .line 127
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 128
    .line 129
    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->kkU:Landroid/widget/ImageView;

    .line 131
    .line 132
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$2;

    .line 133
    .line 134
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .line 139
    .line 140
    :cond_4
    :goto_0
    return-void
.end method

.method public dLZ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oq()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;->oJ()V

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;->tB()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/16 v1, 0x8

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/view/ViewGroup;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public eZI()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ln:J

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->Pfn(J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public getCurrentPlayTime()D
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    long-to-double v0, v0

    .line 10
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 11
    .line 12
    mul-double/2addr v0, v2

    .line 13
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 14
    .line 15
    .line 16
    .line 17
    .line 18
    div-double/2addr v0, v2

    .line 19
    return-wide v0

    .line 20
    :cond_0
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    return-wide v0
.end method

.method public getNativeVideoController()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 2
    .line 3
    return-object v0
.end method

.method public jFA()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ex:Z

    .line 2
    .line 3
    return v0
.end method

.method public kkU()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oq()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/ZYk;->oJ()V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->UN()V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public oJ(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Landroid/view/View;",
            "Lcom/iab/omid/library/bytedance2/adsession/FriendlyObstructionPurpose;",
            ">;>;)",
            "Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(Landroid/view/View;Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/core/dLZ/ba;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public oJ()V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(I)V
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk()V

    return-void
.end method

.method public oJ(JI)V
    .locals 0

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->wd:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$tB;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$tB;->j_()V

    :cond_0
    return-void
.end method

.method public oJ(JJ)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->wd:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$tB;

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$tB;->oJ(JJ)V

    :cond_0
    return-void
.end method

.method public oJ(Landroid/os/Message;)V
    .locals 1

    .line 52
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->jr()V

    :cond_0
    return-void
.end method

.method protected oJ(Z)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->jFA:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 90
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->jFA:Landroid/widget/ImageView;

    .line 91
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA;->eZI()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->jFA:Landroid/widget/ImageView;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->eZI()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->jFA:Landroid/widget/ImageView;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_new_play_video"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/component/utils/cY;->ex(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->jFA:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->PiB:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v0

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/content/Context;F)I

    move-result v1

    .line 97
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x11

    .line 98
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 99
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 100
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ry:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->jFA:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 102
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->jFA:Landroid/widget/ImageView;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz p1, :cond_2

    .line 103
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->jFA:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 104
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->jFA:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public oJ(ZLjava/lang/String;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->BTZ:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/so/jr;->ZYk(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 85
    :cond_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ex:Z

    .line 86
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public oJ(JZZ)Z
    .locals 4

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ry:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ln:J

    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Jc()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oJ(Z)V

    .line 34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rQ()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;->tB()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ZYk(Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ry:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ZYk(I)V

    .line 38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ry:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->tB(I)V

    .line 39
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->tB(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v0, p1, p2}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(J)V

    .line 41
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->jFA()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Z)V

    .line 42
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V

    if-eqz p4, :cond_0

    .line 43
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V

    return v2

    .line 44
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Z

    move-result v1

    :cond_1
    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-lez p1, :cond_2

    if-nez p3, :cond_2

    if-eqz p4, :cond_3

    :cond_2
    if-lez p1, :cond_4

    if-eqz p3, :cond_4

    .line 45
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    if-eqz p1, :cond_4

    .line 46
    new-instance p1, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;-><init>()V

    .line 47
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk(J)V

    .line 48
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex(J)V

    .line 49
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cFZ()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(J)V

    .line 50
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->XAo()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(Z)V

    .line 51
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->oq()Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/Pfn;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->ZYk(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;)V

    :cond_4
    return v1

    :cond_5
    return v2
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oq()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->awB:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Qu:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Id()V

    .line 5
    .line 6
    .line 7
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->awB:Z

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Qu:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ry:Landroid/view/ViewGroup;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->HyG:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 31
    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->HyG:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->HyG:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oq()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->QSm:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->eZI:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$ZYk;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->jFA()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->UN()J

    .line 26
    .line 27
    .line 28
    move-result-wide v5

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ba()J

    .line 32
    .line 33
    .line 34
    move-result-wide v7

    .line 35
    iget-boolean v9, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->RZ:Z

    .line 36
    .line 37
    invoke-interface/range {v1 .. v9}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$ZYk;->oJ(ZJJJZ)V

    .line 38
    .line 39
    .line 40
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Id()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 1
    const-string v0, "open_ad"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->BTZ:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_7

    .line 10
    .line 11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Xe:Z

    .line 12
    .line 13
    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 17
    .line 18
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Z)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ln()V

    .line 22
    .line 23
    .line 24
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->awB:Z

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->tb()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x1

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->HL()V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cFZ:Landroid/widget/RelativeLayout;

    .line 50
    .line 51
    const/16 v0, 0x8

    .line 52
    .line 53
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk(Z)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ex()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk()V

    .line 64
    .line 65
    .line 66
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Jc()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    const/4 v2, 0x0

    .line 71
    if-nez v0, :cond_4

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->so()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_4

    .line 78
    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 80
    .line 81
    if-eqz v0, :cond_4

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cY()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->nke:Landroid/os/Handler;

    .line 91
    .line 92
    if-eqz v0, :cond_8

    .line 93
    .line 94
    if-eqz p1, :cond_3

    .line 95
    .line 96
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 97
    .line 98
    if-eqz p1, :cond_3

    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_3

    .line 105
    .line 106
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->nke:Landroid/os/Handler;

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->IUZ()V

    .line 117
    .line 118
    .line 119
    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Id:Ljava/lang/Integer;

    .line 120
    .line 121
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-direct {p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(ZI)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->so()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-nez v0, :cond_6

    .line 134
    .line 135
    if-nez p1, :cond_5

    .line 136
    .line 137
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 138
    .line 139
    if-eqz v0, :cond_5

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-eqz v0, :cond_5

    .line 146
    .line 147
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->dLZ()Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;->ba()Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_5

    .line 158
    .line 159
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->IUZ()V

    .line 160
    .line 161
    .line 162
    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Id:Ljava/lang/Integer;

    .line 163
    .line 164
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 165
    .line 166
    .line 167
    move-result p1

    .line 168
    invoke-direct {p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(ZI)V

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_5
    if-eqz p1, :cond_6

    .line 173
    .line 174
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->nke:Landroid/os/Handler;

    .line 175
    .line 176
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 181
    .line 182
    .line 183
    :cond_6
    return-void

    .line 184
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->IUZ()V

    .line 185
    .line 186
    .line 187
    :cond_8
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ln()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->tb()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    const/16 v2, 0x8

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->HL()V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cFZ:Landroid/widget/RelativeLayout;

    .line 30
    .line 31
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk(Z)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ex()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk()V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Jc()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->so()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->cY()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 67
    .line 68
    if-nez v0, :cond_1

    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :cond_1
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->IUZ:Z

    .line 73
    .line 74
    if-eqz v3, :cond_2

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rQ()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;->tB()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 102
    .line 103
    invoke-static {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/ZYk;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 108
    .line 109
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-virtual {v0, v3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ZYk(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ry:Landroid/view/ViewGroup;

    .line 117
    .line 118
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 119
    .line 120
    .line 121
    move-result v3

    .line 122
    invoke-virtual {v0, v3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->ZYk(I)V

    .line 123
    .line 124
    .line 125
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ry:Landroid/view/ViewGroup;

    .line 126
    .line 127
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    invoke-virtual {v0, v3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->tB(I)V

    .line 132
    .line 133
    .line 134
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 135
    .line 136
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {v0, v3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->tB(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->Ln:J

    .line 144
    .line 145
    invoke-virtual {v0, v3, v4}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(J)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->jFA()Z

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    invoke-virtual {v0, v3}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;->oJ(Z)V

    .line 153
    .line 154
    .line 155
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)V

    .line 156
    .line 157
    .line 158
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 159
    .line 160
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/tB;)Z

    .line 161
    .line 162
    .line 163
    const/4 v0, 0x0

    .line 164
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->IUZ:Z

    .line 165
    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cFZ:Landroid/widget/RelativeLayout;

    .line 167
    .line 168
    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 169
    .line 170
    .line 171
    :cond_2
    if-nez p1, :cond_3

    .line 172
    .line 173
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->awB:Z

    .line 174
    .line 175
    if-eqz p1, :cond_3

    .line 176
    .line 177
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->nke:Landroid/os/Handler;

    .line 178
    .line 179
    if-eqz p1, :cond_3

    .line 180
    .line 181
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 182
    .line 183
    if-eqz p1, :cond_3

    .line 184
    .line 185
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->PiB()Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-nez p1, :cond_3

    .line 190
    .line 191
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->nke:Landroid/os/Handler;

    .line 192
    .line 193
    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 198
    .line 199
    .line 200
    :cond_3
    :goto_0
    return-void
.end method

.method public setAdCreativeClickListener(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$oJ;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$oJ;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$ZYk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->eZI:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba$ZYk;

    .line 2
    .line 3
    return-void
.end method

.method public setIsAutoPlay(Z)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->mu:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->ZYk(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v1, 0x0

    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    const/4 v2, 0x4

    .line 24
    if-eq v0, v2, :cond_3

    .line 25
    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->si:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/Ry;->Pfn(Landroid/content/Context;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->LpP()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_3

    .line 39
    .line 40
    :goto_0
    move p1, v1

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->si:Landroid/content/Context;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/Ry;->ba(Landroid/content/Context;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->LpP()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_3

    .line 55
    .line 56
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->nke()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->si:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/Ry;->ex(Landroid/content/Context;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    :goto_1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->RZ:Z

    .line 73
    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/oJ/oJ;->ex(Z)V

    .line 79
    .line 80
    .line 81
    :cond_4
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->RZ:Z

    .line 82
    .line 83
    if-nez p1, :cond_5

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cFZ()V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cFZ:Landroid/widget/RelativeLayout;

    .line 89
    .line 90
    if-eqz p1, :cond_6

    .line 91
    .line 92
    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 96
    .line 97
    if-eqz p1, :cond_6

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-eqz p1, :cond_6

    .line 104
    .line 105
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->kkU()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 120
    .line 121
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->tB()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ZYk()I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->so:Landroid/widget/ImageView;

    .line 140
    .line 141
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 142
    .line 143
    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cFZ:Landroid/widget/RelativeLayout;

    .line 148
    .line 149
    const/16 v0, 0x8

    .line 150
    .line 151
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;I)V

    .line 152
    .line 153
    .line 154
    :cond_6
    :goto_2
    const/4 p1, 0x1

    .line 155
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->mu:Z

    .line 156
    .line 157
    return-void
.end method

.method public setNeedNativeVideoPlayBtnVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->dLZ:Z

    .line 2
    .line 3
    return-void
.end method

.method public setNeedSelfManagerVideo(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->awB:Z

    .line 2
    .line 3
    return-void
.end method

.method public setVideoAdClickListenerTTNativeAd(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setVideoAdInteractionListener(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$tB;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->wd:Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$tB;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoAdLoadListener(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$ex;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$ex;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setVideoCacheUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->oq:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setVideoPlayCallback(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ZYk;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->ZYk:Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ZYk;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x4

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    if-ne p1, v0, :cond_1

    .line 10
    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->cY()V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-void
.end method

.method public so()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->RZ:Z

    .line 2
    .line 3
    return v0
.end method

.method protected tB()V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->PiB()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ZYk/ba;->awB()V

    :cond_0
    return-void
.end method
