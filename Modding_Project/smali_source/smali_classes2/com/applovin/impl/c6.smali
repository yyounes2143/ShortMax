.class public Lcom/applovin/impl/c6;
.super Lcom/applovin/impl/g5;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/l2;


# instance fields
.field private final g:Lorg/json/JSONObject;

.field private final h:Lcom/applovin/impl/u;

.field private final i:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field private final j:Z


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/u;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/k;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/c6;-><init>(Lorg/json/JSONObject;Lcom/applovin/impl/u;ZLcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/k;)V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/applovin/impl/u;ZLcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/k;)V
    .locals 1

    .line 2
    const-string v0, "TaskProcessAdResponse"

    invoke-direct {p0, v0, p5}, Lcom/applovin/impl/g5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/k;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 3
    iput-object p1, p0, Lcom/applovin/impl/c6;->g:Lorg/json/JSONObject;

    .line 4
    iput-object p2, p0, Lcom/applovin/impl/c6;->h:Lcom/applovin/impl/u;

    .line 5
    iput-object p4, p0, Lcom/applovin/impl/c6;->i:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 6
    iput-boolean p3, p0, Lcom/applovin/impl/c6;->j:Z

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No zone specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No response specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    const-string/jumbo v0, "type"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "undefined"

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "applovin"

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 28
    .line 29
    const-string v2, "Starting task for AppLovin ad..."

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    new-instance v0, Lcom/applovin/impl/h6;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/applovin/impl/c6;->g:Lorg/json/JSONObject;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 39
    .line 40
    invoke-direct {v0, p1, v1, p0, v2}, Lcom/applovin/impl/h6;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/k;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1, v0}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const-string/jumbo v1, "vast"

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 71
    .line 72
    const-string v2, "Starting task for VAST ad..."

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/c6;->g:Lorg/json/JSONObject;

    .line 78
    .line 79
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 80
    .line 81
    invoke-static {p1, v0, p0, v1}, Lcom/applovin/impl/f6;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/k;)Lcom/applovin/impl/f6;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 86
    .line 87
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0, p1}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_3
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_4

    .line 100
    .line 101
    iget-object p1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 102
    .line 103
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v3, "Unable to process ad of unknown type: "

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {p1, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    :cond_4
    new-instance p1, Lcom/applovin/impl/sdk/AppLovinError;

    .line 126
    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string v2, "Unknown ad type: "

    .line 133
    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    const/16 v1, -0x320

    .line 145
    .line 146
    invoke-direct {p1, v1, v0}, Lcom/applovin/impl/sdk/AppLovinError;-><init>(ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p1}, Lcom/applovin/impl/c6;->failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V

    .line 150
    .line 151
    .line 152
    :goto_0
    return-void
.end method


# virtual methods
.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/c6;->i:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-boolean v0, p0, Lcom/applovin/impl/c6;->j:Z

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    instance-of v0, p1, Lcom/applovin/impl/sdk/ad/b;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/applovin/impl/c2;->n:Lcom/applovin/impl/c2;

    .line 23
    .line 24
    check-cast p1, Lcom/applovin/impl/sdk/ad/b;

    .line 25
    .line 26
    invoke-virtual {v0, v1, p1}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/c2;Lcom/applovin/impl/sdk/ad/b;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 2

    .line 1
    new-instance v0, Lcom/applovin/impl/sdk/AppLovinError;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-direct {v0, p1, v1}, Lcom/applovin/impl/sdk/AppLovinError;-><init>(ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/applovin/impl/c6;->failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/c6;->i:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    instance-of v1, v0, Lcom/applovin/impl/l2;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    check-cast v0, Lcom/applovin/impl/l2;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/applovin/impl/l2;->failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/AppLovinError;->getCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    .line 21
    .line 22
    .line 23
    :goto_0
    iget-boolean v0, p0, Lcom/applovin/impl/c6;->j:Z

    .line 24
    .line 25
    if-nez v0, :cond_2

    .line 26
    .line 27
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Lcom/applovin/impl/c2;->o:Lcom/applovin/impl/c2;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/applovin/impl/c6;->h:Lcom/applovin/impl/u;

    .line 36
    .line 37
    invoke-virtual {v0, v1, v2, p1}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/c2;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/AppLovinError;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method

.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/c6;->g:Lorg/json/JSONObject;

    .line 2
    .line 3
    new-instance v1, Lorg/json/JSONArray;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "ads"

    .line 9
    .line 10
    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONArray;)Lorg/json/JSONArray;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 29
    .line 30
    const-string v3, "Processing ad..."

    .line 31
    .line 32
    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 36
    .line 37
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    invoke-static {v0, v2, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lorg/json/JSONArray;ILorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {p0, v0}, Lcom/applovin/impl/c6;->a(Lorg/json/JSONObject;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 58
    .line 59
    const-string v2, "No ads were returned from the server"

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/c6;->h:Lcom/applovin/impl/u;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/applovin/impl/u;->e()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/applovin/impl/c6;->h:Lcom/applovin/impl/u;

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/applovin/impl/u;->d()Lcom/applovin/mediation/MaxAdFormat;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/applovin/impl/c6;->g:Lorg/json/JSONObject;

    .line 77
    .line 78
    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 79
    .line 80
    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/k7;->a(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    .line 81
    .line 82
    .line 83
    sget-object v0, Lcom/applovin/impl/sdk/AppLovinError;->NO_FILL:Lcom/applovin/impl/sdk/AppLovinError;

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lcom/applovin/impl/c6;->failedToReceiveAdV2(Lcom/applovin/impl/sdk/AppLovinError;)V

    .line 86
    .line 87
    .line 88
    :goto_0
    return-void
.end method
