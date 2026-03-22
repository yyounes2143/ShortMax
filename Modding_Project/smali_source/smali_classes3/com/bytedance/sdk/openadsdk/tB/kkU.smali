.class public Lcom/bytedance/sdk/openadsdk/tB/kkU;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/tB/kkU$oJ;,
        Lcom/bytedance/sdk/openadsdk/tB/kkU$ex;,
        Lcom/bytedance/sdk/openadsdk/tB/kkU$tB;,
        Lcom/bytedance/sdk/openadsdk/tB/kkU$ZYk;
    }
.end annotation


# static fields
.field public static Pfn:I

.field public static ZYk:I

.field public static ex:I

.field public static oJ:Lcom/bytedance/sdk/openadsdk/FilterWord;

.field public static tB:I


# instance fields
.field private BTZ:Ljava/lang/String;

.field private PiB:Ljava/lang/String;

.field private QSm:Lcom/bytedance/sdk/openadsdk/FilterWord;

.field private RZ:I

.field private Ry:I

.field private WcQ:Ljava/lang/String;

.field private awB:Lorg/json/JSONObject;

.field protected ba:Lcom/bytedance/sdk/openadsdk/IListenerManager;

.field private final cFZ:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/tB/kkU$tB;",
            ">;"
        }
    .end annotation
.end field

.field private dLZ:Ljava/lang/String;

.field private eZI:Ljava/lang/String;

.field private final jFA:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/tB/kkU$ex;",
            ">;"
        }
    .end annotation
.end field

.field private final kkU:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/tB/kkU$oJ;",
            ">;"
        }
    .end annotation
.end field

.field private si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private final so:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/bytedance/sdk/openadsdk/tB/kkU$ZYk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, v1, v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->oJ:Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    sput v0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->ZYk:I

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    sput v0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->tB:I

    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    sput v0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->ex:I

    .line 18
    .line 19
    const/4 v0, 0x4

    .line 20
    sput v0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->Pfn:I

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->cFZ:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashSet;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->so:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->jFA:Ljava/util/Set;

    .line 24
    .line 25
    new-instance v0, Ljava/util/HashSet;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->kkU:Ljava/util/Set;

    .line 31
    .line 32
    return-void
.end method

.method private ex(Ljava/lang/String;)V
    .locals 2

    .line 24
    new-instance v0, Lcom/bytedance/sdk/openadsdk/tB/kkU$1;

    const-string v1, "Reward_executeMultiProcessCallback"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/tB/kkU$1;-><init>(Lcom/bytedance/sdk/openadsdk/tB/kkU;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->tB(Lcom/bytedance/sdk/component/so/so;I)V

    return-void
.end method

.method private kkU()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->cFZ:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/bytedance/sdk/openadsdk/tB/kkU$tB;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->QSm:Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 20
    .line 21
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/tB/kkU$tB;->oJ(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/tB/kkU;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->PiB:Ljava/lang/String;

    return-object p0
.end method

.method public static oJ(ILjava/lang/String;)V
    .locals 2

    .line 22
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/tB/kkU$3;

    const-string v1, "DislikeClosed_unregisterMultiProcessListener"

    invoke-direct {v0, v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/tB/kkU$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x5

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->tB(Lcom/bytedance/sdk/component/so/so;I)V

    return-void
.end method

.method public static oJ(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;)V
    .locals 2

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 21
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/tB/kkU$2;

    const-string v1, "DislikeClosed_registerMultiProcessListener"

    invoke-direct {v0, v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/tB/kkU$2;-><init>(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;Ljava/lang/String;)V

    const/4 p0, 0x5

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->tB(Lcom/bytedance/sdk/component/so/so;I)V

    return-void
.end method


# virtual methods
.method public Pfn()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->so:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/bytedance/sdk/openadsdk/tB/kkU$ZYk;

    .line 18
    .line 19
    sget v2, Lcom/bytedance/sdk/openadsdk/tB/kkU;->tB:I

    .line 20
    .line 21
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/tB/kkU$ZYk;->oJ(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public ZYk()Lcom/bytedance/sdk/openadsdk/FilterWord;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->QSm:Lcom/bytedance/sdk/openadsdk/FilterWord;

    return-object v0
.end method

.method public ZYk(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->BTZ:Ljava/lang/String;

    return-void
.end method

.method public ba()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->so:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/bytedance/sdk/openadsdk/tB/kkU$ZYk;

    .line 18
    .line 19
    sget v2, Lcom/bytedance/sdk/openadsdk/tB/kkU;->Pfn:I

    .line 20
    .line 21
    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/tB/kkU$ZYk;->oJ(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method public cFZ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->WcQ:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/tB/kkU;->tB()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->WcQ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/FilterWord;

    const-string v1, "0:00"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->WcQ:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/FilterWord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->QSm:Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 3
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->QSm:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->dLZ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->WcQ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/tB/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/tB/ZYk;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->dLZ:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->BTZ:Ljava/lang/String;

    invoke-virtual {v0, v1, v5, v2}, Lcom/bytedance/sdk/openadsdk/tB/ZYk;->oJ(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->awB:Lorg/json/JSONObject;

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->mf()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->awB:Lorg/json/JSONObject;

    goto :goto_0

    .line 11
    :cond_2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->eZI:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->awB:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 12
    const-string v1, "TTDislikeManager"

    const-string v2, "creative info to json exception"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_3
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/tB/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/tB/ZYk;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->dLZ:Ljava/lang/String;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->awB:Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->WcQ:Ljava/lang/String;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->BTZ:Ljava/lang/String;

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/tB/ZYk;->oJ(Ljava/lang/String;Ljava/util/List;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->PiB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    const-string v0, "onItemClickClosed"

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/tB/kkU;->ex(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->PiB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 18
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/tB/cFZ$oJ;->oJ()V

    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->PiB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ba(Ljava/lang/String;)V

    .line 20
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->so:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/tB/kkU$ZYk;

    .line 21
    sget v2, Lcom/bytedance/sdk/openadsdk/tB/kkU;->ZYk:I

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/openadsdk/tB/kkU$ZYk;->oJ(I)V

    goto :goto_3

    .line 22
    :cond_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->oJ:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/tB/kkU;->oJ(Lcom/bytedance/sdk/openadsdk/FilterWord;)V

    .line 23
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/tB/kkU;->tB(Ljava/lang/String;)V

    return-void
.end method

.method public jFA()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->Ry:I

    .line 2
    .line 3
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->RZ:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_0

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

.method protected oJ(I)Lcom/bytedance/sdk/openadsdk/IListenerManager;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->ba:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    if-nez v0, :cond_0

    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;

    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/aidl/oJ;->oJ(I)Landroid/os/IBinder;

    move-result-object p1

    .line 18
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/IListenerManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bytedance/sdk/openadsdk/IListenerManager;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->ba:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->ba:Lcom/bytedance/sdk/openadsdk/IListenerManager;

    return-object p1
.end method

.method public oJ()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->cFZ:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->so:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->jFA:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->kkU:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public oJ(II)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->Ry:I

    .line 27
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->RZ:I

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->QSm:Lcom/bytedance/sdk/openadsdk/FilterWord;

    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/tB/kkU;->kkU()V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/tB/kkU$ZYk;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->so:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/tB/kkU$ex;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->jFA:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/tB/kkU$oJ;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->kkU:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/tB/kkU$tB;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->cFZ:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->dLZ:Ljava/lang/String;

    return-void
.end method

.method public oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->eZI:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->si:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-void
.end method

.method public oJ(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/FilterWord;",
            ">;)V"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->kkU:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/tB/kkU$oJ;

    .line 14
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/tB/kkU$oJ;->oJ(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public so()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->Ry:I

    .line 2
    .line 3
    return v0
.end method

.method public tB(Ljava/lang/String;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->WcQ:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->jFA:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/tB/kkU$ex;

    .line 4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->WcQ:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/tB/kkU$ex;->oJ(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public tB()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/tB/kkU;->QSm:Lcom/bytedance/sdk/openadsdk/FilterWord;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/bytedance/sdk/openadsdk/tB/kkU;->oJ:Lcom/bytedance/sdk/openadsdk/FilterWord;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
