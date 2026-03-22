.class public Lcom/bytedance/bdtracker/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# static fields
.field public static final a:Lcom/bytedance/bdtracker/k0;

.field public static b:Z

.field public static c:I

.field public static d:Lcom/bytedance/bdtracker/e4;

.field public static e:Lcom/bytedance/bdtracker/e4;

.field public static f:J

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/Object;

.field public static i:J

.field public static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/e4;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static l:Lcom/bytedance/bdtracker/e4;

.field public static final m:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static volatile n:Lcom/bytedance/bdtracker/w;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/bytedance/bdtracker/k0;

    .line 2
    .line 3
    const-string v1, "@APPLOG_APP_USE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v1}, Lcom/bytedance/bdtracker/k0;-><init>(Lcom/bytedance/applog/log/IAppLogLogger;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/bytedance/bdtracker/w;->a:Lcom/bytedance/bdtracker/k0;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lcom/bytedance/bdtracker/w;->b:Z

    .line 13
    .line 14
    const-string v1, "android.arch.lifecycle.ReportFragment"

    .line 15
    .line 16
    const-string v3, "androidx.lifecycle.ReportFragment"

    .line 17
    .line 18
    filled-new-array {v1, v3}, [Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    const-string v1, "com.bumptech.glide.manager.SupportRequestManagerFragment"

    .line 26
    .line 27
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    sput v0, Lcom/bytedance/bdtracker/w;->c:I

    .line 31
    .line 32
    new-instance v0, Ljava/util/HashMap;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/bytedance/bdtracker/w;->j:Ljava/util/Map;

    .line 38
    .line 39
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/bytedance/bdtracker/w;->k:Ljava/util/List;

    .line 45
    .line 46
    new-instance v0, Ljava/util/HashSet;

    .line 47
    .line 48
    const/16 v1, 0x8

    .line 49
    .line 50
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/bytedance/bdtracker/w;->m:Ljava/util/HashSet;

    .line 54
    .line 55
    sput-object v2, Lcom/bytedance/bdtracker/w;->n:Lcom/bytedance/bdtracker/w;

    .line 56
    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a()Lcom/bytedance/bdtracker/e4;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/bdtracker/w;->d:Lcom/bytedance/bdtracker/e4;

    sget-object v1, Lcom/bytedance/bdtracker/w;->e:Lcom/bytedance/bdtracker/e4;

    if-eqz v1, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static a(Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)Lcom/bytedance/bdtracker/e4;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/bytedance/bdtracker/e4;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/bdtracker/e4;

    invoke-direct {v0}, Lcom/bytedance/bdtracker/e4;-><init>()V

    iput-object p0, v0, Lcom/bytedance/bdtracker/e4;->E:Ljava/lang/Class;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p2, v0, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p6, p7}, Lcom/bytedance/bdtracker/u3;->a(J)V

    iput-wide p6, v0, Lcom/bytedance/bdtracker/e4;->z:J

    const-wide/16 p2, -0x1

    iput-wide p2, v0, Lcom/bytedance/bdtracker/e4;->s:J

    sget-object p0, Lcom/bytedance/bdtracker/w;->l:Lcom/bytedance/bdtracker/e4;

    const-string p2, ""

    if-eqz p0, :cond_1

    iget-object p3, p0, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object p3, p2

    :goto_1
    iput-object p3, v0, Lcom/bytedance/bdtracker/e4;->t:Ljava/lang/String;

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    move-object p4, p2

    :goto_2
    iput-object p4, v0, Lcom/bytedance/bdtracker/e4;->v:Ljava/lang/String;

    if-eqz p0, :cond_3

    iget-object p3, p0, Lcom/bytedance/bdtracker/e4;->v:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object p3, p2

    :goto_3
    iput-object p3, v0, Lcom/bytedance/bdtracker/e4;->w:Ljava/lang/String;

    if-eqz p5, :cond_4

    goto :goto_4

    :cond_4
    move-object p5, p2

    :goto_4
    iput-object p5, v0, Lcom/bytedance/bdtracker/e4;->x:Ljava/lang/String;

    if-eqz p0, :cond_5

    iget-object p2, p0, Lcom/bytedance/bdtracker/e4;->x:Ljava/lang/String;

    :cond_5
    iput-object p2, v0, Lcom/bytedance/bdtracker/e4;->y:Ljava/lang/String;

    iput-object p8, v0, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    iput-boolean p1, v0, Lcom/bytedance/bdtracker/e4;->D:Z

    .line 6
    new-instance p0, Lcom/bytedance/bdtracker/v;

    invoke-direct {p0, v0}, Lcom/bytedance/bdtracker/v;-><init>(Lcom/bytedance/bdtracker/e4;)V

    invoke-static {v0, p0}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/bdtracker/u3;Lcom/bytedance/bdtracker/b$e;)V

    .line 7
    sput-object v0, Lcom/bytedance/bdtracker/w;->l:Lcom/bytedance/bdtracker/e4;

    return-object v0
.end method

.method public static a(ZLcom/bytedance/bdtracker/e4;J)Lcom/bytedance/bdtracker/e4;
    .locals 3

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/u3;->clone()Lcom/bytedance/bdtracker/u3;

    move-result-object v0

    check-cast v0, Lcom/bytedance/bdtracker/e4;

    invoke-virtual {v0, p2, p3}, Lcom/bytedance/bdtracker/u3;->a(J)V

    iget-wide v1, p1, Lcom/bytedance/bdtracker/u3;->c:J

    sub-long/2addr p2, v1

    const-wide/16 v1, 0x0

    cmp-long p1, p2, v1

    if-gtz p1, :cond_0

    const-wide/16 p2, 0x3e8

    :cond_0
    iput-wide p2, v0, Lcom/bytedance/bdtracker/e4;->s:J

    iput-boolean p0, v0, Lcom/bytedance/bdtracker/e4;->D:Z

    .line 4
    new-instance p0, Lcom/bytedance/bdtracker/v;

    invoke-direct {p0, v0}, Lcom/bytedance/bdtracker/v;-><init>(Lcom/bytedance/bdtracker/e4;)V

    invoke-static {v0, p0}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/bdtracker/u3;Lcom/bytedance/bdtracker/b$e;)V

    .line 5
    new-instance p0, Lcom/bytedance/bdtracker/t;

    invoke-direct {p0, v0}, Lcom/bytedance/bdtracker/t;-><init>(Lcom/bytedance/bdtracker/e4;)V

    new-instance p1, Lcom/bytedance/bdtracker/u;

    invoke-direct {p1}, Lcom/bytedance/bdtracker/u;-><init>()V

    invoke-static {p0, p1}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/bdtracker/b$f;Lcom/bytedance/bdtracker/b$e;)V

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/app/Application;)Lcom/bytedance/bdtracker/w;
    .locals 2

    .line 2
    const-class v0, Lcom/bytedance/bdtracker/w;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/bdtracker/w;->n:Lcom/bytedance/bdtracker/w;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/bdtracker/w;

    invoke-direct {v1}, Lcom/bytedance/bdtracker/w;-><init>()V

    sput-object v1, Lcom/bytedance/bdtracker/w;->n:Lcom/bytedance/bdtracker/w;

    sget-object v1, Lcom/bytedance/bdtracker/w;->n:Lcom/bytedance/bdtracker/w;

    invoke-virtual {p0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/bytedance/bdtracker/w;->n:Lcom/bytedance/bdtracker/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public a(Landroid/app/Activity;I)V
    .locals 9

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcom/bytedance/bdtracker/v4;->c(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Lcom/bytedance/bdtracker/v4;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Lcom/bytedance/bdtracker/v4;->d(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const/4 v1, 0x0

    const-string v3, ""

    invoke-static/range {v0 .. v8}, Lcom/bytedance/bdtracker/w;->a(Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)Lcom/bytedance/bdtracker/e4;

    move-result-object p1

    sput-object p1, Lcom/bytedance/bdtracker/w;->d:Lcom/bytedance/bdtracker/e4;

    sget-object v0, Lcom/bytedance/bdtracker/w;->m:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iput p2, p1, Lcom/bytedance/bdtracker/e4;->A:I

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    sget-object p2, Lcom/bytedance/bdtracker/w;->m:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/bdtracker/w;->m:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 9

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sget-object v2, Lcom/bytedance/bdtracker/w;->a:Lcom/bytedance/bdtracker/k0;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Lcom/bytedance/bdtracker/k0;->a(J)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    sput-boolean v2, Lcom/bytedance/bdtracker/w;->b:Z

    .line 12
    .line 13
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v4, ""

    .line 29
    .line 30
    :goto_0
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const-string v5, "onActivityPaused:{}"

    .line 35
    .line 36
    invoke-interface {v3, v5, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object v3, Lcom/bytedance/bdtracker/w;->e:Lcom/bytedance/bdtracker/e4;

    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    if-eqz v3, :cond_2

    .line 43
    .line 44
    sget-object v3, Lcom/bytedance/bdtracker/w;->h:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v5

    .line 50
    sput-wide v5, Lcom/bytedance/bdtracker/w;->i:J

    .line 51
    .line 52
    sget-object v7, Lcom/bytedance/bdtracker/w;->e:Lcom/bytedance/bdtracker/e4;

    .line 53
    .line 54
    const/4 v8, 0x1

    .line 55
    invoke-static {v8, v7, v5, v6}, Lcom/bytedance/bdtracker/w;->a(ZLcom/bytedance/bdtracker/e4;J)Lcom/bytedance/bdtracker/e4;

    .line 56
    .line 57
    .line 58
    sput-object v4, Lcom/bytedance/bdtracker/w;->e:Lcom/bytedance/bdtracker/e4;

    .line 59
    .line 60
    sput-object v4, Lcom/bytedance/bdtracker/w;->h:Ljava/lang/Object;

    .line 61
    .line 62
    if-eqz v3, :cond_2

    .line 63
    .line 64
    sget-object v5, Lcom/bytedance/bdtracker/w;->k:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-eqz v6, :cond_2

    .line 75
    .line 76
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 81
    .line 82
    if-eqz v6, :cond_1

    .line 83
    .line 84
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    if-ne v6, v3, :cond_1

    .line 89
    .line 90
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 91
    .line 92
    .line 93
    :cond_2
    sget-object v3, Lcom/bytedance/bdtracker/w;->d:Lcom/bytedance/bdtracker/e4;

    .line 94
    .line 95
    if-eqz v3, :cond_3

    .line 96
    .line 97
    iget-object v5, v3, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    .line 98
    .line 99
    sput-object v5, Lcom/bytedance/bdtracker/w;->g:Ljava/lang/String;

    .line 100
    .line 101
    sput-wide v0, Lcom/bytedance/bdtracker/w;->f:J

    .line 102
    .line 103
    invoke-static {v2, v3, v0, v1}, Lcom/bytedance/bdtracker/w;->a(ZLcom/bytedance/bdtracker/e4;J)Lcom/bytedance/bdtracker/e4;

    .line 104
    .line 105
    .line 106
    sput-object v4, Lcom/bytedance/bdtracker/w;->d:Lcom/bytedance/bdtracker/e4;

    .line 107
    .line 108
    if-eqz p1, :cond_3

    .line 109
    .line 110
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    .line 111
    .line 112
    .line 113
    :cond_3
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v6

    .line 5
    sget-object v0, Lcom/bytedance/bdtracker/w;->a:Lcom/bytedance/bdtracker/k0;

    .line 6
    .line 7
    invoke-virtual {v0, v6, v7}, Lcom/bytedance/bdtracker/k0;->c(J)V

    .line 8
    .line 9
    .line 10
    const/4 v9, 0x1

    .line 11
    sput-boolean v9, Lcom/bytedance/bdtracker/w;->b:Z

    .line 12
    .line 13
    invoke-static {p1}, Lcom/bytedance/bdtracker/v4;->c(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v4

    .line 17
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "onActivityResumed:{} {}"

    .line 34
    .line 35
    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {p1}, Lcom/bytedance/bdtracker/v4;->b(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    invoke-static {p1}, Lcom/bytedance/bdtracker/v4;->d(Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    const/4 v1, 0x0

    .line 59
    const-string v3, ""

    .line 60
    .line 61
    invoke-static/range {v0 .. v8}, Lcom/bytedance/bdtracker/w;->a(Ljava/lang/Class;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLorg/json/JSONObject;)Lcom/bytedance/bdtracker/e4;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    sput-object v0, Lcom/bytedance/bdtracker/w;->d:Lcom/bytedance/bdtracker/e4;

    .line 66
    .line 67
    sget-object v1, Lcom/bytedance/bdtracker/w;->m:Ljava/util/HashSet;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    xor-int/2addr v1, v9

    .line 82
    iput v1, v0, Lcom/bytedance/bdtracker/e4;->A:I

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->isChild()Z

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .line 1
    sget p1, Lcom/bytedance/bdtracker/w;->c:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    sput p1, Lcom/bytedance/bdtracker/w;->c:I

    .line 6
    .line 7
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/bytedance/bdtracker/w;->g:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    sget p1, Lcom/bytedance/bdtracker/w;->c:I

    .line 6
    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 8
    .line 9
    sput p1, Lcom/bytedance/bdtracker/w;->c:I

    .line 10
    .line 11
    if-gtz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    sput-object p1, Lcom/bytedance/bdtracker/w;->g:Ljava/lang/String;

    .line 15
    .line 16
    const-wide/16 v0, 0x0

    .line 17
    .line 18
    sput-wide v0, Lcom/bytedance/bdtracker/w;->i:J

    .line 19
    .line 20
    sput-wide v0, Lcom/bytedance/bdtracker/w;->f:J

    .line 21
    .line 22
    new-instance p1, Lcom/bytedance/bdtracker/c;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/bytedance/bdtracker/c;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/bdtracker/b$d;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
