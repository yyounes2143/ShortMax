.class public abstract Lza/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected a:Lgb/a;

.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgb/b;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Z

.field protected d:Z

.field protected e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lza/a;->c:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lza/a;->d:Z

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashSet;

    .line 10
    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lza/a;->e:Ljava/util/Set;

    .line 17
    .line 18
    return-void
.end method

.method private g(Ljava/util/List;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lgb/b;",
            ">;",
            "Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const-string v1, "no_route_country"

    .line 9
    .line 10
    const-string v2, "no-country"

    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    move-result v1

    .line 23
    if-eqz v1, :cond_4

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lgb/b;

    .line 30
    .line 31
    invoke-virtual {v1}, Lgb/b;->a()Ljava/util/Set;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getIssueCountry()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getIssueCountry()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1}, Lgb/b;->d()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {v1}, Lgb/b;->a()Ljava/util/Set;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getRegCountry()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getRegCountry()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1}, Lgb/b;->d()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {v1}, Lgb/b;->a()Ljava/util/Set;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getSerCountry()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_3

    .line 94
    .line 95
    invoke-virtual {p2}, Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;->getSerCountry()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1}, Lgb/b;->d()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    :cond_3
    invoke-virtual {v1}, Lgb/b;->a()Ljava/util/Set;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-interface {v2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_0

    .line 115
    .line 116
    const-string v2, "AbstractLocalManager"

    .line 117
    .line 118
    const-string v3, "get countryGroupID from geoIp"

    .line 119
    .line 120
    invoke-static {v2, v3}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1}, Lgb/b;->d()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-interface {v0, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_4
    return-object v0
.end method

.method private j(Ljava/lang/String;Landroid/content/Context;)I
    .locals 1

    .line 1
    invoke-static {p1, p2}, Ldb/c;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-direct {p0, p2}, Lza/a;->r(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "AbstractLocalManager"

    .line 16
    .line 17
    const-string v0, "load APP_CONFIG_FILE success{%s}."

    .line 18
    .line 19
    invoke-static {p2, v0, p1}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, -0x1

    .line 25
    :goto_0
    return p1
.end method

.method private r(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    return p1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lza/a;->d:Z

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lza/a;->m(Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return v0

    .line 20
    :cond_1
    invoke-virtual {p0, p1}, Lza/a;->i(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    return v0

    .line 27
    :cond_2
    invoke-virtual {p0, p1}, Lza/a;->q(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method private s(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, -0x1

    .line 8
    return p1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lza/a;->d:Z

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    iget-object v0, p0, Lza/a;->b:Ljava/util/List;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0, p1}, Lza/a;->o(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    return v0

    .line 30
    :cond_2
    invoke-virtual {p0, p1}, Lza/a;->p(Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method


# virtual methods
.method a(Ljava/lang/String;Landroid/content/Context;)I
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getInstance()Lcom/huawei/hms/framework/network/grs/GrsApp;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "/"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getBrand(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-direct {p0, p1, p2}, Lza/a;->j(Ljava/lang/String;Landroid/content/Context;)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const/4 p1, -0x1

    .line 33
    return p1

    .line 34
    :cond_0
    const/4 p1, 0x0

    .line 35
    return p1
.end method

.method public b()Lgb/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lza/a;->a:Lgb/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Landroid/content/Context;Lya/a;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move-object v2, p2

    .line 4
    move-object v3, p3

    .line 5
    move-object v4, p4

    .line 6
    move v5, p6

    .line 7
    invoke-virtual/range {v0 .. v5}, Lza/a;->f(Landroid/content/Context;Lya/a;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Z)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    filled-new-array {p4}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p2, "AbstractLocalManager"

    .line 18
    .line 19
    const-string p3, "addresses not found by routeby in local config{%s}"

    .line 20
    .line 21
    invoke-static {p2, p3, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    return-object p1

    .line 26
    :cond_0
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/String;

    .line 31
    .line 32
    return-object p1
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const-string v0, "no_route_country"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string p1, "no-country"

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_1
    iget-object v0, p0, Lza/a;->b:Ljava/util/List;

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    iget-object v0, p0, Lza/a;->b:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_4

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    check-cast v2, Lgb/b;

    .line 48
    .line 49
    invoke-virtual {v2}, Lgb/b;->a()Ljava/util/Set;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_3

    .line 58
    .line 59
    invoke-virtual {v2}, Lgb/b;->d()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    return-object p1

    .line 64
    :cond_4
    :goto_0
    return-object v1
.end method

.method public e(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lgb/b;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "AbstractLocalManager"

    .line 2
    .line 3
    const-string v1, "countries"

    .line 4
    .line 5
    const-string v2, "countriesOrAreas"

    .line 6
    .line 7
    if-eqz p1, :cond_7

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-nez v3, :cond_0

    .line 14
    .line 15
    goto/16 :goto_5

    .line 16
    .line 17
    :cond_0
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    .line 18
    .line 19
    const/16 v4, 0x10

    .line 20
    .line 21
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    move v6, v5

    .line 26
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    if-ge v6, v7, :cond_6

    .line 31
    .line 32
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    new-instance v8, Lgb/b;

    .line 37
    .line 38
    invoke-direct {v8}, Lgb/b;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v9, "id"

    .line 42
    .line 43
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-virtual {v8, v9}, Lgb/b;->e(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string v9, "name"

    .line 51
    .line 52
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v9

    .line 56
    invoke-virtual {v8, v9}, Lgb/b;->f(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    const-string v9, "description"

    .line 60
    .line 61
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-virtual {v8, v9}, Lgb/b;->b(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v9

    .line 72
    if-eqz v9, :cond_1

    .line 73
    .line 74
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    goto :goto_1

    .line 79
    :catch_0
    move-exception p1

    .line 80
    goto :goto_4

    .line 81
    :cond_1
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-eqz v9, :cond_2

    .line 86
    .line 87
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    goto :goto_1

    .line 92
    :cond_2
    const-string v7, "current country or area group has not config countries or areas."

    .line 93
    .line 94
    invoke-static {v0, v7}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    const/4 v7, 0x0

    .line 98
    :goto_1
    new-instance v9, Ljava/util/HashSet;

    .line 99
    .line 100
    invoke-direct {v9, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 101
    .line 102
    .line 103
    if-eqz v7, :cond_5

    .line 104
    .line 105
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    .line 106
    .line 107
    .line 108
    move-result v10

    .line 109
    if-nez v10, :cond_3

    .line 110
    .line 111
    goto :goto_3

    .line 112
    :cond_3
    move v10, v5

    .line 113
    :goto_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    if-ge v10, v11, :cond_4

    .line 118
    .line 119
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v11

    .line 123
    check-cast v11, Ljava/lang/String;

    .line 124
    .line 125
    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    add-int/lit8 v10, v10, 0x1

    .line 129
    .line 130
    goto :goto_2

    .line 131
    :cond_4
    invoke-virtual {v8, v9}, Lgb/b;->c(Ljava/util/Set;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    add-int/lit8 v6, v6, 0x1

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_5
    :goto_3
    new-instance p1, Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    .line 144
    .line 145
    return-object p1

    .line 146
    :cond_6
    return-object v3

    .line 147
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-static {p1}, Lcom/huawei/hms/framework/common/StringUtils;->anonymizeMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    const-string v1, "parse countrygroup failed maybe json style is wrong. %s"

    .line 160
    .line 161
    invoke-static {v0, v1, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    new-instance p1, Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .line 168
    .line 169
    return-object p1

    .line 170
    :cond_7
    :goto_5
    new-instance p1, Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .line 174
    .line 175
    return-object p1
.end method

.method public f(Landroid/content/Context;Lya/a;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lya/a;",
            "Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lza/a;->a:Lgb/a;

    .line 2
    .line 3
    const-string v1, "AbstractLocalManager"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    const-string p1, "application data is null."

    .line 9
    .line 10
    invoke-static {v1, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_0
    invoke-virtual {v0, p4}, Lgb/a;->a(Ljava/lang/String;)Lgb/c;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    filled-new-array {p4}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "service not found in local config{%s}"

    .line 25
    .line 26
    invoke-static {v1, p2, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-object v2

    .line 30
    :cond_1
    invoke-virtual {v0}, Lgb/c;->e()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    invoke-static {p1, p2, p4, p3, p5}, Lcom/huawei/hms/framework/network/grs/f/e;->b(Landroid/content/Context;Lya/a;Ljava/lang/String;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Z)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0}, Lgb/c;->e()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string p2, "country not found by routeby in local config{%s}"

    .line 49
    .line 50
    invoke-static {v1, p2, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-object v2

    .line 54
    :cond_2
    invoke-virtual {v0}, Lgb/c;->b()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result p4

    .line 64
    if-eqz p4, :cond_3

    .line 65
    .line 66
    invoke-direct {p0, p2, p3, p1}, Lza/a;->g(Ljava/util/List;Lcom/huawei/hms/framework/network/grs/GrsBaseInfo;Ljava/lang/String;)Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Ljava/lang/String;

    .line 75
    .line 76
    :goto_0
    invoke-virtual {v0, p1}, Lgb/c;->a(Ljava/lang/String;)Lgb/d;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {p0, p1}, Lza/a;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    goto :goto_0

    .line 86
    :goto_1
    if-nez p1, :cond_4

    .line 87
    .line 88
    return-object v2

    .line 89
    :cond_4
    invoke-virtual {p1}, Lgb/d;->a()Ljava/util/Map;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1
.end method

.method public h(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_2

    .line 8
    .line 9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "getBatchLoadSdkSuccessFlag file:"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v2, "AbstractLocalManager"

    .line 43
    .line 44
    invoke-static {v2, v1}, Lcom/huawei/hms/framework/common/Logger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_1

    .line 52
    .line 53
    const-string v1, "^grs_sdk_global_route_config_[a-zA-Z]+\\.json$"

    .line 54
    .line 55
    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getInstance()Lcom/huawei/hms/framework/network/grs/GrsApp;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    const-string v4, "/"

    .line 71
    .line 72
    invoke-virtual {v3, v4}, Lcom/huawei/hms/framework/network/grs/GrsApp;->getBrand(Ljava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v1, p1}, Ldb/c;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-direct {p0, v1}, Lza/a;->s(Ljava/lang/String;)I

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-nez v1, :cond_0

    .line 99
    .line 100
    const-string v1, "load SDK_CONFIG_FILE: %s, sucess."

    .line 101
    .line 102
    invoke-static {v2, v1, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    const-string v1, "load SDK_CONFIG_FILE: %s, failure."

    .line 107
    .line 108
    invoke-static {v2, v1, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_1
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    const-string v1, "load SDK_CONFIG_FILE: %s, skipped."

    .line 117
    .line 118
    invoke-static {v2, v1, v0}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    return-void
.end method

.method public abstract i(Ljava/lang/String;)I
.end method

.method public k()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lza/a;->e:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method protected l(Lorg/json/JSONArray;)V
    .locals 14

    .line 1
    if-eqz p1, :cond_a

    .line 2
    .line 3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_7

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_a

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    new-instance v3, Lgb/c;

    .line 24
    .line 25
    invoke-direct {v3}, Lgb/c;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v4, "name"

    .line 29
    .line 30
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v3, v4}, Lgb/c;->f(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v5, p0, Lza/a;->e:Ljava/util/Set;

    .line 38
    .line 39
    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_9

    .line 44
    .line 45
    iget-object v5, p0, Lza/a;->e:Ljava/util/Set;

    .line 46
    .line 47
    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    iget-boolean v5, p0, Lza/a;->d:Z

    .line 51
    .line 52
    if-eqz v5, :cond_9

    .line 53
    .line 54
    const-string v5, "routeBy"

    .line 55
    .line 56
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v3, v5}, Lgb/c;->g(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v5, "servings"

    .line 64
    .line 65
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    move v6, v0

    .line 70
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    const-string v8, "AbstractLocalManager"

    .line 75
    .line 76
    if-ge v6, v7, :cond_5

    .line 77
    .line 78
    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    check-cast v7, Lorg/json/JSONObject;

    .line 83
    .line 84
    new-instance v9, Lgb/d;

    .line 85
    .line 86
    invoke-direct {v9}, Lgb/d;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v10, "countryOrAreaGroup"

    .line 90
    .line 91
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    if-eqz v11, :cond_1

    .line 96
    .line 97
    :goto_2
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    goto :goto_3

    .line 102
    :cond_1
    const-string v10, "countryGroup"

    .line 103
    .line 104
    invoke-virtual {v7, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v11

    .line 108
    if-eqz v11, :cond_2

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_2
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v10

    .line 115
    const-string v11, "maybe this service{%s} routeBy is unconditional."

    .line 116
    .line 117
    invoke-static {v8, v11, v10}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    const-string v8, "no-country"

    .line 121
    .line 122
    :goto_3
    invoke-virtual {v9, v8}, Lgb/d;->b(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v8, "addresses"

    .line 126
    .line 127
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    new-instance v8, Ljava/util/concurrent/ConcurrentHashMap;

    .line 132
    .line 133
    const/16 v10, 0x10

    .line 134
    .line 135
    invoke-direct {v8, v10}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v10

    .line 142
    :cond_3
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    if-eqz v11, :cond_4

    .line 147
    .line 148
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    check-cast v11, Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v12

    .line 158
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 159
    .line 160
    .line 161
    move-result v13

    .line 162
    if-nez v13, :cond_3

    .line 163
    .line 164
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v12

    .line 168
    if-nez v12, :cond_3

    .line 169
    .line 170
    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v12

    .line 174
    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_4
    invoke-virtual {v9, v8}, Lgb/d;->c(Ljava/util/Map;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v9}, Lgb/d;->d()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v7

    .line 185
    invoke-virtual {v3, v7, v9}, Lgb/c;->c(Ljava/lang/String;Lgb/d;)V

    .line 186
    .line 187
    .line 188
    add-int/lit8 v6, v6, 0x1

    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_5
    const-string v5, "countryOrAreaGroups"

    .line 192
    .line 193
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-eqz v6, :cond_6

    .line 198
    .line 199
    :goto_5
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {p0, v2}, Lza/a;->e(Lorg/json/JSONArray;)Ljava/util/List;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    goto :goto_6

    .line 208
    :cond_6
    const-string v5, "countryGroups"

    .line 209
    .line 210
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result v6

    .line 214
    if-eqz v6, :cond_7

    .line 215
    .line 216
    goto :goto_5

    .line 217
    :cond_7
    const-string v2, "service use default countryOrAreaGroup"

    .line 218
    .line 219
    invoke-static {v8, v2}, Lcom/huawei/hms/framework/common/Logger;->i(Ljava/lang/String;Ljava/lang/Object;)V

    .line 220
    .line 221
    .line 222
    const/4 v2, 0x0

    .line 223
    :goto_6
    invoke-virtual {v3, v2}, Lgb/c;->d(Ljava/util/List;)V

    .line 224
    .line 225
    .line 226
    iget-object v2, p0, Lza/a;->a:Lgb/a;

    .line 227
    .line 228
    if-nez v2, :cond_8

    .line 229
    .line 230
    new-instance v2, Lgb/a;

    .line 231
    .line 232
    invoke-direct {v2}, Lgb/a;-><init>()V

    .line 233
    .line 234
    .line 235
    iput-object v2, p0, Lza/a;->a:Lgb/a;

    .line 236
    .line 237
    :cond_8
    iget-object v2, p0, Lza/a;->a:Lgb/a;

    .line 238
    .line 239
    invoke-virtual {v2, v4, v3}, Lgb/a;->d(Ljava/lang/String;Lgb/c;)V

    .line 240
    .line 241
    .line 242
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 243
    .line 244
    goto/16 :goto_0

    .line 245
    .line 246
    :cond_a
    :goto_7
    return-void
.end method

.method public abstract m(Ljava/lang/String;)I
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lza/a;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public o(Ljava/lang/String;)I
    .locals 5

    .line 1
    const-string v0, "AbstractLocalManager"

    .line 2
    .line 3
    const-string v1, "countryGroups"

    .line 4
    .line 5
    const-string v2, "countryOrAreaGroups"

    .line 6
    .line 7
    new-instance v3, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/16 v4, 0x10

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object v3, p0, Lza/a;->b:Ljava/util/List;

    .line 15
    .line 16
    const/4 v3, -0x1

    .line 17
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const-string p1, "maybe local config json is wrong because the default countryOrAreaGroups isn\'t config."

    .line 47
    .line 48
    invoke-static {v0, p1}, Lcom/huawei/hms/framework/common/Logger;->e(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    :goto_0
    if-nez p1, :cond_2

    .line 53
    .line 54
    return v3

    .line 55
    :cond_2
    iget-object v1, p0, Lza/a;->b:Ljava/util/List;

    .line 56
    .line 57
    invoke-virtual {p0, p1}, Lza/a;->e(Lorg/json/JSONArray;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    return p1

    .line 66
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Lcom/huawei/hms/framework/common/StringUtils;->anonymizeMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v1, "parse countrygroup failed maybe json style is wrong. %s"

    .line 79
    .line 80
    invoke-static {v0, v1, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return v3
.end method

.method public p(Ljava/lang/String;)I
    .locals 2

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "services"

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0, p1}, Lza/a;->l(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/huawei/hms/framework/common/StringUtils;->anonymizeMessage(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string v0, "AbstractLocalManager"

    .line 31
    .line 32
    const-string v1, "parse 2.0 services failed maybe because of json style.please check! %s"

    .line 33
    .line 34
    invoke-static {v0, v1, p1}, Lcom/huawei/hms/framework/common/Logger;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, -0x1

    .line 38
    return p1
.end method

.method public abstract q(Ljava/lang/String;)I
.end method
