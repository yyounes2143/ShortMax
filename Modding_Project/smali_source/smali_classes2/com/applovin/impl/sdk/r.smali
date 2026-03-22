.class public Lcom/applovin/impl/sdk/r;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/r$d;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/k;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljava/util/Set;

.field private final d:Ljava/lang/Object;

.field private final e:Landroid/adservices/measurement/MeasurementManager;

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;

.field private final g:Lcom/applovin/impl/sdk/r$d;

.field private final h:Li/d;


# direct methods
.method protected constructor <init>(Lcom/applovin/impl/sdk/k;)V
    .locals 2

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
    iput-object v0, p0, Lcom/applovin/impl/sdk/r;->c:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/applovin/impl/sdk/r;->d:Ljava/lang/Object;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 19
    .line 20
    new-instance v1, Lorg/json/JSONArray;

    .line 21
    .line 22
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/applovin/impl/sdk/r;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    .line 30
    new-instance v0, Lcom/applovin/impl/sdk/r$d;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    invoke-direct {v0, p0, v1}, Lcom/applovin/impl/sdk/r$d;-><init>(Lcom/applovin/impl/sdk/r;Lcom/applovin/impl/sdk/r$a;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lcom/applovin/impl/sdk/r;->g:Lcom/applovin/impl/sdk/r$d;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/k;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/applovin/impl/b6;->b()Ljava/util/concurrent/ExecutorService;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/applovin/impl/sdk/r;->b:Ljava/util/concurrent/Executor;

    .line 49
    .line 50
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/measurement/m;->a()Ljava/lang/Class;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-static {v1}, Landroidx/privacysandbox/ads/adservices/measurement/n;->a(Ljava/lang/Object;)Landroid/adservices/measurement/MeasurementManager;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    iput-object v1, p0, Lcom/applovin/impl/sdk/r;->e:Landroid/adservices/measurement/MeasurementManager;

    .line 67
    .line 68
    const-class v1, Li/d;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Li/d;

    .line 75
    .line 76
    iput-object v0, p0, Lcom/applovin/impl/sdk/r;->h:Li/d;

    .line 77
    .line 78
    sget-object v0, Lcom/applovin/impl/v4;->U6:Lcom/applovin/impl/v4;

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Ljava/lang/Boolean;

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_0

    .line 91
    .line 92
    sget-object v0, Lcom/applovin/impl/v4;->X6:Lcom/applovin/impl/v4;

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Ljava/lang/Boolean;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    const-wide/16 v0, 0x0

    .line 105
    .line 106
    invoke-direct {p0, p1, v0, v1}, Lcom/applovin/impl/sdk/r;->b(ZJ)V

    .line 107
    .line 108
    .line 109
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/r;)Lcom/applovin/impl/sdk/k;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/k;

    return-object p0
.end method

.method public static synthetic a(Lcom/applovin/impl/sdk/r;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/r;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/r;ZJ)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/r;->b(ZJ)V

    return-void
.end method

.method private synthetic a(Li/a;)V
    .locals 3

    .line 27
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->h:Li/d;

    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->b:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/applovin/impl/sdk/r;->g:Lcom/applovin/impl/sdk/r$d;

    invoke-virtual {v0, p1, v1, v2}, Li/d;->b(Li/a;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;)V
    .locals 3

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->e:Landroid/adservices/measurement/MeasurementManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/k;->E0:Landroid/content/Context;

    invoke-static {v0}, Lcom/applovin/impl/o4;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering conversion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrivacySandboxService"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->e:Landroid/adservices/measurement/MeasurementManager;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/applovin/impl/sdk/r$c;

    invoke-direct {v2, p0}, Lcom/applovin/impl/sdk/r$c;-><init>(Lcom/applovin/impl/sdk/r;)V

    invoke-static {v0, p1, v1, v2}, Landroidx/privacysandbox/ads/adservices/measurement/o;->a(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 4

    const-string v0, "PrivacySandboxService"

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Running operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 30
    :goto_1
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to run operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    :cond_1
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/r;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 32
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    return-void
.end method

.method private synthetic a(Ljava/util/List;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->e:Landroid/adservices/measurement/MeasurementManager;

    if-nez v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/k;->E0:Landroid/content/Context;

    invoke-static {v0}, Lcom/applovin/impl/o4;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v1, "PrivacySandboxService"

    const-string v2, "Registering impression..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->e:Landroid/adservices/measurement/MeasurementManager;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/r;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/applovin/impl/sdk/r$a;

    invoke-direct {v3, p0}, Lcom/applovin/impl/sdk/r$a;-><init>(Lcom/applovin/impl/sdk/r;)V

    const/4 v4, 0x0

    invoke-static {v1, v0, v4, v2, v3}, Landroidx/privacysandbox/ads/adservices/measurement/s;->a(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Landroid/view/InputEvent;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic a(Ljava/util/List;Landroid/view/InputEvent;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 9
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->e:Landroid/adservices/measurement/MeasurementManager;

    if-nez v0, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    sget-object v0, Lcom/applovin/impl/sdk/k;->E0:Landroid/content/Context;

    invoke-static {v0}, Lcom/applovin/impl/o4;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v1, "PrivacySandboxService"

    const-string v2, "Registering click..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 13
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->e:Landroid/adservices/measurement/MeasurementManager;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/r;->b:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/applovin/impl/sdk/r$b;

    invoke-direct {v3, p0}, Lcom/applovin/impl/sdk/r$b;-><init>(Lcom/applovin/impl/sdk/r;)V

    invoke-static {v1, v0, p2, v2, v3}, Landroidx/privacysandbox/ads/adservices/measurement/s;->a(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Landroid/view/InputEvent;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private synthetic a(ZJ)V
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->h:Li/d;

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    new-instance v0, Li/a$a;

    invoke-direct {v0}, Li/a$a;-><init>()V

    .line 21
    invoke-virtual {v0, p1}, Li/a$a;->c(Z)Li/a$a;

    move-result-object p1

    .line 22
    const-string v0, "AppLovin"

    invoke-virtual {p1, v0}, Li/a$a;->b(Ljava/lang/String;)Li/a$a;

    move-result-object p1

    .line 23
    invoke-virtual {p1}, Li/a$a;->a()Li/a;

    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    const/4 v0, 0x0

    if-lez p1, :cond_1

    .line 24
    new-instance p1, Lcom/applovin/impl/p6;

    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/k;

    new-instance v2, Lcom/applovin/impl/sdk/c2;

    invoke-direct {v2, p0, v0}, Lcom/applovin/impl/sdk/c2;-><init>(Lcom/applovin/impl/sdk/r;Li/a;)V

    const/4 v0, 0x1

    const-string v3, "getTopics"

    invoke-direct {p1, v1, v0, v3, v2}, Lcom/applovin/impl/p6;-><init>(Lcom/applovin/impl/sdk/k;ZLjava/lang/String;Ljava/lang/Runnable;)V

    .line 25
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/b6$b;->e:Lcom/applovin/impl/b6$b;

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;J)V

    goto :goto_0

    .line 26
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/sdk/r;->h:Li/d;

    iget-object p2, p0, Lcom/applovin/impl/sdk/r;->b:Ljava/util/concurrent/Executor;

    iget-object p3, p0, Lcom/applovin/impl/sdk/r;->g:Lcom/applovin/impl/sdk/r$d;

    invoke-virtual {p1, v0, p2, p3}, Li/d;->b(Li/a;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/r;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/applovin/impl/sdk/r;->f:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method public static synthetic b(Lcom/applovin/impl/sdk/r;Ljava/util/List;Landroid/view/InputEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/r;->a(Ljava/util/List;Landroid/view/InputEvent;)V

    return-void
.end method

.method private b(ZJ)V
    .locals 1

    .line 6
    new-instance v0, Lcom/applovin/impl/sdk/b2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/applovin/impl/sdk/b2;-><init>(Lcom/applovin/impl/sdk/r;ZJ)V

    const-string p1, "retrieve topics"

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/sdk/r;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic c(Lcom/applovin/impl/sdk/r;ZJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/r;->a(ZJ)V

    return-void
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/r;->c:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static synthetic d(Lcom/applovin/impl/sdk/r;Li/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/r;->a(Li/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/applovin/impl/sdk/r;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/r;->a(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONArray;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/applovin/impl/sdk/r;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/applovin/impl/sdk/e2;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/e2;-><init>(Lcom/applovin/impl/sdk/r;Ljava/lang/String;)V

    const-string p1, "register conversion trigger event"

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/sdk/r;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/applovin/impl/sdk/d2;

    invoke-direct {v0, p0, p1}, Lcom/applovin/impl/sdk/d2;-><init>(Lcom/applovin/impl/sdk/r;Ljava/util/List;)V

    const-string p1, "register impression"

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/sdk/r;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/util/List;Landroid/view/InputEvent;)V
    .locals 1

    .line 4
    new-instance v0, Lcom/applovin/impl/sdk/f2;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/sdk/f2;-><init>(Lcom/applovin/impl/sdk/r;Ljava/util/List;Landroid/view/InputEvent;)V

    const-string p1, "register click"

    invoke-direct {p0, p1, v0}, Lcom/applovin/impl/sdk/r;->a(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method
