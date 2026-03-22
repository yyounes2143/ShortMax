.class final Lio/bidmachine/j2;
.super Ljava/lang/Object;
.source "BidMachineImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/j2$b;,
        Lio/bidmachine/j2$c;
    }
.end annotation


# static fields
.field private static final B:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static volatile C:Lio/bidmachine/j2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final A:Lio/bidmachine/e4$d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final a:Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/bidmachine/InitializationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lwq/e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lwq/f;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lio/bidmachine/v5;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Lio/bidmachine/PriceFloorParams;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final h:Lio/bidmachine/a1;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Lio/bidmachine/v3;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final j:Lio/bidmachine/o5;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final k:Lio/bidmachine/x3;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final l:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final n:Lio/bidmachine/z0;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final o:Lio/bidmachine/w1;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field p:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:Lio/bidmachine/TargetingParams;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private s:Lio/bidmachine/CustomParams;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private t:Lio/bidmachine/Publisher;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Z

.field v:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private w:I

.field x:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field y:J
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field z:Lio/bidmachine/e4;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


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
    sput-object v0, Lio/bidmachine/j2;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    new-instance v0, Lio/bidmachine/j2$a;

    .line 10
    .line 11
    const-string v1, "BidMachineLog"

    .line 12
    .line 13
    invoke-direct {v0, v1}, Lio/bidmachine/j2$a;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lio/bidmachine/core/a;->i(Lir/c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lio/bidmachine/j2;->a:Ljava/util/Set;

    .line 10
    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lio/bidmachine/j2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lio/bidmachine/j2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    new-instance v0, Lwq/e;

    .line 27
    .line 28
    invoke-direct {v0}, Lwq/e;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lio/bidmachine/j2;->d:Lwq/e;

    .line 32
    .line 33
    new-instance v2, Lio/bidmachine/k2;

    .line 34
    .line 35
    invoke-direct {v2, v0}, Lio/bidmachine/k2;-><init>(Lwq/b;)V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lio/bidmachine/j2;->e:Lwq/f;

    .line 39
    .line 40
    new-instance v0, Lio/bidmachine/v5;

    .line 41
    .line 42
    invoke-direct {v0}, Lio/bidmachine/v5;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lio/bidmachine/j2;->f:Lio/bidmachine/v5;

    .line 46
    .line 47
    new-instance v0, Lio/bidmachine/PriceFloorParams;

    .line 48
    .line 49
    invoke-direct {v0}, Lio/bidmachine/PriceFloorParams;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v2, v3, v4}, Lio/bidmachine/PriceFloorParams;->addPriceFloor(Ljava/lang/String;D)Lio/bidmachine/PriceFloorParams;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iput-object v0, p0, Lio/bidmachine/j2;->g:Lio/bidmachine/PriceFloorParams;

    .line 70
    .line 71
    new-instance v0, Lio/bidmachine/a1;

    .line 72
    .line 73
    new-instance v2, Lio/bidmachine/b1;

    .line 74
    .line 75
    invoke-direct {v2}, Lio/bidmachine/b1;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-direct {v0, v2}, Lio/bidmachine/a1;-><init>(Lio/bidmachine/b1;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lio/bidmachine/j2;->h:Lio/bidmachine/a1;

    .line 82
    .line 83
    new-instance v0, Lio/bidmachine/v3;

    .line 84
    .line 85
    new-instance v2, Lio/bidmachine/w2;

    .line 86
    .line 87
    invoke-direct {v2}, Lio/bidmachine/w2;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-direct {v0, v2}, Lio/bidmachine/v3;-><init>(Lio/bidmachine/w2;)V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lio/bidmachine/j2;->i:Lio/bidmachine/v3;

    .line 94
    .line 95
    new-instance v0, Lio/bidmachine/o5;

    .line 96
    .line 97
    invoke-direct {v0}, Lio/bidmachine/o5;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v0, p0, Lio/bidmachine/j2;->j:Lio/bidmachine/o5;

    .line 101
    .line 102
    new-instance v0, Lio/bidmachine/y3;

    .line 103
    .line 104
    invoke-direct {v0}, Lio/bidmachine/y3;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lio/bidmachine/j2;->k:Lio/bidmachine/x3;

    .line 108
    .line 109
    new-instance v0, Ljava/util/EnumMap;

    .line 110
    .line 111
    const-class v2, Lio/bidmachine/TrackEventType;

    .line 112
    .line 113
    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lio/bidmachine/j2;->l:Ljava/util/Map;

    .line 117
    .line 118
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 121
    .line 122
    .line 123
    iput-object v0, p0, Lio/bidmachine/j2;->m:Ljava/util/List;

    .line 124
    .line 125
    new-instance v0, Lio/bidmachine/z0;

    .line 126
    .line 127
    invoke-direct {v0}, Lio/bidmachine/z0;-><init>()V

    .line 128
    .line 129
    .line 130
    iput-object v0, p0, Lio/bidmachine/j2;->n:Lio/bidmachine/z0;

    .line 131
    .line 132
    new-instance v0, Lio/bidmachine/w1;

    .line 133
    .line 134
    invoke-direct {v0}, Lio/bidmachine/w1;-><init>()V

    .line 135
    .line 136
    .line 137
    iput-object v0, p0, Lio/bidmachine/j2;->o:Lio/bidmachine/w1;

    .line 138
    .line 139
    new-instance v0, Lio/bidmachine/TargetingParams;

    .line 140
    .line 141
    invoke-direct {v0}, Lio/bidmachine/TargetingParams;-><init>()V

    .line 142
    .line 143
    .line 144
    iput-object v0, p0, Lio/bidmachine/j2;->r:Lio/bidmachine/TargetingParams;

    .line 145
    .line 146
    new-instance v0, Lio/bidmachine/CustomParams;

    .line 147
    .line 148
    invoke-direct {v0}, Lio/bidmachine/CustomParams;-><init>()V

    .line 149
    .line 150
    .line 151
    iput-object v0, p0, Lio/bidmachine/j2;->s:Lio/bidmachine/CustomParams;

    .line 152
    .line 153
    iput v1, p0, Lio/bidmachine/j2;->v:I

    .line 154
    .line 155
    iput v1, p0, Lio/bidmachine/j2;->w:I

    .line 156
    .line 157
    const-wide/16 v0, 0x0

    .line 158
    .line 159
    iput-wide v0, p0, Lio/bidmachine/j2;->y:J

    .line 160
    .line 161
    new-instance v0, Lio/bidmachine/j2$b;

    .line 162
    .line 163
    const/4 v1, 0x0

    .line 164
    invoke-direct {v0, p0, v1}, Lio/bidmachine/j2$b;-><init>(Lio/bidmachine/j2;Lio/bidmachine/j2$a;)V

    .line 165
    .line 166
    .line 167
    iput-object v0, p0, Lio/bidmachine/j2;->A:Lio/bidmachine/e4$d;

    .line 168
    .line 169
    return-void
.end method

.method private synthetic D(Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2;->o:Lio/bidmachine/w1;

    .line 2
    .line 3
    invoke-virtual {v0, p4, p1, p2, p3}, Lio/bidmachine/w1;->a(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic E(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Lio/bidmachine/Debugger;->setup(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/j2;->k:Lio/bidmachine/x3;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Lio/bidmachine/x3;->a(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/j2;->n:Lio/bidmachine/z0;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lio/bidmachine/z0;->e(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lio/bidmachine/j2;->z:Lio/bidmachine/e4;

    .line 15
    .line 16
    invoke-virtual {v0}, Lio/bidmachine/e4;->f()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lio/bidmachine/j2;->J(Landroid/content/Context;)J

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lio/bidmachine/i4;->d(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/j2;->y(Landroid/content/Context;Lio/bidmachine/NetworkRegistry$c;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lio/bidmachine/j2;->H()V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lio/bidmachine/j2;->z:Lio/bidmachine/e4;

    .line 33
    .line 34
    invoke-virtual {p1}, Lio/bidmachine/e4;->e()V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lio/bidmachine/internal/KotlinEngine;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method private static synthetic F(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/bidmachine/n1;->b(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic G(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lio/bidmachine/w1;->b(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static K(Landroid/content/Context;)V
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/j2;->B:Ljava/util/concurrent/atomic/AtomicBoolean;

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
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Lio/bidmachine/e2;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lio/bidmachine/e2;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lio/bidmachine/core/g;->k0(Lfr/k;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Lio/bidmachine/f2;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lio/bidmachine/f2;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-static {v0}, Lio/bidmachine/core/g;->k0(Lfr/k;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private static M(Lio/bidmachine/InitializationCallback;)V
    .locals 1
    .param p0    # Lio/bidmachine/InitializationCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lio/bidmachine/i2;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lio/bidmachine/i2;-><init>(Lio/bidmachine/InitializationCallback;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/j2;->F(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lio/bidmachine/j2;Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/j2;->D(Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lio/bidmachine/j2;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/j2;->E(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/j2;->G(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static e()Lio/bidmachine/j2;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/j2;->C:Lio/bidmachine/j2;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v1, Lio/bidmachine/j2;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lio/bidmachine/j2;->C:Lio/bidmachine/j2;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lio/bidmachine/j2;

    .line 13
    .line 14
    invoke-direct {v0}, Lio/bidmachine/j2;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lio/bidmachine/j2;->C:Lio/bidmachine/j2;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v1

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v0

    .line 26
    :cond_1
    :goto_2
    return-object v0
.end method


# virtual methods
.method A()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method B()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method C()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/j2;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method H()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-string v0, "Notify initialization finished"

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/core/a;->d(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/j2;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/j2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lio/bidmachine/j2;->a:Ljava/util/Set;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lio/bidmachine/InitializationCallback;

    .line 35
    .line 36
    invoke-static {v1}, Lio/bidmachine/j2;->M(Lio/bidmachine/InitializationCallback;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object v0, p0, Lio/bidmachine/j2;->a:Ljava/util/Set;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method I(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2;->f:Lio/bidmachine/v5;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/v5;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "00000000-0000-0000-0000-000000000000"

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/j2;->x:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object p1, p0, Lio/bidmachine/j2;->x:Ljava/lang/String;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    invoke-static {p1}, Lio/bidmachine/m2;->p(Landroid/content/Context;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lio/bidmachine/j2;->x:Ljava/lang/String;

    .line 28
    .line 29
    return-object p1
.end method

.method J(Landroid/content/Context;)J
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-wide v0, p0, Lio/bidmachine/j2;->y:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    invoke-static {p1}, Lio/bidmachine/m2;->q(Landroid/content/Context;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lio/bidmachine/j2;->y:J

    .line 15
    .line 16
    return-wide v0
.end method

.method L(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .locals 1
    .param p1    # Lio/bidmachine/AdRequest$AdRequestListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "*>;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/bidmachine/j2;->m:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method N(Lio/bidmachine/Publisher;)V
    .locals 0
    .param p1    # Lio/bidmachine/Publisher;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/j2;->t:Lio/bidmachine/Publisher;

    .line 2
    .line 3
    return-void
.end method

.method O(Lio/bidmachine/TargetingParams;)V
    .locals 0
    .param p1    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lio/bidmachine/TargetingParams;

    .line 5
    .line 6
    invoke-direct {p1}, Lio/bidmachine/TargetingParams;-><init>()V

    .line 7
    .line 8
    .line 9
    :goto_0
    iput-object p1, p0, Lio/bidmachine/j2;->r:Lio/bidmachine/TargetingParams;

    .line 10
    .line 11
    return-void
.end method

.method P(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/j2;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method Q(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .locals 1
    .param p1    # Lio/bidmachine/AdRequest$AdRequestListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "*>;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lio/bidmachine/j2;->m:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method f()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2;->m:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method g()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2;->p:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method h()Lio/bidmachine/a1;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2;->h:Lio/bidmachine/a1;

    .line 2
    .line 3
    return-object v0
.end method

.method i()Lio/bidmachine/v3;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2;->i:Lio/bidmachine/v3;

    .line 2
    .line 3
    return-object v0
.end method

.method j()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2;->n:Lio/bidmachine/z0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/z0;->c()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method k()Lio/bidmachine/x3;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2;->k:Lio/bidmachine/x3;

    .line 2
    .line 3
    return-object v0
.end method

.method l()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/j2;->w:I

    .line 2
    .line 3
    return v0
.end method

.method m()Lio/bidmachine/PriceFloorParams;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2;->g:Lio/bidmachine/PriceFloorParams;

    .line 2
    .line 3
    return-object v0
.end method

.method n()Lio/bidmachine/Publisher;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2;->t:Lio/bidmachine/Publisher;

    .line 2
    .line 3
    return-object v0
.end method

.method o()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/j2;->v:I

    .line 2
    .line 3
    return v0
.end method

.method p()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public q()Lio/bidmachine/o5;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2;->j:Lio/bidmachine/o5;

    .line 2
    .line 3
    return-object v0
.end method

.method r()Lwq/f;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2;->e:Lwq/f;

    .line 2
    .line 3
    return-object v0
.end method

.method s()Lio/bidmachine/TargetingParams;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2;->r:Lio/bidmachine/TargetingParams;

    .line 2
    .line 3
    return-object v0
.end method

.method t(Lio/bidmachine/TrackEventType;)Ljava/util/List;
    .locals 1
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/TrackEventType;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2;->l:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/util/List;

    .line 8
    .line 9
    return-object p1
.end method

.method u()Lio/bidmachine/v5;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/j2;->f:Lio/bidmachine/v5;

    .line 2
    .line 3
    return-object v0
.end method

.method v(Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/protobuf/InitResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getEndpoint()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lio/bidmachine/UrlProvider;->setAuctionUrlFromInit(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/j2;->l:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lio/bidmachine/j2;->l:Ljava/util/Map;

    .line 14
    .line 15
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getEventList()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lfr/e;->p(Ljava/util/Map;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lio/bidmachine/j2;->d:Lwq/e;

    .line 23
    .line 24
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getEventConfiguration()Lio/bidmachine/protobuf/AdExtension$EventConfiguration;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lwq/e;->k(Lio/bidmachine/protobuf/AdExtension$EventConfiguration;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getSessionResetAfter()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    int-to-long v1, v1

    .line 40
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/SessionManager;->setSessionResetAfter(J)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getAdRequestTmax()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lio/bidmachine/j2;->v:I

    .line 48
    .line 49
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getAdNetworksLoadingTimeout()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    iput v0, p0, Lio/bidmachine/j2;->w:I

    .line 54
    .line 55
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getShowWithoutInternet()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-static {v0}, Lio/bidmachine/l2;->b(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getTokenConfigurationsList()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v0}, Lio/bidmachine/s2;->y(Ljava/util/List;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getAdCachePlacementControlMap()Ljava/util/Map;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    invoke-static {v0}, Lio/bidmachine/w0;->o(Ljava/util/Map;)V

    .line 76
    .line 77
    .line 78
    sget-object v1, Lio/bidmachine/AdsType;->Interstitial:Lio/bidmachine/AdsType;

    .line 79
    .line 80
    invoke-virtual {v1}, Lio/bidmachine/AdsType;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lio/bidmachine/protobuf/AdCachePlacementControl;

    .line 89
    .line 90
    if-eqz v1, :cond_0

    .line 91
    .line 92
    invoke-virtual {v1}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxCacheSize()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    goto :goto_0

    .line 97
    :cond_0
    const/4 v1, 0x0

    .line 98
    :goto_0
    sget-object v2, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    .line 99
    .line 100
    invoke-virtual {v2}, Lio/bidmachine/AdsType;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    check-cast v0, Lio/bidmachine/protobuf/AdCachePlacementControl;

    .line 109
    .line 110
    if-eqz v0, :cond_1

    .line 111
    .line 112
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdCachePlacementControl;->getMaxCacheSize()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    add-int/2addr v1, v0

    .line 117
    :cond_1
    const/4 v0, 0x5

    .line 118
    if-le v1, v0, :cond_2

    .line 119
    .line 120
    invoke-static {v1}, Lio/bidmachine/iab/vast/a;->Y(I)V

    .line 121
    .line 122
    .line 123
    :cond_2
    invoke-virtual {p2}, Lio/bidmachine/protobuf/InitResponse;->getExtras()Lio/bidmachine/protobuf/Extras;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {v0}, Lio/bidmachine/protobuf/Extras;->getInternal()Lcom/explorestack/protobuf/Struct;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const-string v1, "mraid_js"

    .line 132
    .line 133
    invoke-static {v0, v1}, Lfr/f;->a(Lcom/explorestack/protobuf/Struct;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    sput-object v0, Lio/bidmachine/iab/mraid/o;->e:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v0, p0, Lio/bidmachine/j2;->p:Landroid/content/Context;

    .line 140
    .line 141
    new-instance v1, Lio/bidmachine/h2;

    .line 142
    .line 143
    invoke-direct {v1, p0, p1, p2, p3}, Lio/bidmachine/h2;-><init>(Lio/bidmachine/j2;Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 147
    .line 148
    .line 149
    return-void
.end method

.method w(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/InitializationCallback;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lio/bidmachine/j2;->K(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/bidmachine/j2;->A()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-static {p3}, Lio/bidmachine/j2;->M(Lio/bidmachine/InitializationCallback;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    const-string p1, "Initialization fail: Context is not provided"

    .line 17
    .line 18
    invoke-static {p1}, Lio/bidmachine/core/a;->d(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    const-string p1, "Initialization fail: Source id is not provided"

    .line 29
    .line 30
    invoke-static {p1}, Lio/bidmachine/core/a;->d(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    if-eqz p3, :cond_3

    .line 35
    .line 36
    iget-object v0, p0, Lio/bidmachine/j2;->a:Ljava/util/Set;

    .line 37
    .line 38
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    :cond_3
    iget-object p3, p0, Lio/bidmachine/j2;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-virtual {p3, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-nez p3, :cond_4

    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, p3}, Lio/bidmachine/SessionManager;->attachContext(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    iput-object p3, p0, Lio/bidmachine/j2;->p:Landroid/content/Context;

    .line 64
    .line 65
    iput-object p2, p0, Lio/bidmachine/j2;->q:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v0}, Lio/bidmachine/SessionManager;->resume()V

    .line 68
    .line 69
    .line 70
    invoke-static {p3}, Lfr/b;->e(Landroid/content/Context;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lio/bidmachine/UserAgentManager;->initialize(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Lio/bidmachine/j2$c;

    .line 77
    .line 78
    invoke-direct {p1, p3}, Lio/bidmachine/j2$c;-><init>(Landroid/content/Context;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p1}, Lpp/f;->d(Lsq/l;)V

    .line 82
    .line 83
    .line 84
    new-instance p1, Lio/bidmachine/e4;

    .line 85
    .line 86
    iget-object v0, p0, Lio/bidmachine/j2;->A:Lio/bidmachine/e4$d;

    .line 87
    .line 88
    invoke-direct {p1, p3, p2, v0}, Lio/bidmachine/e4;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/e4$d;)V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lio/bidmachine/j2;->z:Lio/bidmachine/e4;

    .line 92
    .line 93
    new-instance p1, Lio/bidmachine/g2;

    .line 94
    .line 95
    invoke-direct {p1, p0, p3}, Lio/bidmachine/g2;-><init>(Lio/bidmachine/j2;Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    invoke-static {p1}, Lio/bidmachine/core/g;->X(Ljava/lang/Runnable;)V

    .line 99
    .line 100
    .line 101
    return-void
.end method

.method x(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/AdNetwork;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lio/bidmachine/protobuf/AdNetwork;

    .line 19
    .line 20
    invoke-static {p1, v0}, Lio/bidmachine/NetworkRegistry;->registerInitNetwork(Landroid/content/Context;Lio/bidmachine/protobuf/AdNetwork;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    return-void
.end method

.method y(Landroid/content/Context;Lio/bidmachine/NetworkRegistry$c;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/NetworkRegistry$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lio/bidmachine/NetworkRegistry;->registerCoreNetworks()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1, p2}, Lio/bidmachine/NetworkRegistry;->initializeNetworksAsync(Landroid/content/Context;Lio/bidmachine/NetworkRegistry$c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method z()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/j2;->B()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/j2;->A()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method
