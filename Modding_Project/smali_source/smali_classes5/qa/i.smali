.class public Lqa/i;
.super Ljava/lang/Object;

# interfaces
.implements Lpa/b;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private c:Lpa/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "AGC_FlexibleDecrypt"

    .line 5
    .line 6
    const-string v1, "init"

    .line 7
    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lqa/i;->a:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p2, p0, Lqa/i;->b:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lqa/i;->c:Lpa/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lqa/i;->b()Lpa/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lqa/i;->c:Lpa/d;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lqa/i;->c:Lpa/d;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    const-string v0, "AGC_FlexibleDecrypt"

    .line 16
    .line 17
    const-string v1, "decrypt Flexible Decrypt error, use old instead"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    new-instance v0, Lqa/h;

    .line 23
    .line 24
    iget-object v1, p0, Lqa/i;->a:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v2, p0, Lqa/i;->b:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {v0, v1, v2}, Lqa/h;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lqa/h;->b()Lpa/d;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lqa/i;->c:Lpa/d;

    .line 36
    .line 37
    :cond_1
    iget-object v0, p0, Lqa/i;->c:Lpa/d;

    .line 38
    .line 39
    iget-object v1, p0, Lqa/i;->a:Landroid/content/Context;

    .line 40
    .line 41
    iget-object v2, p0, Lqa/i;->b:Ljava/lang/String;

    .line 42
    .line 43
    const-string v3, "agc_plugin_"

    .line 44
    .line 45
    invoke-static {v1, v2, v3, p1}, Lqa/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {v0, p1, p2}, Lpa/d;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1
.end method

.method public b()Lpa/d;
    .locals 9

    .line 1
    iget-object v0, p0, Lqa/i;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lqa/i;->b:Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "agc_plugin_"

    .line 6
    .line 7
    const-string v3, "crypto_component"

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lqa/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    :try_start_0
    new-instance v1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Lqa/a;->b(Ljava/lang/String;)[B

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "utf-8"

    .line 22
    .line 23
    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lorg/json/JSONObject;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v1, "rx"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const-string v1, "ry"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string v1, "rz"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const-string v1, "salt"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    const-string v1, "iterationCount"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 58
    .line 59
    .line 60
    move-result v8

    .line 61
    const-string v1, "algorithm"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    new-instance v0, Lqa/e;

    .line 68
    .line 69
    move-object v2, v0

    .line 70
    invoke-direct/range {v2 .. v8}, Lqa/e;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lqa/g;

    .line 74
    .line 75
    invoke-direct {v1, v0}, Lqa/g;-><init>(Lqa/e;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    goto :goto_0

    .line 81
    :catch_1
    move-exception v0

    .line 82
    goto :goto_0

    .line 83
    :catch_2
    move-exception v0

    .line 84
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v2, "FlexibleDecrypt exception: "

    .line 90
    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v1, "AGC_FlexibleDecrypt"

    .line 106
    .line 107
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    :cond_0
    const/4 v0, 0x0

    .line 111
    return-object v0
.end method
