.class public Lqa/c;
.super Ljava/lang/Object;

# interfaces
.implements Loa/d;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Loa/b;

.field private final e:Lpa/c;

.field private final f:Lqa/f;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lra/a;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Loa/b;Ljava/io/InputStream;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Loa/b;",
            "Ljava/io/InputStream;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lra/a;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lqa/c;->i:Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    :cond_0
    iput-object p1, p0, Lqa/c;->b:Landroid/content/Context;

    .line 22
    .line 23
    if-nez p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    :cond_1
    iput-object p2, p0, Lqa/c;->c:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz p4, :cond_2

    .line 32
    .line 33
    new-instance p1, Lqa/j;

    .line 34
    .line 35
    invoke-direct {p1, p4, p2}, Lqa/j;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lqa/c;->e:Lpa/c;

    .line 39
    .line 40
    invoke-static {p4}, Lqa/b;->a(Ljava/io/Closeable;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_2
    new-instance p4, Lqa/n;

    .line 45
    .line 46
    invoke-direct {p4, p1, p2}, Lqa/n;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iput-object p4, p0, Lqa/c;->e:Lpa/c;

    .line 50
    .line 51
    :goto_0
    new-instance p1, Lqa/f;

    .line 52
    .line 53
    iget-object p2, p0, Lqa/c;->e:Lpa/c;

    .line 54
    .line 55
    invoke-direct {p1, p2}, Lqa/f;-><init>(Lpa/c;)V

    .line 56
    .line 57
    .line 58
    iput-object p1, p0, Lqa/c;->f:Lqa/f;

    .line 59
    .line 60
    sget-object p1, Loa/b;->b:Loa/b;

    .line 61
    .line 62
    const/4 p2, 0x0

    .line 63
    if-eq p3, p1, :cond_4

    .line 64
    .line 65
    iget-object p4, p0, Lqa/c;->e:Lpa/c;

    .line 66
    .line 67
    const-string v0, "/configuration_version"

    .line 68
    .line 69
    invoke-interface {p4, v0, p2}, Lpa/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    const-string v0, "1.0"

    .line 74
    .line 75
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p4

    .line 79
    if-nez p4, :cond_3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    .line 83
    .line 84
    const-string p2, "The file version does not match,please download the latest agconnect-services.json from the AGC website."

    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1

    .line 90
    :cond_4
    :goto_1
    if-eqz p3, :cond_5

    .line 91
    .line 92
    if-ne p3, p1, :cond_6

    .line 93
    .line 94
    :cond_5
    iget-object p1, p0, Lqa/c;->e:Lpa/c;

    .line 95
    .line 96
    const-string p3, "/region"

    .line 97
    .line 98
    invoke-interface {p1, p3, p2}, Lpa/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    iget-object p3, p0, Lqa/c;->e:Lpa/c;

    .line 103
    .line 104
    const-string p4, "/agcgw/url"

    .line 105
    .line 106
    invoke-interface {p3, p4, p2}, Lpa/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    invoke-static {p1, p2}, Lqa/b;->f(Ljava/lang/String;Ljava/lang/String;)Loa/b;

    .line 111
    .line 112
    .line 113
    move-result-object p3

    .line 114
    :cond_6
    iput-object p3, p0, Lqa/c;->d:Loa/b;

    .line 115
    .line 116
    invoke-static {p5}, Lqa/b;->d(Ljava/util/Map;)Ljava/util/Map;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iput-object p1, p0, Lqa/c;->g:Ljava/util/Map;

    .line 121
    .line 122
    iput-object p6, p0, Lqa/c;->h:Ljava/util/List;

    .line 123
    .line 124
    if-eqz p7, :cond_7

    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_7
    invoke-direct {p0}, Lqa/c;->d()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p7

    .line 131
    :goto_2
    iput-object p7, p0, Lqa/c;->a:Ljava/lang/String;

    .line 132
    .line 133
    return-void
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
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
    iget-object v1, p0, Lqa/c;->i:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lqa/c;->i:Ljava/util/Map;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/String;

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Loa/f$a;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    return-object v2

    .line 39
    :cond_2
    invoke-interface {v0, p0}, Loa/f$a;->a(Loa/d;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    iget-object v1, p0, Lqa/c;->i:Ljava/util/Map;

    .line 44
    .line 45
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "{packageName=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lqa/c;->c:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", routePolicy="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lqa/c;->d:Loa/b;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", reader="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Lqa/c;->e:Lpa/c;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, ", customConfigMap="

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    new-instance v1, Lorg/json/JSONObject;

    .line 55
    .line 56
    iget-object v2, p0, Lqa/c;->g:Ljava/util/Map;

    .line 57
    .line 58
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const/16 v1, 0x7d

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0
.end method


# virtual methods
.method public a()Loa/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lqa/c;->d:Loa/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Loa/b;->b:Loa/b;

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lra/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lqa/c;->h:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p2

    .line 4
    :cond_0
    invoke-static {p1}, Lqa/b;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lqa/c;->g:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    return-object v0

    .line 19
    :cond_1
    invoke-direct {p0, p1}, Lqa/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    return-object v0

    .line 26
    :cond_2
    iget-object v0, p0, Lqa/c;->e:Lpa/c;

    .line 27
    .line 28
    invoke-interface {v0, p1, p2}, Lpa/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lqa/f;->c(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lqa/c;->f:Lqa/f;

    .line 39
    .line 40
    invoke-virtual {v0, p1, p2}, Lqa/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    :cond_3
    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lqa/c;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lqa/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lqa/c;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method
