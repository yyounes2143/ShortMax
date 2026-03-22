.class public Lhb/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lhb/r0;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lhb/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lhb/f0;

.field private c:Lhb/a1;

.field private d:Lhb/r0;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lhb/w;->e:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p1, p0, Lhb/w;->f:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a()Lorg/json/JSONObject;
    .locals 8

    .line 1
    const-string v0, "events_global_properties"

    .line 2
    .line 3
    iget-object v1, p0, Lhb/w;->a:Ljava/util/List;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "hmsSdk"

    .line 7
    .line 8
    if-eqz v1, :cond_6

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_0
    iget-object v1, p0, Lhb/w;->b:Lhb/f0;

    .line 19
    .line 20
    if-eqz v1, :cond_5

    .line 21
    .line 22
    iget-object v1, p0, Lhb/w;->c:Lhb/a1;

    .line 23
    .line 24
    if-eqz v1, :cond_5

    .line 25
    .line 26
    iget-object v1, p0, Lhb/w;->d:Lhb/r0;

    .line 27
    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto/16 :goto_3

    .line 31
    .line 32
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    .line 33
    .line 34
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-object v4, p0, Lhb/w;->b:Lhb/f0;

    .line 38
    .line 39
    invoke-interface {v4}, Lhb/r0;->a()Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string v5, "header"

    .line 44
    .line 45
    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    new-instance v4, Lorg/json/JSONObject;

    .line 49
    .line 50
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 51
    .line 52
    .line 53
    iget-object v5, p0, Lhb/w;->d:Lhb/r0;

    .line 54
    .line 55
    invoke-interface {v5}, Lhb/r0;->a()Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    iget-object v6, p0, Lhb/w;->c:Lhb/a1;

    .line 60
    .line 61
    invoke-interface {v6}, Lhb/r0;->a()Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const-string v7, "properties"

    .line 66
    .line 67
    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    .line 71
    .line 72
    iget-object v7, p0, Lhb/w;->e:Ljava/lang/String;

    .line 73
    .line 74
    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    iget-object v6, p0, Lhb/w;->e:Ljava/lang/String;

    .line 82
    .line 83
    invoke-virtual {v5, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    :goto_0
    const-string v0, "events_common"

    .line 87
    .line 88
    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    new-instance v0, Lorg/json/JSONArray;

    .line 92
    .line 93
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 94
    .line 95
    .line 96
    iget-object v5, p0, Lhb/w;->a:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-eqz v6, :cond_3

    .line 107
    .line 108
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    check-cast v6, Lhb/f;

    .line 113
    .line 114
    invoke-virtual {v6}, Lhb/f;->a()Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    if-eqz v6, :cond_2

    .line 119
    .line 120
    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_2
    const-string v6, "custom event is empty,delete this event"

    .line 125
    .line 126
    invoke-static {v3, v6}, Lhb/f1;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_3
    const-string v5, "events"

    .line 131
    .line 132
    invoke-virtual {v4, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    :try_start_1
    const-string v4, "UTF-8"

    .line 140
    .line 141
    invoke-virtual {v0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-static {v0}, Lhb/g0;->g([B)[B

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget-object v4, p0, Lhb/w;->f:Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v0, v4}, Lhb/p0;->c([BLjava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_4

    .line 160
    .line 161
    const-string v0, "eventInfo encrypt failed,report over!"

    .line 162
    .line 163
    invoke-static {v3, v0}, Lhb/f1;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-object v2

    .line 167
    :cond_4
    const-string v4, "event"

    .line 168
    .line 169
    invoke-virtual {v1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 170
    .line 171
    .line 172
    return-object v1

    .line 173
    :catch_1
    const-string v0, "getBitZip(): Unsupported coding : utf-8"

    .line 174
    .line 175
    :goto_2
    invoke-static {v3, v0}, Lhb/f1;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return-object v2

    .line 179
    :cond_5
    :goto_3
    const-string v0, "model in wrong format"

    .line 180
    .line 181
    goto :goto_2

    .line 182
    :cond_6
    :goto_4
    const-string v0, "Not have actionEvent to send"

    .line 183
    .line 184
    goto :goto_2
.end method

.method public b(Lhb/f0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhb/w;->b:Lhb/f0;

    .line 2
    .line 3
    return-void
.end method

.method public c(Lhb/j0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhb/w;->d:Lhb/r0;

    .line 2
    .line 3
    return-void
.end method

.method public d(Lhb/a1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhb/w;->c:Lhb/a1;

    .line 2
    .line 3
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lhb/w;->e:Ljava/lang/String;

    .line 4
    .line 5
    :cond_0
    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhb/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lhb/w;->a:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
