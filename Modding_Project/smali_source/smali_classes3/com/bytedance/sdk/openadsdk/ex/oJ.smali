.class public Lcom/bytedance/sdk/openadsdk/ex/oJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/ba/oJ/ex/oJ/ZYk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;
    }
.end annotation


# static fields
.field private static final dLZ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final kkU:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BTZ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private Id:Ljava/lang/String;

.field private Pfn:J

.field private PiB:Lorg/json/JSONObject;

.field private QSm:Lcom/bytedance/sdk/openadsdk/ex/ZYk/oJ;

.field private RZ:Ljava/lang/String;

.field private Ry:Ljava/lang/String;

.field private WcQ:Ljava/lang/String;

.field protected final ZYk:Lorg/json/JSONObject;

.field private awB:Ljava/lang/String;

.field private final ba:Ljava/lang/String;

.field private cFZ:I

.field private cY:I

.field private eZI:Ljava/lang/String;

.field private ex:J

.field private jFA:I

.field private jr:Ljava/lang/String;

.field public final oJ:Ljava/lang/String;

.field private oq:Ljava/lang/String;

.field private si:Ljava/lang/String;

.field private so:I

.field private tB:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v1, "insight_log"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->kkU:Ljava/util/Set;

    .line 17
    .line 18
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/oJ$1;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/oJ$1;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->dLZ:Ljava/util/Map;

    .line 24
    .line 25
    return-void
.end method

.method constructor <init>(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)V
    .locals 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string v0, "adiff"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ba:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->BTZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->PiB:Lorg/json/JSONObject;

    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Xe;->oJ()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->oJ:Ljava/lang/String;

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->oJ:Ljava/lang/String;

    .line 14
    :goto_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->ZYk(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Lcom/bytedance/sdk/openadsdk/ex/ZYk/oJ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->QSm:Lcom/bytedance/sdk/openadsdk/ex/ZYk/oJ;

    .line 15
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->tB(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->Id:Ljava/lang/String;

    .line 16
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->ex(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->WcQ:Ljava/lang/String;

    .line 17
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->Pfn(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->awB:Ljava/lang/String;

    .line 18
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->ba(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 19
    const-string v0, "app_union"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->eZI:Ljava/lang/String;

    goto :goto_1

    .line 20
    :cond_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->ba(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->eZI:Ljava/lang/String;

    .line 21
    :goto_1
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->cFZ(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->oq:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->so(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->si:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->jFA(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->RZ:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->kkU(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->Ry:Ljava/lang/String;

    .line 25
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->dLZ(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->cY:I

    .line 26
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->BTZ(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->jr:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->PiB(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->PiB(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_2

    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_2
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->PiB:Lorg/json/JSONObject;

    .line 28
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 29
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->BTZ(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 30
    :try_start_0
    const-string v1, "app_log_url"

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->BTZ(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 31
    const-string v1, "AdEvent"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_3
    :goto_3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->WcQ(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->cFZ:I

    .line 33
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->awB(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->so:I

    .line 34
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->oJ:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->jFA:I

    .line 35
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;->eZI(Lcom/bytedance/sdk/openadsdk/ex/oJ$oJ;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->tB:Z

    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->Pfn:J

    .line 37
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ba()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, "adiff"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ba:Ljava/lang/String;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->BTZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->PiB:Lorg/json/JSONObject;

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->oJ:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    return-void
.end method

.method private ZYk(Lorg/json/JSONObject;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->dLZ:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    sget-object v3, Lcom/bytedance/sdk/openadsdk/ex/oJ;->dLZ:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    return-void
.end method

.method private ZYk(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "app_union"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "event_v3"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "event_v1"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0

    :sswitch_3
    const-string v3, "umeng"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    move v0, v1

    :pswitch_0
    return v0

    :sswitch_data_0
    .sparse-switch
        0x6a3d346 -> :sswitch_3
        0x1093c240 -> :sswitch_2
        0x1093c242 -> :sswitch_1
        0x6dec5731 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private ba()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->PiB:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->si:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->eZI:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->Id:Ljava/lang/String;

    .line 10
    .line 11
    invoke-direct {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_7

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string v1, "value"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->PiB:Lorg/json/JSONObject;

    .line 25
    .line 26
    const-string v2, "category"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->PiB:Lorg/json/JSONObject;

    .line 33
    .line 34
    const-string v3, "log_extra"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->si:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->eZI:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->Id:Ljava/lang/String;

    .line 45
    .line 46
    invoke-direct {p0, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const-string v4, "0"

    .line 51
    .line 52
    if-eqz v3, :cond_2

    .line 53
    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    if-nez v2, :cond_1

    .line 59
    .line 60
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_7

    .line 72
    .line 73
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk(Ljava/lang/String;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_7

    .line 78
    .line 79
    return-void

    .line 80
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v3

    .line 84
    if-nez v3, :cond_3

    .line 85
    .line 86
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_4

    .line 91
    .line 92
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->si:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_8

    .line 99
    .line 100
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->si:Ljava/lang/String;

    .line 101
    .line 102
    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_4

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->eZI:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_5

    .line 116
    .line 117
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->eZI:Ljava/lang/String;

    .line 118
    .line 119
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk(Ljava/lang/String;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_6

    .line 124
    .line 125
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-nez v0, :cond_8

    .line 130
    .line 131
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    if-nez v0, :cond_6

    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->Id:Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_7

    .line 145
    .line 146
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_7

    .line 151
    .line 152
    return-void

    .line 153
    :cond_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/oJ/ex;->oJ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    int-to-long v0, v0

    .line 160
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ex:J

    .line 161
    .line 162
    :cond_8
    :goto_0
    return-void
.end method

.method private cFZ()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 4
    .line 5
    const-string v2, "app_log_url"

    .line 6
    .line 7
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->jr:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 13
    .line 14
    const-string v2, "tag"

    .line 15
    .line 16
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->WcQ:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 22
    .line 23
    const-string v2, "label"

    .line 24
    .line 25
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->awB:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 31
    .line 32
    const-string v2, "category"

    .line 33
    .line 34
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->eZI:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->si:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-nez v1, :cond_0

    .line 46
    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->si:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 52
    .line 53
    .line 54
    move-result-wide v2

    .line 55
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 64
    .line 65
    const-wide/16 v2, 0x0

    .line 66
    .line 67
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->RZ:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_1

    .line 81
    .line 82
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 83
    .line 84
    const-string v1, "ext_value"

    .line 85
    .line 86
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->RZ:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    .line 98
    .line 99
    :catch_1
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->Id:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-nez v0, :cond_2

    .line 106
    .line 107
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 108
    .line 109
    const-string v1, "log_extra"

    .line 110
    .line 111
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->Id:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    .line 115
    .line 116
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->oq:Ljava/lang/String;

    .line 117
    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    if-nez v0, :cond_3

    .line 123
    .line 124
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 125
    .line 126
    const-string v1, "ua_policy"

    .line 127
    .line 128
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->oq:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 139
    .line 140
    .line 141
    :catch_2
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 142
    .line 143
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->awB:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/oJ;->oJ(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 149
    .line 150
    const-string v1, "nt"

    .line 151
    .line 152
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->cY:I

    .line 153
    .line 154
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 159
    .line 160
    .line 161
    :catch_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->PiB:Lorg/json/JSONObject;

    .line 162
    .line 163
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    if-eqz v1, :cond_4

    .line 172
    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Ljava/lang/String;

    .line 178
    .line 179
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->PiB:Lorg/json/JSONObject;

    .line 180
    .line 181
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 186
    .line 187
    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_4
    return-void
.end method

.method private oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .line 4
    const-string v0, "image_mode"

    const-string v1, "real_interaction_method"

    const-string v2, "interaction_method"

    const-string v3, "adiff"

    :try_start_0
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->oJ:Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->tB:Z

    if-eqz v3, :cond_3

    .line 7
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->cFZ:I

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 10
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->so:I

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    :cond_2
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->jFA:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 13
    :cond_3
    const-string v0, "replace_log_extra_key"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk(Lorg/json/JSONObject;)V

    .line 15
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pangle-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->oJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 16
    const-string v1, "pangle_client_unique_id"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 17
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    const-string v0, "error "

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_2
    const-string v1, "AdEvent"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method private static oJ(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 28
    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->kkU:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "label"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    const-string p1, "is_ad_event"

    const-string v0, "1"

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 30
    :goto_1
    const-string p1, "AdEvent"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    const-string v1, "0"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    const/4 p1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p3, "app_union"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    goto :goto_0

    :sswitch_1
    const-string p3, "event_v3"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, 0x2

    goto :goto_0

    :sswitch_2
    const-string p3, "event_v1"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    move p1, v0

    goto :goto_0

    :sswitch_3
    const-string p3, "umeng"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    move p1, v2

    :goto_0
    packed-switch p1, :pswitch_data_0

    move v0, v2

    :pswitch_0
    return v0

    :cond_6
    :goto_1
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0x6a3d346 -> :sswitch_3
        0x1093c240 -> :sswitch_2
        0x1093c242 -> :sswitch_1
        0x6dec5731 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public Pfn()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->dLZ()Ljava/util/Set;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 19
    .line 20
    const-string v3, "label"

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_3

    .line 31
    .line 32
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->awB:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    return v1

    .line 41
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->awB:Ljava/lang/String;

    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    return v0

    .line 48
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    return v0
.end method

.method public ZYk()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ex:J

    return-wide v0
.end method

.method public ex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->Pfn:J

    return-wide v0
.end method

.method public oJ(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/oJ;->tB()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public oJ(Z)Lorg/json/JSONObject;
    .locals 3

    .line 18
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ex/oJ;->tB()Lorg/json/JSONObject;

    move-result-object v0

    .line 19
    const-string v1, "app_log_url"

    if-eqz p1, :cond_1

    .line 20
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    const-string v2, "params"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 22
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    return-object p1

    .line 23
    :cond_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 25
    :goto_1
    const-string v1, "AdEvent"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public tB()Lorg/json/JSONObject;
    .locals 6

    .line 1
    const-string v0, "ad_extra_data"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->BTZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/ex/oJ;->cFZ()V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    const-string v2, "json error"

    .line 24
    .line 25
    const-string v3, "AdEvent"

    .line 26
    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    if-eqz v1, :cond_4

    .line 36
    .line 37
    :try_start_2
    instance-of v4, v1, Lorg/json/JSONObject;

    .line 38
    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    check-cast v1, Lorg/json/JSONObject;

    .line 42
    .line 43
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/ex/oJ;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 48
    .line 49
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    goto :goto_3

    .line 57
    :catch_0
    move-exception v0

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    instance-of v4, v1, Ljava/lang/String;

    .line 60
    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    new-instance v4, Lorg/json/JSONObject;

    .line 64
    .line 65
    check-cast v1, Ljava/lang/String;

    .line 66
    .line 67
    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v4}, Lcom/bytedance/sdk/openadsdk/ex/oJ;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 75
    .line 76
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_2
    new-instance v1, Lorg/json/JSONObject;

    .line 97
    .line 98
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 99
    .line 100
    .line 101
    :try_start_4
    const-string v4, "adiff"

    .line 102
    .line 103
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->oJ:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    .line 107
    .line 108
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->tB:Z

    .line 109
    .line 110
    if-eqz v4, :cond_3

    .line 111
    .line 112
    const-string v4, "interaction_method"

    .line 113
    .line 114
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->cFZ:I

    .line 115
    .line 116
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    const-string v4, "real_interaction_method"

    .line 120
    .line 121
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->so:I

    .line 122
    .line 123
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 124
    .line 125
    .line 126
    const-string v4, "image_mode"

    .line 127
    .line 128
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->jFA:I

    .line 129
    .line 130
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :catch_1
    move-exception v0

    .line 135
    goto :goto_2

    .line 136
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 137
    .line 138
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v3, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->BTZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 158
    .line 159
    const/4 v1, 0x1

    .line 160
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 161
    .line 162
    .line 163
    :catchall_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ;->ZYk:Lorg/json/JSONObject;

    .line 164
    .line 165
    return-object v0
.end method
