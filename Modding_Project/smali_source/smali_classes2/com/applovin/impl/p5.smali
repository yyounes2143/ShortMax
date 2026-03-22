.class public abstract Lcom/applovin/impl/p5;
.super Lcom/applovin/impl/g5;
.source "SourceFile"


# instance fields
.field protected final g:Lcom/applovin/impl/u;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/u;Ljava/lang/String;Lcom/applovin/impl/sdk/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3}, Lcom/applovin/impl/g5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/k;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/p5;->g:Lcom/applovin/impl/u;

    .line 5
    .line 6
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/k;->b()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/applovin/impl/p5;->h:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method private g()Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/applovin/impl/p5;->g:Lcom/applovin/impl/u;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/applovin/impl/u;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "AppLovin-Zone-Id"

    .line 14
    .line 15
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/applovin/impl/p5;->g:Lcom/applovin/impl/u;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/applovin/impl/u;->f()Lcom/applovin/sdk/AppLovinAdSize;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    iget-object v1, p0, Lcom/applovin/impl/p5;->g:Lcom/applovin/impl/u;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/applovin/impl/u;->f()Lcom/applovin/sdk/AppLovinAdSize;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "AppLovin-Ad-Size"

    .line 37
    .line 38
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/p5;->g:Lcom/applovin/impl/u;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/applovin/impl/u;->g()Lcom/applovin/sdk/AppLovinAdType;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lcom/applovin/impl/p5;->g:Lcom/applovin/impl/u;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/applovin/impl/u;->g()Lcom/applovin/sdk/AppLovinAdType;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinAdType;->getLabel()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    const-string v2, "AppLovin-Ad-Type"

    .line 60
    .line 61
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected abstract a(Lorg/json/JSONObject;)Lcom/applovin/impl/g5;
.end method

.method protected a(ILjava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to fetch "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/applovin/impl/p5;->g:Lcom/applovin/impl/u;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ad: server returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    new-instance v0, Lcom/applovin/impl/sdk/AppLovinError;

    invoke-direct {v0, p1, p2}, Lcom/applovin/impl/sdk/AppLovinError;-><init>(ILjava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    move-result-object p1

    sget-object p2, Lcom/applovin/impl/c2;->m:Lcom/applovin/impl/c2;

    iget-object v1, p0, Lcom/applovin/impl/p5;->g:Lcom/applovin/impl/u;

    invoke-virtual {p1, p2, v1, v0}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/c2;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/AppLovinError;)V

    return-void
.end method

.method protected b(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/applovin/impl/r0;->c(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/applovin/impl/r0;->b(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/applovin/impl/r0;->a(Lorg/json/JSONObject;Lcom/applovin/impl/sdk/k;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Lcom/applovin/impl/u;->a(Lorg/json/JSONObject;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, p1}, Lcom/applovin/impl/p5;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/g5;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method protected abstract e()Ljava/lang/String;
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method protected h()Ljava/util/Map;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/applovin/impl/p5;->g:Lcom/applovin/impl/u;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/applovin/impl/u;->e()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string/jumbo v2, "zone_id"

    .line 14
    .line 15
    .line 16
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/applovin/impl/p5;->g:Lcom/applovin/impl/u;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/applovin/impl/u;->f()Lcom/applovin/sdk/AppLovinAdSize;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/applovin/impl/p5;->g:Lcom/applovin/impl/u;

    .line 28
    .line 29
    invoke-virtual {v1}, Lcom/applovin/impl/u;->f()Lcom/applovin/sdk/AppLovinAdSize;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinAdSize;->getLabel()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "size"

    .line 38
    .line 39
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_0
    iget-object v1, p0, Lcom/applovin/impl/p5;->g:Lcom/applovin/impl/u;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/applovin/impl/u;->g()Lcom/applovin/sdk/AppLovinAdType;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    iget-object v1, p0, Lcom/applovin/impl/p5;->g:Lcom/applovin/impl/u;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/applovin/impl/u;->g()Lcom/applovin/sdk/AppLovinAdType;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinAdType;->getLabel()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const-string v2, "require"

    .line 61
    .line 62
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    :cond_1
    return-object v0
.end method

.method public run()V
    .locals 10

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
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "Fetching next ad of zone: "

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lcom/applovin/impl/p5;->g:Lcom/applovin/impl/u;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 34
    .line 35
    sget-object v1, Lcom/applovin/impl/v4;->Q3:Lcom/applovin/impl/v4;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/lang/Boolean;

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-static {}, Lcom/applovin/impl/k7;->j()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 64
    .line 65
    const-string v2, "User is connected to a VPN"

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v0, v1}, Lcom/applovin/impl/k7;->a(Lcom/applovin/impl/sdk/k;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 78
    .line 79
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->g()Lcom/applovin/impl/f;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    sget-object v1, Lcom/applovin/impl/c2;->k:Lcom/applovin/impl/c2;

    .line 84
    .line 85
    iget-object v2, p0, Lcom/applovin/impl/p5;->g:Lcom/applovin/impl/u;

    .line 86
    .line 87
    const/4 v3, 0x0

    .line 88
    invoke-virtual {v0, v1, v2, v3}, Lcom/applovin/impl/f;->a(Lcom/applovin/impl/c2;Lcom/applovin/impl/u;Lcom/applovin/impl/sdk/AppLovinError;)V

    .line 89
    .line 90
    .line 91
    const/4 v0, 0x0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->k()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->getAndResetCustomPostBody()Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    iget-object v2, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 103
    .line 104
    sget-object v4, Lcom/applovin/impl/v4;->f3:Lcom/applovin/impl/v4;

    .line 105
    .line 106
    invoke-virtual {v2, v4}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 113
    .line 114
    .line 115
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    const/4 v4, 0x1

    .line 117
    const-string v5, "POST"

    .line 118
    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    :try_start_1
    iget-object v2, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 122
    .line 123
    sget-object v3, Lcom/applovin/impl/v4;->i5:Lcom/applovin/impl/v4;

    .line 124
    .line 125
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    check-cast v2, Ljava/lang/Integer;

    .line 130
    .line 131
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    invoke-static {v2}, Lcom/applovin/impl/s4$a;->a(I)Lcom/applovin/impl/s4$a;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 140
    .line 141
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->B()Lcom/applovin/impl/sdk/l;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {p0}, Lcom/applovin/impl/p5;->h()Ljava/util/Map;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v3, v6, v0, v4}, Lcom/applovin/impl/sdk/l;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    new-instance v6, Lorg/json/JSONObject;

    .line 154
    .line 155
    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 156
    .line 157
    .line 158
    new-instance v3, Ljava/util/HashMap;

    .line 159
    .line 160
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 161
    .line 162
    .line 163
    iget-object v7, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 164
    .line 165
    sget-object v8, Lcom/applovin/impl/v4;->s5:Lcom/applovin/impl/v4;

    .line 166
    .line 167
    invoke-virtual {v7, v8}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    check-cast v7, Ljava/lang/Boolean;

    .line 172
    .line 173
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 174
    .line 175
    .line 176
    move-result v7

    .line 177
    if-nez v7, :cond_2

    .line 178
    .line 179
    iget-object v7, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 180
    .line 181
    sget-object v8, Lcom/applovin/impl/v4;->o5:Lcom/applovin/impl/v4;

    .line 182
    .line 183
    invoke-virtual {v7, v8}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v7

    .line 187
    check-cast v7, Ljava/lang/Boolean;

    .line 188
    .line 189
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 190
    .line 191
    .line 192
    move-result v7

    .line 193
    if-nez v7, :cond_2

    .line 194
    .line 195
    const-string v7, "rid"

    .line 196
    .line 197
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 198
    .line 199
    .line 200
    move-result-object v8

    .line 201
    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v8

    .line 205
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    goto :goto_0

    .line 209
    :catchall_0
    move-exception v1

    .line 210
    goto/16 :goto_3

    .line 211
    .line 212
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 213
    .line 214
    sget-object v8, Lcom/applovin/impl/v4;->a5:Lcom/applovin/impl/v4;

    .line 215
    .line 216
    invoke-virtual {v7, v8}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    check-cast v7, Ljava/lang/Boolean;

    .line 221
    .line 222
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    if-nez v7, :cond_3

    .line 227
    .line 228
    const-string v7, "sdk_key"

    .line 229
    .line 230
    iget-object v8, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 231
    .line 232
    invoke-virtual {v8}, Lcom/applovin/impl/sdk/k;->j0()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    invoke-interface {v3, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    :cond_3
    invoke-static {v6, v1}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putAll(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 240
    .line 241
    .line 242
    move-object v1, v6

    .line 243
    goto :goto_2

    .line 244
    :cond_4
    const-string v2, "GET"

    .line 245
    .line 246
    iget-object v6, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 247
    .line 248
    sget-object v7, Lcom/applovin/impl/v4;->j5:Lcom/applovin/impl/v4;

    .line 249
    .line 250
    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    check-cast v6, Ljava/lang/Integer;

    .line 255
    .line 256
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    invoke-static {v6}, Lcom/applovin/impl/s4$a;->a(I)Lcom/applovin/impl/s4$a;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    iget-object v7, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 265
    .line 266
    invoke-virtual {v7}, Lcom/applovin/impl/sdk/k;->B()Lcom/applovin/impl/sdk/l;

    .line 267
    .line 268
    .line 269
    move-result-object v7

    .line 270
    invoke-virtual {p0}, Lcom/applovin/impl/p5;->h()Ljava/util/Map;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    invoke-virtual {v7, v8, v0, v0}, Lcom/applovin/impl/sdk/l;->a(Ljava/util/Map;ZZ)Ljava/util/Map;

    .line 275
    .line 276
    .line 277
    move-result-object v7

    .line 278
    invoke-static {v7}, Lcom/applovin/impl/k7;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    iget-object v8, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 283
    .line 284
    sget-object v9, Lcom/applovin/impl/v4;->A6:Lcom/applovin/impl/v4;

    .line 285
    .line 286
    invoke-virtual {v8, v9}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v8

    .line 290
    check-cast v8, Ljava/lang/Boolean;

    .line 291
    .line 292
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 293
    .line 294
    .line 295
    move-result v8

    .line 296
    if-nez v8, :cond_5

    .line 297
    .line 298
    const-string/jumbo v8, "video_decoders"

    .line 299
    .line 300
    .line 301
    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    :cond_5
    if-eqz v1, :cond_6

    .line 305
    .line 306
    :goto_1
    move-object v2, v6

    .line 307
    move-object v3, v7

    .line 308
    goto :goto_2

    .line 309
    :cond_6
    move-object v5, v2

    .line 310
    move-object v1, v3

    .line 311
    goto :goto_1

    .line 312
    :goto_2
    invoke-virtual {p0}, Lcom/applovin/impl/g5;->a()Landroid/content/Context;

    .line 313
    .line 314
    .line 315
    move-result-object v6

    .line 316
    invoke-static {v6}, Lcom/applovin/impl/k7;->h(Landroid/content/Context;)Z

    .line 317
    .line 318
    .line 319
    move-result v6

    .line 320
    if-nez v6, :cond_7

    .line 321
    .line 322
    invoke-virtual {p0}, Lcom/applovin/impl/g5;->a()Landroid/content/Context;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    invoke-static {v6}, Lcom/applovin/impl/k7;->j(Landroid/content/Context;)Z

    .line 327
    .line 328
    .line 329
    move-result v6

    .line 330
    if-eqz v6, :cond_8

    .line 331
    .line 332
    :cond_7
    iget-object v6, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 333
    .line 334
    invoke-virtual {v6}, Lcom/applovin/impl/sdk/k;->k()Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;

    .line 335
    .line 336
    .line 337
    move-result-object v6

    .line 338
    invoke-virtual {v6}, Lcom/applovin/impl/sdk/AppLovinAdServiceImpl;->getAndResetCustomQueryParams()Ljava/util/Map;

    .line 339
    .line 340
    .line 341
    move-result-object v6

    .line 342
    invoke-interface {v3, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 343
    .line 344
    .line 345
    :cond_8
    iget-object v6, p0, Lcom/applovin/impl/p5;->h:Ljava/lang/String;

    .line 346
    .line 347
    invoke-static {v6}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 348
    .line 349
    .line 350
    move-result v6

    .line 351
    if-eqz v6, :cond_9

    .line 352
    .line 353
    const-string v6, "sts"

    .line 354
    .line 355
    iget-object v7, p0, Lcom/applovin/impl/p5;->h:Ljava/lang/String;

    .line 356
    .line 357
    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    :cond_9
    iget-object v6, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 361
    .line 362
    invoke-static {v6}, Lcom/applovin/impl/sdk/network/a;->a(Lcom/applovin/impl/sdk/k;)Lcom/applovin/impl/sdk/network/a$a;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    invoke-virtual {p0}, Lcom/applovin/impl/p5;->f()Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v7

    .line 370
    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/network/a$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/a$a;

    .line 371
    .line 372
    .line 373
    move-result-object v6

    .line 374
    invoke-virtual {p0}, Lcom/applovin/impl/p5;->e()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v7

    .line 378
    invoke-virtual {v6, v7}, Lcom/applovin/impl/sdk/network/a$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/a$a;

    .line 379
    .line 380
    .line 381
    move-result-object v6

    .line 382
    invoke-virtual {v6, v3}, Lcom/applovin/impl/sdk/network/a$a;->b(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/a$a;

    .line 383
    .line 384
    .line 385
    move-result-object v3

    .line 386
    invoke-virtual {v3, v5}, Lcom/applovin/impl/sdk/network/a$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/a$a;

    .line 387
    .line 388
    .line 389
    move-result-object v3

    .line 390
    invoke-direct {p0}, Lcom/applovin/impl/p5;->g()Ljava/util/Map;

    .line 391
    .line 392
    .line 393
    move-result-object v5

    .line 394
    invoke-virtual {v3, v5}, Lcom/applovin/impl/sdk/network/a$a;->a(Ljava/util/Map;)Lcom/applovin/impl/sdk/network/a$a;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    new-instance v5, Lorg/json/JSONObject;

    .line 399
    .line 400
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 401
    .line 402
    .line 403
    invoke-virtual {v3, v5}, Lcom/applovin/impl/sdk/network/a$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/a$a;

    .line 404
    .line 405
    .line 406
    move-result-object v3

    .line 407
    iget-object v5, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 408
    .line 409
    sget-object v6, Lcom/applovin/impl/v4;->U2:Lcom/applovin/impl/v4;

    .line 410
    .line 411
    invoke-virtual {v5, v6}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    check-cast v5, Ljava/lang/Integer;

    .line 416
    .line 417
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    invoke-virtual {v3, v5}, Lcom/applovin/impl/sdk/network/a$a;->a(I)Lcom/applovin/impl/sdk/network/a$a;

    .line 422
    .line 423
    .line 424
    move-result-object v3

    .line 425
    iget-object v5, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 426
    .line 427
    sget-object v6, Lcom/applovin/impl/v4;->V2:Lcom/applovin/impl/v4;

    .line 428
    .line 429
    invoke-virtual {v5, v6}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v5

    .line 433
    check-cast v5, Ljava/lang/Boolean;

    .line 434
    .line 435
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 436
    .line 437
    .line 438
    move-result v5

    .line 439
    invoke-virtual {v3, v5}, Lcom/applovin/impl/sdk/network/a$a;->c(Z)Lcom/applovin/impl/sdk/network/a$a;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    iget-object v5, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 444
    .line 445
    sget-object v6, Lcom/applovin/impl/v4;->W2:Lcom/applovin/impl/v4;

    .line 446
    .line 447
    invoke-virtual {v5, v6}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v5

    .line 451
    check-cast v5, Ljava/lang/Boolean;

    .line 452
    .line 453
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 454
    .line 455
    .line 456
    move-result v5

    .line 457
    invoke-virtual {v3, v5}, Lcom/applovin/impl/sdk/network/a$a;->d(Z)Lcom/applovin/impl/sdk/network/a$a;

    .line 458
    .line 459
    .line 460
    move-result-object v3

    .line 461
    iget-object v5, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 462
    .line 463
    sget-object v6, Lcom/applovin/impl/v4;->T2:Lcom/applovin/impl/v4;

    .line 464
    .line 465
    invoke-virtual {v5, v6}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object v5

    .line 469
    check-cast v5, Ljava/lang/Integer;

    .line 470
    .line 471
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 472
    .line 473
    .line 474
    move-result v5

    .line 475
    invoke-virtual {v3, v5}, Lcom/applovin/impl/sdk/network/a$a;->c(I)Lcom/applovin/impl/sdk/network/a$a;

    .line 476
    .line 477
    .line 478
    move-result-object v3

    .line 479
    invoke-virtual {v3, v2}, Lcom/applovin/impl/sdk/network/a$a;->a(Lcom/applovin/impl/s4$a;)Lcom/applovin/impl/sdk/network/a$a;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    invoke-virtual {v2, v4}, Lcom/applovin/impl/sdk/network/a$a;->f(Z)Lcom/applovin/impl/sdk/network/a$a;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    if-eqz v1, :cond_a

    .line 488
    .line 489
    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/network/a$a;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/sdk/network/a$a;

    .line 490
    .line 491
    .line 492
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 493
    .line 494
    sget-object v3, Lcom/applovin/impl/v4;->C5:Lcom/applovin/impl/v4;

    .line 495
    .line 496
    invoke-virtual {v1, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    check-cast v1, Ljava/lang/Boolean;

    .line 501
    .line 502
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 503
    .line 504
    .line 505
    move-result v1

    .line 506
    invoke-virtual {v2, v1}, Lcom/applovin/impl/sdk/network/a$a;->b(Z)Lcom/applovin/impl/sdk/network/a$a;

    .line 507
    .line 508
    .line 509
    :cond_a
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/network/a$a;->a()Lcom/applovin/impl/sdk/network/a;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    new-instance v2, Lcom/applovin/impl/p5$a;

    .line 514
    .line 515
    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 516
    .line 517
    invoke-direct {v2, p0, v1, v3}, Lcom/applovin/impl/p5$a;-><init>(Lcom/applovin/impl/p5;Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/k;)V

    .line 518
    .line 519
    .line 520
    sget-object v1, Lcom/applovin/impl/v4;->o0:Lcom/applovin/impl/v4;

    .line 521
    .line 522
    invoke-virtual {v2, v1}, Lcom/applovin/impl/j6;->c(Lcom/applovin/impl/v4;)V

    .line 523
    .line 524
    .line 525
    sget-object v1, Lcom/applovin/impl/v4;->p0:Lcom/applovin/impl/v4;

    .line 526
    .line 527
    invoke-virtual {v2, v1}, Lcom/applovin/impl/j6;->b(Lcom/applovin/impl/v4;)V

    .line 528
    .line 529
    .line 530
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 531
    .line 532
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    invoke-virtual {v1, v2}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 537
    .line 538
    .line 539
    goto :goto_4

    .line 540
    :goto_3
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 541
    .line 542
    .line 543
    move-result v2

    .line 544
    if-eqz v2, :cond_b

    .line 545
    .line 546
    iget-object v2, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 547
    .line 548
    iget-object v3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 549
    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    .line 551
    .line 552
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 553
    .line 554
    .line 555
    const-string v5, "Unable to fetch ad for zone id: "

    .line 556
    .line 557
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    .line 559
    .line 560
    iget-object v5, p0, Lcom/applovin/impl/p5;->g:Lcom/applovin/impl/u;

    .line 561
    .line 562
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 563
    .line 564
    .line 565
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 566
    .line 567
    .line 568
    move-result-object v4

    .line 569
    invoke-virtual {v2, v3, v4, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 570
    .line 571
    .line 572
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/p5;->a(ILjava/lang/String;)V

    .line 577
    .line 578
    .line 579
    :goto_4
    return-void
.end method
