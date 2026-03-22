.class public final Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;
.super Ljava/lang/Object;
.source "HttpDNSIPPools.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttpDNSIPPools.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpDNSIPPools.kt\ncom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n*L\n1#1,217:1\n200#1,6:218\n200#1,3:224\n204#1,2:228\n200#1,3:230\n204#1,2:236\n200#1,6:238\n200#1,6:244\n200#1,3:250\n204#1,2:259\n200#1,6:268\n1#2:227\n1734#3,3:233\n1734#3,2:253\n1755#3,3:255\n1736#3:258\n381#4,7:261\n*S KotlinDebug\n*F\n+ 1 HttpDNSIPPools.kt\ncom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools\n*L\n48#1:218,6\n54#1:224,3\n54#1:228,2\n65#1:230,3\n65#1:236,2\n90#1:238,6\n107#1:244,6\n116#1:250,3\n116#1:259,2\n185#1:268,6\n66#1:233,3\n117#1:253,2\n117#1:255,3\n117#1:258\n184#1:261,7\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/locks/ReentrantLock;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:Ljava/util/concurrent/locks/ReentrantLock;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->a:Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;

    .line 7
    .line 8
    new-instance v0, Lee/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lee/a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lee/b;

    .line 20
    .line 21
    invoke-direct {v0}, Lee/b;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->c:Lms/i;

    .line 29
    .line 30
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->d:Ljava/util/Map;

    .line 36
    .line 37
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 43
    .line 44
    new-instance v0, Ljava/util/HashSet;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->f:Ljava/util/HashSet;

    .line 50
    .line 51
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 57
    .line 58
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

.method public static synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->h()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->o(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic c()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->i()Lokhttp3/OkHttpClient;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method private final g()Lokhttp3/OkHttpClient;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lokhttp3/OkHttpClient;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final h()Ljava/util/List;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lud/b;->a:Lud/b;

    .line 7
    .line 8
    invoke-virtual {v1}, Lud/b;->q0()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v1, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object v0
.end method

.method private static final i()Lokhttp3/OkHttpClient;
    .locals 4

    .line 1
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 7
    .line 8
    const-wide/16 v2, 0x4e20

    .line 9
    .line 10
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->f(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->Y(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->V(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->c()Lokhttp3/OkHttpClient;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    return-object v0
.end method

.method private final k(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const-string v7, ""

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    sget-object v3, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 12
    .line 13
    .line 14
    :try_start_0
    move-object v4, p2

    .line 15
    check-cast v4, Ljava/lang/Iterable;

    .line 16
    .line 17
    instance-of v5, v4, Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    const-string v8, ", domainList="

    .line 20
    .line 21
    const-string v9, "HttpDNSIPPools"

    .line 22
    .line 23
    if-eqz v5, :cond_0

    .line 24
    .line 25
    :try_start_1
    move-object v5, v4

    .line 26
    check-cast v5, Ljava/util/Collection;

    .line 27
    .line 28
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-eqz v5, :cond_0

    .line 33
    .line 34
    goto/16 :goto_a

    .line 35
    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto/16 :goto_b

    .line 38
    .line 39
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v5

    .line 47
    if-eqz v5, :cond_a

    .line 48
    .line 49
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Ljava/lang/String;

    .line 54
    .line 55
    sget-object v6, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->a:Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;

    .line 56
    .line 57
    invoke-direct {v6}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->f()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    check-cast v6, Ljava/lang/Iterable;

    .line 62
    .line 63
    instance-of v10, v6, Ljava/util/Collection;

    .line 64
    .line 65
    if-eqz v10, :cond_1

    .line 66
    .line 67
    move-object v10, v6

    .line 68
    check-cast v10, Ljava/util/Collection;

    .line 69
    .line 70
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    if-eqz v10, :cond_1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v10

    .line 85
    if-eqz v10, :cond_3

    .line 86
    .line 87
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v10

    .line 91
    check-cast v10, Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;

    .line 92
    .line 93
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;->getDomain()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    if-eqz v11, :cond_2

    .line 102
    .line 103
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;->getExpirationTime()J

    .line 104
    .line 105
    .line 106
    move-result-wide v10

    .line 107
    cmp-long v10, v10, v1

    .line 108
    .line 109
    if-lez v10, :cond_2

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    :goto_1
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 115
    .line 116
    .line 117
    const/4 v10, 0x0

    .line 118
    :try_start_2
    sget-object v3, Lee/e;->a:Lee/e;

    .line 119
    .line 120
    const/16 v4, 0x3e8

    .line 121
    .line 122
    int-to-long v4, v4

    .line 123
    div-long v4, v1, v4

    .line 124
    .line 125
    const/4 v6, 0x0

    .line 126
    move-object v1, v3

    .line 127
    move-object v2, p1

    .line 128
    move-object v3, p2

    .line 129
    invoke-virtual/range {v1 .. v6}, Lee/e;->a(Ljava/lang/String;Ljava/util/List;JI)Lcom/startshorts/androidplayer/bean/dns/HttpDNSRequest;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 134
    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    const-string v4, "refreshIpAddressWhenIdle start-> url="

    .line 141
    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/dns/HttpDNSRequest;->getUrl()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v3

    .line 162
    invoke-virtual {v2, v9, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v2, Lokhttp3/Request$Builder;

    .line 166
    .line 167
    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/dns/HttpDNSRequest;->getUrl()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v3

    .line 174
    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->k(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    const-string v3, "Authorization"

    .line 179
    .line 180
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/dns/HttpDNSRequest;->getSignature()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    invoke-virtual {v2, v3, v1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->b()Lokhttp3/Request;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->g()Lokhttp3/OkHttpClient;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-virtual {v2, v1}, Lokhttp3/OkHttpClient;->a(Lokhttp3/Request;)Lokhttp3/Call;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 201
    .line 202
    .line 203
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 204
    :try_start_3
    invoke-virtual {v1}, Lokhttp3/Response;->d()Lokhttp3/ResponseBody;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    const/4 v3, 0x0

    .line 209
    if-eqz v2, :cond_4

    .line 210
    .line 211
    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    goto :goto_3

    .line 216
    :catchall_1
    move-exception v0

    .line 217
    :goto_2
    move-object v2, v0

    .line 218
    goto :goto_5

    .line 219
    :cond_4
    move-object v4, v3

    .line 220
    :goto_3
    if-nez v4, :cond_5

    .line 221
    .line 222
    move-object v4, v7

    .line 223
    :cond_5
    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    .line 224
    .line 225
    .line 226
    move-result v10

    .line 227
    if-eqz v2, :cond_6

    .line 228
    .line 229
    invoke-static {v2}, Lokhttp3/internal/Util;->m(Ljava/io/Closeable;)V

    .line 230
    .line 231
    .line 232
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    .line 233
    .line 234
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 235
    .line 236
    .line 237
    const-string v5, ",responseBody="

    .line 238
    .line 239
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    const-string v5, ",message="

    .line 246
    .line 247
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Lokhttp3/Response;->w()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v5

    .line 254
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 261
    if-eqz v10, :cond_7

    .line 262
    .line 263
    :try_start_4
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->a:Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;

    .line 264
    .line 265
    invoke-direct {v0, v4}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->n(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    goto :goto_4

    .line 269
    :catchall_2
    move-exception v0

    .line 270
    move-object v7, v2

    .line 271
    goto :goto_2

    .line 272
    :cond_7
    sget-object v5, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->a:Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;

    .line 273
    .line 274
    invoke-direct {v5, p2, v4}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->m(Ljava/util/List;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 275
    .line 276
    .line 277
    :goto_4
    :try_start_5
    invoke-static {v1, v3}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 278
    .line 279
    .line 280
    goto :goto_7

    .line 281
    :catch_0
    move-exception v0

    .line 282
    move-object v7, v2

    .line 283
    goto :goto_6

    .line 284
    :goto_5
    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 285
    :catchall_3
    move-exception v0

    .line 286
    move-object v3, v0

    .line 287
    :try_start_7
    invoke-static {v1, v2}, Lws/b;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 288
    .line 289
    .line 290
    throw v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 291
    :catch_1
    move-exception v0

    .line 292
    :goto_6
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 293
    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    const-string v3, "refreshIpAddress end-> Exception="

    .line 300
    .line 301
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    invoke-virtual {v1, v9, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    const-string v2, "Request failed, "

    .line 320
    .line 321
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    if-nez v0, :cond_8

    .line 329
    .line 330
    const-string/jumbo v0, "unknown error"

    .line 331
    .line 332
    .line 333
    :cond_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v0

    .line 340
    move-object v2, v7

    .line 341
    move-object v7, v0

    .line 342
    :goto_7
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 343
    .line 344
    if-eqz v10, :cond_9

    .line 345
    .line 346
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 347
    .line 348
    :goto_8
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    goto :goto_9

    .line 353
    :cond_9
    new-instance v0, Ljava/lang/Throwable;

    .line 354
    .line 355
    invoke-direct {v0, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    goto :goto_8

    .line 363
    :goto_9
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 364
    .line 365
    new-instance v3, Ljava/lang/StringBuilder;

    .line 366
    .line 367
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 368
    .line 369
    .line 370
    const-string v4, "refreshIpAddressWhenIdle end -> queryResult="

    .line 371
    .line 372
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-static {v0}, Lkotlin/Result;->k(Ljava/lang/Object;)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v4

    .line 379
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v4, ",succeed="

    .line 383
    .line 384
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-virtual {v1, v9, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    return-object v0

    .line 401
    :cond_a
    :goto_a
    :try_start_8
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 402
    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    .line 404
    .line 405
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 406
    .line 407
    .line 408
    const-string v4, "refreshIpAddressWhenIdle ignore -> all domains are valid,url="

    .line 409
    .line 410
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    const/16 v0, 0x2c

    .line 423
    .line 424
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 425
    .line 426
    .line 427
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->a:Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;

    .line 428
    .line 429
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->f()Ljava/util/List;

    .line 430
    .line 431
    .line 432
    move-result-object v0

    .line 433
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-virtual {v1, v9, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 444
    .line 445
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 446
    .line 447
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 451
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 452
    .line 453
    .line 454
    return-object v0

    .line 455
    :goto_b
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 456
    .line 457
    .line 458
    throw v0
.end method

.method private final m(Ljava/util/List;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->f0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 11
    .line 12
    new-instance v3, Landroid/os/Bundle;

    .line 13
    .line 14
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "domain"

    .line 18
    .line 19
    invoke-static {p1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p1, "errorMessage"

    .line 27
    .line 28
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    const/4 v6, 0x4

    .line 34
    const/4 v7, 0x0

    .line 35
    const-string v2, "http_dns_query_failed"

    .line 36
    .line 37
    const-wide/16 v4, 0x0

    .line 38
    .line 39
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private final n(Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "HttpDNSIPPools"

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v3, "dns_list"

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 19
    .line 20
    .line 21
    move-result-wide v3

    .line 22
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/4 v6, 0x0

    .line 27
    move v7, v6

    .line 28
    :goto_0
    if-ge v7, v5, :cond_8

    .line 29
    .line 30
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    const-string v9, "domain"

    .line 35
    .line 36
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v9

    .line 40
    new-instance v10, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v11, "ips"

    .line 46
    .line 47
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 48
    .line 49
    .line 50
    move-result-object v11

    .line 51
    if-eqz v11, :cond_2

    .line 52
    .line 53
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    .line 54
    .line 55
    .line 56
    move-result v12

    .line 57
    move v13, v6

    .line 58
    :goto_1
    if-ge v13, v12, :cond_2

    .line 59
    .line 60
    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v14

    .line 64
    if-eqz v14, :cond_1

    .line 65
    .line 66
    invoke-interface {v14}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result v15

    .line 70
    if-nez v15, :cond_0

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_0
    invoke-interface {v10, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :catch_0
    move-exception v0

    .line 78
    goto/16 :goto_6

    .line 79
    .line 80
    :cond_1
    :goto_2
    add-int/lit8 v13, v13, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    const-string v11, "ip6s"

    .line 84
    .line 85
    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 86
    .line 87
    .line 88
    move-result-object v8

    .line 89
    if-eqz v8, :cond_5

    .line 90
    .line 91
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    .line 92
    .line 93
    .line 94
    move-result v11

    .line 95
    move v12, v6

    .line 96
    :goto_3
    if-ge v12, v11, :cond_5

    .line 97
    .line 98
    invoke-virtual {v8, v12}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v13

    .line 102
    if-eqz v13, :cond_4

    .line 103
    .line 104
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 105
    .line 106
    .line 107
    move-result v14

    .line 108
    if-nez v14, :cond_3

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_3
    invoke-interface {v10, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    :cond_4
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-eqz v8, :cond_6

    .line 122
    .line 123
    sget-object v8, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 124
    .line 125
    new-instance v10, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string/jumbo v11, "updateIpAddressList -> ips is empty, host="

    .line 131
    .line 132
    .line 133
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v9

    .line 143
    invoke-virtual {v8, v1, v9}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    goto :goto_5

    .line 147
    :cond_6
    sget-object v8, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->d:Ljava/util/Map;

    .line 148
    .line 149
    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    if-nez v11, :cond_7

    .line 154
    .line 155
    new-instance v11, Ljava/util/concurrent/locks/ReentrantLock;

    .line 156
    .line 157
    invoke-direct {v11}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-interface {v8, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    :cond_7
    check-cast v11, Ljava/util/concurrent/locks/ReentrantLock;

    .line 164
    .line 165
    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .line 167
    .line 168
    :try_start_1
    new-instance v8, Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;

    .line 169
    .line 170
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    sget-object v12, Lqe/a;->a:Lqe/a;

    .line 174
    .line 175
    invoke-virtual {v12}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 176
    .line 177
    .line 178
    move-result-object v12

    .line 179
    invoke-virtual {v12}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getHttpDNSIpExpirationTime()J

    .line 180
    .line 181
    .line 182
    move-result-wide v12

    .line 183
    const/16 v14, 0x3e8

    .line 184
    .line 185
    int-to-long v14, v14

    .line 186
    mul-long/2addr v12, v14

    .line 187
    add-long/2addr v12, v3

    .line 188
    invoke-direct {v8, v9, v10, v12, v13}, Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;-><init>(Ljava/lang/String;Ljava/util/List;J)V

    .line 189
    .line 190
    .line 191
    sget-object v10, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->a:Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;

    .line 192
    .line 193
    invoke-direct {v10}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->f()Ljava/util/List;

    .line 194
    .line 195
    .line 196
    move-result-object v12

    .line 197
    new-instance v13, Lee/c;

    .line 198
    .line 199
    invoke-direct {v13, v9}, Lee/c;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-static {v12, v13}, Lkotlin/collections/CollectionsKt;->O(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 203
    .line 204
    .line 205
    invoke-direct {v10}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->f()Ljava/util/List;

    .line 206
    .line 207
    .line 208
    move-result-object v9

    .line 209
    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    .line 211
    .line 212
    :try_start_2
    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 213
    .line 214
    .line 215
    :goto_5
    add-int/lit8 v7, v7, 0x1

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :catchall_0
    move-exception v0

    .line 220
    invoke-virtual {v11}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 221
    .line 222
    .line 223
    throw v0

    .line 224
    :cond_8
    sget-object v2, Lud/b;->a:Lud/b;

    .line 225
    .line 226
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->f()Ljava/util/List;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    invoke-virtual {v2, v3}, Lud/b;->C3(Ljava/util/List;)V

    .line 231
    .line 232
    .line 233
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 234
    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string/jumbo v4, "updateIpAddressList -> json parse success "

    .line 241
    .line 242
    .line 243
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    const-string v0, ", ipAddressList="

    .line 250
    .line 251
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->f()Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object v0

    .line 258
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-virtual {v2, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 266
    .line 267
    .line 268
    return-void

    .line 269
    :goto_6
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 270
    .line 271
    new-instance v3, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string/jumbo v4, "updateIpAddressList -> json parse failed, "

    .line 277
    .line 278
    .line 279
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v4

    .line 286
    if-nez v4, :cond_9

    .line 287
    .line 288
    const-string/jumbo v4, "unknown error"

    .line 289
    .line 290
    .line 291
    :cond_9
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v3

    .line 298
    invoke-virtual {v2, v1, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw v0
.end method

.method private static final o(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;)Z
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;->getDomain()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p0

    .line 14
    return p0
.end method


# virtual methods
.method public final d()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->a:Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->f()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 19
    .line 20
    .line 21
    return-object v1

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 24
    .line 25
    .line 26
    throw v1
.end method

.method public final e(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "domain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->e:Ljava/util/concurrent/locks/ReentrantLock;

    .line 13
    .line 14
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    sget-object v3, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->a:Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;

    .line 18
    .line 19
    invoke-direct {v3}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->f()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    check-cast v3, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    const/4 v5, 0x0

    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    move-object v6, v4

    .line 41
    check-cast v6, Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;

    .line 42
    .line 43
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;->getDomain()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-static {v7, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_0

    .line 52
    .line 53
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;->getExpirationTime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v6

    .line 57
    cmp-long v6, v6, v0

    .line 58
    .line 59
    if-lez v6, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    move-object v4, v5

    .line 65
    :goto_0
    check-cast v4, Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;

    .line 66
    .line 67
    if-eqz v4, :cond_2

    .line 68
    .line 69
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;->getIps()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_2
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 74
    .line 75
    .line 76
    return-object v5

    .line 77
    :goto_1
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 78
    .line 79
    .line 80
    throw p1
.end method

.method public final j(Ljava/util/List;)V
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "domainToRefresh"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 9
    .line 10
    .line 11
    :try_start_0
    move-object v1, p1

    .line 12
    check-cast v1, Ljava/lang/Iterable;

    .line 13
    .line 14
    instance-of v2, v1, Ljava/util/Collection;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    move-object v2, v1

    .line 19
    check-cast v2, Ljava/util/Collection;

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/String;

    .line 45
    .line 46
    sget-object v3, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->f:Ljava/util/HashSet;

    .line 47
    .line 48
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 57
    .line 58
    .line 59
    sget-object v2, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 60
    .line 61
    new-instance v5, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools$refreshAsync$2;

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-direct {v5, p1, v0}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools$refreshAsync$2;-><init>(Ljava/util/List;Lrs/c;)V

    .line 65
    .line 66
    .line 67
    const/4 v6, 0x2

    .line 68
    const/4 v7, 0x0

    .line 69
    const-string v3, "refreshIpAddress"

    .line 70
    .line 71
    const/4 v4, 0x0

    .line 72
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_2
    :goto_0
    :try_start_1
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 77
    .line 78
    const-string v2, "HttpDNSIPPools"

    .line 79
    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v4, "requestIpAddressRefresh ignore -> all domains are refreshing, domainToRefresh="

    .line 86
    .line 87
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v1, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :goto_1
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 105
    .line 106
    .line 107
    throw p1
.end method

.method public final l(Ljava/util/List;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "domainToRefresh"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "refreshIpAddress start-> domainToRefresh="

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", domainRefreshingSet="

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    sget-object v2, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->f:Ljava/util/HashSet;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v3, "HttpDNSIPPools"

    .line 36
    .line 37
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 43
    .line 44
    .line 45
    :try_start_0
    move-object v1, p1

    .line 46
    check-cast v1, Ljava/util/Collection;

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 52
    .line 53
    .line 54
    sget-object v0, Lqe/a;->a:Lqe/a;

    .line 55
    .line 56
    invoke-virtual {v0}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getHttpDNSQueryIpUrl()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-static {v0}, Ljk/v;->r(Ljava/lang/String;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const/4 v1, 0x0

    .line 73
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-eqz v2, :cond_1

    .line 78
    .line 79
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Ljava/lang/String;

    .line 84
    .line 85
    :try_start_1
    invoke-direct {p0, v2, p1}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->k(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-static {v4}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-static {v4}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    if-eqz v2, :cond_0

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :catch_0
    move-exception v4

    .line 105
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 106
    .line 107
    new-instance v6, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v7, "refreshIpAddress exception -> url="

    .line 113
    .line 114
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    const-string v2, ", error="

    .line 121
    .line 122
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-virtual {v5, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_1
    :goto_1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->g:Ljava/util/concurrent/locks/ReentrantLock;

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 143
    .line 144
    .line 145
    :try_start_2
    sget-object v2, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->f:Ljava/util/HashSet;

    .line 146
    .line 147
    check-cast p1, Ljava/lang/Iterable;

    .line 148
    .line 149
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->i1(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Ljava/util/Collection;

    .line 154
    .line 155
    invoke-virtual {v2, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 159
    .line 160
    .line 161
    if-eqz v1, :cond_2

    .line 162
    .line 163
    invoke-virtual {v1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    goto :goto_2

    .line 168
    :cond_2
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 169
    .line 170
    new-instance p1, Ljava/lang/Throwable;

    .line 171
    .line 172
    const-string v0, "refreshIpAddress failed"

    .line 173
    .line 174
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    :goto_2
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 186
    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string v4, "refreshIpAddress end -> domainRefreshingSet="

    .line 193
    .line 194
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    return-object p1

    .line 208
    :catchall_0
    move-exception p1

    .line 209
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 210
    .line 211
    .line 212
    throw p1

    .line 213
    :catchall_1
    move-exception p1

    .line 214
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 215
    .line 216
    .line 217
    throw p1
.end method
