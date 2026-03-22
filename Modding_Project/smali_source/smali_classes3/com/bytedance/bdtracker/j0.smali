.class public Lcom/bytedance/bdtracker/j0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bdtracker/j0$b;
    }
.end annotation


# static fields
.field public static final o:Ljava/util/concurrent/atomic/AtomicLong;

.field public static p:Lcom/bytedance/bdtracker/j0$b;


# instance fields
.field public a:J

.field public final b:Lcom/bytedance/bdtracker/e0;

.field public c:Lcom/bytedance/bdtracker/e4;

.field public d:Lcom/bytedance/bdtracker/e4;

.field public e:Ljava/lang/String;

.field public volatile f:J

.field public g:I

.field public h:J

.field public volatile i:Z

.field public j:J

.field public k:I

.field public l:Ljava/lang/String;

.field public volatile m:Ljava/lang/String;

.field public volatile n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    const-wide/16 v1, 0x3e8

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/bytedance/bdtracker/j0;->o:Ljava/util/concurrent/atomic/AtomicLong;

    .line 9
    .line 10
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/bdtracker/e0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/bytedance/bdtracker/j0;->h:J

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/bytedance/bdtracker/j0;->n:Z

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytedance/bdtracker/j0;->b:Lcom/bytedance/bdtracker/e0;

    .line 12
    .line 13
    return-void
.end method

.method public static a(Lcom/bytedance/bdtracker/u3;)Z
    .locals 1

    .line 2
    instance-of v0, p0, Lcom/bytedance/bdtracker/e4;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/bytedance/bdtracker/e4;

    invoke-virtual {p0}, Lcom/bytedance/bdtracker/e4;->k()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public declared-synchronized a(JJ)Landroid/os/Bundle;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/bytedance/bdtracker/j0;->f:J

    iget-object v2, p0, Lcom/bytedance/bdtracker/j0;->b:Lcom/bytedance/bdtracker/e0;

    .line 16
    iget-object v2, v2, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 17
    iget-object v2, v2, Lcom/bytedance/bdtracker/p1;->c:Lcom/bytedance/applog/InitConfig;

    invoke-virtual {v2}, Lcom/bytedance/applog/InitConfig;->isPlayEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/bytedance/bdtracker/j0;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    sub-long v0, p1, v0

    cmp-long p3, v0, p3

    if-lez p3, :cond_0

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    iget p4, p0, Lcom/bytedance/bdtracker/j0;->k:I

    const-string v2, "session_no"

    invoke-virtual {p3, v2, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget p4, p0, Lcom/bytedance/bdtracker/j0;->g:I

    add-int/lit8 p4, p4, 0x1

    iput p4, p0, Lcom/bytedance/bdtracker/j0;->g:I

    const-string v2, "send_times"

    invoke-virtual {p3, v2, p4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-string p4, "current_duration"

    invoke-virtual {p3, p4, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/bytedance/bdtracker/j0;->h:J

    invoke-static {v0, v1}, Lcom/bytedance/bdtracker/u3;->b(J)Ljava/lang/String;

    move-result-object p4

    const-string v0, "session_start_time"

    invoke-virtual {p3, v0, p4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iput-wide p1, p0, Lcom/bytedance/bdtracker/j0;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    const/4 p3, 0x0

    :goto_0
    monitor-exit p0

    return-object p3

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/u3;Ljava/util/List;Z)Lcom/bytedance/bdtracker/c4;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/bdtracker/d;",
            "Lcom/bytedance/bdtracker/u3;",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/u3;",
            ">;Z)",
            "Lcom/bytedance/bdtracker/c4;"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v0, p2

    move/from16 v8, p4

    monitor-enter p0

    :try_start_0
    instance-of v1, v0, Lcom/bytedance/bdtracker/j0$b;

    const-wide/16 v9, -0x1

    if-eqz v1, :cond_0

    move-wide v11, v9

    goto :goto_0

    :cond_0
    iget-wide v1, v0, Lcom/bytedance/bdtracker/u3;->c:J

    move-wide v11, v1

    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/bytedance/bdtracker/j0;->e:Ljava/lang/String;

    new-instance v13, Lcom/bytedance/bdtracker/j0$a;

    move-object v1, v13

    move-object v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p4

    move-wide v5, v11

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/bdtracker/j0$a;-><init>(Lcom/bytedance/bdtracker/j0;Lcom/bytedance/bdtracker/d;ZJ)V

    const-string v1, "session_start"

    invoke-static {v1, v13}, Lcom/bytedance/applog/log/LogUtils;->sendJsonFetcher(Ljava/lang/String;Lcom/bytedance/applog/log/EventBus$DataFetcher;)V

    if-eqz v8, :cond_1

    iget-object v1, v7, Lcom/bytedance/bdtracker/j0;->b:Lcom/bytedance/bdtracker/e0;

    iget-boolean v1, v1, Lcom/bytedance/bdtracker/e0;->v:Z

    if-nez v1, :cond_1

    iget-object v1, v7, Lcom/bytedance/bdtracker/j0;->m:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/bytedance/bdtracker/j0;->e:Ljava/lang/String;

    iput-object v1, v7, Lcom/bytedance/bdtracker/j0;->m:Ljava/lang/String;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    :goto_1
    sget-object v1, Lcom/bytedance/bdtracker/j0;->o:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iput-wide v11, v7, Lcom/bytedance/bdtracker/j0;->h:J

    iput-boolean v8, v7, Lcom/bytedance/bdtracker/j0;->i:Z

    const-wide/16 v2, 0x0

    iput-wide v2, v7, Lcom/bytedance/bdtracker/j0;->j:J

    iput-wide v2, v7, Lcom/bytedance/bdtracker/j0;->f:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v8, :cond_4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    const-string v5, ""

    invoke-static {v5}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v6, 0x5

    invoke-virtual {v4, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v7, Lcom/bytedance/bdtracker/j0;->b:Lcom/bytedance/bdtracker/e0;

    .line 28
    iget-object v5, v5, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 29
    iget-object v6, v7, Lcom/bytedance/bdtracker/j0;->l:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 30
    iget-object v6, v5, Lcom/bytedance/bdtracker/p1;->e:Landroid/content/SharedPreferences;

    const-string v13, "session_last_day"

    const-string v14, ""

    invoke-interface {v6, v13, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 31
    iput-object v6, v7, Lcom/bytedance/bdtracker/j0;->l:Ljava/lang/String;

    .line 32
    iget-object v6, v5, Lcom/bytedance/bdtracker/p1;->e:Landroid/content/SharedPreferences;

    const-string v13, "session_order"

    invoke-interface {v6, v13, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 33
    iput v6, v7, Lcom/bytedance/bdtracker/j0;->k:I

    :cond_2
    iget-object v6, v7, Lcom/bytedance/bdtracker/j0;->l:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    iput-object v4, v7, Lcom/bytedance/bdtracker/j0;->l:Ljava/lang/String;

    iput v3, v7, Lcom/bytedance/bdtracker/j0;->k:I

    goto :goto_2

    :cond_3
    iget v6, v7, Lcom/bytedance/bdtracker/j0;->k:I

    add-int/2addr v6, v3

    iput v6, v7, Lcom/bytedance/bdtracker/j0;->k:I

    :goto_2
    iget v6, v7, Lcom/bytedance/bdtracker/j0;->k:I

    .line 34
    iget-object v5, v5, Lcom/bytedance/bdtracker/p1;->e:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v13, "session_last_day"

    invoke-interface {v5, v13, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "session_order"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 35
    iput v2, v7, Lcom/bytedance/bdtracker/j0;->g:I

    iget-wide v4, v0, Lcom/bytedance/bdtracker/u3;->c:J

    iput-wide v4, v7, Lcom/bytedance/bdtracker/j0;->f:J

    :cond_4
    cmp-long v4, v11, v9

    if-eqz v4, :cond_9

    new-instance v4, Lcom/bytedance/bdtracker/c4;

    invoke-direct {v4}, Lcom/bytedance/bdtracker/c4;-><init>()V

    .line 36
    iget-object v0, v0, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    .line 37
    iput-object v0, v4, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    .line 38
    iget-object v0, v7, Lcom/bytedance/bdtracker/j0;->e:Ljava/lang/String;

    iput-object v0, v4, Lcom/bytedance/bdtracker/u3;->e:Ljava/lang/String;

    iget-boolean v0, v7, Lcom/bytedance/bdtracker/j0;->i:Z

    xor-int/2addr v0, v3

    iput-boolean v0, v4, Lcom/bytedance/bdtracker/c4;->u:Z

    .line 39
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    .line 40
    iput-wide v0, v4, Lcom/bytedance/bdtracker/u3;->d:J

    iget-wide v0, v7, Lcom/bytedance/bdtracker/j0;->h:J

    invoke-virtual {v4, v0, v1}, Lcom/bytedance/bdtracker/u3;->a(J)V

    iget-object v0, v7, Lcom/bytedance/bdtracker/j0;->b:Lcom/bytedance/bdtracker/e0;

    .line 41
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 42
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->n()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/bytedance/bdtracker/c4;->t:Ljava/lang/String;

    iget-object v0, v7, Lcom/bytedance/bdtracker/j0;->b:Lcom/bytedance/bdtracker/e0;

    .line 43
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 44
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->m()I

    move-result v0

    iput v0, v4, Lcom/bytedance/bdtracker/c4;->s:I

    iget-wide v0, v7, Lcom/bytedance/bdtracker/j0;->a:J

    iput-wide v0, v4, Lcom/bytedance/bdtracker/u3;->f:J

    iget-object v0, v7, Lcom/bytedance/bdtracker/j0;->b:Lcom/bytedance/bdtracker/e0;

    .line 45
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 46
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->k()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/bytedance/bdtracker/u3;->g:Ljava/lang/String;

    iget-object v0, v7, Lcom/bytedance/bdtracker/j0;->b:Lcom/bytedance/bdtracker/e0;

    .line 47
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 48
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/bytedance/bdtracker/u3;->h:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/bdtracker/d;->getSsid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/bytedance/bdtracker/u3;->i:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/bdtracker/d;->getAbSdkVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/bytedance/bdtracker/u3;->j:Ljava/lang/String;

    if-eqz v8, :cond_5

    iget-object v0, v7, Lcom/bytedance/bdtracker/j0;->b:Lcom/bytedance/bdtracker/e0;

    .line 49
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 50
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    const-string v1, "is_first_time_launch"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_3

    :cond_5
    move v0, v2

    .line 51
    :goto_3
    iput v0, v4, Lcom/bytedance/bdtracker/c4;->w:I

    if-eqz v8, :cond_6

    if-ne v0, v3, :cond_6

    iget-object v0, v7, Lcom/bytedance/bdtracker/j0;->b:Lcom/bytedance/bdtracker/e0;

    .line 52
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 53
    iget-object v0, v0, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "is_first_time_launch"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 54
    :cond_6
    invoke-static {}, Lcom/bytedance/bdtracker/w;->a()Lcom/bytedance/bdtracker/e4;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, v0, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    iput-object v1, v4, Lcom/bytedance/bdtracker/c4;->y:Ljava/lang/String;

    iget-object v0, v0, Lcom/bytedance/bdtracker/e4;->v:Ljava/lang/String;

    iput-object v0, v4, Lcom/bytedance/bdtracker/c4;->x:Ljava/lang/String;

    :cond_7
    iget-boolean v0, v7, Lcom/bytedance/bdtracker/j0;->i:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v7, Lcom/bytedance/bdtracker/j0;->n:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v7, Lcom/bytedance/bdtracker/j0;->n:Z

    iput-boolean v0, v4, Lcom/bytedance/bdtracker/c4;->z:Z

    iput-boolean v2, v7, Lcom/bytedance/bdtracker/j0;->n:Z

    :cond_8
    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    const/4 v4, 0x0

    :goto_4
    iget-object v0, v7, Lcom/bytedance/bdtracker/j0;->b:Lcom/bytedance/bdtracker/e0;

    .line 55
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->d:Lcom/bytedance/bdtracker/d;

    .line 56
    iget v1, v0, Lcom/bytedance/bdtracker/d;->l:I

    if-gtz v1, :cond_a

    const/4 v1, 0x6

    .line 57
    iput v1, v0, Lcom/bytedance/bdtracker/d;->l:I

    :cond_a
    move-object/from16 v0, p1

    .line 58
    iget-object v0, v0, Lcom/bytedance/bdtracker/d;->D:Lcom/bytedance/applog/log/IAppLogLogger;

    .line 59
    iget-object v1, v7, Lcom/bytedance/bdtracker/j0;->e:Ljava/lang/String;

    iget-boolean v2, v7, Lcom/bytedance/bdtracker/j0;->i:Z

    xor-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Start new session:{} with background:{}"

    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    :goto_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/j0;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/bytedance/applog/IAppLogInstance;Lcom/bytedance/bdtracker/u3;)V
    .locals 4

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/bytedance/bdtracker/j0;->b:Lcom/bytedance/bdtracker/e0;

    .line 3
    iget-object v0, v0, Lcom/bytedance/bdtracker/e0;->i:Lcom/bytedance/bdtracker/r1;

    .line 4
    invoke-interface {p1}, Lcom/bytedance/applog/IAppLogInstance;->getAppId()Ljava/lang/String;

    move-result-object p1

    .line 5
    iput-object p1, p2, Lcom/bytedance/bdtracker/u3;->m:Ljava/lang/String;

    .line 6
    iget-wide v1, p0, Lcom/bytedance/bdtracker/j0;->a:J

    iput-wide v1, p2, Lcom/bytedance/bdtracker/u3;->f:J

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->k()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/bytedance/bdtracker/u3;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->l()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/bytedance/bdtracker/u3;->h:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->i()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/bytedance/bdtracker/u3;->i:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/bdtracker/j0;->e:Ljava/lang/String;

    iput-object p1, p2, Lcom/bytedance/bdtracker/u3;->e:Ljava/lang/String;

    .line 7
    sget-object p1, Lcom/bytedance/bdtracker/j0;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v1

    .line 8
    iput-wide v1, p2, Lcom/bytedance/bdtracker/u3;->d:J

    iget-object p1, p2, Lcom/bytedance/bdtracker/u3;->j:Ljava/lang/String;

    .line 9
    invoke-virtual {v0}, Lcom/bytedance/bdtracker/r1;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object p1, v1

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/r1;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/bytedance/bdtracker/r1;->c(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/r1;->a(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    .line 10
    :goto_0
    iput-object p1, p2, Lcom/bytedance/bdtracker/u3;->j:Ljava/lang/String;

    iget-object p1, p0, Lcom/bytedance/bdtracker/j0;->b:Lcom/bytedance/bdtracker/e0;

    invoke-virtual {p1}, Lcom/bytedance/bdtracker/e0;->b()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x1

    .line 11
    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/t4;->b(Landroid/content/Context;Z)Lcom/bytedance/bdtracker/t4$a;

    move-result-object p1

    .line 12
    iget p1, p1, Lcom/bytedance/bdtracker/t4$a;->a:I

    .line 13
    iput p1, p2, Lcom/bytedance/bdtracker/u3;->k:I

    instance-of p1, p2, Lcom/bytedance/bdtracker/b4;

    if-eqz p1, :cond_2

    iget-wide v0, p0, Lcom/bytedance/bdtracker/j0;->h:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    move-object p1, p2

    check-cast p1, Lcom/bytedance/bdtracker/b4;

    .line 14
    iget-object p1, p1, Lcom/bytedance/bdtracker/b4;->u:Ljava/lang/String;

    const-string v0, "$crash"

    .line 15
    invoke-static {p1, v0}, Lcom/bytedance/bdtracker/l0$b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p2, Lcom/bytedance/bdtracker/u3;->o:Lorg/json/JSONObject;

    if-eqz p1, :cond_2

    const-string p2, "$session_duration"

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/bdtracker/j0;->h:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method

.method public a(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/u3;Ljava/util/List;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/bdtracker/d;",
            "Lcom/bytedance/bdtracker/u3;",
            "Ljava/util/List<",
            "Lcom/bytedance/bdtracker/u3;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    instance-of v4, v2, Lcom/bytedance/bdtracker/e4;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 19
    move-object v6, v2

    check-cast v6, Lcom/bytedance/bdtracker/e4;

    invoke-virtual {v6}, Lcom/bytedance/bdtracker/e4;->k()Z

    move-result v6

    goto :goto_0

    :cond_0
    move v6, v5

    .line 20
    :goto_0
    iget-wide v7, v0, Lcom/bytedance/bdtracker/j0;->h:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    if-nez v7, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v7, v0, Lcom/bytedance/bdtracker/j0;->i:Z

    if-nez v7, :cond_2

    if-eqz v6, :cond_2

    invoke-virtual {v0, v1, v2, v3, v10}, Lcom/bytedance/bdtracker/j0;->a(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/u3;Ljava/util/List;Z)Lcom/bytedance/bdtracker/c4;

    goto :goto_2

    :cond_2
    iget-wide v11, v0, Lcom/bytedance/bdtracker/j0;->j:J

    cmp-long v7, v11, v8

    if-eqz v7, :cond_3

    iget-wide v13, v2, Lcom/bytedance/bdtracker/u3;->c:J

    iget-object v7, v0, Lcom/bytedance/bdtracker/j0;->b:Lcom/bytedance/bdtracker/e0;

    .line 21
    iget-object v7, v7, Lcom/bytedance/bdtracker/e0;->e:Lcom/bytedance/bdtracker/p1;

    .line 22
    iget-object v7, v7, Lcom/bytedance/bdtracker/p1;->f:Landroid/content/SharedPreferences;

    const-string v15, "session_interval"

    const-wide/16 v8, 0x7530

    invoke-interface {v7, v15, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    add-long/2addr v7, v11

    cmp-long v7, v13, v7

    if-lez v7, :cond_3

    .line 23
    iput-boolean v10, v0, Lcom/bytedance/bdtracker/j0;->n:Z

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/bytedance/bdtracker/j0;->a(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/u3;Ljava/util/List;Z)Lcom/bytedance/bdtracker/c4;

    goto :goto_2

    :cond_3
    iget-wide v7, v0, Lcom/bytedance/bdtracker/j0;->h:J

    iget-wide v11, v2, Lcom/bytedance/bdtracker/u3;->c:J

    const-wide/32 v13, 0x6ddd00

    add-long/2addr v11, v13

    cmp-long v7, v7, v11

    if-lez v7, :cond_4

    .line 24
    :goto_1
    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/bytedance/bdtracker/j0;->a(Lcom/bytedance/bdtracker/d;Lcom/bytedance/bdtracker/u3;Ljava/util/List;Z)Lcom/bytedance/bdtracker/c4;

    :goto_2
    move v5, v10

    :cond_4
    if-eqz v4, :cond_9

    .line 25
    move-object v4, v2

    check-cast v4, Lcom/bytedance/bdtracker/e4;

    invoke-virtual {v4}, Lcom/bytedance/bdtracker/e4;->k()Z

    move-result v6

    if-eqz v6, :cond_6

    const-wide/16 v6, 0x0

    iput-wide v6, v0, Lcom/bytedance/bdtracker/j0;->j:J

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, v4, Lcom/bytedance/bdtracker/e4;->t:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/bytedance/bdtracker/j0;->d:Lcom/bytedance/bdtracker/e4;

    const-wide/16 v6, 0x1f4

    if-eqz v3, :cond_5

    iget-wide v8, v4, Lcom/bytedance/bdtracker/u3;->c:J

    iget-wide v10, v3, Lcom/bytedance/bdtracker/u3;->c:J

    sub-long/2addr v8, v10

    iget-wide v10, v3, Lcom/bytedance/bdtracker/e4;->s:J

    sub-long/2addr v8, v10

    cmp-long v8, v8, v6

    if-gez v8, :cond_5

    goto :goto_3

    :cond_5
    iget-object v3, v0, Lcom/bytedance/bdtracker/j0;->c:Lcom/bytedance/bdtracker/e4;

    if-eqz v3, :cond_a

    iget-wide v8, v4, Lcom/bytedance/bdtracker/u3;->c:J

    iget-wide v10, v3, Lcom/bytedance/bdtracker/u3;->c:J

    sub-long/2addr v8, v10

    iget-wide v10, v3, Lcom/bytedance/bdtracker/e4;->s:J

    sub-long/2addr v8, v10

    cmp-long v6, v8, v6

    if-gez v6, :cond_a

    :goto_3
    iget-object v3, v3, Lcom/bytedance/bdtracker/e4;->u:Ljava/lang/String;

    iput-object v3, v4, Lcom/bytedance/bdtracker/e4;->t:Ljava/lang/String;

    goto :goto_4

    :cond_6
    iget-wide v6, v2, Lcom/bytedance/bdtracker/u3;->c:J

    const-wide/16 v8, 0x0

    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/bytedance/bdtracker/j0;->a(JJ)Landroid/os/Bundle;

    move-result-object v6

    if-eqz v1, :cond_7

    if-eqz v6, :cond_7

    const-string v7, "play_session"

    invoke-virtual {v1, v7, v6, v10}, Lcom/bytedance/bdtracker/d;->onEventV3(Ljava/lang/String;Landroid/os/Bundle;I)V

    :cond_7
    iget-wide v6, v4, Lcom/bytedance/bdtracker/u3;->c:J

    iput-wide v6, v0, Lcom/bytedance/bdtracker/j0;->j:J

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-boolean v3, v4, Lcom/bytedance/bdtracker/e4;->D:Z

    if-nez v3, :cond_8

    .line 27
    iput-object v4, v0, Lcom/bytedance/bdtracker/j0;->c:Lcom/bytedance/bdtracker/e4;

    goto :goto_4

    :cond_8
    iput-object v4, v0, Lcom/bytedance/bdtracker/j0;->d:Lcom/bytedance/bdtracker/e4;

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/bytedance/bdtracker/j0;->c:Lcom/bytedance/bdtracker/e4;

    goto :goto_4

    :cond_9
    instance-of v4, v2, Lcom/bytedance/bdtracker/j0$b;

    if-nez v4, :cond_a

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    invoke-virtual/range {p0 .. p2}, Lcom/bytedance/bdtracker/j0;->a(Lcom/bytedance/applog/IAppLogInstance;Lcom/bytedance/bdtracker/u3;)V

    return v5
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/j0;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/j0;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/bytedance/bdtracker/j0;->j:J

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-nez v0, :cond_0

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
