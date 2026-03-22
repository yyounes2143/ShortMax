.class public Lcom/applovin/impl/sdk/AppLovinExceptionHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final e:Lcom/applovin/impl/sdk/AppLovinExceptionHandler;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Ljava/lang/Thread$UncaughtExceptionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->e:Lcom/applovin/impl/sdk/AppLovinExceptionHandler;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->a:Ljava/util/Set;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    return-void
.end method

.method private a(Ljava/lang/Throwable;I)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    array-length v0, p1

    .line 6
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, [Ljava/lang/StackTraceElement;

    .line 15
    .line 16
    const-string p2, "\n"

    .line 17
    .line 18
    invoke-static {p2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    return-object p1
.end method

.method public static shared()Lcom/applovin/impl/sdk/AppLovinExceptionHandler;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->e:Lcom/applovin/impl/sdk/AppLovinExceptionHandler;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public addSdk(Lcom/applovin/impl/sdk/k;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->a:Ljava/util/Set;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->a:Ljava/util/Set;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public enable()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->a:Ljava/util/Set;

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-wide/16 v2, 0x1f4

    .line 28
    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_3

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/applovin/impl/sdk/k;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 42
    .line 43
    .line 44
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const-string v4, "AppLovinExceptionHandler"

    .line 55
    .line 56
    const-string v5, "Detected unhandled exception"

    .line 57
    .line 58
    invoke-virtual {v3, v4, v5}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const-string/jumbo v4, "top_main_method"

    .line 66
    .line 67
    .line 68
    invoke-static {v4, v3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->hashMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    sget-object v4, Lcom/applovin/impl/v4;->w6:Lcom/applovin/impl/v4;

    .line 73
    .line 74
    invoke-virtual {v2, v4}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v4, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    if-lez v5, :cond_2

    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 87
    .line 88
    .line 89
    move-result v4

    .line 90
    invoke-direct {p0, p2, v4}, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->a(Ljava/lang/Throwable;I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    const-string v5, "details"

    .line 95
    .line 96
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    sget-object v5, Lcom/applovin/impl/c2;->C0:Lcom/applovin/impl/c2;

    .line 104
    .line 105
    invoke-virtual {v4, v5, v3}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->G()Lcom/applovin/impl/sdk/EventServiceImpl;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    const-string v4, "paused"

    .line 113
    .line 114
    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEventSynchronously(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    sget-object v3, Lcom/applovin/impl/v4;->l3:Lcom/applovin/impl/v4;

    .line 118
    .line 119
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    check-cast v2, Ljava/lang/Long;

    .line 124
    .line 125
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 126
    .line 127
    .line 128
    move-result-wide v2

    .line 129
    goto :goto_0

    .line 130
    :cond_3
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    :catch_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinExceptionHandler;->d:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 134
    .line 135
    if-eqz v0, :cond_4

    .line 136
    .line 137
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_4
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    invoke-static {p1}, Landroid/os/Process;->killProcess(I)V

    .line 146
    .line 147
    .line 148
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 149
    .line 150
    .line 151
    :goto_1
    return-void
.end method
