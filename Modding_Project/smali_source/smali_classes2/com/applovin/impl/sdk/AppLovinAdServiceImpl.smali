.class public Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdService;
.implements Lcom/applovin/impl/sdk/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;,
        Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$c;
    }
.end annotation


# instance fields
.field private final a:Lcom/applovin/impl/sdk/k;

.field private final b:Lcom/applovin/impl/sdk/o;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/util/Map;

.field private final f:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>(Lcom/applovin/impl/sdk/k;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->e:Ljava/util/Map;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 36
    .line 37
    new-instance p1, Ljava/util/HashMap;

    .line 38
    .line 39
    const/4 v0, 0x6

    .line 40
    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->c:Ljava/util/Map;

    .line 44
    .line 45
    invoke-static {}, Lcom/applovin/impl/u;->c()Lcom/applovin/impl/u;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    new-instance v1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;

    .line 50
    .line 51
    const/4 v2, 0x0

    .line 52
    invoke-direct {v1, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$a;)V

    .line 53
    .line 54
    .line 55
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/applovin/impl/u;->k()Lcom/applovin/impl/u;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;

    .line 63
    .line 64
    invoke-direct {v1, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$a;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Lcom/applovin/impl/u;->j()Lcom/applovin/impl/u;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    new-instance v1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;

    .line 75
    .line 76
    invoke-direct {v1, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$a;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/applovin/impl/u;->m()Lcom/applovin/impl/u;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    new-instance v1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;

    .line 87
    .line 88
    invoke-direct {v1, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$a;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/applovin/impl/u;->b()Lcom/applovin/impl/u;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    new-instance v1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;

    .line 99
    .line 100
    invoke-direct {v1, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$a;)V

    .line 101
    .line 102
    .line 103
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lcom/applovin/impl/u;->h()Lcom/applovin/impl/u;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;

    .line 111
    .line 112
    invoke-direct {v1, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$a;)V

    .line 113
    .line 114
    .line 115
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method private a(Lcom/applovin/impl/u;)Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;

    if-nez v1, :cond_0

    .line 138
    new-instance v1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$a;)V

    .line 139
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->c:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 140
    :cond_0
    :goto_0
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;)Lcom/applovin/impl/sdk/k;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    return-object p0
.end method

.method private a(Ljava/lang/String;JILjava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 45
    :try_start_0
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ltz p4, :cond_0

    const/16 v1, 0x64

    if-le p4, v1, :cond_1

    :cond_0
    const/4 p4, 0x0

    .line 46
    :cond_1
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 47
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "et_s"

    .line 48
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string p3, "pv"

    .line 49
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string/jumbo p3, "vid_ts"

    .line 50
    invoke-virtual {p2, p3, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string/jumbo p3, "uvs"

    .line 51
    invoke-static {p6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p3, p4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 52
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    .line 53
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p2

    goto :goto_0

    :cond_2
    return-object v0

    .line 54
    :goto_0
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p3

    const-string p4, "AppLovinAdService"

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "Unknown error parsing the video end url: "

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p4, p1, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object p1

    const-string p3, "buildVideoEndUrl"

    invoke-virtual {p1, p4, p3, p2}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;JJLjava/util/List;Ljava/lang/String;ZI)Ljava/lang/String;
    .locals 1

    .line 82
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 83
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    .line 84
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "et_ms"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 85
    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo p3, "vs_ms"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    if-eqz p6, :cond_0

    .line 86
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 87
    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ec_ms"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 88
    :cond_0
    invoke-static {p7}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 89
    const-string p2, "ds"

    invoke-virtual {p1, p2, p7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 90
    :cond_1
    sget p2, Lcom/applovin/impl/sdk/i;->h:I

    if-eq p9, p2, :cond_2

    .line 91
    invoke-static {p8}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "musw_ch"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 92
    invoke-static {p9}, Lcom/applovin/impl/sdk/i;->a(I)Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "musw_st"

    invoke-virtual {p1, p3, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 93
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/List;
    .locals 6

    .line 76
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 79
    :try_start_0
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 80
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v2

    const-string v3, "AppLovinAdService"

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to parse query parameter into Uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v2

    const-string v4, "buildDeepLinkPlusUrlList"

    invoke-virtual {v2, v3, v4, v1}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a()V
    .locals 5

    .line 94
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    const-string v1, "AppLovinAdService"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    const-string v2, "Tracking app killed during ad from previous run."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    sget-object v2, Lcom/applovin/impl/x4;->P:Lcom/applovin/impl/x4;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/k;->b(Lcom/applovin/impl/x4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 96
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 97
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    const-string v2, "Couldn\'t get last ad data. Tracking event with empty data."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v3

    goto :goto_0

    .line 98
    :cond_2
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-static {v0, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->jsonObjectFromJsonString(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 99
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->tryToStringMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0

    .line 100
    :goto_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v2

    sget-object v4, Lcom/applovin/impl/c2;->t0:Lcom/applovin/impl/c2;

    invoke-virtual {v2, v4, v0}, Lcom/applovin/impl/d2;->d(Lcom/applovin/impl/c2;Ljava/util/Map;)V

    .line 101
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    sget-object v2, Lcom/applovin/impl/x4;->O:Lcom/applovin/impl/x4;

    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/k;->b(Lcom/applovin/impl/x4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 102
    invoke-static {v0, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->jsonObjectFromJsonString(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 103
    const-string v1, "app_killed_postback_url"

    invoke-static {v0, v1, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    const-string v2, "app_killed_postback_backup_url"

    invoke-static {v0, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    sget-object v3, Lcom/applovin/impl/x4;->N:Lcom/applovin/impl/x4;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->b(Lcom/applovin/impl/x4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-eqz v2, :cond_3

    .line 106
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "imp_duration_ms"

    invoke-static {v1, v4, v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4, v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :cond_3
    new-instance v2, Lcom/applovin/impl/e;

    invoke-direct {v2, v1, v0}, Lcom/applovin/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-direct {p0, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/e;)V

    goto :goto_1

    .line 110
    :cond_4
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    const-string v2, "Unable to track app killed during ad from previous run. Missing app killed tracking URLs."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private a(Landroid/net/Uri;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/a;Landroid/content/Context;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-static {p1, p2, p5, v0}, Lcom/applovin/impl/h7;->b(Landroid/net/Uri;Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;Lcom/applovin/impl/sdk/k;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p4}, Lcom/applovin/impl/adview/a;->e()Lcom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lcom/applovin/impl/q2;->b(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    .line 58
    :cond_0
    invoke-virtual {p4}, Lcom/applovin/impl/adview/a;->w()V

    return-void
.end method

.method private a(Landroid/net/Uri;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/a;Landroid/content/Context;Lcom/applovin/impl/sdk/k;)V
    .locals 12

    move-object v9, p0

    move-object v0, p1

    const-string v1, "AppLovinAdService"

    if-eqz v0, :cond_3

    .line 59
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 60
    const-string v2, "primaryUrl"

    invoke-direct {p0, p1, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 61
    const-string v3, "primaryTrackingUrl"

    invoke-direct {p0, p1, v3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 62
    const-string v4, "fallbackUrl"

    invoke-direct {p0, p1, v4}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 63
    const-string v4, "fallbackTrackingUrl"

    invoke-direct {p0, p1, v4}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Landroid/net/Uri;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    if-nez v2, :cond_1

    if-nez v10, :cond_1

    .line 64
    invoke-virtual/range {p6 .. p6}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p6 .. p6}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v2, "Failed to parse both primary and backup URLs for Deep Link+ command"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 65
    :cond_1
    const-string v4, "primary"

    move-object v0, p0

    move-object v1, v2

    move-object v2, v4

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/a;Landroid/content/Context;Lcom/applovin/impl/sdk/k;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    const-string v2, "backup"

    move-object v0, p0

    move-object v1, v10

    move-object v3, v11

    move-object v4, p2

    move-object v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/a;Landroid/content/Context;Lcom/applovin/impl/sdk/k;)Z

    :cond_2
    if-eqz p4, :cond_4

    .line 67
    invoke-virtual/range {p4 .. p4}, Lcom/applovin/impl/adview/a;->w()V

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual/range {p6 .. p6}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual/range {p6 .. p6}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    const-string v2, "Failed to execute Deep Link+ command - no query parameters found"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Lcom/applovin/impl/e;)V
    .locals 4

    .line 111
    invoke-virtual {p1}, Lcom/applovin/impl/e;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    invoke-virtual {p1}, Lcom/applovin/impl/e;->c()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-virtual {p1}, Lcom/applovin/impl/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/applovin/impl/e;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 114
    :goto_0
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->f0()Lcom/applovin/impl/sdk/network/b;

    move-result-object v2

    invoke-static {}, Lcom/applovin/impl/sdk/network/d;->b()Lcom/applovin/impl/sdk/network/d$b;

    move-result-object v3

    .line 115
    invoke-virtual {v3, v0}, Lcom/applovin/impl/sdk/network/d$b;->d(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/d$b;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/d$b;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/d$b;

    move-result-object v0

    .line 117
    invoke-virtual {p1}, Lcom/applovin/impl/e;->b()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/d$b;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/d$b;

    move-result-object v0

    const/4 v1, 0x0

    .line 118
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/network/d$b;->a(Z)Lcom/applovin/impl/sdk/network/d$b;

    move-result-object v0

    .line 119
    invoke-virtual {p1}, Lcom/applovin/impl/e;->d()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/network/d$b;->b(Z)Lcom/applovin/impl/sdk/network/d$b;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/network/d$b;->a()Lcom/applovin/impl/sdk/network/d;

    move-result-object p1

    .line 121
    invoke-virtual {v2, p1}, Lcom/applovin/impl/sdk/network/b;->e(Lcom/applovin/impl/sdk/network/d;)V

    goto :goto_1

    .line 122
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    const-string v0, "AppLovinAdService"

    const-string v1, "Requested a postback dispatch for a null URL; nothing to do..."

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Lcom/applovin/impl/g5;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->C0()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    const-string v0, "AppLovinSdk"

    const-string v1, "Attempted to load ad before SDK initialization. Please wait until after the SDK has initialized, e.g. AppLovinSdk.initializeSdk(Context, SdkInitializationListener)."

    invoke-static {v0, v1}, Lcom/applovin/impl/sdk/o;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->c()V

    .line 26
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/b6$b;->a:Lcom/applovin/impl/b6$b;

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;)V

    return-void
.end method

.method private static synthetic a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$c;Lcom/applovin/impl/sdk/ad/b;)V
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$c;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$c;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/ad/b;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 133
    new-instance p2, Lcom/applovin/impl/sdk/u;

    invoke-direct {p2, p1, p3}, Lcom/applovin/impl/sdk/u;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$c;Lcom/applovin/impl/sdk/ad/b;)V

    invoke-static {p2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 134
    :cond_0
    new-instance p3, Lcom/applovin/impl/w5;

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-direct {p3, p2, p1, v0}, Lcom/applovin/impl/w5;-><init>(Lcom/applovin/impl/u;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/k;)V

    .line 135
    invoke-direct {p0, p3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/g5;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/impl/sdk/AppLovinError;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b(Lcom/applovin/impl/sdk/AppLovinError;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/impl/sdk/ad/b;Landroid/net/Uri;Landroid/content/Context;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/ad/b;Landroid/net/Uri;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/a;Landroid/net/Uri;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/a;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public static synthetic a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdLoadListener;Lorg/json/JSONObject;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/ad/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/sdk/AppLovinAdLoadListener;Lorg/json/JSONObject;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/ad/b;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/impl/sdk/AppLovinError;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 3

    .line 31
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->c(Lcom/applovin/impl/sdk/AppLovinError;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 32
    const-string v0, "Unable to notify listener about ad load failure"

    const-string v1, "AppLovinAdService"

    invoke-static {v1, v0, p1}, Lcom/applovin/impl/sdk/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyAdLoadFailedCallback"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of p2, p2, Lcom/applovin/impl/l2;

    if-eqz p2, :cond_0

    const-string p2, "V2"

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 34
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object v0

    invoke-virtual {v0, v1, p2, p1}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/ad/b;Landroid/net/Uri;Landroid/content/Context;)V
    .locals 8

    .line 35
    invoke-static {p2}, Lcom/applovin/impl/h7;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v7, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Landroid/net/Uri;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/a;Landroid/content/Context;Lcom/applovin/impl/sdk/k;)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-static {p2, p1, p3, v0}, Lcom/applovin/impl/h7;->b(Landroid/net/Uri;Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;Lcom/applovin/impl/sdk/k;)Z

    :goto_0
    return-void
.end method

.method private a(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/a;Landroid/net/Uri;)V
    .locals 8

    .line 38
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/v4;->x:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-static {p2, v0}, Lcom/applovin/impl/b8;->b(Landroid/view/View;Lcom/applovin/impl/sdk/k;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    move-object v6, v0

    goto :goto_1

    .line 40
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 42
    :goto_1
    invoke-static {p4}, Lcom/applovin/impl/h7;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    iget-object v7, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v7}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Landroid/net/Uri;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/a;Landroid/content/Context;Lcom/applovin/impl/sdk/k;)V

    goto :goto_2

    :cond_2
    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 44
    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Landroid/net/Uri;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/a;Landroid/content/Context;)V

    :goto_2
    return-void
.end method

.method private a(Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$c;)V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->i()Lcom/applovin/impl/sdk/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/e;->e(Lcom/applovin/impl/u;)Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->isExpired()Z

    move-result v1

    if-nez v1, :cond_1

    .line 125
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using pre-loaded ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AppLovinAdService"

    invoke-virtual {v1, v2, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_0
    invoke-virtual {p2, v0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$c;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    goto :goto_0

    .line 127
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/impl/u;->d()Lcom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    sget-object v2, Lcom/applovin/impl/v4;->W0:Lcom/applovin/impl/v4;

    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/applovin/mediation/MaxAdFormat;->isFullscreenAd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->h()Lcom/applovin/impl/sdk/d;

    move-result-object v0

    new-instance v1, Lcom/applovin/impl/sdk/x;

    invoke-direct {v1, p0, p2, p1}, Lcom/applovin/impl/sdk/x;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$c;Lcom/applovin/impl/u;)V

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/d;->a(Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/d$a;)V

    goto :goto_0

    .line 130
    :cond_2
    new-instance v0, Lcom/applovin/impl/w5;

    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-direct {v0, p1, p2, v1}, Lcom/applovin/impl/w5;-><init>(Lcom/applovin/impl/u;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/k;)V

    .line 131
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/g5;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/applovin/impl/u;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 3

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 11
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading next ad of zone {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinAdService"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/u;)Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;

    move-result-object v0

    .line 13
    iget-object v1, v0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v2, v0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;->d:Ljava/util/Collection;

    invoke-interface {v2, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 15
    iget-boolean p2, v0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;->b:Z

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 16
    iput-boolean p2, v0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;->b:Z

    .line 17
    new-instance p2, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$c;

    const/4 v2, 0x0

    invoke-direct {p2, p0, v0, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$c;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$a;)V

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$c;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 19
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    const-string p2, "AppLovinAdService"

    const-string v0, "Already waiting on an ad load..."

    invoke-virtual {p1, p2, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_2
    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 21
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No callback specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No zone specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 1

    .line 27
    new-instance v0, Lcom/applovin/impl/sdk/s;

    invoke-direct {v0, p0, p2, p1}, Lcom/applovin/impl/sdk/s;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/sdk/AppLovinAd;)V

    const/4 p1, 0x1

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private static synthetic a(Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/ad/b;)V
    .locals 0

    .line 7
    invoke-interface {p0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method private synthetic a(Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    .line 28
    :try_start_0
    invoke-interface {p1, p2}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 29
    const-string p2, "Unable to notify listener about a newly loaded ad"

    const-string v0, "AppLovinAdService"

    invoke-static {v0, p2, p1}, Lcom/applovin/impl/sdk/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    iget-object p2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object p2

    const-string v1, "notifyAdLoadedCallback"

    invoke-virtual {p2, v0, v1, p1}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthetic a(Lcom/applovin/sdk/AppLovinAdLoadListener;Lorg/json/JSONObject;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/ad/b;)V
    .locals 1

    if-eqz p4, :cond_0

    .line 8
    new-instance p2, Lcom/applovin/impl/sdk/v;

    invoke-direct {p2, p1, p4}, Lcom/applovin/impl/sdk/v;-><init>(Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/ad/b;)V

    invoke-static {p2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p4, Lcom/applovin/impl/c6;

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-direct {p4, p2, p3, p1, v0}, Lcom/applovin/impl/c6;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/u;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/k;)V

    .line 10
    invoke-direct {p0, p4}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/g5;)V

    :goto_0
    return-void
.end method

.method private a(Landroid/net/Uri;Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/a;Landroid/content/Context;Lcom/applovin/impl/sdk/k;)Z
    .locals 4

    .line 69
    invoke-virtual {p8}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    const-string v1, "AppLovinAdService"

    if-eqz v0, :cond_0

    invoke-virtual {p8}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Opening "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " URL: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_0
    invoke-static {p1, p4, p7, p8}, Lcom/applovin/impl/h7;->b(Landroid/net/Uri;Lcom/applovin/impl/sdk/ad/b;Landroid/content/Context;Lcom/applovin/impl/sdk/k;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 71
    invoke-virtual {p8}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p8}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p2

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "URL opened successfully, dispatching tracking URLs: "

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p2, v1, p7}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_1
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    .line 73
    invoke-virtual {p8}, Lcom/applovin/impl/sdk/k;->g0()Lcom/applovin/impl/sdk/network/PostbackServiceImpl;

    move-result-object p7

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    invoke-virtual {p7, p3, v0}, Lcom/applovin/impl/sdk/network/PostbackServiceImpl;->dispatchPostbackAsync(Ljava/lang/String;Lcom/applovin/sdk/AppLovinPostbackListener;)V

    goto :goto_0

    :cond_2
    if-eqz p6, :cond_4

    .line 74
    invoke-virtual {p6}, Lcom/applovin/impl/adview/a;->e()Lcom/applovin/adview/AppLovinAdViewEventListener;

    move-result-object p2

    invoke-static {p2, p4, p5}, Lcom/applovin/impl/q2;->b(Lcom/applovin/adview/AppLovinAdViewEventListener;Lcom/applovin/sdk/AppLovinAd;Lcom/applovin/adview/AppLovinAdView;)V

    goto :goto_1

    .line 75
    :cond_3
    invoke-virtual {p8}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p8}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object p2

    const-string p3, "URL failed to open"

    invoke-virtual {p2, v1, p3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return p1
.end method

.method private b(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    .line 4
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    const-string v1, "AppLovinAdService"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse query parameter into Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object p2

    const-string v0, "buildDeepLinkPlusUrl"

    invoke-virtual {p2, v1, v0, p1}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic b(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;)Lcom/applovin/impl/sdk/o;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    return-object p0
.end method

.method public static synthetic b(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/impl/sdk/AppLovinError;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/AppLovinError;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method private b(Lcom/applovin/impl/sdk/AppLovinError;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 1

    .line 3
    new-instance v0, Lcom/applovin/impl/sdk/w;

    invoke-direct {v0, p0, p1, p2}, Lcom/applovin/impl/sdk/w;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/impl/sdk/AppLovinError;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    const/4 p1, 0x1

    invoke-static {p1, v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(ZLjava/lang/Runnable;)V

    return-void
.end method

.method private b()Z
    .locals 5

    .line 7
    invoke-static {}, Lcom/applovin/impl/o0;->b()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 8
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    move-result-object v0

    .line 9
    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v0, v3, v1}, Landroidx/work/impl/utils/a;->a(Landroid/app/ActivityManager;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroidx/work/impl/utils/b;->a(Ljava/lang/Object;)Landroid/app/ApplicationExitInfo;

    move-result-object v0

    .line 12
    invoke-static {v0}, Landroidx/work/impl/utils/c;->a(Landroid/app/ApplicationExitInfo;)I

    move-result v2

    const/16 v4, 0xa

    if-eq v2, v4, :cond_2

    invoke-static {v0}, Landroidx/work/impl/utils/c;->a(Landroid/app/ApplicationExitInfo;)I

    move-result v0

    const/16 v2, 0xb

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    :goto_0
    return v1
.end method

.method public static synthetic c(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$c;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/ad/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$c;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/ad/b;)V

    return-void
.end method

.method private c(Lcom/applovin/impl/sdk/AppLovinError;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 1

    .line 2
    instance-of v0, p2, Lcom/applovin/impl/l2;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Lcom/applovin/impl/l2;

    invoke-interface {p2, p1}, Lcom/applovin/impl/l2;->failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinError;->getCode()I

    move-result p1

    invoke-interface {p2, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    :goto_0
    return-void
.end method

.method public static synthetic d(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$c;Lcom/applovin/impl/sdk/ad/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$c;Lcom/applovin/impl/sdk/ad/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/ad/b;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/ad/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/sdk/AppLovinAd;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public addCustomQueryParams(Ljava/util/Map;)V
    .locals 1
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
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->e:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public collectBidToken(Lcom/applovin/sdk/AppLovinBidTokenCollectionListener;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "collectBidToken(listener="

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, ")"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "AppLovinAdService"

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->B()Lcom/applovin/impl/sdk/l;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/l;->a(Lcom/applovin/sdk/AppLovinBidTokenCollectionListener;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public dequeueAd(Lcom/applovin/impl/u;)Lcom/applovin/sdk/AppLovinAd;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->i()Lcom/applovin/impl/sdk/e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/e;->a(Lcom/applovin/impl/u;)Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "Dequeued ad: "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v3, " for zone: "

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string p1, "..."

    .line 41
    .line 42
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string v2, "AppLovinAdService"

    .line 50
    .line 51
    invoke-virtual {v1, v2, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-object v0
.end method

.method public getAndResetCustomPostBody()Lorg/json/JSONObject;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lorg/json/JSONObject;

    .line 9
    .line 10
    return-object v0
.end method

.method public getAndResetCustomQueryParams()Ljava/util/Map;
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
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->e:Ljava/util/Map;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->e:Ljava/util/Map;

    .line 5
    .line 6
    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->e:Ljava/util/Map;

    .line 11
    .line 12
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 13
    .line 14
    .line 15
    monitor-exit v0

    .line 16
    return-object v1

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public getBidToken()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "AppLovinAdService"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 10
    .line 11
    const-string v2, "getBidToken()"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->B()Lcom/applovin/impl/sdk/l;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/l;->G()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 46
    .line 47
    const-string v3, "Successfully retrieved bid token"

    .line 48
    .line 49
    invoke-virtual {v0, v1, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-object v2
.end method

.method public loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-static {p1, v0}, Lcom/applovin/impl/u;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;)Lcom/applovin/impl/u;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/u;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public loadNextAd(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 3

    .line 2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading next ad of zone {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "} with size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinAdService"

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    sget-object v0, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    invoke-static {p2, v0, p1}, Lcom/applovin/impl/u;->a(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdType;Ljava/lang/String;)Lcom/applovin/impl/u;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/u;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    return-void
.end method

.method public loadNextAdForAdToken(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, -0x8

    .line 14
    const-string v2, "AppLovinAdService"

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string p1, "Empty ad token"

    .line 19
    .line 20
    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lcom/applovin/impl/sdk/AppLovinError;

    .line 24
    .line 25
    invoke-direct {v0, v1, p1}, Lcom/applovin/impl/sdk/AppLovinError;-><init>(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->c(Lcom/applovin/impl/sdk/AppLovinError;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_1
    new-instance v0, Lcom/applovin/impl/k;

    .line 33
    .line 34
    iget-object v3, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 35
    .line 36
    invoke-direct {v0, p1, v3}, Lcom/applovin/impl/k;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/k;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/applovin/impl/k;->c()Lcom/applovin/impl/k$a;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget-object v3, Lcom/applovin/impl/k$a;->c:Lcom/applovin/impl/k$a;

    .line 44
    .line 45
    if-ne p1, v3, :cond_3

    .line 46
    .line 47
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v3, "Loading next ad for token: "

    .line 61
    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {p1, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    new-instance p1, Lcom/applovin/impl/y5;

    .line 76
    .line 77
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 78
    .line 79
    invoke-direct {p1, v0, p2, v1}, Lcom/applovin/impl/y5;-><init>(Lcom/applovin/impl/k;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/k;)V

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/g5;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_3
    invoke-virtual {v0}, Lcom/applovin/impl/k;->c()Lcom/applovin/impl/k$a;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    sget-object v3, Lcom/applovin/impl/k$a;->d:Lcom/applovin/impl/k$a;

    .line 92
    .line 93
    if-ne p1, v3, :cond_9

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/applovin/impl/k;->a()Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_8

    .line 100
    .line 101
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 102
    .line 103
    invoke-static {p1, v1}, Lcom/applovin/impl/r0;->c(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 107
    .line 108
    invoke-static {p1, v1}, Lcom/applovin/impl/r0;->b(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    .line 109
    .line 110
    .line 111
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 112
    .line 113
    invoke-static {p1, v1}, Lcom/applovin/impl/r0;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    .line 114
    .line 115
    .line 116
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 117
    .line 118
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->m()Lcom/applovin/impl/sdk/h;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/h;->a()V

    .line 123
    .line 124
    .line 125
    new-instance v1, Lorg/json/JSONArray;

    .line 126
    .line 127
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v3, "ads"

    .line 131
    .line 132
    invoke-static {p1, v3, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-lez v1, :cond_6

    .line 141
    .line 142
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-eqz v1, :cond_4

    .line 147
    .line 148
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 149
    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v4, "Rendering ad for token: "

    .line 156
    .line 157
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 171
    .line 172
    invoke-static {p1, v0}, Lcom/applovin/impl/k7;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)Lcom/applovin/impl/u;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/applovin/impl/u;->d()Lcom/applovin/mediation/MaxAdFormat;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 181
    .line 182
    sget-object v3, Lcom/applovin/impl/v4;->W0:Lcom/applovin/impl/v4;

    .line 183
    .line 184
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    check-cast v2, Ljava/lang/Boolean;

    .line 189
    .line 190
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 191
    .line 192
    .line 193
    move-result v2

    .line 194
    if-eqz v2, :cond_5

    .line 195
    .line 196
    if-eqz v1, :cond_5

    .line 197
    .line 198
    invoke-virtual {v1}, Lcom/applovin/mediation/MaxAdFormat;->isFullscreenAd()Z

    .line 199
    .line 200
    .line 201
    move-result v1

    .line 202
    if-eqz v1, :cond_5

    .line 203
    .line 204
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 205
    .line 206
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->h()Lcom/applovin/impl/sdk/d;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    new-instance v2, Lcom/applovin/impl/sdk/t;

    .line 211
    .line 212
    invoke-direct {v2, p0, p2, p1, v0}, Lcom/applovin/impl/sdk/t;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/sdk/AppLovinAdLoadListener;Lorg/json/JSONObject;Lcom/applovin/impl/u;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/d;->a(Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/d$a;)V

    .line 216
    .line 217
    .line 218
    goto :goto_1

    .line 219
    :cond_5
    new-instance v1, Lcom/applovin/impl/c6;

    .line 220
    .line 221
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 222
    .line 223
    invoke-direct {v1, p1, v0, p2, v2}, Lcom/applovin/impl/c6;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/u;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/k;)V

    .line 224
    .line 225
    .line 226
    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/g5;)V

    .line 227
    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_6
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 231
    .line 232
    .line 233
    move-result p1

    .line 234
    if-eqz p1, :cond_7

    .line 235
    .line 236
    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 237
    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    .line 239
    .line 240
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .line 242
    .line 243
    const-string v3, "No ad returned from the server for token: "

    .line 244
    .line 245
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {p1, v2, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    :cond_7
    sget-object p1, Lcom/applovin/impl/sdk/AppLovinError;->NO_FILL:Lcom/applovin/impl/sdk/AppLovinError;

    .line 259
    .line 260
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->c(Lcom/applovin/impl/sdk/AppLovinError;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 261
    .line 262
    .line 263
    goto :goto_1

    .line 264
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    const-string v3, "Unable to retrieve ad response JSON from token: "

    .line 270
    .line 271
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {v0}, Lcom/applovin/impl/k;->b()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    new-instance v0, Lcom/applovin/impl/sdk/AppLovinError;

    .line 286
    .line 287
    invoke-direct {v0, v1, p1}, Lcom/applovin/impl/sdk/AppLovinError;-><init>(ILjava/lang/String;)V

    .line 288
    .line 289
    .line 290
    invoke-static {v2, p1}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    invoke-direct {p0, v0, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->c(Lcom/applovin/impl/sdk/AppLovinError;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 294
    .line 295
    .line 296
    goto :goto_1

    .line 297
    :cond_9
    new-instance p1, Lcom/applovin/impl/sdk/AppLovinError;

    .line 298
    .line 299
    const-string v0, "Invalid token type"

    .line 300
    .line 301
    invoke-direct {p1, v1, v0}, Lcom/applovin/impl/sdk/AppLovinError;-><init>(ILjava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-static {v2, v0}, Lcom/applovin/impl/sdk/o;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->c(Lcom/applovin/impl/sdk/AppLovinError;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 308
    .line 309
    .line 310
    :goto_1
    return-void
.end method

.method public loadNextAdForZoneId(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Loading next ad of zone {"

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string/jumbo v2, "}"

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "AppLovinAdService"

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static {p1}, Lcom/applovin/impl/u;->a(Ljava/lang/String;)Lcom/applovin/impl/u;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/u;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string p2, "No zone id specified"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
.end method

.method public loadNextIncentivizedAd(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "Loading next incentivized ad of zone {"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string/jumbo v2, "}"

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "AppLovinAdService"

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-static {p1}, Lcom/applovin/impl/u;->b(Ljava/lang/String;)Lcom/applovin/impl/u;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/u;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public maybeFireAppKilledWhilePlayingAdPostback()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    sget-object v1, Lcom/applovin/impl/v4;->v2:Lcom/applovin/impl/v4;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

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
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 19
    .line 20
    sget-object v1, Lcom/applovin/impl/x4;->M:Lcom/applovin/impl/x4;

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->b(Lcom/applovin/impl/x4;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Long;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    sub-long/2addr v1, v3

    .line 40
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 41
    .line 42
    sget-object v3, Lcom/applovin/impl/v4;->z2:Lcom/applovin/impl/v4;

    .line 43
    .line 44
    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Long;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    cmp-long v0, v1, v3

    .line 55
    .line 56
    if-gtz v0, :cond_3

    .line 57
    .line 58
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 59
    .line 60
    sget-object v1, Lcom/applovin/impl/v4;->y2:Lcom/applovin/impl/v4;

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/Boolean;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    invoke-direct {p0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    invoke-direct {p0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a()V

    .line 82
    .line 83
    .line 84
    :cond_3
    return-void
.end method

.method public maybeSubmitPersistentPostbacks(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/applovin/impl/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/applovin/impl/e;

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/e;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public onAdExpired(Lcom/applovin/impl/s1;)V
    .locals 6

    .line 1
    check-cast p1, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdZone()Lcom/applovin/impl/u;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, "Ad expired for zone: "

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const-string v3, "AppLovinAdService"

    .line 33
    .line 34
    invoke-virtual {v1, v3, v2}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->i()Lcom/applovin/impl/sdk/e;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1, p1}, Lcom/applovin/impl/sdk/e;->b(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->H0()Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-nez p1, :cond_5

    .line 53
    .line 54
    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 55
    .line 56
    sget-object v1, Lcom/applovin/impl/v4;->c1:Lcom/applovin/impl/v4;

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Ljava/lang/Boolean;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-nez p1, :cond_1

    .line 69
    .line 70
    goto :goto_3

    .line 71
    :cond_1
    invoke-direct {p0, v0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/u;)Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object v1, p1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;->a:Ljava/lang/Object;

    .line 76
    .line 77
    monitor-enter v1

    .line 78
    :try_start_0
    iget-boolean v2, p1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;->b:Z

    .line 79
    .line 80
    if-nez v2, :cond_3

    .line 81
    .line 82
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_2

    .line 92
    .line 93
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 94
    .line 95
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->O()Lcom/applovin/impl/sdk/o;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const-string v3, "AppLovinAdService"

    .line 100
    .line 101
    new-instance v4, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v5, "Reloading ad after expiration for zone {"

    .line 107
    .line 108
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string/jumbo v5, "}..."

    .line 115
    .line 116
    .line 117
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :catchall_0
    move-exception p1

    .line 129
    goto :goto_2

    .line 130
    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 131
    iput-boolean v2, p1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;->b:Z

    .line 132
    .line 133
    iput-boolean v2, p1, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;->c:Z

    .line 134
    .line 135
    new-instance v2, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$c;

    .line 136
    .line 137
    const/4 v3, 0x0

    .line 138
    invoke-direct {v2, p0, p1, v3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$c;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$d;Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$a;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, v0, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$c;)V

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_3
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_4

    .line 150
    .line 151
    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 152
    .line 153
    const-string v0, "AppLovinAdService"

    .line 154
    .line 155
    const-string v2, "Cancelled expired ad reload. Already waiting on an ad load..."

    .line 156
    .line 157
    invoke-virtual {p1, v0, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    :cond_4
    :goto_1
    monitor-exit v1

    .line 161
    return-void

    .line 162
    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    throw p1

    .line 164
    :cond_5
    :goto_3
    return-void
.end method

.method public setCustomPostBody(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AppLovinAdService{adLoadStates="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->c:Ljava/util/Map;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x7d

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public trackAndLaunchClick(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/a;Landroid/net/Uri;Landroid/view/MotionEvent;Landroid/os/Bundle;)V
    .locals 7
    .param p5    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "AppLovinAdService"

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 12
    .line 13
    const-string p2, "Unable to track ad view click. No ad specified"

    .line 14
    .line 15
    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    if-eqz p6, :cond_2

    .line 20
    .line 21
    const-string v1, "skip_click_tracking"

    .line 22
    .line 23
    invoke-virtual {p6, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 34
    .line 35
    .line 36
    move-result p5

    .line 37
    if-eqz p5, :cond_5

    .line 38
    .line 39
    iget-object p5, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 40
    .line 41
    const-string v1, "Skipping tracking for click on an ad..."

    .line 42
    .line 43
    invoke-virtual {p5, v0, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 54
    .line 55
    const-string v2, "Tracking click on an ad..."

    .line 56
    .line 57
    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    const/4 v1, 0x0

    .line 61
    if-eqz p6, :cond_4

    .line 62
    .line 63
    const-string v2, "install_click"

    .line 64
    .line 65
    invoke-virtual {p6, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    if-eqz v2, :cond_4

    .line 74
    .line 75
    const/4 v2, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_4
    move v2, v1

    .line 78
    :goto_0
    invoke-virtual {p1, p5, v2}, Lcom/applovin/impl/sdk/ad/b;->a(Landroid/view/MotionEvent;Z)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {p0, v3}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->maybeSubmitPersistentPostbacks(Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 86
    .line 87
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->h0()Lcom/applovin/impl/sdk/r;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    if-eqz v3, :cond_5

    .line 92
    .line 93
    invoke-virtual {p1, p5, v1, v2}, Lcom/applovin/impl/sdk/ad/b;->d(Landroid/view/MotionEvent;ZZ)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 98
    .line 99
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->h0()Lcom/applovin/impl/sdk/r;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2, v1, p5}, Lcom/applovin/impl/sdk/r;->b(Ljava/util/List;Landroid/view/InputEvent;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    :goto_1
    if-eqz p2, :cond_7

    .line 107
    .line 108
    if-eqz p4, :cond_7

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->isDirectDownloadEnabled()Z

    .line 111
    .line 112
    .line 113
    move-result p5

    .line 114
    if-eqz p5, :cond_6

    .line 115
    .line 116
    iget-object p5, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 117
    .line 118
    invoke-virtual {p5}, Lcom/applovin/impl/sdk/k;->p()Lcom/applovin/impl/sdk/array/ArrayService;

    .line 119
    .line 120
    .line 121
    move-result-object p5

    .line 122
    new-instance v6, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;

    .line 123
    .line 124
    move-object v0, v6

    .line 125
    move-object v1, p0

    .line 126
    move-object v2, p3

    .line 127
    move-object v3, p1

    .line 128
    move-object v4, p2

    .line 129
    move-object v5, p4

    .line 130
    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$b;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/impl/adview/a;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/adview/AppLovinAdView;Landroid/net/Uri;)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p5, p1, p6, v6}, Lcom/applovin/impl/sdk/array/ArrayService;->startDirectInstallOrDownloadProcess(Lcom/applovin/impl/sdk/array/ArrayDirectDownloadAd;Landroid/os/Bundle;Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_6
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/adview/AppLovinAdView;Lcom/applovin/impl/adview/a;Landroid/net/Uri;)V

    .line 138
    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_7
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    if-eqz p1, :cond_8

    .line 146
    .line 147
    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 148
    .line 149
    const-string p2, "Unable to launch click - adView has been prematurely destroyed"

    .line 150
    .line 151
    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    :cond_8
    :goto_2
    return-void
.end method

.method public trackAndLaunchVideoClick(Lcom/applovin/impl/sdk/ad/b;Landroid/net/Uri;Landroid/view/MotionEvent;Landroid/os/Bundle;Lcom/applovin/impl/v1;Landroid/content/Context;)V
    .locals 7
    .param p4    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "AppLovinAdService"

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 12
    .line 13
    const-string p2, "Unable to track video click. No ad specified"

    .line 14
    .line 15
    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    if-eqz p4, :cond_2

    .line 20
    .line 21
    const-string v1, "skip_click_tracking"

    .line 22
    .line 23
    invoke-virtual {p4, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    if-eqz p3, :cond_5

    .line 38
    .line 39
    iget-object p3, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 40
    .line 41
    const-string v1, "Skipping tracking for VIDEO click on an ad..."

    .line 42
    .line 43
    invoke-virtual {p3, v0, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_3

    .line 52
    .line 53
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 54
    .line 55
    const-string v2, "Tracking VIDEO click on an ad..."

    .line 56
    .line 57
    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    const/4 v0, 0x1

    .line 61
    if-eqz p4, :cond_4

    .line 62
    .line 63
    const-string v1, "install_click"

    .line 64
    .line 65
    invoke-virtual {p4, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    move v1, v0

    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const/4 v1, 0x0

    .line 78
    :goto_0
    invoke-virtual {p1, p3, v1}, Lcom/applovin/impl/sdk/ad/b;->b(Landroid/view/MotionEvent;Z)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-virtual {p0, v2}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->maybeSubmitPersistentPostbacks(Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    iget-object v2, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 86
    .line 87
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->h0()Lcom/applovin/impl/sdk/r;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    if-eqz v2, :cond_5

    .line 92
    .line 93
    invoke-virtual {p1, p3, v0, v1}, Lcom/applovin/impl/sdk/ad/b;->d(Landroid/view/MotionEvent;ZZ)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->h0()Lcom/applovin/impl/sdk/r;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1, v0, p3}, Lcom/applovin/impl/sdk/r;->b(Ljava/util/List;Landroid/view/InputEvent;)V

    .line 104
    .line 105
    .line 106
    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->isDirectDownloadEnabled()Z

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    if-eqz p3, :cond_6

    .line 111
    .line 112
    iget-object p3, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 113
    .line 114
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/k;->p()Lcom/applovin/impl/sdk/array/ArrayService;

    .line 115
    .line 116
    .line 117
    move-result-object p3

    .line 118
    new-instance v6, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$a;

    .line 119
    .line 120
    move-object v0, v6

    .line 121
    move-object v1, p0

    .line 122
    move-object v2, p5

    .line 123
    move-object v3, p1

    .line 124
    move-object v4, p2

    .line 125
    move-object v5, p6

    .line 126
    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl$a;-><init>(Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;Lcom/applovin/impl/v1;Lcom/applovin/impl/sdk/ad/b;Landroid/net/Uri;Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p3, p1, p4, v6}, Lcom/applovin/impl/sdk/array/ArrayService;->startDirectInstallOrDownloadProcess(Lcom/applovin/impl/sdk/array/ArrayDirectDownloadAd;Landroid/os/Bundle;Lcom/applovin/impl/sdk/array/ArrayService$DirectDownloadListener;)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_6
    invoke-direct {p0, p1, p2, p6}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/sdk/ad/b;Landroid/net/Uri;Landroid/content/Context;)V

    .line 134
    .line 135
    .line 136
    :goto_2
    return-void
.end method

.method public trackCustomTabsNavigationAborted(Lcom/applovin/impl/sdk/ad/b;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    const-string v1, "AppLovinAdService"

    .line 10
    .line 11
    const-string v2, "Tracking Custom Tabs navigation aborted on ad..."

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->w()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->maybeSubmitPersistentPostbacks(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public trackCustomTabsNavigationFailed(Lcom/applovin/impl/sdk/ad/b;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    const-string v1, "AppLovinAdService"

    .line 10
    .line 11
    const-string v2, "Tracking Custom Tabs navigation failed on ad..."

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->x()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->maybeSubmitPersistentPostbacks(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public trackCustomTabsNavigationFinished(Lcom/applovin/impl/sdk/ad/b;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    const-string v1, "AppLovinAdService"

    .line 10
    .line 11
    const-string v2, "Tracking Custom Tabs navigation finished on ad..."

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->y()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->maybeSubmitPersistentPostbacks(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public trackCustomTabsNavigationStarted(Lcom/applovin/impl/sdk/ad/b;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    const-string v1, "AppLovinAdService"

    .line 10
    .line 11
    const-string v2, "Tracking Custom Tabs navigation started on ad..."

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->z()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->maybeSubmitPersistentPostbacks(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public trackCustomTabsTabHidden(Lcom/applovin/impl/sdk/ad/b;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    const-string v1, "AppLovinAdService"

    .line 10
    .line 11
    const-string v2, "Tracking Custom Tabs tab hidden on ad..."

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->B()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->maybeSubmitPersistentPostbacks(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public trackCustomTabsTabShown(Lcom/applovin/impl/sdk/ad/b;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    const-string v1, "AppLovinAdService"

    .line 10
    .line 11
    const-string v2, "Tracking Custom Tabs tab shown on ad..."

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->C()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->maybeSubmitPersistentPostbacks(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public trackFullScreenAdClosed(Lcom/applovin/impl/sdk/ad/b;JLjava/util/List;JZI)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/applovin/impl/sdk/ad/b;",
            "J",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;JZI)V"
        }
    .end annotation

    .line 1
    move-object v10, p0

    .line 2
    const-string v11, "AppLovinAdService"

    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v10, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 13
    .line 14
    const-string v1, "Unable to track ad closed. No ad specified."

    .line 15
    .line 16
    invoke-virtual {v0, v11, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, v10, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 27
    .line 28
    const-string v1, "Tracking ad closed..."

    .line 29
    .line 30
    invoke-virtual {v0, v11, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/ad/b;->e()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_5

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_5

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v12

    .line 49
    :cond_3
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_6

    .line 54
    .line 55
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    move-object v13, v0

    .line 60
    check-cast v13, Lcom/applovin/impl/e;

    .line 61
    .line 62
    invoke-virtual {v13}, Lcom/applovin/impl/e;->c()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/ad/b;->F()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v7

    .line 70
    move-object v0, p0

    .line 71
    move-wide/from16 v2, p2

    .line 72
    .line 73
    move-wide/from16 v4, p5

    .line 74
    .line 75
    move-object/from16 v6, p4

    .line 76
    .line 77
    move/from16 v8, p7

    .line 78
    .line 79
    move/from16 v9, p8

    .line 80
    .line 81
    invoke-direct/range {v0 .. v9}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Ljava/lang/String;JJLjava/util/List;Ljava/lang/String;ZI)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v14

    .line 85
    invoke-virtual {v13}, Lcom/applovin/impl/e;->a()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/ad/b;->F()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    invoke-direct/range {v0 .. v9}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Ljava/lang/String;JJLjava/util/List;Ljava/lang/String;ZI)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {v14}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-eqz v1, :cond_4

    .line 102
    .line 103
    new-instance v1, Lcom/applovin/impl/e;

    .line 104
    .line 105
    invoke-direct {v1, v14, v0}, Lcom/applovin/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/e;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_4
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    if-eqz v0, :cond_3

    .line 117
    .line 118
    iget-object v0, v10, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 119
    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string v2, "Failed to parse url: "

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v13}, Lcom/applovin/impl/e;->c()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-virtual {v0, v11, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    goto :goto_0

    .line 145
    :cond_5
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    if-eqz v0, :cond_6

    .line 150
    .line 151
    iget-object v0, v10, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 152
    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v2, "Unable to track ad closed for AD #"

    .line 159
    .line 160
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    .line 164
    .line 165
    .line 166
    move-result-wide v2

    .line 167
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v2, ". Missing ad close tracking URL."

    .line 171
    .line 172
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual/range {p1 .. p1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    .line 176
    .line 177
    .line 178
    move-result-wide v2

    .line 179
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v0, v11, v1}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :cond_6
    return-void
.end method

.method public trackImpression(Lcom/applovin/impl/sdk/ad/b;)V
    .locals 3

    .line 1
    const-string v0, "AppLovinAdService"

    .line 2
    .line 3
    if-nez p1, :cond_1

    .line 4
    .line 5
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 12
    .line 13
    const-string v1, "Unable to track impression click. No ad specified"

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void

    .line 19
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v1, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 26
    .line 27
    const-string v2, "Tracking impression on ad..."

    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_2
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->K()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->maybeSubmitPersistentPostbacks(Ljava/util/List;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->h0()Lcom/applovin/impl/sdk/r;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_3

    .line 46
    .line 47
    iget-object v0, p0, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a:Lcom/applovin/impl/sdk/k;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->h0()Lcom/applovin/impl/sdk/r;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->getPrivacySandboxImpressionAttributionUrls()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/r;->b(Ljava/util/List;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void
.end method

.method public trackVideoEnd(Lcom/applovin/impl/sdk/ad/b;JIZ)V
    .locals 13

    .line 1
    move-object v7, p0

    .line 2
    const-string v8, "AppLovinAdService"

    .line 3
    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, v7, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 13
    .line 14
    const-string v1, "Unable to track video end. No ad specified"

    .line 15
    .line 16
    invoke-virtual {v0, v8, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    iget-object v0, v7, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 27
    .line 28
    const-string v1, "Tracking video end on ad..."

    .line 29
    .line 30
    invoke-virtual {v0, v8, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->q0()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_6

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_6

    .line 44
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v1

    .line 49
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v10

    .line 57
    :cond_3
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_7

    .line 62
    .line 63
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    move-object v11, v0

    .line 68
    check-cast v11, Lcom/applovin/impl/e;

    .line 69
    .line 70
    invoke-virtual {v11}, Lcom/applovin/impl/e;->c()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    invoke-virtual {v11}, Lcom/applovin/impl/e;->c()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    move-object v0, p0

    .line 85
    move-wide v2, p2

    .line 86
    move/from16 v4, p4

    .line 87
    .line 88
    move-object v5, v9

    .line 89
    move/from16 v6, p5

    .line 90
    .line 91
    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Ljava/lang/String;JILjava/lang/String;Z)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v12

    .line 95
    invoke-virtual {v11}, Lcom/applovin/impl/e;->a()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-direct/range {v0 .. v6}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Ljava/lang/String;JILjava/lang/String;Z)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v12, :cond_4

    .line 104
    .line 105
    new-instance v1, Lcom/applovin/impl/e;

    .line 106
    .line 107
    invoke-direct {v1, v12, v0}, Lcom/applovin/impl/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-direct {p0, v1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->a(Lcom/applovin/impl/e;)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_4
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    iget-object v0, v7, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 121
    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v2, "Failed to parse url: "

    .line 128
    .line 129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v11}, Lcom/applovin/impl/e;->c()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v0, v8, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_5
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    if-eqz v0, :cond_3

    .line 152
    .line 153
    iget-object v0, v7, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 154
    .line 155
    const-string v1, "Requested a postback dispatch for an empty video end URL; nothing to do..."

    .line 156
    .line 157
    invoke-virtual {v0, v8, v1}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_6
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_7

    .line 166
    .line 167
    iget-object v0, v7, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->b:Lcom/applovin/impl/sdk/o;

    .line 168
    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v2, "Unable to submit persistent postback for AD #"

    .line 175
    .line 176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    .line 180
    .line 181
    .line 182
    move-result-wide v2

    .line 183
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v2, ". Missing video end tracking URL."

    .line 187
    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v0, v8, v1}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_7
    return-void
.end method
