.class public abstract Lcom/applovin/impl/j5;
.super Lcom/applovin/impl/g5;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/s3$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/j5$e;
    }
.end annotation


# instance fields
.field protected final g:Lcom/applovin/impl/sdk/ad/b;

.field private h:Lcom/applovin/sdk/AppLovinAdLoadListener;

.field protected final i:Ljava/lang/String;

.field private final j:Lcom/applovin/impl/sdk/m;

.field private final k:Ljava/util/Collection;

.field private l:Z

.field protected m:Ljava/util/concurrent/ExecutorService;

.field protected n:Ljava/util/concurrent/ExecutorService;

.field protected o:Ljava/util/List;

.field private p:Lcom/applovin/impl/d0;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/applovin/impl/g5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/k;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/applovin/impl/j5;->i:Ljava/lang/String;

    .line 13
    .line 14
    if-eqz p2, :cond_3

    .line 15
    .line 16
    iput-object p2, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 17
    .line 18
    iput-object p4, p0, Lcom/applovin/impl/j5;->h:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 19
    .line 20
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/k;->H()Lcom/applovin/impl/sdk/m;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/applovin/impl/j5;->j:Lcom/applovin/impl/sdk/m;

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/applovin/impl/j5;->h()Ljava/util/Collection;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/applovin/impl/j5;->k:Ljava/util/Collection;

    .line 31
    .line 32
    sget-object p1, Lcom/applovin/impl/v4;->I0:Lcom/applovin/impl/v4;

    .line 33
    .line 34
    invoke-virtual {p3, p1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Lcom/applovin/impl/b6;->f()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1}, Lcom/applovin/impl/b6;->a()Ljava/util/concurrent/ExecutorService;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/applovin/impl/j5;->m:Ljava/util/concurrent/ExecutorService;

    .line 65
    .line 66
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/applovin/impl/b6;->e()Ljava/util/concurrent/ExecutorService;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/applovin/impl/j5;->n:Ljava/util/concurrent/ExecutorService;

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_0
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getMediationServeId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_1

    .line 86
    .line 87
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getMediationServeId()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    :goto_0
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    new-instance p4, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v0, "com.applovin.sdk.caching."

    .line 110
    .line 111
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p4

    .line 121
    sget-object v0, Lcom/applovin/impl/v4;->K0:Lcom/applovin/impl/v4;

    .line 122
    .line 123
    invoke-virtual {p3, v0}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Ljava/lang/Integer;

    .line 128
    .line 129
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-virtual {p2, p4, v0}, Lcom/applovin/impl/b6;->a(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    iput-object p2, p0, Lcom/applovin/impl/j5;->m:Ljava/util/concurrent/ExecutorService;

    .line 138
    .line 139
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    new-instance p4, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v0, "com.applovin.sdk.caching.html."

    .line 149
    .line 150
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    sget-object p4, Lcom/applovin/impl/v4;->L0:Lcom/applovin/impl/v4;

    .line 161
    .line 162
    invoke-virtual {p3, p4}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    check-cast p3, Ljava/lang/Integer;

    .line 167
    .line 168
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    .line 169
    .line 170
    .line 171
    move-result p3

    .line 172
    invoke-virtual {p2, p1, p3}, Lcom/applovin/impl/b6;->a(Ljava/lang/String;I)Ljava/util/concurrent/ExecutorService;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    iput-object p1, p0, Lcom/applovin/impl/j5;->n:Ljava/util/concurrent/ExecutorService;

    .line 177
    .line 178
    :cond_2
    :goto_1
    return-void

    .line 179
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 180
    .line 181
    const-string p2, "No ad specified."

    .line 182
    .line 183
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11

    .line 67
    iget-object v0, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->getCachePrefix()Ljava/lang/String;

    move-result-object v0

    .line 68
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-static {v1, v0, v2}, Lcom/applovin/impl/k7;->a(Landroid/net/Uri;Ljava/lang/String;Lcom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/applovin/impl/j5;->j:Lcom/applovin/impl/sdk/m;

    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    sget-object v3, Lcom/applovin/impl/v4;->E6:Lcom/applovin/impl/v4;

    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v10, "file://"

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/j5;->j:Lcom/applovin/impl/sdk/m;

    invoke-virtual {v2, v0}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    .line 72
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 73
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 74
    iget-object p1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->H()Lcom/applovin/impl/sdk/m;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {p1, v5, p2}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;)I

    move-result v7

    .line 75
    iget-object p1, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {p1}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object v9

    .line 76
    iget-object v3, p0, Lcom/applovin/impl/j5;->j:Lcom/applovin/impl/sdk/m;

    iget-object v8, p0, Lcom/applovin/impl/j5;->i:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual/range {v3 .. v9}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/File;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v1
.end method

.method public static synthetic e(Lcom/applovin/impl/j5;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/impl/j5;->i()V

    return-void
.end method

.method private h()Ljava/util/Collection;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 7
    .line 8
    sget-object v2, Lcom/applovin/impl/v4;->D0:Lcom/applovin/impl/v4;

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    array-length v2, v1

    .line 21
    const/4 v3, 0x0

    .line 22
    :goto_0
    if-ge v3, v2, :cond_0

    .line 23
    .line 24
    aget-char v4, v1, v3

    .line 25
    .line 26
    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/16 v1, 0x22

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method private synthetic i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/j5;->h:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 6
    .line 7
    invoke-interface {v0, v1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->adReceived(Lcom/applovin/sdk/AppLovinAd;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/applovin/impl/j5;->h:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 13
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " image to cache"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to cache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " image"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0

    .line 17
    :cond_3
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " image..."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_4
    invoke-virtual {p0, p1}, Lcom/applovin/impl/j5;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method a(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;
    .locals 12

    const-string v0, "cacheImageResource"

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/k;->H()Lcom/applovin/impl/sdk/m;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1, p1, v2}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;)I

    move-result v9

    .line 20
    iget-object v1, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {v1}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object v1

    .line 21
    iget-object v3, p0, Lcom/applovin/impl/j5;->j:Lcom/applovin/impl/sdk/m;

    invoke-virtual {p0}, Lcom/applovin/impl/g5;->a()Landroid/content/Context;

    move-result-object v4

    iget-object v2, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/b;->getCachePrefix()Ljava/lang/String;

    move-result-object v6

    iget-object v10, p0, Lcom/applovin/impl/j5;->i:Ljava/lang/String;

    move-object v5, p1

    move-object v7, p2

    move v8, p3

    move-object v11, v1

    invoke-virtual/range {v3 .. v11}, Lcom/applovin/impl/sdk/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 22
    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 23
    iget-object p3, p0, Lcom/applovin/impl/j5;->j:Lcom/applovin/impl/sdk/m;

    invoke-virtual {p0}, Lcom/applovin/impl/g5;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p3, p2, v2}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 24
    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_0

    return-object p3

    .line 25
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    const-string v3, "Unable to extract Uri from image file"

    invoke-virtual {p3, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    const-string p3, "extractUriFromImageFile"

    invoke-virtual {p0, p2, p3, v1}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_2

    .line 27
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to retrieve File from cached image filename = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_3
    const-string p3, "retrieveImageFile"

    invoke-virtual {p0, p2, p3, v1}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 29
    :cond_4
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object p3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to cache image: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, p3, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_5
    invoke-virtual {p0, p1, v0, v1}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 31
    :goto_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to cache image at url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    :cond_6
    iget-object p3, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {p3}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object p3

    .line 33
    const-string/jumbo v1, "url"

    invoke-static {v1, p1, p3}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    iget-object p1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object p1

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, p2, p3}, Lcom/applovin/impl/q1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/util/Map;)V

    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/j5$e;)Lcom/applovin/impl/d0;
    .locals 9

    .line 12
    new-instance v8, Lcom/applovin/impl/d0;

    iget-object v2, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    iget-object v4, p0, Lcom/applovin/impl/j5;->n:Ljava/util/concurrent/ExecutorService;

    iget-object v5, p0, Lcom/applovin/impl/j5;->i:Ljava/lang/String;

    iget-object v6, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    new-instance v7, Lcom/applovin/impl/j5$d;

    invoke-direct {v7, p0, p3}, Lcom/applovin/impl/j5$d;-><init>(Lcom/applovin/impl/j5;Lcom/applovin/impl/j5$e;)V

    move-object v0, v8

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/applovin/impl/d0;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;Ljava/util/List;Ljava/util/concurrent/ExecutorService;Ljava/lang/String;Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/d0$c;)V

    iput-object v8, p0, Lcom/applovin/impl/j5;->p:Lcom/applovin/impl/d0;

    return-object v8
.end method

.method protected a(Ljava/lang/String;Lcom/applovin/impl/e0$a;)Lcom/applovin/impl/e0;
    .locals 7

    .line 7
    new-instance v6, Lcom/applovin/impl/e0;

    iget-object v2, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    iget-object v3, p0, Lcom/applovin/impl/j5;->i:Ljava/lang/String;

    iget-object v4, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    move-object v0, v6

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/applovin/impl/e0;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;Ljava/lang/String;Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/e0$a;)V

    return-object v6
.end method

.method protected a(Ljava/lang/String;Ljava/util/List;ZLcom/applovin/impl/e0$a;)Lcom/applovin/impl/e0;
    .locals 11

    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object p2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    const-string p3, "No video to cache, skipping..."

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_2
    new-instance v0, Lcom/applovin/impl/e0;

    iget-object v5, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    iget-object v8, p0, Lcom/applovin/impl/j5;->i:Ljava/lang/String;

    iget-object v9, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    new-instance v10, Lcom/applovin/impl/j5$c;

    invoke-direct {v10, p0, p4}, Lcom/applovin/impl/j5$c;-><init>(Lcom/applovin/impl/j5;Lcom/applovin/impl/e0$a;)V

    move-object v3, v0

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v10}, Lcom/applovin/impl/e0;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;Ljava/util/List;ZLjava/lang/String;Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/e0$a;)V

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/b;)Ljava/lang/String;
    .locals 11

    .line 40
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    sget-object v1, Lcom/applovin/impl/v4;->E0:Lcom/applovin/impl/v4;

    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object p3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    const-string v0, "Resource caching is disabled, skipping cache..."

    invoke-virtual {p2, p3, v0}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1

    .line 43
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/ad/b;->a0()Ljava/util/List;

    move-result-object v1

    .line 45
    invoke-virtual {p3}, Lcom/applovin/impl/sdk/ad/b;->R()Ljava/util/List;

    move-result-object v2

    .line 46
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v4

    .line 47
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-ge v4, v6, :cond_3

    .line 48
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->l()Z

    move-result v4

    if-eqz v4, :cond_4

    return-object p1

    .line 49
    :cond_4
    invoke-virtual {v0, v3, v5}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    goto :goto_0

    .line 50
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    move v6, v4

    .line 51
    :goto_2
    iget-object v7, p0, Lcom/applovin/impl/j5;->k:Ljava/util/Collection;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    if-ge v6, v5, :cond_6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_6
    if-le v6, v4, :cond_c

    if-eq v6, v5, :cond_c

    .line 52
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 53
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 54
    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_a

    .line 55
    invoke-direct {p0, v3, v5}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 56
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v4, v6, v7}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p3, v5}, Lcom/applovin/impl/sdk/ad/b;->a(Landroid/net/Uri;)V

    goto :goto_3

    .line 58
    :cond_7
    invoke-interface {v1, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const/16 v5, -0xcb

    .line 59
    invoke-virtual {p0, v5}, Lcom/applovin/impl/j5;->a(I)V

    const/4 v5, 0x1

    .line 60
    iput-boolean v5, p0, Lcom/applovin/impl/j5;->l:Z

    .line 61
    :cond_8
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v8, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to cache HTML Resource: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_9
    invoke-static {p3}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object v5

    .line 63
    const-string v8, "cacheHtmlResource"

    invoke-virtual {p0, v7, v8, v5}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_3

    .line 64
    :cond_a
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v8, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skip caching of optional or non-resource: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_3
    move v5, v6

    goto/16 :goto_1

    .line 65
    :cond_c
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p2

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object p3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    const-string v0, "Unable to cache resource; ad HTML is invalid."

    invoke-virtual {p2, p3, v0}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-object p1

    .line 66
    :cond_e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/util/List;)Ljava/util/List;
    .locals 2

    .line 5
    iput-object p1, p0, Lcom/applovin/impl/j5;->o:Ljava/util/List;

    .line 6
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/j5;->m:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/b6;->a(Ljava/util/List;Ljava/util/concurrent/ExecutorService;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method a(I)V
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/applovin/impl/j5;->h:Lcom/applovin/sdk/AppLovinAdLoadListener;

    if-eqz v0, :cond_1

    .line 79
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling back ad load failed with error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/j5;->h:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-interface {v0, p1}, Lcom/applovin/sdk/AppLovinAdLoadListener;->failedToReceiveAd(I)V

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/applovin/impl/j5;->h:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 82
    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->g()V

    return-void
.end method

.method a(Lcom/applovin/impl/sdk/ad/b;)V
    .locals 4

    .line 35
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->k0()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->V0()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/ad/b;->c0()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/b;)Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/applovin/impl/sdk/ad/b;->c(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad updated with video button HTML assets cached = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/applovin/impl/sdk/o;->f(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/applovin/impl/v2;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->P()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getMediationServeId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v0, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    const-string v1, "Updating flag for timeout..."

    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/impl/j5;->g()V

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->Z()Lcom/applovin/impl/s3;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/applovin/impl/s3;->b(Lcom/applovin/impl/s3$a;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 84
    const-string/jumbo p3, "url"

    invoke-static {p3, p1, v0}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->putStringIfValid(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 85
    iget-object p1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object p1

    sget-object p3, Lcom/applovin/impl/c2;->z0:Lcom/applovin/impl/c2;

    invoke-virtual {p1, p3, p2, v0}, Lcom/applovin/impl/d2;->a(Lcom/applovin/impl/c2;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method protected b(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 18
    iget-object v0, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->c0()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method b(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;
    .locals 11

    .line 2
    invoke-static {p1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caching video "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->H()Lcom/applovin/impl/sdk/m;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/b;)I

    move-result v8

    .line 5
    iget-object v0, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {v0}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object v0

    .line 6
    iget-object v2, p0, Lcom/applovin/impl/j5;->j:Lcom/applovin/impl/sdk/m;

    invoke-virtual {p0}, Lcom/applovin/impl/g5;->a()Landroid/content/Context;

    move-result-object v3

    iget-object v1, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->getCachePrefix()Ljava/lang/String;

    move-result-object v5

    iget-object v9, p0, Lcom/applovin/impl/j5;->i:Ljava/lang/String;

    move-object v4, p1

    move-object v6, p2

    move v7, p3

    move-object v10, v0

    invoke-virtual/range {v2 .. v10}, Lcom/applovin/impl/sdk/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_6

    .line 8
    iget-object p1, p0, Lcom/applovin/impl/j5;->j:Lcom/applovin/impl/sdk/m;

    invoke-virtual {p0}, Lcom/applovin/impl/g5;->a()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 10
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v0, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish caching video for ad #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ". Updating ad with cachedVideoFilename = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p3

    .line 11
    :cond_2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create URI from cached video file = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_3
    const-string p1, "extractUriFromVideoFile"

    invoke-virtual {p0, p2, p1, v0}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object p3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to retrieve File from cached video filename = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p3, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_5
    const-string p1, "retrieveVideoFile"

    invoke-virtual {p0, p2, p1, v0}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 15
    :cond_6
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object p3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to cache video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p3, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_7
    const-string p2, "cacheVideo"

    invoke-virtual {p0, p1, p2, v0}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/16 p1, -0xca

    .line 17
    invoke-virtual {p0, p1}, Lcom/applovin/impl/j5;->a(I)V

    :cond_8
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected b(Ljava/lang/String;Lcom/applovin/impl/e0$a;)Lcom/applovin/impl/e0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->c0()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/util/List;ZLcom/applovin/impl/e0$a;)Lcom/applovin/impl/e0;

    move-result-object p1

    return-object p1
.end method

.method c(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->c0()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/applovin/impl/j5;->b(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method protected c(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-static {v0}, Lcom/applovin/impl/e2;->a(Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/applovin/impl/j5;->j:Lcom/applovin/impl/sdk/m;

    invoke-virtual {v2, p1, p2, p3, v0}, Lcom/applovin/impl/sdk/m;->a(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;)Ljava/io/InputStream;

    move-result-object p1

    if-nez p1, :cond_1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    return-object v1

    .line 5
    :cond_1
    :try_start_1
    iget-object p2, p0, Lcom/applovin/impl/j5;->j:Lcom/applovin/impl/sdk/m;

    invoke-virtual {p2, p1}, Lcom/applovin/impl/sdk/m;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p2

    :catchall_1
    move-exception p2

    .line 7
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 8
    :goto_2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object p3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    const-string v0, "Unknown failure to read input stream."

    invoke-virtual {p2, p3, v0, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :cond_2
    iget-object p2, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object p3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    invoke-virtual {p2, p3, p1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    iget-object p2, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/k;->E()Lcom/applovin/impl/q1;

    move-result-object p2

    iget-object p3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    const-string v0, "readInputStreamAsString"

    invoke-virtual {p2, p3, v0, p1}, Lcom/applovin/impl/q1;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method protected e()Ljava/util/List;
    .locals 3

    .line 2
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    const-string v2, "Caching mute images..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->Q()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->Q()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/j5$a;

    invoke-direct {v2, p0}, Lcom/applovin/impl/j5$a;-><init>(Lcom/applovin/impl/j5;)V

    invoke-virtual {p0, v1, v2}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Lcom/applovin/impl/e0$a;)Lcom/applovin/impl/e0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->i0()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/b;->i0()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/applovin/impl/j5$b;

    invoke-direct {v2, p0}, Lcom/applovin/impl/j5$b;-><init>(Lcom/applovin/impl/j5;)V

    invoke-virtual {p0, v1, v2}, Lcom/applovin/impl/j5;->a(Ljava/lang/String;Lcom/applovin/impl/e0$a;)Lcom/applovin/impl/e0;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method f()V
    .locals 4

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
    const-string v3, "Rendered new ad:"

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

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
    new-instance v0, Lcom/applovin/impl/pb;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/applovin/impl/pb;-><init>(Lcom/applovin/impl/j5;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method protected g()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/applovin/impl/j5;->l:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/applovin/impl/j5;->o:Ljava/util/List;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/applovin/impl/j5;->o:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/applovin/impl/c0;

    .line 31
    .line 32
    invoke-virtual {v2, v0}, Lcom/applovin/impl/c0;->a(Z)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/applovin/impl/b6;->f()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/applovin/impl/j5;->p:Lcom/applovin/impl/d0;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/applovin/impl/d0;->c()V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/j5;->m:Ljava/util/concurrent/ExecutorService;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lcom/applovin/impl/j5;->m:Ljava/util/concurrent/ExecutorService;

    .line 65
    .line 66
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/j5;->n:Ljava/util/concurrent/ExecutorService;

    .line 67
    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 71
    .line 72
    .line 73
    iput-object v1, p0, Lcom/applovin/impl/j5;->n:Ljava/util/concurrent/ExecutorService;

    .line 74
    .line 75
    :cond_3
    :goto_1
    return-void
.end method

.method j()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/applovin/impl/o0;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "Caching mute images..."

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->Q()Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "mute"

    .line 30
    .line 31
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/j5;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/ad/b;->b(Landroid/net/Uri;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->i0()Landroid/net/Uri;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const-string/jumbo v1, "unmute"

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/j5;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    iget-object v1, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/ad/b;->c(Landroid/net/Uri;)V

    .line 60
    .line 61
    .line 62
    :cond_3
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v3, "Ad updated with muteImageFilename = "

    .line 78
    .line 79
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    iget-object v3, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/b;->Q()Landroid/net/Uri;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v3, ", unmuteImageFilename = "

    .line 92
    .line 93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget-object v3, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 97
    .line 98
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/b;->i0()Landroid/net/Uri;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    return-void
.end method

.method protected k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->Z()Lcom/applovin/impl/s3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Lcom/applovin/impl/s3;->b(Lcom/applovin/impl/s3$a;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/applovin/impl/b6;->f()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/applovin/impl/j5;->m:Ljava/util/concurrent/ExecutorService;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 28
    .line 29
    .line 30
    iput-object v1, p0, Lcom/applovin/impl/j5;->m:Ljava/util/concurrent/ExecutorService;

    .line 31
    .line 32
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/j5;->n:Ljava/util/concurrent/ExecutorService;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/applovin/impl/j5;->n:Ljava/util/concurrent/ExecutorService;

    .line 40
    .line 41
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdZone()Lcom/applovin/impl/u;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/applovin/impl/u;->d()Lcom/applovin/mediation/MaxAdFormat;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v1, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 52
    .line 53
    sget-object v2, Lcom/applovin/impl/v4;->W0:Lcom/applovin/impl/v4;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/Boolean;

    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_2

    .line 66
    .line 67
    if-eqz v0, :cond_2

    .line 68
    .line 69
    invoke-virtual {v0}, Lcom/applovin/mediation/MaxAdFormat;->isFullscreenAd()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_2

    .line 74
    .line 75
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->h()Lcom/applovin/impl/sdk/d;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/d;->b(Lcom/applovin/impl/sdk/ad/b;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->d0()Lcom/applovin/impl/z3;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/applovin/impl/j5;->i:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/applovin/impl/z3;->a(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    return-void
.end method

.method protected l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/impl/j5;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/b;->o1()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "Subscribing to timeout events..."

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->Z()Lcom/applovin/impl/s3;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, p0}, Lcom/applovin/impl/s3;->a(Lcom/applovin/impl/s3$a;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method
