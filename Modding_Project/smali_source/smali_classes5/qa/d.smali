.class public Lqa/d;
.super Lpa/a;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Ljava/lang/String;

.field private volatile e:Lpa/c;

.field private final f:Ljava/lang/Object;

.field private g:Loa/b;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile i:Lqa/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lpa/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lqa/d;->f:Ljava/lang/Object;

    .line 10
    .line 11
    sget-object v0, Loa/b;->b:Loa/b;

    .line 12
    .line 13
    iput-object v0, p0, Lqa/d;->g:Loa/b;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lqa/d;->h:Ljava/util/Map;

    .line 21
    .line 22
    iput-object p1, p0, Lqa/d;->c:Landroid/content/Context;

    .line 23
    .line 24
    iput-object p2, p0, Lqa/d;->d:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x2f

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    return-object p0
.end method

.method private e()V
    .locals 4

    .line 1
    const-string v0, "AGC_ConfigImpl"

    .line 2
    .line 3
    const-string v1, "initConfigReader"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lqa/d;->e:Lpa/c;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lqa/d;->f:Ljava/lang/Object;

    .line 13
    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lqa/d;->e:Lpa/c;

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    new-instance v1, Lqa/n;

    .line 20
    .line 21
    iget-object v2, p0, Lqa/d;->c:Landroid/content/Context;

    .line 22
    .line 23
    iget-object v3, p0, Lqa/d;->d:Ljava/lang/String;

    .line 24
    .line 25
    invoke-direct {v1, v2, v3}, Lqa/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lqa/d;->e:Lpa/c;

    .line 29
    .line 30
    new-instance v1, Lqa/f;

    .line 31
    .line 32
    iget-object v2, p0, Lqa/d;->e:Lpa/c;

    .line 33
    .line 34
    invoke-direct {v1, v2}, Lqa/f;-><init>(Lpa/c;)V

    .line 35
    .line 36
    .line 37
    iput-object v1, p0, Lqa/d;->i:Lqa/f;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    :goto_0
    invoke-direct {p0}, Lqa/d;->g()V

    .line 43
    .line 44
    .line 45
    monitor-exit v0

    .line 46
    goto :goto_2

    .line 47
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    throw v1

    .line 49
    :cond_1
    :goto_2
    return-void
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Loa/f;->a()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-object v2

    .line 13
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Loa/f$a;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-interface {p1, p0}, Loa/f$a;->a(Loa/d;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_1
    return-object v2
.end method

.method private g()V
    .locals 4

    .line 1
    iget-object v0, p0, Lqa/d;->g:Loa/b;

    .line 2
    .line 3
    sget-object v1, Loa/b;->b:Loa/b;

    .line 4
    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lqa/d;->e:Lpa/c;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lqa/d;->e:Lpa/c;

    .line 12
    .line 13
    const-string v1, "/region"

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-interface {v0, v1, v2}, Lpa/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lqa/d;->e:Lpa/c;

    .line 21
    .line 22
    const-string v3, "/agcgw/url"

    .line 23
    .line 24
    invoke-interface {v1, v3, v2}, Lpa/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lqa/b;->f(Ljava/lang/String;Ljava/lang/String;)Loa/b;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lqa/d;->g:Loa/b;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-string v0, "AGConnectServiceConfig"

    .line 36
    .line 37
    const-string v1, "get route fail , config not ready"

    .line 38
    .line 39
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Loa/b;
    .locals 2

    .line 1
    const-string v0, "AGC_ConfigImpl"

    .line 2
    .line 3
    const-string v1, "getRoutePolicy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lqa/d;->g:Loa/b;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Loa/b;->b:Loa/b;

    .line 13
    .line 14
    iput-object v0, p0, Lqa/d;->g:Loa/b;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lqa/d;->g:Loa/b;

    .line 17
    .line 18
    sget-object v1, Loa/b;->b:Loa/b;

    .line 19
    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lqa/d;->e:Lpa/c;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    invoke-direct {p0}, Lqa/d;->e()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lqa/d;->g:Loa/b;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move-object v1, v0

    .line 35
    :goto_0
    return-object v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lqa/d;->c:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "DEFAULT_INSTANCE"

    .line 2
    .line 3
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lqa/d;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    iget-object v0, p0, Lqa/d;->e:Lpa/c;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lqa/d;->e()V

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-static {p1}, Lqa/d;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object v0, p0, Lqa/d;->h:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/String;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    invoke-direct {p0, p1}, Lqa/d;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    return-object v0

    .line 32
    :cond_2
    iget-object v0, p0, Lqa/d;->e:Lpa/c;

    .line 33
    .line 34
    invoke-interface {v0, p1, p2}, Lpa/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p1}, Lqa/f;->c(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    iget-object v0, p0, Lqa/d;->i:Lqa/f;

    .line 45
    .line 46
    invoke-virtual {v0, p1, p2}, Lqa/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    :cond_3
    return-object p1

    .line 51
    :cond_4
    new-instance p1, Ljava/lang/NullPointerException;

    .line 52
    .line 53
    const-string p2, "path must not be null."

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method
