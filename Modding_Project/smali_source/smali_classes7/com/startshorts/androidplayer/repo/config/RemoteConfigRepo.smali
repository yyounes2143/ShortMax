.class public final Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;
.super Ljava/lang/Object;
.source "RemoteConfigRepo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRemoteConfigRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteConfigRepo.kt\ncom/startshorts/androidplayer/repo/config/RemoteConfigRepo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,233:1\n1755#2,3:234\n1734#2,3:237\n1734#2,3:240\n1863#2,2:243\n1755#2,3:245\n1557#2:248\n1628#2,3:249\n1368#2:252\n1454#2,5:253\n1216#2,2:258\n1246#2,4:260\n1246#2,4:266\n1557#2:270\n1628#2,3:271\n1755#2,3:274\n1863#2,2:277\n462#3:264\n412#3:265\n*S KotlinDebug\n*F\n+ 1 RemoteConfigRepo.kt\ncom/startshorts/androidplayer/repo/config/RemoteConfigRepo\n*L\n96#1:234,3\n135#1:237,3\n158#1:240,3\n175#1:243,2\n184#1:245,3\n189#1:248\n189#1:249,3\n190#1:252\n190#1:253,5\n191#1:258,2\n191#1:260,4\n38#1:266,4\n41#1:270\n41#1:271,3\n42#1:274,3\n35#1:277,2\n38#1:264\n38#1:265\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lmg/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;

    .line 7
    .line 8
    new-instance v1, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/startshorts/androidplayer/repo/config/firebaseDS/FirebaseRemoteConfigDS;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->b:Lmg/f;

    .line 14
    .line 15
    new-instance v1, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 16
    .line 17
    invoke-direct {v1}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->c:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 21
    .line 22
    new-instance v1, Lmg/g;

    .line 23
    .line 24
    invoke-direct {v1}, Lmg/g;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    sput-object v1, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->d:Lms/i;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->A()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Iterable;

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lmg/f;

    .line 54
    .line 55
    new-instance v2, Lmg/h;

    .line 56
    .line 57
    invoke-direct {v2, v1}, Lmg/h;-><init>(Lmg/f;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v1, v2}, Lmg/f;->g(Lkotlin/jvm/functions/Function0;)Lmg/f;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final A()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmg/f;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Lmg/f;

    .line 3
    .line 4
    sget-object v1, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->b:Lmg/f;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    aput-object v1, v0, v2

    .line 8
    .line 9
    sget-object v1, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->c:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method public static synthetic a()Ltg/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->y()Ltg/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Lkotlin/Pair;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->k(Lkotlin/Pair;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->x()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Ljava/util/Map;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->w()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e(Lmg/f;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->u(Lmg/f;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic f(Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->j(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Ljava/util/Map;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->f:Ljava/util/Map;

    .line 2
    .line 3
    return-void
.end method

.method private final j(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$awaitFetchComplete$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$awaitFetchComplete$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$awaitFetchComplete$1;->o:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$awaitFetchComplete$1;->o:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$awaitFetchComplete$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$awaitFetchComplete$1;-><init>(Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$awaitFetchComplete$1;->m:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$awaitFetchComplete$1;->o:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$awaitFetchComplete$1;->l:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Ljava/util/List;

    .line 41
    .line 42
    iget-object v2, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$awaitFetchComplete$1;->k:Ljava/lang/Object;

    .line 43
    .line 44
    iget-object v4, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$awaitFetchComplete$1;->j:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v4, Ljava/util/Iterator;

    .line 47
    .line 48
    iget-object v5, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$awaitFetchComplete$1;->i:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v5, Ljava/util/List;

    .line 51
    .line 52
    iget-object v6, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$awaitFetchComplete$1;->h:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v6, Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 61
    .line 62
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    .line 64
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw p1

    .line 68
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    new-instance p2, Ljava/util/ArrayList;

    .line 72
    .line 73
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->r()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Ljava/lang/Iterable;

    .line 81
    .line 82
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    move-object v4, v2

    .line 87
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Lkotlin/Pair;

    .line 98
    .line 99
    invoke-virtual {v2}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v5

    .line 103
    invoke-virtual {v2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Lmg/f;

    .line 108
    .line 109
    iput-object p1, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$awaitFetchComplete$1;->h:Ljava/lang/Object;

    .line 110
    .line 111
    iput-object p2, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$awaitFetchComplete$1;->i:Ljava/lang/Object;

    .line 112
    .line 113
    iput-object v4, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$awaitFetchComplete$1;->j:Ljava/lang/Object;

    .line 114
    .line 115
    iput-object v5, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$awaitFetchComplete$1;->k:Ljava/lang/Object;

    .line 116
    .line 117
    iput-object p2, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$awaitFetchComplete$1;->l:Ljava/lang/Object;

    .line 118
    .line 119
    iput v3, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$awaitFetchComplete$1;->o:I

    .line 120
    .line 121
    const-string v6, "fetchRemoteConfig"

    .line 122
    .line 123
    invoke-interface {v2, v6, v0}, Lmg/f;->d(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    if-ne v2, v1, :cond_3

    .line 128
    .line 129
    return-object v1

    .line 130
    :cond_3
    move-object v6, p1

    .line 131
    move-object p1, p2

    .line 132
    move-object p2, v2

    .line 133
    move-object v2, v5

    .line 134
    move-object v5, p1

    .line 135
    :goto_2
    invoke-static {v2, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-object p2, v5

    .line 143
    move-object p1, v6

    .line 144
    goto :goto_1

    .line 145
    :cond_4
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 146
    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v2, "awaitFetchComplete -> from="

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p1, ",awaitFirebaseEnable="

    .line 161
    .line 162
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    sget-object p1, Lud/b;->a:Lud/b;

    .line 166
    .line 167
    invoke-virtual {p1}, Lud/b;->u1()Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const/16 p1, 0x2c

    .line 175
    .line 176
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    check-cast p2, Ljava/lang/Iterable;

    .line 180
    .line 181
    new-instance v10, Lmg/k;

    .line 182
    .line 183
    invoke-direct {v10}, Lmg/k;-><init>()V

    .line 184
    .line 185
    .line 186
    const/16 v11, 0x1e

    .line 187
    .line 188
    const/4 v12, 0x0

    .line 189
    const-string v5, ","

    .line 190
    .line 191
    const/4 v6, 0x0

    .line 192
    const/4 v7, 0x0

    .line 193
    const/4 v8, 0x0

    .line 194
    const/4 v9, 0x0

    .line 195
    move-object v4, p2

    .line 196
    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const-string v1, "RemoteConfigRepo"

    .line 208
    .line 209
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    instance-of p1, p2, Ljava/util/Collection;

    .line 213
    .line 214
    const/4 v0, 0x0

    .line 215
    if-eqz p1, :cond_6

    .line 216
    .line 217
    move-object p1, p2

    .line 218
    check-cast p1, Ljava/util/Collection;

    .line 219
    .line 220
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 221
    .line 222
    .line 223
    move-result p1

    .line 224
    if-eqz p1, :cond_6

    .line 225
    .line 226
    :cond_5
    move v3, v0

    .line 227
    goto :goto_3

    .line 228
    :cond_6
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    :cond_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    .line 234
    .line 235
    move-result p2

    .line 236
    if-eqz p2, :cond_5

    .line 237
    .line 238
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    check-cast p2, Lkotlin/Pair;

    .line 243
    .line 244
    invoke-virtual {p2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    check-cast p2, Ljava/lang/Boolean;

    .line 249
    .line 250
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 251
    .line 252
    .line 253
    move-result p2

    .line 254
    if-eqz p2, :cond_7

    .line 255
    .line 256
    :goto_3
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    return-object p1
.end method

.method private static final k(Lkotlin/Pair;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "FetchResult="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    check-cast p0, Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0
.end method

.method private final l()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->A()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/16 v2, 0xa

    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-eqz v3, :cond_0

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    check-cast v3, Lmg/f;

    .line 33
    .line 34
    invoke-interface {v3}, Lmg/f;->f()Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    if-eqz v3, :cond_1

    .line 56
    .line 57
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    .line 63
    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    const-string v4, "<get-entries>(...)"

    .line 68
    .line 69
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    check-cast v3, Ljava/lang/Iterable;

    .line 73
    .line 74
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->E(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v1}, Lkotlin/collections/p0;->e(I)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    const/16 v2, 0x10

    .line 87
    .line 88
    invoke-static {v1, v2}, Lkotlin/ranges/e;->e(II)I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 93
    .line 94
    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 95
    .line 96
    .line 97
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    if-eqz v1, :cond_2

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Ljava/util/Map$Entry;

    .line 112
    .line 113
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const-string v4, "<get-key>(...)"

    .line 118
    .line 119
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    check-cast v3, Ljava/lang/String;

    .line 123
    .line 124
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;

    .line 129
    .line 130
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_2
    sput-object v2, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->e:Ljava/util/Map;

    .line 135
    .line 136
    return-void
.end method

.method private final o()Ltg/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->d:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ltg/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final r()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Lmg/f;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->u1()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "cms"

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->c:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 12
    .line 13
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "firebase"

    .line 18
    .line 19
    sget-object v2, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->b:Lmg/f;

    .line 20
    .line 21
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    filled-new-array {v0, v1}, [Lkotlin/Pair;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->c:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 35
    .line 36
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :goto_0
    return-object v0
.end method

.method private static final u(Lmg/f;)Lkotlin/Unit;
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->f:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->p()Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-static {v2}, Lkotlin/collections/p0;->e(I)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Iterable;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/util/Map$Entry;

    .line 45
    .line 46
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;

    .line 55
    .line 56
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;->getValue()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    sput-object v1, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->f:Ljava/util/Map;

    .line 65
    .line 66
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;

    .line 67
    .line 68
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->r()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Ljava/lang/Iterable;

    .line 73
    .line 74
    new-instance v1, Ljava/util/ArrayList;

    .line 75
    .line 76
    const/16 v2, 0xa

    .line 77
    .line 78
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_2

    .line 94
    .line 95
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Lkotlin/Pair;

    .line 100
    .line 101
    invoke-virtual {v2}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Lmg/f;

    .line 106
    .line 107
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    goto :goto_2

    .line 118
    :cond_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    if-eqz v1, :cond_5

    .line 127
    .line 128
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    check-cast v1, Lmg/f;

    .line 133
    .line 134
    invoke-interface {v1}, Lmg/f;->a()Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->b()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_4

    .line 143
    .line 144
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;

    .line 145
    .line 146
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->l()V

    .line 147
    .line 148
    .line 149
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->z(Lmg/f;)V

    .line 150
    .line 151
    .line 152
    goto :goto_3

    .line 153
    :cond_5
    :goto_2
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->f:Ljava/util/Map;

    .line 154
    .line 155
    if-nez v0, :cond_6

    .line 156
    .line 157
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 158
    .line 159
    return-object p0

    .line 160
    :cond_6
    sget-object v1, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;

    .line 161
    .line 162
    invoke-direct {v1}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->l()V

    .line 163
    .line 164
    .line 165
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->z(Lmg/f;)V

    .line 166
    .line 167
    .line 168
    sget-object v2, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 169
    .line 170
    new-instance v5, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;

    .line 171
    .line 172
    const/4 p0, 0x0

    .line 173
    invoke-direct {v5, v0, p0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$1$1$3;-><init>(Ljava/util/Map;Lrs/c;)V

    .line 174
    .line 175
    .line 176
    const/4 v6, 0x2

    .line 177
    const/4 v7, 0x0

    .line 178
    const-string v3, "onQuerySucceedListener -> AppConfigureManager.init"

    .line 179
    .line 180
    const/4 v4, 0x0

    .line 181
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 182
    .line 183
    .line 184
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 185
    .line 186
    return-object p0
.end method

.method private static final w()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->c:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->f()Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private static final x()Ljava/util/Map;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->b:Lmg/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lmg/f;->f()Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private static final y()Ltg/a;
    .locals 1

    .line 1
    new-instance v0, Ltg/a;

    .line 2
    .line 3
    invoke-direct {v0}, Ltg/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final z(Lmg/f;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "On"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-interface {p1}, Lmg/f;->tag()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p1, "FetchSucceed"

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v1, "RemoteConfigRepo"

    .line 30
    .line 31
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final B(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->o()Ltg/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2}, Ltg/a;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [Lmg/f;

    .line 8
    .line 9
    sget-object v1, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->c:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    aput-object v1, v0, v2

    .line 13
    .line 14
    sget-object v1, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->b:Lmg/f;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    aput-object v1, v0, v2

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    move-object v1, v0

    .line 24
    check-cast v1, Ljava/lang/Iterable;

    .line 25
    .line 26
    instance-of v2, v1, Ljava/util/Collection;

    .line 27
    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    move-object v2, v1

    .line 31
    check-cast v2, Ljava/util/Collection;

    .line 32
    .line 33
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Lmg/f;

    .line 55
    .line 56
    invoke-interface {v2}, Lmg/f;->a()Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->b()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_1

    .line 65
    .line 66
    sget-object v3, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 67
    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "asyncTryFetchRemoteConfig -> end, from="

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    new-instance v6, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2;

    .line 86
    .line 87
    const/4 v1, 0x0

    .line 88
    invoke-direct {v6, v0, p1, v1}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfig$2;-><init>(Ljava/util/List;Ljava/lang/String;Lrs/c;)V

    .line 89
    .line 90
    .line 91
    const/4 v7, 0x2

    .line 92
    const/4 v8, 0x0

    .line 93
    const/4 v5, 0x0

    .line 94
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_2
    :goto_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 99
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v2, "asyncTryFetchRemoteConfig -> ignored, all DS in query running state, from="

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const-string v1, "RemoteConfigRepo"

    .line 118
    .line 119
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public final i(Ljava/lang/String;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->c:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    move-object v1, v0

    .line 13
    check-cast v1, Ljava/lang/Iterable;

    .line 14
    .line 15
    instance-of v2, v1, Ljava/util/Collection;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    move-object v2, v1

    .line 20
    check-cast v2, Ljava/util/Collection;

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->a()Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->b()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-nez v2, :cond_1

    .line 54
    .line 55
    sget-object v3, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 56
    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v2, "asyncTryFetchRemoteConfig -> end, from="

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    new-instance v6, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfigForceCMS$2;

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-direct {v6, v0, p1, v1}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$asyncTryFetchRemoteConfigForceCMS$2;-><init>(Ljava/util/List;Ljava/lang/String;Lrs/c;)V

    .line 78
    .line 79
    .line 80
    const/4 v7, 0x2

    .line 81
    const/4 v8, 0x0

    .line 82
    const/4 v5, 0x0

    .line 83
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_2
    :goto_0
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v2, "asyncTryFetchRemoteConfig -> ignored, all DS in query running state, from="

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    const-string v1, "RemoteConfigRepo"

    .line 107
    .line 108
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public final m(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$fetchRemoteConfig$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$fetchRemoteConfig$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$fetchRemoteConfig$1;->k:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$fetchRemoteConfig$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$fetchRemoteConfig$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$fetchRemoteConfig$1;-><init>(Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$fetchRemoteConfig$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$fetchRemoteConfig$1;->k:I

    .line 32
    .line 33
    const-string v3, "RemoteConfigRepo"

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    if-ne v2, v4, :cond_1

    .line 39
    .line 40
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$fetchRemoteConfig$1;->h:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v5, "fetchRemoteConfig -> start, from="

    .line 67
    .line 68
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {p2, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-object p2, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->c:Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;

    .line 82
    .line 83
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/repo/config/cmsDS/CMSRemoteConfigDS;->c()V

    .line 84
    .line 85
    .line 86
    sget-object p2, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->b:Lmg/f;

    .line 87
    .line 88
    invoke-interface {p2}, Lmg/f;->c()V

    .line 89
    .line 90
    .line 91
    iput-object p1, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$fetchRemoteConfig$1;->h:Ljava/lang/Object;

    .line 92
    .line 93
    iput v4, v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo$fetchRemoteConfig$1;->k:I

    .line 94
    .line 95
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->j(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    if-ne p2, v1, :cond_3

    .line 100
    .line 101
    return-object v1

    .line 102
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 109
    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v2, "fetchRemoteConfig -> end, from="

    .line 116
    .line 117
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string p1, ", result="

    .line 124
    .line 125
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v0, v3, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    return-object p1
.end method

.method public final n()Lmg/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->b:Lmg/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public final p()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->e:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public final q(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->p()Ljava/util/Map;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;->getValue()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_1

    .line 24
    .line 25
    :cond_0
    const-string p1, ""

    .line 26
    .line 27
    :cond_1
    return-object p1
.end method

.method public final s()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->r()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/Iterable;

    .line 6
    .line 7
    instance-of v1, v0, Ljava/util/Collection;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    move-object v1, v0

    .line 13
    check-cast v1, Ljava/util/Collection;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_2

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lkotlin/Pair;

    .line 37
    .line 38
    invoke-virtual {v1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lmg/f;

    .line 43
    .line 44
    invoke-interface {v1}, Lmg/f;->b()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    const/4 v2, 0x1

    .line 51
    :cond_2
    :goto_0
    return v2
.end method

.method public final t()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->e:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public final v()V
    .locals 13

    .line 1
    sget-object v7, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v0, "cms"

    .line 9
    .line 10
    const-string v8, "type"

    .line 11
    .line 12
    invoke-virtual {v2, v8, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v9, "isInit"

    .line 16
    .line 17
    const-string v10, "0"

    .line 18
    .line 19
    invoke-virtual {v2, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    const/4 v11, 0x2

    .line 25
    const/4 v12, 0x1

    .line 26
    filled-new-array {v11, v12}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    new-instance v6, Lmg/i;

    .line 31
    .line 32
    invoke-direct {v6}, Lmg/i;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "abtest_value_change"

    .line 36
    .line 37
    const-wide/16 v4, -0x1

    .line 38
    .line 39
    move-object v0, v7

    .line 40
    invoke-virtual/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->r0(Ljava/lang/String;Landroid/os/Bundle;[IJLkotlin/jvm/functions/Function0;)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Landroid/os/Bundle;

    .line 44
    .line 45
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v0, "firebase"

    .line 49
    .line 50
    invoke-virtual {v2, v8, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v9, v10}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    filled-new-array {v11, v12}, [I

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    new-instance v6, Lmg/j;

    .line 61
    .line 62
    invoke-direct {v6}, Lmg/j;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v1, "abtest_value_change"

    .line 66
    .line 67
    move-object v0, v7

    .line 68
    invoke-virtual/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->r0(Ljava/lang/String;Landroid/os/Bundle;[IJLkotlin/jvm/functions/Function0;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method
