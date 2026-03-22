.class public Lhb/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lhb/u;


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


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lhb/f;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lhb/k;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p3, p0, Lhb/k;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p4, p0, Lhb/k;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p1, p0, Lhb/k;->d:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lhb/k;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lhb/k;->c:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lhb/k;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lhb/o0;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lhb/v0;->q()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    filled-new-array {v0}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v2, "backup_event"

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lhb/k;->d:Ljava/util/List;

    .line 2
    .line 3
    const-string v1, "hmsSdk"

    .line 4
    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    invoke-static {}, Lhb/v0;->s()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {}, Lhb/v0;->q()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    const/high16 v3, 0x100000

    .line 24
    .line 25
    mul-int/2addr v0, v3

    .line 26
    const-string v4, "cached_v2_1"

    .line 27
    .line 28
    invoke-static {v2, v4, v0}, Lhb/h;->c(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v2, "The cacheFile is full,Can not writing data! reqID:"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lhb/k;->b:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v0}, Lhb/f1;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lhb/k;->a:Ljava/lang/String;

    .line 58
    .line 59
    iget-object v2, p0, Lhb/k;->c:Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v0, v2}, Lhb/o0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-static {}, Lhb/v0;->q()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v2, v4, v0}, Lhb/i;->f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Ljava/util/List;

    .line 78
    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_2

    .line 86
    .line 87
    iget-object v5, p0, Lhb/k;->d:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v5, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 90
    .line 91
    .line 92
    :cond_2
    new-instance v2, Lorg/json/JSONArray;

    .line 93
    .line 94
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 95
    .line 96
    .line 97
    iget-object v5, p0, Lhb/k;->d:Ljava/util/List;

    .line 98
    .line 99
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result v6

    .line 107
    if-eqz v6, :cond_3

    .line 108
    .line 109
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v6

    .line 113
    check-cast v6, Lhb/f;

    .line 114
    .line 115
    :try_start_0
    invoke-virtual {v6}, Lhb/f;->h()Lorg/json/JSONObject;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catch_0
    const-string v6, "event to json error"

    .line 124
    .line 125
    invoke-static {v1, v6}, Lhb/f1;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-static {}, Lhb/v0;->o()I

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 138
    .line 139
    .line 140
    move-result v6

    .line 141
    mul-int/2addr v5, v3

    .line 142
    if-le v6, v5, :cond_4

    .line 143
    .line 144
    const-string v0, "this failed data is too long,can not writing it"

    .line 145
    .line 146
    invoke-static {v1, v0}, Lhb/f1;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lhb/k;->d:Ljava/util/List;

    .line 151
    .line 152
    return-void

    .line 153
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    const-string v5, "data send failed, write to cache file...reqID:"

    .line 159
    .line 160
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    iget-object v5, p0, Lhb/k;->b:Ljava/lang/String;

    .line 164
    .line 165
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-static {v1, v3}, Lhb/f1;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    invoke-static {}, Lhb/v0;->q()Landroid/content/Context;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-static {v1, v4, v0, v2}, Lhb/l;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-direct {p0}, Lhb/k;->a()V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :cond_5
    :goto_1
    const-string v0, "failed events is empty"

    .line 187
    .line 188
    invoke-static {v1, v0}, Lhb/f1;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    return-void
.end method
