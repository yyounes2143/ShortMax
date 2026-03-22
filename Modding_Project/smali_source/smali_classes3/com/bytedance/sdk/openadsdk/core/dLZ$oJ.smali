.class Lcom/bytedance/sdk/openadsdk/core/dLZ$oJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/utils/HL$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/dLZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "oJ"
.end annotation


# static fields
.field private static volatile ZYk:J

.field private static final oJ:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/dLZ$oJ;->oJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const-wide/16 v0, -0x1

    .line 10
    .line 11
    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/dLZ$oJ;->ZYk:J

    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static oJ()V
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/dLZ$oJ;->oJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/dLZ$oJ;->ZYk:J

    .line 3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dLZ$oJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/dLZ$oJ;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/HL;->oJ(Lcom/bytedance/sdk/component/utils/HL$oJ;Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/HL;->oJ(Lcom/bytedance/sdk/component/utils/HL$oJ;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public oJ(Landroid/content/Context;Landroid/content/Intent;ZI)V
    .locals 2

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sget-wide v0, Lcom/bytedance/sdk/openadsdk/core/dLZ$oJ;->ZYk:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x7d0

    cmp-long p1, p1, v0

    if-gez p1, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/dLZ;->ZYk()V

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ;->oJ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/dLZ;->ZYk(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/dLZ$oJ;->ZYk()V

    :cond_1
    return-void
.end method
