.class public Lcom/huawei/agconnect/core/a/a;
.super Loa/c;


# static fields
.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lra/a;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Loa/c;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/String;


# instance fields
.field private final a:Loa/d;

.field private final b:Lcom/huawei/agconnect/core/a/b;

.field private final c:Lcom/huawei/agconnect/core/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/huawei/agconnect/core/a/a;->e:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Loa/d;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Loa/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AGConnectInstanceImpl init"

    .line 5
    .line 6
    const-string v1, "AGC_Instance"

    .line 7
    .line 8
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/huawei/agconnect/core/a/a;->a:Loa/d;

    .line 12
    .line 13
    sget-object v0, Lcom/huawei/agconnect/core/a/a;->d:Ljava/util/List;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "please call `initialize()` first"

    .line 18
    .line 19
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance v0, Lcom/huawei/agconnect/core/a/b;

    .line 23
    .line 24
    sget-object v2, Lcom/huawei/agconnect/core/a/a;->d:Ljava/util/List;

    .line 25
    .line 26
    invoke-interface {p1}, Loa/d;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-direct {v0, v2, v3}, Lcom/huawei/agconnect/core/a/b;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/huawei/agconnect/core/a/a;->b:Lcom/huawei/agconnect/core/a/b;

    .line 34
    .line 35
    new-instance v0, Lcom/huawei/agconnect/core/a/b;

    .line 36
    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-interface {p1}, Loa/d;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-direct {v0, v2, v3}, Lcom/huawei/agconnect/core/a/b;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/huawei/agconnect/core/a/a;->c:Lcom/huawei/agconnect/core/a/b;

    .line 46
    .line 47
    instance-of v2, p1, Lqa/c;

    .line 48
    .line 49
    if-eqz v2, :cond_1

    .line 50
    .line 51
    move-object v2, p1

    .line 52
    check-cast v2, Lqa/c;

    .line 53
    .line 54
    invoke-virtual {v2}, Lqa/c;->c()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {p1}, Loa/d;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v0, v2, p1}, Lcom/huawei/agconnect/core/a/b;->c(Ljava/util/List;Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    const-string p1, "AGConnectInstanceImpl init end"

    .line 66
    .line 67
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public static f()Loa/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/agconnect/core/a/a;->f:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "DEFAULT_INSTANCE"

    .line 6
    .line 7
    :cond_0
    invoke-static {v0}, Lcom/huawei/agconnect/core/a/a;->g(Ljava/lang/String;)Loa/c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static declared-synchronized g(Ljava/lang/String;)Loa/c;
    .locals 5

    .line 1
    const-class v0, Lcom/huawei/agconnect/core/a/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/huawei/agconnect/core/a/a;->e:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Loa/c;

    .line 11
    .line 12
    if-nez v1, :cond_1

    .line 13
    .line 14
    const-string v2, "DEFAULT_INSTANCE"

    .line 15
    .line 16
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const-string p0, "AGC_Instance"

    .line 23
    .line 24
    const-string v2, "please call `initialize()` first"

    .line 25
    .line 26
    invoke-static {p0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catchall_0
    move-exception p0

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const-string v2, "AGC_Instance"

    .line 33
    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v4, "not find instance for : "

    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    :cond_1
    :goto_0
    monitor-exit v0

    .line 55
    return-object v1

    .line 56
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    throw p0
.end method

.method public static h(Loa/d;)Loa/c;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0}, Lcom/huawei/agconnect/core/a/a;->i(Loa/d;Z)Loa/c;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method private static declared-synchronized i(Loa/d;Z)Loa/c;
    .locals 3

    .line 1
    const-class v0, Lcom/huawei/agconnect/core/a/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/huawei/agconnect/core/a/a;->e:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {p0}, Loa/d;->getIdentifier()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    check-cast v2, Loa/c;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    :cond_0
    new-instance v2, Lcom/huawei/agconnect/core/a/a;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Lcom/huawei/agconnect/core/a/a;-><init>(Loa/d;)V

    .line 23
    .line 24
    .line 25
    invoke-interface {p0}, Loa/d;->getIdentifier()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    :cond_1
    monitor-exit v0

    .line 33
    return-object v2

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    throw p0
.end method

.method public static declared-synchronized j(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-class v0, Lcom/huawei/agconnect/core/a/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-string v1, "AGC_Instance"

    .line 5
    .line 6
    const-string v2, "agc sdk initialize"

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/huawei/agconnect/core/a/a;->e:Ljava/util/Map;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-lez v1, :cond_0

    .line 18
    .line 19
    const-string p0, "AGC_Instance"

    .line 20
    .line 21
    const-string v1, "Repeated invoking initialize"

    .line 22
    .line 23
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    :try_start_1
    invoke-static {p0}, Lpa/a;->b(Landroid/content/Context;)Lpa/a;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {p0, v1}, Lcom/huawei/agconnect/core/a/a;->k(Landroid/content/Context;Loa/d;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    .line 36
    .line 37
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    throw p0
.end method

.method private static declared-synchronized k(Landroid/content/Context;Loa/d;)V
    .locals 3

    .line 1
    const-class v0, Lcom/huawei/agconnect/core/a/a;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "AGC_Instance"

    .line 11
    .line 12
    const-string v2, "context.getApplicationContext null"

    .line 13
    .line 14
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    move-object p0, v1

    .line 21
    :goto_0
    invoke-static {}, Lcom/huawei/agconnect/core/a/a;->l()V

    .line 22
    .line 23
    .line 24
    sget-object v1, Lcom/huawei/agconnect/core/a/a;->d:Ljava/util/List;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    new-instance v1, Lcom/huawei/agconnect/core/a/c;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lcom/huawei/agconnect/core/a/c;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/huawei/agconnect/core/a/c;->a()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    sput-object p0, Lcom/huawei/agconnect/core/a/a;->d:Ljava/util/List;

    .line 38
    .line 39
    :cond_1
    const/4 p0, 0x1

    .line 40
    invoke-static {p1, p0}, Lcom/huawei/agconnect/core/a/a;->i(Loa/d;Z)Loa/c;

    .line 41
    .line 42
    .line 43
    invoke-interface {p1}, Loa/d;->getIdentifier()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    sput-object p0, Lcom/huawei/agconnect/core/a/a;->f:Ljava/lang/String;

    .line 48
    .line 49
    const-string p0, "AGC_Instance"

    .line 50
    .line 51
    const-string p1, "initFinish callback start"

    .line 52
    .line 53
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lsa/a;->a()V

    .line 57
    .line 58
    .line 59
    const-string p0, "AGC_Instance"

    .line 60
    .line 61
    const-string p1, "AGC SDK initialize end"

    .line 62
    .line 63
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .line 65
    .line 66
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 69
    throw p0
.end method

.method private static l()V
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/agconnect/core/a/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/huawei/agconnect/core/a/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "/agcgw/url"

    .line 7
    .line 8
    invoke-static {v1, v0}, Loa/f;->b(Ljava/lang/String;Loa/f$a;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/huawei/agconnect/core/a/a$b;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/huawei/agconnect/core/a/a$b;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "/agcgw/backurl"

    .line 17
    .line 18
    invoke-static {v1, v0}, Loa/f;->b(Ljava/lang/String;Loa/f$a;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public b()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/agconnect/core/a/a;->a:Loa/d;

    .line 2
    .line 3
    invoke-interface {v0}, Loa/d;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public d()Loa/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/agconnect/core/a/a;->a:Loa/d;

    .line 2
    .line 3
    return-object v0
.end method
