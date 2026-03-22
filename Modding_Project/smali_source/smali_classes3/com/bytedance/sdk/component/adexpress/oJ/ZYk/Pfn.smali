.class public Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;
.super Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/tB;
.source "SourceFile"


# static fields
.field private static volatile ZYk:Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;

.field private static oJ:Ljava/io/File;


# instance fields
.field private Pfn:Z

.field private ba:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private cFZ:Ljava/util/concurrent/atomic/AtomicInteger;

.field private ex:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private so:Ljava/util/concurrent/atomic/AtomicLong;

.field private tB:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/tB;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->tB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->Pfn:Z

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ba:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->cFZ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->so:Ljava/util/concurrent/atomic/AtomicLong;

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->kkU()V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method public static ZYk()Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ZYk:Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ZYk:Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ZYk:Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw v1

    .line 6
    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ZYk:Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;

    return-object v0
.end method

.method private dLZ()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->cFZ:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->so:Ljava/util/concurrent/atomic/AtomicLong;

    .line 15
    .line 16
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    sub-long/2addr v0, v2

    .line 21
    const-wide/32 v2, 0x927c0

    .line 22
    .line 23
    .line 24
    cmp-long v0, v0, v2

    .line 25
    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->cFZ()V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method private kkU()V
    .locals 2

    .line 1
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn$1;

    .line 2
    .line 3
    const-string v1, "init"

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn$1;-><init>(Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/adexpress/ex/ex;->ZYk(Lcom/bytedance/sdk/component/so/so;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->tB:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static so()Ljava/io/File;
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->oJ:Ljava/io/File;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ex;->oJ()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/io/File;

    .line 10
    .line 11
    const-string v2, "tt_tmpl_pkg"

    .line 12
    .line 13
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/io/File;

    .line 17
    .line 18
    const-string v2, "template"

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->oJ:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    :catchall_0
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->oJ:Ljava/io/File;

    .line 29
    .line 30
    return-object v0
.end method


# virtual methods
.method public Pfn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->Pfn:Z

    .line 2
    .line 3
    return v0
.end method

.method public ZYk(Z)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ba:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public ba()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/so;->ZYk()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public cFZ()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->oJ(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public ex()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/so;->ZYk()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->so()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/so;->ex()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->Pfn:Z

    .line 24
    .line 25
    :cond_2
    :goto_0
    return-void
.end method

.method public jFA()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ba:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->Pfn:Z

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public oJ()Ljava/io/File;
    .locals 1

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->so()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public oJ(Z)V
    .locals 6

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->tB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->cFZ:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    :cond_1
    return-void

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->oJ()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->tB()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;->Pfn()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    move-result-object p1

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/so;->ZYk()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_e

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->so()Z

    move-result v3

    if-nez v3, :cond_3

    goto/16 :goto_4

    .line 11
    :cond_3
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/so;->ZYk(Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->so:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void

    .line 14
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->oJ()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->tB()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 15
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->oJ()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->tB()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;->tB()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn$2;

    invoke-direct {v4, p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn$2;-><init>(Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    :cond_5
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/so;->oJ(Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;)V

    .line 17
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->Pfn()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$ZYk;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->Pfn()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$ZYk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$ZYk;->oJ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 18
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->Pfn()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$ZYk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$ZYk;->oJ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/tB;->oJ(Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    :cond_6
    move v3, v2

    .line 19
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->oJ()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-eqz v4, :cond_8

    .line 20
    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/tB;->oJ(Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_7

    move v5, v0

    goto :goto_1

    :cond_7
    move v5, v2

    goto :goto_1

    :cond_8
    const/4 v4, 0x0

    move v5, v3

    :goto_1
    if-nez v3, :cond_c

    .line 21
    invoke-virtual {p0, p1, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/tB;->ZYk(Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;)Ljava/util/List;

    move-result-object v1

    if-eqz v4, :cond_9

    if-eqz v1, :cond_9

    .line 22
    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_9
    move-object v4, v1

    :goto_2
    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    move v0, v2

    :goto_3
    if-nez v1, :cond_b

    .line 23
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_b
    move v5, v0

    :cond_c
    if-eqz v5, :cond_d

    .line 24
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 25
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/so;->oJ(Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;)V

    .line 26
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/so;->tB()V

    .line 27
    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/tB;->ZYk(Ljava/util/List;)V

    .line 28
    :cond_d
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ex()V

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->so:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 31
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->dLZ()V

    return-void

    .line 32
    :cond_e
    :goto_4
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->ex:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 p1, 0x6d

    .line 33
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/tB;->oJ(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->oJ()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/tB;->oJ(Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->Pfn()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$ZYk;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/tB;->oJ(Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ$ZYk;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->ba()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/tB;->oJ(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public tB()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/Pfn;->kkU()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
