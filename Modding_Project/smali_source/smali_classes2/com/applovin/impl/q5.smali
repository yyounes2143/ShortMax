.class public Lcom/applovin/impl/q5;
.super Lcom/applovin/impl/g5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/q5$b;
    }
.end annotation


# instance fields
.field private final g:Lcom/applovin/impl/q5$b;

.field private final h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/sdk/k;Ljava/lang/String;Lcom/applovin/impl/q5$b;)V
    .locals 1

    .line 1
    const-string v0, "TaskFetchAppAdsContent"

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lcom/applovin/impl/g5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/k;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/impl/q5;->h:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/q5$b;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/q5;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/q5;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/applovin/impl/q5;)Lcom/applovin/impl/q5$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/q5;->g:Lcom/applovin/impl/q5$b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/q5;->h:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v2, "\\."

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v2, 0x0

    .line 31
    if-lez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/String;

    .line 38
    .line 39
    const-string/jumbo v3, "www"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-nez v3, :cond_0

    .line 47
    .line 48
    const-string v3, "m"

    .line 49
    .line 50
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    :cond_1
    const-string v0, "."

    .line 60
    .line 61
    invoke-static {v0, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v1, Landroid/net/Uri$Builder;

    .line 66
    .line 67
    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v3, "https"

    .line 71
    .line 72
    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v3, "app-ads.txt"

    .line 81
    .line 82
    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    new-instance v4, Landroid/net/Uri$Builder;

    .line 91
    .line 92
    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v5, "http"

    .line 96
    .line 97
    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-virtual {v4, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 114
    .line 115
    invoke-static {v3}, Lcom/applovin/impl/sdk/network/a;->a(Lcom/applovin/impl/sdk/k;)Lcom/applovin/impl/sdk/network/a$a;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    const-string v4, "GET"

    .line 120
    .line 121
    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/network/a$a;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/a$a;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v4

    .line 129
    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/network/a$a;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/a$a;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v3, v0}, Lcom/applovin/impl/sdk/network/a$a;->a(Ljava/lang/String;)Lcom/applovin/impl/sdk/network/a$a;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    const-string v3, ""

    .line 142
    .line 143
    invoke-virtual {v0, v3}, Lcom/applovin/impl/sdk/network/a$a;->a(Ljava/lang/Object;)Lcom/applovin/impl/sdk/network/a$a;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v0, v2}, Lcom/applovin/impl/sdk/network/a$a;->a(Z)Lcom/applovin/impl/sdk/network/a$a;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/network/a$a;->a()Lcom/applovin/impl/sdk/network/a;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    iput-object v1, p0, Lcom/applovin/impl/q5;->i:Ljava/lang/String;

    .line 160
    .line 161
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-eqz v1, :cond_2

    .line 166
    .line 167
    iget-object v1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 168
    .line 169
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 170
    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    const-string v4, "Looking up app-ads.txt at "

    .line 177
    .line 178
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    iget-object v4, p0, Lcom/applovin/impl/q5;->i:Ljava/lang/String;

    .line 182
    .line 183
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_2
    new-instance v1, Lcom/applovin/impl/q5$a;

    .line 194
    .line 195
    iget-object v2, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 196
    .line 197
    invoke-direct {v1, p0, v0, v2}, Lcom/applovin/impl/q5$a;-><init>(Lcom/applovin/impl/q5;Lcom/applovin/impl/sdk/network/a;Lcom/applovin/impl/sdk/k;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 201
    .line 202
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v0, v1}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;)V

    .line 207
    .line 208
    .line 209
    return-void
.end method
