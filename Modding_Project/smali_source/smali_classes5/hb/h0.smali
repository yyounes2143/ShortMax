.class public Lhb/h0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhb/f;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lhb/f;",
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
    iput-object p1, p0, Lhb/h0;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lhb/h0;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lhb/h0;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lhb/h0;->d:Ljava/util/List;

    .line 11
    .line 12
    iput-object p5, p0, Lhb/h0;->e:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lhb/c;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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
    const-string v2, ""

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p2, "hmsSdk"

    .line 18
    .line 19
    const-string v0, "No report address,TAG : %s,TYPE: %s "

    .line 20
    .line 21
    invoke-static {p2, v0, p1}, Lhb/f1;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-object v2

    .line 25
    :cond_0
    const-string p1, "oper"

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    const-string v1, "{url}"

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const-string p1, "{url}/common/hmshioperqrt"

    .line 36
    .line 37
    :goto_0
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string p1, "maint"

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    const-string p1, "{url}/common/hmshimaintqrt"

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const-string p1, "diffprivacy"

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-eqz p1, :cond_3

    .line 60
    .line 61
    const-string p1, "{url}/common/common2"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    :goto_1
    return-object v2
.end method

.method private c(Lhb/w;)[B
    .locals 3

    .line 1
    const-string v0, "hmsSdk"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lhb/w;->a()Lorg/json/JSONObject;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p1, "uploadEvents is null"

    .line 11
    .line 12
    invoke-static {v0, p1}, Lhb/f1;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-array p1, v1, [B

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string v2, "UTF-8"

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lhb/g0;->g([B)[B

    .line 29
    .line 30
    .line 31
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object p1

    .line 33
    :catch_0
    const-string p1, "sendData(): getBytes - Unsupported coding format!!"

    .line 34
    .line 35
    :goto_0
    invoke-static {v0, p1}, Lhb/f1;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :catch_1
    const-string p1, "uploadEvents to json error"

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :goto_1
    new-array p1, v1, [B

    .line 43
    .line 44
    return-object p1
.end method

.method private d()V
    .locals 6

    .line 1
    invoke-static {}, Lhb/v0;->q()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/high16 v1, 0x500000

    .line 6
    .line 7
    const-string v2, "backup_event"

    .line 8
    .line 9
    invoke-static {v0, v2, v1}, Lhb/h;->c(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "hmsSdk"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string v0, "backup file reach max limited size, discard new event "

    .line 18
    .line 19
    invoke-static {v1, v0}, Lhb/f1;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-direct {p0}, Lhb/h0;->e()Lorg/json/JSONArray;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v3, p0, Lhb/h0;->a:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v4, p0, Lhb/h0;->b:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v5, p0, Lhb/h0;->e:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v3, v4, v5}, Lhb/o0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v5, "Update data cached into backup,spKey: "

    .line 43
    .line 44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {v1, v4}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-static {}, Lhb/v0;->q()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {v1, v2, v3, v0}, Lhb/l;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method private e()Lorg/json/JSONArray;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lhb/h0;->d:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lhb/f;

    .line 23
    .line 24
    :try_start_0
    invoke-virtual {v2}, Lhb/f;->h()Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    const-string v2, "hmsSdk"

    .line 33
    .line 34
    const-string v3, "handleEvents: json error,Abandon this data"

    .line 35
    .line 36
    invoke-static {v2, v3}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    return-object v0
.end method

.method private f()Lhb/w;
    .locals 5

    .line 1
    iget-object v0, p0, Lhb/h0;->d:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lhb/h0;->a:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lhb/h0;->b:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lhb/h0;->e:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Lhb/h0;->c:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lhb/e0;->f(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lhb/w;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method


# virtual methods
.method public b()V
    .locals 9

    .line 1
    iget-object v0, p0, Lhb/h0;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lhb/h0;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lhb/h0;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v4

    .line 9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "hmsSdk"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lhb/h0;->b:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "preins"

    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const-string v0, "collectUrl is empty"

    .line 28
    .line 29
    :goto_0
    invoke-static {v1, v0}, Lhb/f1;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lhb/h0;->a:Ljava/lang/String;

    .line 34
    .line 35
    const-string v2, "_hms_config_tag"

    .line 36
    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lhb/h0;->a:Ljava/lang/String;

    .line 44
    .line 45
    const-string v2, "_openness_config_tag"

    .line 46
    .line 47
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-nez v0, :cond_1

    .line 52
    .line 53
    invoke-direct {p0}, Lhb/h0;->d()V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-direct {p0}, Lhb/h0;->f()Lhb/w;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-eqz v0, :cond_3

    .line 61
    .line 62
    invoke-direct {p0, v0}, Lhb/h0;->c(Lhb/w;)[B

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    array-length v0, v3

    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    const-string v0, "request body is empty"

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    new-instance v0, Lhb/r;

    .line 73
    .line 74
    iget-object v5, p0, Lhb/h0;->a:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v6, p0, Lhb/h0;->b:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v7, p0, Lhb/h0;->e:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v8, p0, Lhb/h0;->d:Ljava/util/List;

    .line 81
    .line 82
    move-object v2, v0

    .line 83
    invoke-direct/range {v2 .. v8}, Lhb/r;-><init>([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Lhb/e;->c()Lhb/e;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    :goto_1
    invoke-virtual {v1, v0}, Lhb/e;->b(Lhb/u;)V

    .line 91
    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_3
    new-instance v0, Lhb/k;

    .line 95
    .line 96
    iget-object v1, p0, Lhb/h0;->d:Ljava/util/List;

    .line 97
    .line 98
    iget-object v2, p0, Lhb/h0;->a:Ljava/lang/String;

    .line 99
    .line 100
    iget-object v3, p0, Lhb/h0;->e:Ljava/lang/String;

    .line 101
    .line 102
    iget-object v4, p0, Lhb/h0;->b:Ljava/lang/String;

    .line 103
    .line 104
    invoke-direct {v0, v1, v2, v3, v4}, Lhb/k;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-static {}, Lhb/e;->d()Lhb/e;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    goto :goto_1

    .line 112
    :goto_2
    return-void
.end method
