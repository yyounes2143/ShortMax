.class public abstract Lcom/applovin/impl/j2;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method public static a()V
    .locals 1

    const/4 v0, 0x1

    .line 3
    sput-boolean v0, Lcom/applovin/impl/j2;->a:Z

    return-void
.end method

.method private static synthetic a(Lcom/applovin/impl/sdk/k;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/applovin/impl/j2;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object p0

    sget-object v0, Lcom/applovin/impl/c2;->E0:Lcom/applovin/impl/c2;

    const-string v1, "no_ads_loaded"

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/d2;->a(Lcom/applovin/impl/c2;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lcom/applovin/impl/sdk/k;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/applovin/impl/o3;->d8:Lcom/applovin/impl/v4;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Long;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    const-wide/16 v3, 0x0

    .line 14
    .line 15
    cmp-long v1, v1, v3

    .line 16
    .line 17
    if-gtz v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Lcom/applovin/impl/p6;

    .line 25
    .line 26
    new-instance v3, Lcom/applovin/impl/nb;

    .line 27
    .line 28
    invoke-direct {v3, p0}, Lcom/applovin/impl/nb;-><init>(Lcom/applovin/impl/sdk/k;)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x1

    .line 32
    const-string v5, "submitIntegrationErrorReport"

    .line 33
    .line 34
    invoke-direct {v2, p0, v4, v5, v3}, Lcom/applovin/impl/p6;-><init>(Lcom/applovin/impl/sdk/k;ZLjava/lang/String;Ljava/lang/Runnable;)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lcom/applovin/impl/b6$b;->e:Lcom/applovin/impl/b6$b;

    .line 38
    .line 39
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v4

    .line 45
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 46
    .line 47
    .line 48
    move-result-wide v3

    .line 49
    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;J)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public static synthetic c(Lcom/applovin/impl/sdk/k;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/applovin/impl/j2;->a(Lcom/applovin/impl/sdk/k;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
