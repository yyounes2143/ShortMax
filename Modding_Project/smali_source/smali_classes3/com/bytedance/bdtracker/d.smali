.class public final Lcom/bytedance/bdtracker/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/IAppLogInstance;


# static fields
.field public static final J:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/d;",
            ">;"
        }
    .end annotation
.end field

.field public static final K:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A:Lcom/bytedance/applog/IActiveCustomParamsCallback;

.field public volatile B:Lcom/bytedance/bdtracker/s;

.field public C:Lcom/bytedance/applog/event/IEventHandler;

.field public final D:Lcom/bytedance/applog/log/IAppLogLogger;

.field public volatile E:Z

.field public F:J

.field public volatile G:Z

.field public final H:Lcom/bytedance/bdtracker/s4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/bdtracker/s4<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final I:Lcom/bytedance/bdtracker/s4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/bdtracker/s4<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lcom/bytedance/bdtracker/f1;

.field public final c:Lcom/bytedance/bdtracker/e1;

.field public final d:Lcom/bytedance/bdtracker/u1;

.field public final e:Lcom/bytedance/bdtracker/j1;

.field public final f:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/bdtracker/k0;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Lcom/bytedance/bdtracker/r3;

.field public final k:Lcom/bytedance/bdtracker/p3;

.field public l:I

.field public m:Ljava/lang/String;

.field public volatile n:Landroid/app/Application;

.field public volatile o:Lcom/bytedance/bdtracker/p1;

.field public volatile p:Lcom/bytedance/bdtracker/r1;

.field public volatile q:Lcom/bytedance/bdtracker/e0;

.field public volatile r:Lcom/bytedance/bdtracker/w;

.field public volatile s:Lcom/bytedance/applog/exposure/ViewExposureManager;

.field public volatile t:Lcom/bytedance/applog/network/INetworkClient;

.field public volatile u:Z

.field public volatile v:Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

.field public volatile w:Lcom/bytedance/bdtracker/a1;

.field public volatile x:Z

.field public y:Lcom/bytedance/bdtracker/d1;

.field public z:Lcom/bytedance/applog/alink/IALinkListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/bdtracker/d;->J:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/bytedance/bdtracker/d;->K:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Lcom/bytedance/bdtracker/f1;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/bytedance/bdtracker/f1;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->b:Lcom/bytedance/bdtracker/f1;

    .line 17
    .line 18
    new-instance v0, Lcom/bytedance/bdtracker/e1;

    .line 19
    .line 20
    invoke-direct {v0}, Lcom/bytedance/bdtracker/e1;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->c:Lcom/bytedance/bdtracker/e1;

    .line 24
    .line 25
    new-instance v0, Lcom/bytedance/bdtracker/u1;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/bytedance/bdtracker/u1;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->d:Lcom/bytedance/bdtracker/u1;

    .line 31
    .line 32
    new-instance v0, Lcom/bytedance/bdtracker/j1;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/bytedance/bdtracker/j1;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->e:Lcom/bytedance/bdtracker/j1;

    .line 38
    .line 39
    new-instance v0, Ljava/util/HashSet;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->f:Ljava/util/Set;

    .line 45
    .line 46
    new-instance v0, Ljava/util/HashSet;

    .line 47
    .line 48
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->g:Ljava/util/Set;

    .line 52
    .line 53
    new-instance v0, Ljava/util/HashSet;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->h:Ljava/util/Set;

    .line 59
    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->i:Ljava/util/Map;

    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/bytedance/bdtracker/d;->l:I

    .line 69
    .line 70
    const-string v1, ""

    .line 71
    .line 72
    iput-object v1, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    iput-object v1, p0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 76
    .line 77
    iput-boolean v0, p0, Lcom/bytedance/bdtracker/d;->u:Z

    .line 78
    .line 79
    iput-boolean v0, p0, Lcom/bytedance/bdtracker/d;->x:Z

    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    iput-boolean v1, p0, Lcom/bytedance/bdtracker/d;->E:Z

    .line 83
    .line 84
    const-wide/16 v1, 0x0

    .line 85
    .line 86
    iput-wide v1, p0, Lcom/bytedance/bdtracker/d;->F:J

    .line 87
    .line 88
    iput-boolean v0, p0, Lcom/bytedance/bdtracker/d;->G:Z

    .line 89
    .line 90
    new-instance v0, Lcom/bytedance/bdtracker/s4;

    .line 91
    .line 92
    invoke-direct {v0}, Lcom/bytedance/bdtracker/s4;-><init>()V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->H:Lcom/bytedance/bdtracker/s4;

    .line 96
    .line 97
    new-instance v0, Lcom/bytedance/bdtracker/s4;

    .line 98
    .line 99
    invoke-direct {v0}, Lcom/bytedance/bdtracker/s4;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->I:Lcom/bytedance/bdtracker/s4;

    .line 103
    .line 104
    sget-object v0, Lcom/bytedance/bdtracker/d;->K:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 107
    .line 108
    .line 109
    new-instance v0, Lcom/bytedance/applog/log/LoggerImpl;

    .line 110
    .line 111
    invoke-direct {v0}, Lcom/bytedance/applog/log/LoggerImpl;-><init>()V

    .line 112
    .line 113
    .line 114
    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 115
    .line 116
    new-instance v0, Lcom/bytedance/bdtracker/r3;

    .line 117
    .line 118
    invoke-direct {v0, p0}, Lcom/bytedance/bdtracker/r3;-><init>(Lcom/bytedance/bdtracker/d;)V

    .line 119
    .line 120
    .line 121
    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->j:Lcom/bytedance/bdtracker/r3;

    .line 122
    .line 123
    new-instance v0, Lcom/bytedance/bdtracker/p3;

    .line 124
    .line 125
    invoke-direct {v0, p0}, Lcom/bytedance/bdtracker/p3;-><init>(Lcom/bytedance/bdtracker/d;)V

    .line 126
    .line 127
    .line 128
    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/p3;

    .line 129
    .line 130
    sget-object v0, Lcom/bytedance/bdtracker/d;->J:Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    return-void
.end method


# virtual methods
.method public a()Lcom/bytedance/bdtracker/u1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->d:Lcom/bytedance/bdtracker/u1;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->r:Lcom/bytedance/bdtracker/w;

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Lcom/bytedance/bdtracker/b4;

    const-string v1, "bav2b_page"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/bytedance/bdtracker/b4;-><init>(Ljava/lang/String;Z)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3
    sget-object v4, Lcom/bytedance/bdtracker/v4;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {v5, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 4
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, "getActivity"

    :try_start_1
    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    move v6, v2

    :cond_3
    :try_start_2
    const-string v4, "page_key"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "is_fragment"

    invoke-virtual {v1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "duration"

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "page_title"

    :try_start_3
    invoke-static {p1}, Lcom/bytedance/bdtracker/v4;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v3, "page_path"

    :try_start_4
    invoke-static {p1}, Lcom/bytedance/bdtracker/v4;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "is_custom"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-static {p2, v1}, Lcom/bytedance/bdtracker/l0$b;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    :goto_1
    iput-object v1, v0, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    .line 6
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->receive(Lcom/bytedance/bdtracker/u3;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " before please initialize first"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public activateALink(Landroid/net/Uri;)V
    .locals 7

    .line 1
    const-string v0, "activateALink"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->B:Lcom/bytedance/bdtracker/j;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/j;->c()V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, v0, Lcom/bytedance/bdtracker/j;->h:Ljava/lang/String;

    .line 24
    .line 25
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/j;->b()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    iget-object v2, v0, Lcom/bytedance/bdtracker/j;->h:Ljava/lang/String;

    .line 30
    .line 31
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const/4 v3, 0x3

    .line 36
    const-string v4, "Activate deep link with url: {}..."

    .line 37
    .line 38
    invoke-interface {v1, v3, v4, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/j;->a()Landroid/os/Handler;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x0

    .line 46
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    .line 47
    .line 48
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 49
    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    const-string v5, "http"

    .line 58
    .line 59
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-nez v5, :cond_2

    .line 64
    .line 65
    const-string v5, "https"

    .line 66
    .line 67
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    if-eqz v4, :cond_3

    .line 72
    .line 73
    :cond_2
    const-string v4, "tr_token"

    .line 74
    .line 75
    :try_start_1
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-eqz v5, :cond_4

    .line 95
    .line 96
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    check-cast v5, Ljava/lang/String;

    .line 101
    .line 102
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :catchall_0
    move-object v3, v2

    .line 111
    :cond_4
    sget-object p1, Lcom/bytedance/bdtracker/p;->a:Lcom/bytedance/bdtracker/p$a;

    .line 112
    .line 113
    const-class v4, Lcom/bytedance/bdtracker/l;

    .line 114
    .line 115
    invoke-virtual {p1, v3, v4}, Lcom/bytedance/bdtracker/p$a;->a(Lorg/json/JSONObject;Ljava/lang/Class;)Lcom/bytedance/bdtracker/p;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Lcom/bytedance/bdtracker/l;

    .line 120
    .line 121
    if-eqz p1, :cond_5

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/bytedance/bdtracker/l;->d()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    :cond_5
    if-eqz v2, :cond_7

    .line 128
    .line 129
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-nez v2, :cond_6

    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_6
    const/4 v2, 0x0

    .line 137
    iput v2, v0, Lcom/bytedance/bdtracker/j;->e:I

    .line 138
    .line 139
    const/4 v0, 0x1

    .line 140
    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {v1, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    .line 146
    .line 147
    :cond_7
    :goto_1
    return-void
.end method

.method public declared-synchronized addDataObserver(Lcom/bytedance/applog/IDataObserver;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->y:Lcom/bytedance/bdtracker/d1;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lcom/bytedance/bdtracker/d1;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/bytedance/bdtracker/d1;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->y:Lcom/bytedance/bdtracker/d1;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->y:Lcom/bytedance/bdtracker/d1;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/d1;->a(Lcom/bytedance/applog/IDataObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    throw p1
.end method

.method public addEventObserver(Lcom/bytedance/applog/IEventObserver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->c:Lcom/bytedance/bdtracker/e1;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/bytedance/bdtracker/l0$b;->a(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;)Lcom/bytedance/bdtracker/l0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/e1;->a(Lcom/bytedance/bdtracker/l0;)V

    return-void
.end method

.method public addEventObserver(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->c:Lcom/bytedance/bdtracker/e1;

    invoke-static {p1, p2}, Lcom/bytedance/bdtracker/l0$b;->a(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;)Lcom/bytedance/bdtracker/l0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/e1;->a(Lcom/bytedance/bdtracker/l0;)V

    return-void
.end method

.method public addNetCommonParams(Landroid/content/Context;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->j:Lcom/bytedance/bdtracker/r3;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-virtual {p1, v0, p2, p3, p4}, Lcom/bytedance/bdtracker/r3;->a(Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/applog/Level;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public addSessionHook(Lcom/bytedance/applog/ISessionObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->b:Lcom/bytedance/bdtracker/f1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/f1;->a(Lcom/bytedance/applog/ISessionObserver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/d;->G:Z

    return v0
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " before please initialize first"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bind(Ljava/util/Map;Lcom/bytedance/applog/oneid/IDBindCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bytedance/applog/oneid/IDBindCallback;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "bind"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    iget-object p1, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    new-array p2, p2, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v0, "BindID identities is null"

    .line 22
    .line 23
    invoke-interface {p1, v0, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->F:Lcom/bytedance/bdtracker/e3;

    .line 28
    .line 29
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/bdtracker/e3;->a(Ljava/util/Map;Lcom/bytedance/applog/oneid/IDBindCallback;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->H:Lcom/bytedance/bdtracker/s4;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/bytedance/bdtracker/s4;->b:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/p1;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/bytedance/bdtracker/p1;->f()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/bytedance/bdtracker/l0$b;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->I:Lcom/bytedance/bdtracker/s4;

    .line 20
    .line 21
    iget-boolean v0, v0, Lcom/bytedance/bdtracker/s4;->b:Z

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->H:Lcom/bytedance/bdtracker/s4;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/bytedance/bdtracker/s4;->a:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Ljava/lang/String;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->I:Lcom/bytedance/bdtracker/s4;

    .line 34
    .line 35
    iget-object v2, v2, Lcom/bytedance/bdtracker/s4;->a:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/bdtracker/r1;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->H:Lcom/bytedance/bdtracker/s4;

    .line 46
    .line 47
    iget-object v1, v1, Lcom/bytedance/bdtracker/s4;->a:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/r1;->h(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 55
    .line 56
    const-string v1, ""

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/r1;->g(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method

.method public clearAbTestConfigsCache()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/AssertionError;

    .line 6
    .line 7
    const-string v1, "Please initialize first"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/bytedance/bdtracker/m0;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/bytedance/bdtracker/m0;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/r1;->e(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v2, ""

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lcom/bytedance/bdtracker/r1;->f(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/r1;->a(Lorg/json/JSONObject;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public clearDb()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/AssertionError;

    .line 6
    .line 7
    const-string v1, "clearDb before init"

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/bytedance/bdtracker/m0;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/bytedance/bdtracker/m0;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    new-array v4, v3, [Ljava/lang/Object;

    .line 33
    .line 34
    const-string v5, "Start to clear db data..."

    .line 35
    .line 36
    invoke-interface {v2, v5, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 40
    .line 41
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/e0;->c()Lcom/bytedance/bdtracker/a4;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/bytedance/bdtracker/a4;->a()V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 49
    .line 50
    new-array v3, v3, [Ljava/lang/Object;

    .line 51
    .line 52
    const-string v4, "Db data cleared"

    .line 53
    .line 54
    invoke-interface {v2, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getMonitor()Lcom/bytedance/bdtracker/h2;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    const-string v3, "api_usage"

    .line 62
    .line 63
    const-string v4, "clearDb"

    .line 64
    .line 65
    invoke-static {v2, v3, v4, v0, v1}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/String;Ljava/lang/String;J)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public flush()V
    .locals 6

    .line 1
    const-string v0, "flush"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v5, 0x1

    .line 18
    invoke-virtual {v3, v4, v5}, Lcom/bytedance/bdtracker/e0;->a([Ljava/lang/String;Z)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getMonitor()Lcom/bytedance/bdtracker/h2;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "api_usage"

    .line 26
    .line 27
    invoke-static {v3, v4, v0, v1, v2}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/String;Ljava/lang/String;J)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public getALinkListener()Lcom/bytedance/applog/alink/IALinkListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->z:Lcom/bytedance/applog/alink/IALinkListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAbConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "getAbConfig"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 16
    .line 17
    iget-object v5, v1, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 18
    .line 19
    invoke-virtual {v5}, Lcom/bytedance/bdtracker/p1;->a()Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {v5, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_3

    .line 28
    .line 29
    const-string v5, "vid"

    .line 30
    .line 31
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    const-string v6, "val"

    .line 36
    .line 37
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v1, v5}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    .line 46
    .line 47
    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v8, "ab_sdk_version"

    .line 51
    .line 52
    invoke-virtual {v7, v8, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    iget-object v5, v1, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    const-string v8, "abtest_exposure"

    .line 58
    .line 59
    :try_start_1
    invoke-virtual {v5, v8, v7, v6}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v5

    .line 64
    iget-object v1, v1, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 67
    .line 68
    const-string v7, "DeviceManager"

    .line 69
    .line 70
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    new-array v6, v6, [Ljava/lang/Object;

    .line 75
    .line 76
    const-string v8, "JSON handle failed"

    .line 77
    .line 78
    invoke-interface {v1, v7, v8, v5, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    if-eqz p1, :cond_1

    .line 82
    .line 83
    move-object v2, p1

    .line 84
    :cond_1
    if-nez v2, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    move-object p2, v2

    .line 88
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getMonitor()Lcom/bytedance/bdtracker/h2;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    const-string v1, "api_usage"

    .line 93
    .line 94
    invoke-static {p1, v1, v0, v3, v4}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/String;Ljava/lang/String;J)V

    .line 95
    .line 96
    .line 97
    return-object p2
.end method

.method public getAbSdkVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "getAbSdkVersion"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->a()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getActiveCustomParams()Lcom/bytedance/applog/IActiveCustomParamsCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->A:Lcom/bytedance/applog/IActiveCustomParamsCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAid()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAllAbTestConfigs()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/p1;->a()Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    return-object v0
.end method

.method public getAppContext()Lcom/bytedance/bdtracker/f;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClientUdid()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "getClientUdid"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-object v1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/bytedance/bdtracker/r1;->d:Lorg/json/JSONObject;

    .line 15
    .line 16
    const-string v2, "clientudid"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDeepLinkUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->B:Lcom/bytedance/bdtracker/j;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/bytedance/bdtracker/j;->h:Ljava/lang/String;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public getDid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "getDid"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->c()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getEncryptAndCompress()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/d;->E:Z

    .line 2
    .line 3
    return v0
.end method

.method public getEventFilterByClient()Lcom/bytedance/bdtracker/a1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->w:Lcom/bytedance/bdtracker/a1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEventHandler()Lcom/bytedance/applog/event/IEventHandler;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->C:Lcom/bytedance/applog/event/IEventHandler;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeader()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "getHeader"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getHeaderCustomCallback()Lcom/bytedance/applog/IHeaderCustomTimelyCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->v:Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

    .line 2
    .line 3
    return-object v0
.end method

.method public getHeaderValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    const-string v0, "getHeaderValue"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public getIid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "getIid"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->f()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getInitConfig()Lcom/bytedance/applog/InitConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/p1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/p1;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getLaunchFrom()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/bdtracker/d;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public getMonitor()Lcom/bytedance/bdtracker/h2;
    .locals 1

    .line 1
    const-string v0, "getMonitor"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->q:Lcom/bytedance/bdtracker/h2;

    .line 14
    .line 15
    return-object v0
.end method

.method public getNetClient()Lcom/bytedance/applog/network/INetworkClient;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->t:Lcom/bytedance/applog/network/INetworkClient;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->t:Lcom/bytedance/applog/network/INetworkClient;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getNetworkClient()Lcom/bytedance/applog/network/INetworkClient;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->getNetworkClient()Lcom/bytedance/applog/network/INetworkClient;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_1
    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->t:Lcom/bytedance/applog/network/INetworkClient;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    new-instance v0, Lcom/bytedance/bdtracker/b3;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->k:Lcom/bytedance/bdtracker/p3;

    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/bytedance/bdtracker/b3;-><init>(Lcom/bytedance/bdtracker/p3;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->t:Lcom/bytedance/applog/network/INetworkClient;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    goto :goto_1

    .line 50
    :cond_2
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->t:Lcom/bytedance/applog/network/INetworkClient;

    .line 52
    .line 53
    return-object v0

    .line 54
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    throw v0
.end method

.method public getOpenUdid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "getOpenUdid"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->g()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getRequestHeader()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/p1;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 13
    .line 14
    const-string v1, "device_token"

    .line 15
    .line 16
    const-string v2, ""

    .line 17
    .line 18
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v2, v0

    .line 31
    :goto_0
    const-string v0, "x-tt-dt"

    .line 32
    .line 33
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-object v1
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "6.15.4"

    .line 2
    .line 3
    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/e0;->d()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v0, ""

    .line 13
    .line 14
    :goto_0
    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "getSsid"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->i()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getSsidGroup(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getDid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    const-string v1, "device_id"

    .line 12
    .line 13
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getIid()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    const-string v1, "install_id"

    .line 27
    .line 28
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getOpenUdid()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    const-string v1, "openudid"

    .line 42
    .line 43
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getClientUdid()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_3

    .line 55
    .line 56
    const-string v1, "clientudid"

    .line 57
    .line 58
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    :cond_3
    return-void
.end method

.method public getUdid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "getUdid"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->j()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getUriRuntime()Lcom/bytedance/applog/UriConfig;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-string v0, "getUriRuntime"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/e0;->e()Lcom/bytedance/applog/UriConfig;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "getUserID"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->n:Lcom/bytedance/bdtracker/j0;

    .line 14
    .line 15
    iget-wide v0, v0, Lcom/bytedance/bdtracker/j0;->a:J

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public getUserUniqueID()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "getUserUniqueID"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->k()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public getViewExposureManager()Lcom/bytedance/applog/exposure/ViewExposureManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->s:Lcom/bytedance/applog/exposure/ViewExposureManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public getViewProperties(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->b(Landroid/view/View;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lorg/json/JSONObject;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return-object p1
.end method

.method public hasStarted()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/d;->u:Z

    .line 2
    .line 3
    return v0
.end method

.method public ignoreAutoTrackClick(Landroid/view/View;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->g:Ljava/util/Set;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->b(Landroid/view/View;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public varargs ignoreAutoTrackClickByViewType([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
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
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->h:Ljava/util/Set;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public varargs ignoreAutoTrackPage([Ljava/lang/Class;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
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
    array-length v0, p1

    .line 5
    const/4 v1, 0x0

    .line 6
    :goto_0
    if-ge v1, v0, :cond_7

    .line 7
    .line 8
    aget-object v2, p1, v1

    .line 9
    .line 10
    if-nez v2, :cond_1

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_1
    sget-object v3, Lcom/bytedance/bdtracker/v4;->c:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eqz v4, :cond_3

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/Class;

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_2

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    sget-object v3, Lcom/bytedance/bdtracker/v4;->d:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    if-eqz v4, :cond_6

    .line 49
    .line 50
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    check-cast v4, Ljava/lang/Class;

    .line 55
    .line 56
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-eqz v4, :cond_4

    .line 61
    .line 62
    :goto_1
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-eqz v3, :cond_5

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_5
    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->f:Ljava/util/Set;

    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_6
    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 88
    .line 89
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    const-string v4, "{} is not a page class"

    .line 94
    .line 95
    invoke-interface {v3, v4, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_7
    return-void
.end method

.method public init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/applog/InitConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/bytedance/bdtracker/d;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/bdtracker/l0$b;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string p1, "AppLog"

    const-string p2, "Init failed. App id must not be empty!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    .line 1
    :cond_0
    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getChannel()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/bdtracker/l0$b;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string p1, "AppLog"

    const-string p2, "Channel must not be empty!"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/bdtracker/b;->b(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    const-string p1, "AppLog"

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The app id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " has initialized already"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    .line 2
    :cond_2
    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 3
    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->setAppId(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getAid()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Application;

    iput-object v3, p0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->isLogEnable()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getLogger()Lcom/bytedance/applog/ILogger;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    new-instance v4, Lcom/bytedance/bdtracker/h1;

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getLogger()Lcom/bytedance/applog/ILogger;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/bytedance/bdtracker/h1;-><init>(Lcom/bytedance/applog/ILogger;)V

    :goto_0
    invoke-static {v3, v4}, Lcom/bytedance/applog/log/LogProcessorHolder;->setProcessor(Ljava/lang/String;Lcom/bytedance/applog/log/ILogProcessor;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    new-instance v4, Lcom/bytedance/bdtracker/g1;

    invoke-direct {v4, p0}, Lcom/bytedance/bdtracker/g1;-><init>(Lcom/bytedance/bdtracker/d;)V

    goto :goto_0

    .line 4
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, "AppLog init begin..."

    const/4 v5, 0x0

    .line 5
    :try_start_2
    new-array v6, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v6}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->isMonitorEnabled()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-static {p2}, Lcom/bytedance/bdtracker/j2;->a(Lcom/bytedance/applog/InitConfig;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getUriConfig()Lcom/bytedance/applog/UriConfig;

    .line 7
    :cond_5
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/d;->initMetaSec(Landroid/content/Context;)V

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getSpName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "applog_stats"

    invoke-static {p0, p1}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/applog/IAppLogInstance;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/applog/InitConfig;->setSpName(Ljava/lang/String;)Lcom/bytedance/applog/InitConfig;

    :cond_6
    new-instance p1, Lcom/bytedance/bdtracker/p1;

    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    invoke-direct {p1, p0, v3, p2}, Lcom/bytedance/bdtracker/p1;-><init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/p1;

    new-instance p1, Lcom/bytedance/bdtracker/r1;

    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    iget-object v4, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/p1;

    invoke-direct {p1, p0, v3, v4}, Lcom/bytedance/bdtracker/r1;-><init>(Lcom/bytedance/bdtracker/d;Landroid/content/Context;Lcom/bytedance/bdtracker/p1;)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->c()V

    new-instance p1, Lcom/bytedance/bdtracker/e0;

    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/p1;

    iget-object v4, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    iget-object v6, p0, Lcom/bytedance/bdtracker/d;->e:Lcom/bytedance/bdtracker/j1;

    invoke-direct {p1, p0, v3, v4, v6}, Lcom/bytedance/bdtracker/e0;-><init>(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/p1;Lcom/bytedance/bdtracker/r1;Lcom/bytedance/bdtracker/j1;)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 8
    new-instance p1, Lcom/bytedance/bdtracker/e;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/bdtracker/e;-><init>(Lcom/bytedance/bdtracker/d;Lcom/bytedance/applog/InitConfig;)V

    const-string v3, "init_begin"

    invoke-static {v3, p1}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    .line 9
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->n:Landroid/app/Application;

    invoke-static {p1}, Lcom/bytedance/bdtracker/w;->a(Landroid/app/Application;)Lcom/bytedance/bdtracker/w;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/bdtracker/d;->r:Lcom/bytedance/bdtracker/w;

    new-instance p1, Lcom/bytedance/applog/exposure/ViewExposureManager;

    invoke-direct {p1, p0}, Lcom/bytedance/applog/exposure/ViewExposureManager;-><init>(Lcom/bytedance/bdtracker/d;)V

    iput-object p1, p0, Lcom/bytedance/bdtracker/d;->s:Lcom/bytedance/applog/exposure/ViewExposureManager;

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->getTrackCrashType()I

    move-result p1

    invoke-static {p1}, Lcom/bytedance/applog/exception/AppCrashType;->hasJavaCrashType(I)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/bytedance/bdtracker/n0;->a()V

    :cond_7
    const/4 p1, 0x1

    iput p1, p0, Lcom/bytedance/bdtracker/d;->l:I

    invoke-virtual {p2}, Lcom/bytedance/applog/InitConfig;->autoStart()Z

    move-result p1

    iput-boolean p1, p0, Lcom/bytedance/bdtracker/d;->u:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string p1, "init_end"

    :try_start_3
    iget-object p2, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/bytedance/applog/log/LogUtils;->sendString(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string p2, "AppLog init end"

    .line 11
    :try_start_4
    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {p1, p2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    sget-object p1, Lcom/bytedance/applog/simulate/SimulateLaunchActivity;->entryAppId:Ljava/lang/String;

    .line 13
    iget-object p2, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 14
    invoke-static {p1, p2}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-static {p0}, Lcom/bytedance/bdtracker/s3;->a(Lcom/bytedance/bdtracker/d;)V

    :cond_8
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->o:Lcom/bytedance/bdtracker/p1;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/p1;->k()V

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getMonitor()Lcom/bytedance/bdtracker/h2;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string p2, "sdk_init"

    :try_start_5
    const-string v3, "metricsName"

    .line 15
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {p1, p2, v3, v1, v2}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/String;Ljava/lang/String;J)V

    .line 16
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bytedance/applog/InitConfig;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/bdtracker/d;->init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->r:Lcom/bytedance/bdtracker/w;

    if-eqz p1, :cond_0

    if-eqz p3, :cond_0

    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->r:Lcom/bytedance/bdtracker/w;

    const/4 p2, 0x0

    invoke-virtual {p1, p3, p2}, Lcom/bytedance/bdtracker/w;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->r:Lcom/bytedance/bdtracker/w;

    invoke-virtual {p1, p3}, Lcom/bytedance/bdtracker/w;->onActivityResumed(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public initH5Bridge(Landroid/view/View;Ljava/lang/String;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "com.bytedance.applog.tracker.WebViewUtil"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->b(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 11
    .line 12
    new-array p2, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    const-string v0, "No WebViewUtil class, and will not initialize h5 bridge"

    .line 15
    .line 16
    invoke-interface {p1, v0, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string v2, "injectWebViewBridges"

    .line 21
    .line 22
    :try_start_0
    const-class v3, Landroid/view/View;

    .line 23
    .line 24
    const-class v4, Ljava/lang/String;

    .line 25
    .line 26
    filled-new-array {v3, v4}, [Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 36
    .line 37
    .line 38
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const/4 p2, 0x0

    .line 43
    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    iget-object p2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 49
    .line 50
    new-array v0, v1, [Ljava/lang/Object;

    .line 51
    .line 52
    const-string v1, "Initialize h5 bridge failed"

    .line 53
    .line 54
    invoke-interface {p2, v1, p1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method

.method public initMetaSec(Landroid/content/Context;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isMetaSecEnabled()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const-string v0, "com.bytedance.applog.metasec.AppLogSecHelper"

    .line 19
    .line 20
    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->b(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 28
    .line 29
    new-array v0, v1, [Ljava/lang/Object;

    .line 30
    .line 31
    const-string v1, "No AppLogSecHelper class, and will not init"

    .line 32
    .line 33
    invoke-interface {p1, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    const-string v2, "init"

    .line 38
    .line 39
    :try_start_0
    const-class v3, Lcom/bytedance/applog/IAppLogInstance;

    .line 40
    .line 41
    const-class v4, Landroid/content/Context;

    .line 42
    .line 43
    filled-new-array {v3, v4}, [Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const/4 v2, 0x1

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 53
    .line 54
    .line 55
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :catchall_0
    move-exception p1

    .line 65
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 66
    .line 67
    new-array v1, v1, [Ljava/lang/Object;

    .line 68
    .line 69
    const-string v2, "Initialize AppLogSecHelper failed"

    .line 70
    .line 71
    invoke-interface {v0, v2, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    return-void
.end method

.method public initWebViewBridge(Landroid/view/View;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "com.bytedance.applog.tracker.WebViewUtil"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->b(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v1, "injectWebViewBridges"

    .line 10
    .line 11
    :try_start_0
    const-class v2, Landroid/view/View;

    .line 12
    .line 13
    const-class v3, Ljava/lang/String;

    .line 14
    .line 15
    filled-new-array {v2, v3}, [Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    iget-object p2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    .line 37
    .line 38
    const-string v1, "Init webview bridge failed"

    .line 39
    .line 40
    invoke-interface {p2, v1, p1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    :goto_0
    return-void
.end method

.method public isAutoTrackClickIgnored(Landroid/view/View;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->g:Ljava/util/Set;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->b(Landroid/view/View;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    return v2

    .line 19
    :cond_1
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->h:Ljava/util/Set;

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_3

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/Class;

    .line 36
    .line 37
    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    return v2

    .line 44
    :cond_3
    return v0
.end method

.method public isAutoTrackPageIgnored(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    return v0

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->f:Ljava/util/Set;

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1
.end method

.method public isBavEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/e0;->g()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public isH5BridgeEnable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isH5BridgeEnable()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public isH5CollectEnable()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getInitConfig()Lcom/bytedance/applog/InitConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/bytedance/applog/InitConfig;->isH5CollectEnable()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public isNewUser()Z
    .locals 1

    .line 1
    const-string v0, "isNewUser"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 12
    .line 13
    iget-boolean v0, v0, Lcom/bytedance/bdtracker/r1;->e:Z

    .line 14
    .line 15
    return v0
.end method

.method public isPrivacyMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/d;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public manualActivate()Z
    .locals 6

    .line 1
    const-string v0, "manualActivate"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/bytedance/bdtracker/e0;->a(Z)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getMonitor()Lcom/bytedance/bdtracker/h2;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const-string v5, "api_usage"

    .line 26
    .line 27
    invoke-static {v2, v5, v0, v3, v4}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/String;Ljava/lang/String;J)V

    .line 28
    .line 29
    .line 30
    return v1
.end method

.method public newEvent(Ljava/lang/String;)Lcom/bytedance/applog/event/EventBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Lcom/bytedance/applog/event/EventBuilder;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/applog/event/EventBuilder;-><init>(Lcom/bytedance/bdtracker/d;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/event/EventBuilder;->setEvent(Ljava/lang/String;)Lcom/bytedance/applog/event/EventBuilder;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public onActivityPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->r:Lcom/bytedance/bdtracker/w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->r:Lcom/bytedance/bdtracker/w;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/w;->onActivityPaused(Landroid/app/Activity;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;I)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->r:Lcom/bytedance/bdtracker/w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->r:Lcom/bytedance/bdtracker/w;

    .line 6
    .line 7
    invoke-virtual {v0, p1, p2}, Lcom/bytedance/bdtracker/w;->a(Landroid/app/Activity;I)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public onEventV3(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public onEventV3(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;I)V

    return-void
.end method

.method public onEventV3(Ljava/lang/String;Landroid/os/Bundle;I)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p2}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p2}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2, v2}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    move-object v0, v1

    goto :goto_3

    :goto_1
    move-object v0, v1

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 4
    :goto_2
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 v2, 0x0

    .line 5
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Parse event params failed"

    invoke-interface {v1, v3, p2, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_1
    :goto_3
    invoke-virtual {p0, p1, v0, p3}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V

    return-void
.end method

.method public onEventV3(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 p2, 0x0

    .line 7
    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "event name is empty"

    invoke-interface {p1, p3, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 9
    const-string v1, "customEvent"

    const-string v2, "eventV3"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    filled-new-array {p1, v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    const-string v4, "event:{} type:{} params:{} "

    invoke-interface {v0, v1, v4, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 10
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 11
    invoke-static {v2, p1, p2}, Lcom/bytedance/bdtracker/c5;->a(Lcom/bytedance/applog/log/IAppLogLogger;Ljava/lang/String;Lorg/json/JSONObject;)V

    new-instance v2, Lcom/bytedance/bdtracker/b4;

    iget-object v5, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_2
    move-object v8, v3

    const/4 v7, 0x0

    move-object v4, v2

    move-object v6, p1

    move v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/bytedance/bdtracker/b4;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;I)V

    invoke-virtual {p0, v2}, Lcom/bytedance/bdtracker/d;->receive(Lcom/bytedance/bdtracker/u3;)V

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getMonitor()Lcom/bytedance/bdtracker/h2;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getSessionId()Ljava/lang/String;

    move-result-object p2

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance p3, Lcom/bytedance/bdtracker/v2;

    invoke-direct {p3}, Lcom/bytedance/bdtracker/v2;-><init>()V

    const-string v4, "onEventV3"

    .line 13
    iput-object v4, p3, Lcom/bytedance/bdtracker/v2;->a:Ljava/lang/String;

    sub-long/2addr v2, v0

    .line 14
    iput-wide v2, p3, Lcom/bytedance/bdtracker/v2;->b:J

    if-eqz p1, :cond_3

    .line 15
    move-object v0, p1

    check-cast v0, Lcom/bytedance/bdtracker/m2;

    invoke-virtual {v0, p3}, Lcom/bytedance/bdtracker/m2;->a(Lcom/bytedance/bdtracker/p2;)V

    :cond_3
    if-eqz p1, :cond_5

    new-instance p3, Lcom/bytedance/bdtracker/t2;

    if-eqz p2, :cond_4

    :goto_1
    move-object v4, p2

    goto :goto_2

    :cond_4
    const-string p2, ""

    goto :goto_1

    :goto_2
    const-wide/16 v5, 0x1

    const-wide/16 v2, 0x0

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/bdtracker/t2;-><init>(JLjava/lang/String;J)V

    check-cast p1, Lcom/bytedance/bdtracker/m2;

    invoke-virtual {p1, p3}, Lcom/bytedance/bdtracker/m2;->a(Lcom/bytedance/bdtracker/p2;)V

    :cond_5
    return-void
.end method

.method public onMiscEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    invoke-virtual {p2}, Lorg/json/JSONObject;->length()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-gtz v0, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 18
    .line 19
    const-string v2, "customEvent"

    .line 20
    .line 21
    const-string v3, "miscEvent"

    .line 22
    .line 23
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    filled-new-array {p1, v3}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "logType:{} params:{} "

    .line 40
    .line 41
    invoke-interface {v0, v2, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    :try_start_0
    const-string v0, "log_type"

    .line 45
    .line 46
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    new-instance p1, Lcom/bytedance/bdtracker/x3;

    .line 50
    .line 51
    const-string v0, "log_data"

    .line 52
    .line 53
    invoke-direct {p1, v0, p2}, Lcom/bytedance/bdtracker/x3;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/d;->receive(Lcom/bytedance/bdtracker/u3;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    iget-object p2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 62
    .line 63
    new-array v0, v1, [Ljava/lang/Object;

    .line 64
    .line 65
    const-string v1, "call onMiscEvent error"

    .line 66
    .line 67
    invoke-interface {p2, v1, p1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void

    .line 71
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 72
    .line 73
    new-array p2, v1, [Ljava/lang/Object;

    .line 74
    .line 75
    const-string v0, "call onMiscEvent with invalid params"

    .line 76
    .line 77
    invoke-interface {p1, v0, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method public onPause(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of p1, p1, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->onActivityPause()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public onResume(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroid/app/Activity;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/bdtracker/d;->onActivityResumed(Landroid/app/Activity;I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public pauseDurationEvent(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-string v2, "Event name must not empty!"

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-static {v3, v2}, Lcom/bytedance/bdtracker/l0$b;->a(ZLjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->i:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/bytedance/bdtracker/k0;

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v4, "No duration event with name: "

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v2, p1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/bdtracker/k0;->a(J)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public profileAppend(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "profileAppend"

    .line 4
    .line 5
    invoke-virtual {p0, v1}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-eqz p1, :cond_3

    .line 13
    .line 14
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/4 v1, 0x0

    .line 22
    :try_start_0
    const-class v2, Ljava/lang/Integer;

    .line 23
    .line 24
    filled-new-array {v0, v2}, [Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p1, v2, v0}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;[Ljava/lang/Class;[Ljava/lang/Class;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    const-string v2, "only support String\u3001Int\u3001String Array\uff01"

    .line 41
    .line 42
    :try_start_1
    new-array v3, v1, [Ljava/lang/Object;

    .line 43
    .line 44
    invoke-interface {v0, v2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 50
    .line 51
    new-array v1, v1, [Ljava/lang/Object;

    .line 52
    .line 53
    const-string v3, "JSON handle failed"

    .line 54
    .line 55
    invoke-interface {v2, v3, v0, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 59
    .line 60
    invoke-static {v0, p1}, Lcom/bytedance/bdtracker/c5;->a(Lcom/bytedance/applog/log/IAppLogLogger;Lorg/json/JSONObject;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/e0;->b(Lorg/json/JSONObject;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    :goto_0
    return-void
.end method

.method public profileIncrement(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    const-string v0, "profileIncrement"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

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
    if-eqz p1, :cond_3

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v0, 0x0

    .line 20
    :try_start_0
    const-class v1, Ljava/lang/Integer;

    .line 21
    .line 22
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {p1, v1, v2}, Lcom/bytedance/bdtracker/l0$b;->a(Lorg/json/JSONObject;[Ljava/lang/Class;[Ljava/lang/Class;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    .line 35
    const-string v2, "only support Int param"

    .line 36
    .line 37
    :try_start_1
    new-array v3, v0, [Ljava/lang/Object;

    .line 38
    .line 39
    invoke-interface {v1, v2, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception v1

    .line 44
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 45
    .line 46
    new-array v0, v0, [Ljava/lang/Object;

    .line 47
    .line 48
    const-string v3, "JSON handle failed"

    .line 49
    .line 50
    invoke-interface {v2, v3, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 54
    .line 55
    invoke-static {v0, p1}, Lcom/bytedance/bdtracker/c5;->a(Lcom/bytedance/applog/log/IAppLogLogger;Lorg/json/JSONObject;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 59
    .line 60
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/e0;->c(Lorg/json/JSONObject;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    return-void
.end method

.method public profileSet(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    const-string v0, "profileSet"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

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
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/bytedance/bdtracker/c5;->a(Lcom/bytedance/applog/log/IAppLogLogger;Lorg/json/JSONObject;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/e0;->d(Lorg/json/JSONObject;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    return-void
.end method

.method public profileSetOnce(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    const-string v0, "profileSetOnce"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

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
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/bytedance/bdtracker/c5;->a(Lcom/bytedance/applog/log/IAppLogLogger;Lorg/json/JSONObject;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/e0;->e(Lorg/json/JSONObject;)V

    .line 27
    .line 28
    .line 29
    :cond_2
    :goto_0
    return-void
.end method

.method public profileUnset(Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "profileUnset"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

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
    new-instance v0, Lorg/json/JSONObject;

    .line 11
    .line 12
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 13
    .line 14
    .line 15
    :try_start_0
    const-string v1, ""

    .line 16
    .line 17
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    new-array v2, v2, [Ljava/lang/Object;

    .line 26
    .line 27
    const-string v3, "JSON handle failed"

    .line 28
    .line 29
    invoke-interface {v1, v3, p1, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 33
    .line 34
    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/c5;->a(Lcom/bytedance/applog/log/IAppLogLogger;Lorg/json/JSONObject;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/bytedance/bdtracker/e0;->f(Lorg/json/JSONObject;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public pullAbTestConfigs()V
    .locals 2

    .line 1
    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/bdtracker/d;->pullAbTestConfigs(ILcom/bytedance/applog/IPullAbTestConfigCallback;)V

    return-void
.end method

.method public pullAbTestConfigs(ILcom/bytedance/applog/IPullAbTestConfigCallback;)V
    .locals 8

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Please initialize first"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    new-instance p2, Lcom/bytedance/bdtracker/m0;

    invoke-direct {p2}, Lcom/bytedance/bdtracker/m0;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 2
    iget-wide v4, v4, Lcom/bytedance/bdtracker/e0;->a:J

    .line 3
    iget-wide v6, p0, Lcom/bytedance/bdtracker/d;->F:J

    sub-long v6, v2, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    iput-wide v2, p0, Lcom/bytedance/bdtracker/d;->F:J

    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 4
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->p:Landroid/os/Handler;

    const/16 v3, 0x12

    const/4 v4, -0x1

    invoke-virtual {v2, v3, p1, v4, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 5
    invoke-interface {p2, v4, v5}, Lcom/bytedance/applog/IPullAbTestConfigCallback;->onThrottle(J)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    const/4 p2, 0x0

    .line 7
    new-array p2, p2, [Ljava/lang/Object;

    const-string v2, "Pull ABTest config too frequently"

    invoke-interface {p1, v2, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/d;->getMonitor()Lcom/bytedance/bdtracker/h2;

    move-result-object p1

    const-string p2, "api_usage"

    const-string v2, "pullAbTestConfigs"

    invoke-static {p1, p2, v2, v0, v1}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public putCommonParams(Landroid/content/Context;Ljava/util/Map;ZLcom/bytedance/applog/Level;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/bytedance/applog/Level;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->j:Lcom/bytedance/bdtracker/r3;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->e()Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-virtual {p1, v0, p3, p2, p4}, Lcom/bytedance/bdtracker/r3;->a(Lorg/json/JSONObject;ZLjava/util/Map;Lcom/bytedance/applog/Level;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public receive(Lcom/bytedance/bdtracker/u3;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 2
    iput-object v0, p1, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->e:Lcom/bytedance/bdtracker/j1;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/j1;->a(Lcom/bytedance/bdtracker/u3;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/e0;->a(Lcom/bytedance/bdtracker/u3;)V

    :goto_0
    const-string v0, "event_receive"

    invoke-static {v0, p1}, Lcom/bytedance/applog/log/LogUtils;->sendObject(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public receive([Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_3

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->e:Lcom/bytedance/bdtracker/j1;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/j1;->a([Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 4
    iget-object v1, v0, Lcom/bytedance/bdtracker/e0;->p:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->p:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_1
    return-void
.end method

.method public registerHeaderCustomCallback(Lcom/bytedance/applog/IHeaderCustomTimelyCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/d;->v:Lcom/bytedance/applog/IHeaderCustomTimelyCallback;

    .line 2
    .line 3
    return-void
.end method

.method public removeAllDataObserver()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->y:Lcom/bytedance/bdtracker/d1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/bytedance/bdtracker/d1;->a:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public removeDataObserver(Lcom/bytedance/applog/IDataObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->y:Lcom/bytedance/bdtracker/d1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/d1;->b(Lcom/bytedance/applog/IDataObserver;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public removeEventObserver(Lcom/bytedance/applog/IEventObserver;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->c:Lcom/bytedance/bdtracker/e1;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/bytedance/bdtracker/l0$b;->a(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;)Lcom/bytedance/bdtracker/l0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/e1;->b(Lcom/bytedance/bdtracker/l0;)V

    return-void
.end method

.method public removeEventObserver(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->c:Lcom/bytedance/bdtracker/e1;

    invoke-static {p1, p2}, Lcom/bytedance/bdtracker/l0$b;->a(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;)Lcom/bytedance/bdtracker/l0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/e1;->b(Lcom/bytedance/bdtracker/l0;)V

    return-void
.end method

.method public removeHeaderInfo(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "removeHeaderInfo"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/r1;->d(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public removeOaidObserver(Lcom/bytedance/applog/IOaidObserver;)V
    .locals 0
    .param p1    # Lcom/bytedance/applog/IOaidObserver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/bytedance/bdtracker/h5;->b(Lcom/bytedance/applog/IOaidObserver;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public removeSessionHook(Lcom/bytedance/applog/ISessionObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->b:Lcom/bytedance/bdtracker/f1;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/f1;->b(Lcom/bytedance/applog/ISessionObserver;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public reportPhoneDetailInfo()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 6
    .line 7
    iget-boolean v0, v0, Lcom/bytedance/bdtracker/r1;->k:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public resumeDurationEvent(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-string v2, "Event name must not empty!"

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-static {v3, v2}, Lcom/bytedance/bdtracker/l0$b;->a(ZLjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->i:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/bytedance/bdtracker/k0;

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v4, "No duration event with name: "

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {v2, p1}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/bdtracker/k0;->b(J)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public setALinkListener(Lcom/bytedance/applog/alink/IALinkListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/d;->z:Lcom/bytedance/applog/alink/IALinkListener;

    .line 2
    .line 3
    return-void
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 2

    .line 1
    const-string v0, "setAccount"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/bytedance/bdtracker/r1;->i:Lcom/bytedance/bdtracker/d;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/d;->a()Lcom/bytedance/bdtracker/u1;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v1, v0, Lcom/bytedance/bdtracker/u1;->a:Lcom/bytedance/bdtracker/r4;

    .line 19
    .line 20
    instance-of v1, v1, Lcom/bytedance/bdtracker/n4;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v0, v0, Lcom/bytedance/bdtracker/u1;->a:Lcom/bytedance/bdtracker/r4;

    .line 25
    .line 26
    check-cast v0, Lcom/bytedance/bdtracker/n4;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/bytedance/bdtracker/n4;->c:Lcom/bytedance/bdtracker/t3;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/t3;->a(Landroid/accounts/Account;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iput-object p1, v0, Lcom/bytedance/bdtracker/u1;->b:Landroid/accounts/Account;

    .line 37
    .line 38
    :cond_2
    :goto_0
    return-void
.end method

.method public setActiveCustomParams(Lcom/bytedance/applog/IActiveCustomParamsCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/d;->A:Lcom/bytedance/applog/IActiveCustomParamsCallback;

    .line 2
    .line 3
    return-void
.end method

.method public setAppContext(Lcom/bytedance/bdtracker/f;)V
    .locals 0
    .param p1    # Lcom/bytedance/bdtracker/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public setAppLanguageAndRegion(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "setAppLanguageAndRegion"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 13
    .line 14
    const-string v2, "app_language"

    .line 15
    .line 16
    invoke-virtual {v1, v2, p1}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x1

    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    iget-object v1, v1, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 27
    .line 28
    invoke-static {v1, v2, p1}, Lcom/bytedance/bdtracker/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    move p1, v5

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    move p1, v4

    .line 34
    :goto_0
    iget-object v1, v0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 35
    .line 36
    const-string v2, "app_region"

    .line 37
    .line 38
    invoke-virtual {v1, v2, p2}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    iget-object v1, v1, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 45
    .line 46
    iget-object v1, v1, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 47
    .line 48
    invoke-static {v1, v2, p2}, Lcom/bytedance/bdtracker/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    move v4, v5

    .line 52
    :cond_2
    or-int/2addr p1, v4

    .line 53
    if-eqz p1, :cond_3

    .line 54
    .line 55
    iget-object p1, v0, Lcom/bytedance/bdtracker/e0;->k:Lcom/bytedance/bdtracker/h0;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/e0;->a(Lcom/bytedance/bdtracker/c0;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, v0, Lcom/bytedance/bdtracker/e0;->f:Lcom/bytedance/bdtracker/d0;

    .line 61
    .line 62
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/e0;->a(Lcom/bytedance/bdtracker/c0;)V

    .line 63
    .line 64
    .line 65
    :cond_3
    return-void
.end method

.method public setAppTrack(Lorg/json/JSONObject;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const-string v0, "setAppTrack"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    return-void

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 14
    .line 15
    const-string v1, "app_track"

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    iget-object v0, v0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 24
    .line 25
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->d:Landroid/content/SharedPreferences;

    .line 30
    .line 31
    invoke-static {v0, v1, p1}, Lcom/bytedance/bdtracker/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method public setClipboardEnabled(Z)V
    .locals 1

    .line 1
    const-string v0, "setClipboardEnabled"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->B:Lcom/bytedance/bdtracker/j;

    .line 13
    .line 14
    iput-boolean p1, v0, Lcom/bytedance/bdtracker/j;->a:Z

    .line 15
    .line 16
    new-instance v0, Lcom/bytedance/bdtracker/d$c;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1}, Lcom/bytedance/bdtracker/d$c;-><init>(Lcom/bytedance/bdtracker/d;Z)V

    .line 19
    .line 20
    .line 21
    const-string p1, "update_config"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public setEncryptAndCompress(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/bdtracker/d;->E:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/bytedance/bdtracker/d$a;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/bytedance/bdtracker/d$a;-><init>(Lcom/bytedance/bdtracker/d;Z)V

    .line 14
    .line 15
    .line 16
    const-string p1, "update_config"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setEventFilterByClient(Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_3

    .line 9
    .line 10
    new-instance v1, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_0

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_3

    .line 46
    .line 47
    if-eqz p2, :cond_2

    .line 48
    .line 49
    new-instance p1, Lcom/bytedance/bdtracker/c1;

    .line 50
    .line 51
    invoke-direct {p1, v1, v0}, Lcom/bytedance/bdtracker/c1;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;)V

    .line 52
    .line 53
    .line 54
    :goto_1
    move-object v0, p1

    .line 55
    goto :goto_2

    .line 56
    :cond_2
    new-instance p1, Lcom/bytedance/bdtracker/b1;

    .line 57
    .line 58
    invoke-direct {p1, v1, v0}, Lcom/bytedance/bdtracker/b1;-><init>(Ljava/util/HashSet;Ljava/util/HashMap;)V

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    :goto_2
    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->w:Lcom/bytedance/bdtracker/a1;

    .line 63
    .line 64
    return-void
.end method

.method public setEventHandler(Lcom/bytedance/applog/event/IEventHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/d;->C:Lcom/bytedance/applog/event/IEventHandler;

    .line 2
    .line 3
    return-void
.end method

.method public setExternalAbVersion(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "setExternalAbVersion"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/r1;->f(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public setExtraParams(Lcom/bytedance/applog/IExtraParams;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->j:Lcom/bytedance/bdtracker/r3;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/bytedance/bdtracker/r3;->a:Lcom/bytedance/applog/IExtraParams;

    .line 4
    .line 5
    return-void
.end method

.method public setForbidReportPhoneDetailInfo(Z)V
    .locals 3

    .line 1
    const-string v0, "setForbidReportPhoneDetailInfo"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 11
    .line 12
    iput-boolean p1, v0, Lcom/bytedance/bdtracker/r1;->k:Z

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->r()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const-string v1, "sim_serial_number"

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    new-instance v0, Lcom/bytedance/bdtracker/d$b;

    .line 27
    .line 28
    invoke-direct {v0, p0, p1}, Lcom/bytedance/bdtracker/d$b;-><init>(Lcom/bytedance/bdtracker/d;Z)V

    .line 29
    .line 30
    .line 31
    const-string p1, "update_config"

    .line 32
    .line 33
    invoke-static {p1, v0}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public setGPSLocation(FFLjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    new-array p2, p2, [Ljava/lang/Object;

    .line 9
    .line 10
    const-string p3, "Please initialize first"

    .line 11
    .line 12
    invoke-interface {p1, p3, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    new-instance v0, Lcom/bytedance/bdtracker/s;

    .line 17
    .line 18
    invoke-direct {v0, p1, p2, p3}, Lcom/bytedance/bdtracker/s;-><init>(FFLjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/bytedance/bdtracker/d;->B:Lcom/bytedance/bdtracker/s;

    .line 22
    .line 23
    return-void
.end method

.method public setGoogleAid(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "setGoogleAid"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 11
    .line 12
    const-string v1, "google_aid"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v0, v0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 23
    .line 24
    invoke-static {v0, v1, p1}, Lcom/bytedance/bdtracker/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public setHeaderInfo(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "setHeaderInfo"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 2
    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/c5;->a(Lcom/bytedance/applog/log/IAppLogLogger;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    invoke-virtual {p1, v0}, Lcom/bytedance/bdtracker/r1;->a(Ljava/util/HashMap;)V

    :cond_1
    return-void
.end method

.method public setHeaderInfo(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "setHeaderInfo"

    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 4
    invoke-static {v0, p1}, Lcom/bytedance/bdtracker/c5;->a(Lcom/bytedance/applog/log/IAppLogLogger;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/r1;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public setLaunchFrom(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/bdtracker/d;->l:I

    .line 2
    .line 3
    return-void
.end method

.method public setOaidObserver(Lcom/bytedance/applog/IOaidObserver;)V
    .locals 0
    .param p1    # Lcom/bytedance/applog/IOaidObserver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/bytedance/bdtracker/h5;->a(Lcom/bytedance/applog/IOaidObserver;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setPrivacyMode(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/bdtracker/d;->x:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v0, Lcom/bytedance/bdtracker/d$d;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1}, Lcom/bytedance/bdtracker/d$d;-><init>(Lcom/bytedance/bdtracker/d;Z)V

    .line 14
    .line 15
    .line 16
    const-string p1, "update_config"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public setPullAbTestConfigsThrottleMills(Ljava/lang/Long;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance p1, Ljava/lang/AssertionError;

    .line 6
    .line 7
    const-string v0, "Please initialize first"

    .line 8
    .line 9
    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/bytedance/bdtracker/m0;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/bytedance/bdtracker/m0;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/e0;->a(Ljava/lang/Long;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public setRangersEventVerifyEnable(ZLjava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "setRangersEventVerifyEnable"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 13
    .line 14
    const/16 v2, 0xf

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public setTouchPoint(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "touch_point"

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/bytedance/bdtracker/d;->setHeaderInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setTracerData(Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    const-string v0, "setTracerData"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 11
    .line 12
    const-string v1, "tracer_data"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public setUriRuntime(Lcom/bytedance/applog/UriConfig;)V
    .locals 1

    .line 1
    const-string v0, "setUriRuntime"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 11
    .line 12
    iput-object p1, v0, Lcom/bytedance/bdtracker/e0;->o:Lcom/bytedance/applog/UriConfig;

    .line 13
    .line 14
    iget-object p1, v0, Lcom/bytedance/bdtracker/e0;->k:Lcom/bytedance/bdtracker/h0;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/e0;->a(Lcom/bytedance/bdtracker/c0;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, v0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/bytedance/applog/InitConfig;->isAutoActive()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/e0;->a(Z)Z

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "setUserAgent"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    .line 11
    .line 12
    const-string v1, "user_agent"

    .line 13
    .line 14
    invoke-virtual {v0, v1, p1}, Lcom/bytedance/bdtracker/r1;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    iget-object v0, v0, Lcom/bytedance/bdtracker/r1;->c:Lcom/bytedance/bdtracker/p1;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    .line 23
    .line 24
    invoke-static {v0, v1, p1}, Lcom/bytedance/bdtracker/a;->a(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public setUserID(J)V
    .locals 1

    .line 1
    const-string v0, "setUserID"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->n:Lcom/bytedance/bdtracker/j0;

    .line 13
    .line 14
    iput-wide p1, v0, Lcom/bytedance/bdtracker/j0;->a:J

    .line 15
    .line 16
    return-void
.end method

.method public setUserUniqueID(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->H:Lcom/bytedance/bdtracker/s4;

    .line 1
    iput-object p1, v0, Lcom/bytedance/bdtracker/s4;->a:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/bytedance/bdtracker/s4;->b:Z

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bdtracker/d;->setUserUniqueID(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserUniqueID(Ljava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v0, Lcom/bytedance/bdtracker/d;->p:Lcom/bytedance/bdtracker/r1;

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/bytedance/bdtracker/d;->H:Lcom/bytedance/bdtracker/s4;

    .line 3
    iput-object v1, v3, Lcom/bytedance/bdtracker/s4;->a:Ljava/lang/Object;

    iput-boolean v4, v3, Lcom/bytedance/bdtracker/s4;->b:Z

    .line 4
    iget-object v1, v0, Lcom/bytedance/bdtracker/d;->I:Lcom/bytedance/bdtracker/s4;

    .line 5
    iput-object v2, v1, Lcom/bytedance/bdtracker/s4;->a:Ljava/lang/Object;

    iput-boolean v4, v1, Lcom/bytedance/bdtracker/s4;->b:Z

    return-void

    .line 6
    :cond_0
    const-string v3, "setUserUniqueID"

    invoke-virtual {v0, v3}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iget-object v7, v0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 7
    iget-object v8, v7, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    invoke-virtual {v8}, Lcom/bytedance/bdtracker/r1;->k()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/bdtracker/e0;->a([Ljava/lang/String;Z)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {}, Lcom/bytedance/bdtracker/w;->a()Lcom/bytedance/bdtracker/e4;

    move-result-object v12

    iget-object v13, v7, Lcom/bytedance/bdtracker/e0;->n:Lcom/bytedance/bdtracker/j0;

    invoke-virtual {v13}, Lcom/bytedance/bdtracker/j0;->a()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/bytedance/bdtracker/l0$b;->d(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Lcom/bytedance/bdtracker/u3;->clone()Lcom/bytedance/bdtracker/u3;

    move-result-object v12

    check-cast v12, Lcom/bytedance/bdtracker/e4;

    .line 8
    iget-object v14, v7, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 9
    iget-object v14, v14, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 10
    iput-object v14, v12, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    .line 11
    iget-wide v14, v12, Lcom/bytedance/bdtracker/u3;->c:J

    sub-long v14, v10, v14

    invoke-virtual {v12, v10, v11}, Lcom/bytedance/bdtracker/u3;->a(J)V

    const-wide/16 v16, 0x0

    cmp-long v18, v14, v16

    if-ltz v18, :cond_3

    goto :goto_0

    :cond_3
    move-wide/from16 v14, v16

    :goto_0
    iput-wide v14, v12, Lcom/bytedance/bdtracker/e4;->s:J

    iget-object v14, v7, Lcom/bytedance/bdtracker/e0;->n:Lcom/bytedance/bdtracker/j0;

    invoke-virtual {v14}, Lcom/bytedance/bdtracker/j0;->b()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v12, Lcom/bytedance/bdtracker/e4;->B:Ljava/lang/String;

    iget-object v14, v7, Lcom/bytedance/bdtracker/e0;->n:Lcom/bytedance/bdtracker/j0;

    .line 12
    iget-object v15, v7, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 13
    invoke-virtual {v14, v15, v12}, Lcom/bytedance/bdtracker/j0;->a(Lcom/bytedance/applog/IAppLogInstance;Lcom/bytedance/bdtracker/u3;)V

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v7, v1, v2}, Lcom/bytedance/bdtracker/e0;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v12, :cond_5

    .line 14
    sget-object v12, Lcom/bytedance/bdtracker/w;->l:Lcom/bytedance/bdtracker/e4;

    goto :goto_1

    :cond_5
    move v9, v4

    :goto_1
    if-eqz v13, :cond_6

    if-eqz v12, :cond_6

    .line 15
    invoke-virtual {v12}, Lcom/bytedance/bdtracker/u3;->clone()Lcom/bytedance/bdtracker/u3;

    move-result-object v1

    check-cast v1, Lcom/bytedance/bdtracker/e4;

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    invoke-virtual {v1, v10, v11}, Lcom/bytedance/bdtracker/u3;->a(J)V

    const-wide/16 v10, -0x1

    iput-wide v10, v1, Lcom/bytedance/bdtracker/e4;->s:J

    iget-object v2, v7, Lcom/bytedance/bdtracker/e0;->n:Lcom/bytedance/bdtracker/j0;

    .line 16
    iget-object v10, v7, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 17
    invoke-virtual {v2, v10, v1, v8, v4}, Lcom/bytedance/bdtracker/j0;->a(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/u3;Ljava/util/List;Z)Lcom/bytedance/bdtracker/c4;

    move-result-object v2

    iget-object v4, v7, Lcom/bytedance/bdtracker/e0;->n:Lcom/bytedance/bdtracker/j0;

    invoke-virtual {v4}, Lcom/bytedance/bdtracker/j0;->b()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/bdtracker/c4;->v:Ljava/lang/String;

    if-eqz v9, :cond_6

    iget-object v2, v7, Lcom/bytedance/bdtracker/e0;->n:Lcom/bytedance/bdtracker/j0;

    .line 18
    iget-object v4, v7, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 19
    invoke-virtual {v2, v4, v1}, Lcom/bytedance/bdtracker/j0;->a(Lcom/bytedance/applog/IAppLogInstance;Lcom/bytedance/bdtracker/u3;)V

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v7}, Lcom/bytedance/bdtracker/e0;->c()Lcom/bytedance/bdtracker/a4;

    move-result-object v1

    .line 20
    iget-object v1, v1, Lcom/bytedance/bdtracker/a4;->c:Lcom/bytedance/bdtracker/z3;

    invoke-virtual {v1, v8}, Lcom/bytedance/bdtracker/z3;->b(Ljava/util/List;)V

    .line 21
    :cond_7
    iget-object v1, v7, Lcom/bytedance/bdtracker/e0;->l:Lcom/bytedance/bdtracker/i0;

    invoke-virtual {v7, v1}, Lcom/bytedance/bdtracker/e0;->a(Lcom/bytedance/bdtracker/c0;)V

    .line 22
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/bdtracker/d;->getMonitor()Lcom/bytedance/bdtracker/h2;

    move-result-object v1

    const-string v2, "api_usage"

    invoke-static {v1, v2, v3, v5, v6}, Lcom/bytedance/bdtracker/k2;->a(Lcom/bytedance/bdtracker/h2;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setViewId(Landroid/app/Dialog;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/bytedance/applog/R$id;->applog_tag_view_id:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setViewId(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 2
    if-nez p1, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/bytedance/applog/R$id;->applog_tag_view_id:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setViewId(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.support.v7.app.AlertDialog"

    const-string v1, "androidx.appcompat.app.AlertDialog"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 4
    new-array p2, v1, [Ljava/lang/Object;

    const-string v0, "Only support AlertDialog view"

    invoke-interface {p1, v0, p2}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "getWindow"

    :try_start_1
    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/Window;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    sget v0, Lcom/bytedance/applog/R$id;->applog_tag_view_id:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 5
    :goto_0
    iget-object p2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 6
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Cannot set viewId for alertDialog"

    invoke-interface {p2, v1, p1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_2

    .line 7
    :goto_1
    iget-object p2, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 8
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Not found getWindow method in alertDialog"

    invoke-interface {p2, v1, p1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public setViewProperties(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/bytedance/bdtracker/l0$b;->b(Landroid/view/View;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 1
    const-string v0, "start"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

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
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/d;->u:Z

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/bytedance/bdtracker/d;->u:Z

    .line 16
    .line 17
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 18
    .line 19
    iget-boolean v1, v0, Lcom/bytedance/bdtracker/e0;->r:Z

    .line 20
    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/e0;->i()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public startDurationEvent(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const-string v3, "Event name must not empty!"

    .line 10
    .line 11
    invoke-static {v2, v3}, Lcom/bytedance/bdtracker/l0$b;->a(ZLjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->i:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/bytedance/bdtracker/k0;

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    new-instance v2, Lcom/bytedance/bdtracker/k0;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 31
    .line 32
    invoke-direct {v2, v3, p1}, Lcom/bytedance/bdtracker/k0;-><init>(Lcom/bytedance/applog/log/IAppLogLogger;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v3, p0, Lcom/bytedance/bdtracker/d;->i:Ljava/util/Map;

    .line 36
    .line 37
    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/bdtracker/k0;->c(J)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public startSimulator(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "startSimulator"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

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
    iget-object v0, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/bytedance/bdtracker/e0;->s:Lcom/bytedance/bdtracker/c0;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    iput-boolean v2, v1, Lcom/bytedance/bdtracker/c0;->d:Z

    .line 18
    .line 19
    :cond_1
    const-string v1, "com.bytedance.applog.picker.DomSender"

    .line 20
    .line 21
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->b(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    :try_start_0
    const-class v2, Lcom/bytedance/bdtracker/e0;

    .line 28
    .line 29
    const-class v3, Ljava/lang/String;

    .line 30
    .line 31
    filled-new-array {v2, v3}, [Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/bytedance/bdtracker/c0;

    .line 48
    .line 49
    iput-object p1, v0, Lcom/bytedance/bdtracker/e0;->s:Lcom/bytedance/bdtracker/c0;

    .line 50
    .line 51
    iget-object p1, v0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 52
    .line 53
    iget-object v1, v0, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 54
    .line 55
    iget-object v2, v0, Lcom/bytedance/bdtracker/e0;->s:Lcom/bytedance/bdtracker/c0;

    .line 56
    .line 57
    const/16 v3, 0x9

    .line 58
    .line 59
    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 71
    .line 72
    const/4 v1, 0x0

    .line 73
    new-array v1, v1, [Ljava/lang/Object;

    .line 74
    .line 75
    const-string v2, "Start simulator failed."

    .line 76
    .line 77
    invoke-interface {v0, v2, p1, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_2
    :goto_0
    return-void
.end method

.method public stopDurationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-string v2, "Event name must not empty!"

    .line 6
    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-static {v3, v2}, Lcom/bytedance/bdtracker/l0$b;->a(ZLjava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v2, p0, Lcom/bytedance/bdtracker/d;->i:Ljava/util/Map;

    .line 19
    .line 20
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/bytedance/bdtracker/k0;

    .line 25
    .line 26
    new-instance v3, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v4, "No duration event with name: "

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-static {v2, v3}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/Object;Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    return-void

    .line 50
    :cond_1
    const-wide/16 v3, 0x0

    .line 51
    .line 52
    cmp-long v5, v0, v3

    .line 53
    .line 54
    const/4 v6, 0x4

    .line 55
    const/4 v7, 0x0

    .line 56
    if-gtz v5, :cond_2

    .line 57
    .line 58
    iget-object v2, v2, Lcom/bytedance/bdtracker/k0;->a:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 59
    .line 60
    if-eqz v2, :cond_4

    .line 61
    .line 62
    new-instance v5, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v8, "End at illegal time: "

    .line 68
    .line 69
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-array v1, v7, [Ljava/lang/Object;

    .line 80
    .line 81
    invoke-interface {v2, v6, v0, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->warn(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/bdtracker/k0;->a(J)V

    .line 86
    .line 87
    .line 88
    iget-object v3, v2, Lcom/bytedance/bdtracker/k0;->a:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 89
    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    iget-object v4, v2, Lcom/bytedance/bdtracker/k0;->b:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iget-wide v8, v2, Lcom/bytedance/bdtracker/k0;->d:J

    .line 99
    .line 100
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    filled-new-array {v4, v0, v1}, [Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v1, "[DurationEvent:{}] End[ at:{} and duration is {}ms"

    .line 109
    .line 110
    invoke-interface {v3, v6, v1, v0}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    iget-wide v3, v2, Lcom/bytedance/bdtracker/k0;->d:J

    .line 114
    .line 115
    :cond_4
    :goto_0
    new-instance v0, Lorg/json/JSONObject;

    .line 116
    .line 117
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-static {p2, v0}, Lcom/bytedance/bdtracker/l0$b;->b(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 121
    .line 122
    .line 123
    :try_start_0
    const-string p2, "$event_duration"

    .line 124
    .line 125
    invoke-virtual {v0, p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .line 127
    .line 128
    goto :goto_1

    .line 129
    :catchall_0
    move-exception p2

    .line 130
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 131
    .line 132
    new-array v2, v7, [Ljava/lang/Object;

    .line 133
    .line 134
    const-string v3, "JSON handle failed"

    .line 135
    .line 136
    invoke-interface {v1, v3, p2, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    :goto_1
    new-instance p2, Lcom/bytedance/bdtracker/b4;

    .line 140
    .line 141
    invoke-direct {p2, p1, v0}, Lcom/bytedance/bdtracker/b4;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0, p2}, Lcom/bytedance/bdtracker/d;->receive(Lcom/bytedance/bdtracker/u3;)V

    .line 145
    .line 146
    .line 147
    iget-object p2, p0, Lcom/bytedance/bdtracker/d;->i:Ljava/util/Map;

    .line 148
    .line 149
    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "AppLogInstance{id:"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/bytedance/bdtracker/d;->K:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ";appId:"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->m:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, "}@"

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    return-object v0
.end method

.method public trackClick(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bdtracker/d;->trackClick(Landroid/view/View;Lorg/json/JSONObject;)V

    return-void
.end method

.method public trackClick(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/l0$b;->a(Landroid/view/View;Z)Lcom/bytedance/bdtracker/w3;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iput-object p2, p1, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/bdtracker/d;->receive(Lcom/bytedance/bdtracker/u3;)V

    return-void
.end method

.method public trackPage(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bdtracker/d;->trackPage(Landroid/app/Activity;Lorg/json/JSONObject;)V

    return-void
.end method

.method public trackPage(Landroid/app/Activity;Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-void
.end method

.method public trackPage(Ljava/lang/Object;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/bdtracker/d;->trackPage(Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-void
.end method

.method public trackPage(Ljava/lang/Object;Lorg/json/JSONObject;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/bdtracker/d;->a(Ljava/lang/Object;Lorg/json/JSONObject;)V

    return-void
.end method

.method public userProfileSetOnce(Lorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;)V
    .locals 7

    .line 1
    const-string v0, "userProfileSetOnce"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

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
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 11
    .line 12
    iget-object v0, v1, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v5, v1, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v2, 0x0

    .line 20
    move-object v3, p1

    .line 21
    move-object v4, p2

    .line 22
    invoke-static/range {v1 .. v6}, Lcom/bytedance/bdtracker/l3;->a(Lcom/bytedance/bdtracker/e0;ILorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;Landroid/os/Handler;Z)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method

.method public userProfileSync(Lorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;)V
    .locals 7

    .line 1
    const-string v0, "userProfileSync"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/bytedance/bdtracker/d;->b(Ljava/lang/String;)Z

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
    iget-object v1, p0, Lcom/bytedance/bdtracker/d;->q:Lcom/bytedance/bdtracker/e0;

    .line 11
    .line 12
    iget-object v0, v1, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v5, v1, Lcom/bytedance/bdtracker/e0;->j:Landroid/os/Handler;

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v2, 0x1

    .line 20
    move-object v3, p1

    .line 21
    move-object v4, p2

    .line 22
    invoke-static/range {v1 .. v6}, Lcom/bytedance/bdtracker/l3;->a(Lcom/bytedance/bdtracker/e0;ILorg/json/JSONObject;Lcom/bytedance/applog/profile/UserProfileCallback;Landroid/os/Handler;Z)V

    .line 23
    .line 24
    .line 25
    :cond_1
    return-void
.end method
