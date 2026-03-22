.class public Lcom/bytedance/sdk/openadsdk/core/dLZ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/dLZ$oJ;
    }
.end annotation


# static fields
.field private static final ZYk:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final oJ:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/dLZ;->oJ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/dLZ;->ZYk:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    return-void
.end method

.method static synthetic ZYk()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dLZ;->tB()V

    return-void
.end method

.method public static ZYk(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dLZ$1;

    const-string v1, "ipv6"

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->tB(Lcom/bytedance/sdk/component/so/so;)V

    return-void
.end method

.method private static ZYk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 3
    const-string v0, "decrypt failed "

    const-string v1, "no ip type "

    const-string v2, "cypher type error"

    const-string v3, "ipv6"

    const/4 v4, 0x2

    const/4 v5, -0x1

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    const-string p0, "cypher"

    invoke-virtual {v6, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    const/4 v7, 0x4

    const/4 v8, 0x1

    if-eq p0, v7, :cond_0

    .line 5
    invoke-static {v5, p1, v8, v2}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(ILjava/lang/String;ILjava/lang/String;)V

    const/4 p0, -0x4

    .line 6
    invoke-static {v3, p1, p0, v2}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/dLZ$3;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ$3;-><init>()V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    return-void

    .line 8
    :cond_0
    const-string p0, "message"

    invoke-virtual {v6, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-static {p0}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->decryptType4(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object p0

    .line 10
    iget-object v2, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_a

    .line 11
    new-instance v0, Lorg/json/JSONObject;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    const-string p0, "ip_type"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v6, 0x316de5

    if-eq v2, v6, :cond_3

    const v6, 0x316de7

    if-eq v2, v6, :cond_2

    const v6, 0x74cff1f7

    if-eq v2, v6, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "invalid"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    move p0, v4

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_3
    const-string v2, "ipv4"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_4

    move p0, v8

    goto :goto_1

    :cond_4
    :goto_0
    move p0, v5

    :goto_1
    const/4 v2, -0x6

    const-string v6, "key_ipv4"

    const-string v9, "key_ipv6"

    const-string v10, "no ip"

    const-string v11, "ttopenadsdk"

    const-string v12, "ip"

    if-eqz p0, :cond_8

    if-eq p0, v8, :cond_6

    if-eq p0, v4, :cond_5

    const/4 p0, 0x3

    .line 14
    :try_start_1
    invoke-static {v5, p1, p0, v1}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(ILjava/lang/String;ILjava/lang/String;)V

    const/4 p0, -0x7

    .line 15
    invoke-static {v3, p1, p0, v1}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 16
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/dLZ$9;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ$9;-><init>()V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    :cond_5
    return-void

    .line 17
    :cond_6
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 18
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-static {v11, v6, p0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {v11, v9}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-static {v8, p1}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(ILjava/lang/String;)V

    .line 22
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/dLZ$7;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ$7;-><init>()V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/si/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    return-void

    .line 23
    :cond_7
    invoke-static {v5, p1, v7, v10}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(ILjava/lang/String;ILjava/lang/String;)V

    .line 24
    invoke-static {v3, p1, v2, v10}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 25
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/dLZ$8;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ$8;-><init>()V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    return-void

    .line 26
    :cond_8
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    .line 27
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-static {v11, v9, p0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {v11, v6}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 31
    invoke-interface {v0, v9, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->oJ(Ljava/util/Map;)V

    .line 33
    invoke-static {v8, p1}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(ILjava/lang/String;)V

    .line 34
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/dLZ$5;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ$5;-><init>()V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/si/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    return-void

    .line 35
    :cond_9
    invoke-static {v5, p1, v7, v10}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(ILjava/lang/String;ILjava/lang/String;)V

    .line 36
    invoke-static {v3, p1, v2, v10}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/dLZ$6;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ$6;-><init>()V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    return-void

    .line 38
    :cond_a
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 39
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, p1, v4, v1}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(ILjava/lang/String;ILjava/lang/String;)V

    .line 40
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x5

    invoke-static {v3, p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 41
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/dLZ$4;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ$4;-><init>()V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    .line 42
    :catch_0
    const-string p0, "decrypt failed, wrong data "

    invoke-static {v5, p1, v4, p0}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(ILjava/lang/String;ILjava/lang/String;)V

    const/4 v0, -0x8

    .line 43
    invoke-static {v3, p1, v0, p0}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 44
    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/dLZ$10;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ$10;-><init>()V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    return-void
.end method

.method private static ZYk(Lorg/json/JSONObject;)Z
    .locals 0

    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static ex()V
    .locals 5

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/dLZ;->oJ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ()Ljava/util/concurrent/ScheduledExecutorService;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dLZ$2;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ$2;-><init>()V

    .line 16
    .line 17
    .line 18
    const-wide/16 v2, 0x2710

    .line 19
    .line 20
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 21
    .line 22
    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method static synthetic oJ()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dLZ;->ex()V

    return-void
.end method

.method public static oJ(Ljava/lang/String;)V
    .locals 3

    .line 4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/dLZ;->ZYk:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/Ry;->so(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 7
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dLZ$oJ;->oJ()V

    .line 8
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ;->ZYk(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic oJ(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ;->ZYk(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic oJ(Lorg/json/JSONObject;)Z
    .locals 0

    .line 3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ;->ZYk(Lorg/json/JSONObject;)Z

    move-result p0

    return p0
.end method

.method private static tB()V
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/dLZ;->oJ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
