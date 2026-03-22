.class public final Lzb/g;
.super Ljava/lang/Object;
.source "CommonParamsInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzb/g$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCommonParamsInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonParamsInterceptor.kt\ncom/jiuzhou/cdn/api/common/CommonParamsInterceptor\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,67:1\n216#2,2:68\n216#2,2:70\n*S KotlinDebug\n*F\n+ 1 CommonParamsInterceptor.kt\ncom/jiuzhou/cdn/api/common/CommonParamsInterceptor\n*L\n48#1:68,2\n58#1:70,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lzb/g$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lzb/g$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lzb/g$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lzb/g;->a:Lzb/g$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a(Lokhttp3/Request$Builder;Lokhttp3/HttpUrl;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "https://cdn-v2.shorttv.live"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const-string v1, ""

    .line 15
    .line 16
    if-nez v0, :cond_5

    .line 17
    .line 18
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v5, "https://cdn-v2.shorttv.app"

    .line 23
    .line 24
    invoke-static {v0, v5, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->k()Lokhttp3/HttpUrl$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    sget-object v0, Lzb/g;->a:Lzb/g$a;

    .line 36
    .line 37
    invoke-virtual {v0}, Lzb/g$a;->a()Ljava/util/Map;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Ljava/util/Map$Entry;

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    if-nez v3, :cond_3

    .line 72
    .line 73
    :cond_2
    move-object v3, v1

    .line 74
    :cond_3
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 75
    .line 76
    .line 77
    move-result v4

    .line 78
    if-lez v4, :cond_1

    .line 79
    .line 80
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {p1, v2, v3}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_4
    invoke-virtual {p2}, Lokhttp3/HttpUrl$Builder;->c()Lokhttp3/HttpUrl;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->l(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 95
    .line 96
    .line 97
    goto/16 :goto_3

    .line 98
    .line 99
    :cond_5
    :goto_1
    sget-object v0, Lzb/f;->a:Lzb/f;

    .line 100
    .line 101
    invoke-virtual {v0}, Lzb/f;->e()I

    .line 102
    .line 103
    .line 104
    move-result v2

    .line 105
    invoke-virtual {v0}, Lzb/f;->d()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Ljava/lang/String;

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    sget-object v2, Lokhttp3/HttpUrl;->k:Lokhttp3/HttpUrl$Companion;

    .line 118
    .line 119
    invoke-virtual {v2, v0}, Lokhttp3/HttpUrl$Companion;->f(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    :cond_6
    if-eqz v4, :cond_b

    .line 124
    .line 125
    invoke-virtual {p2}, Lokhttp3/HttpUrl;->k()Lokhttp3/HttpUrl$Builder;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->t()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p2, v0}, Lokhttp3/HttpUrl$Builder;->q(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->i()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-virtual {p2, v0}, Lokhttp3/HttpUrl$Builder;->g(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 142
    .line 143
    .line 144
    move-result-object p2

    .line 145
    invoke-virtual {v4}, Lokhttp3/HttpUrl;->o()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    invoke-virtual {p2, v0}, Lokhttp3/HttpUrl$Builder;->m(I)Lokhttp3/HttpUrl$Builder;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    sget-object v0, Lzb/g;->a:Lzb/g$a;

    .line 154
    .line 155
    invoke-virtual {v0}, Lzb/g$a;->a()Ljava/util/Map;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_a

    .line 172
    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    check-cast v2, Ljava/util/Map$Entry;

    .line 178
    .line 179
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    if-eqz v3, :cond_8

    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    if-nez v3, :cond_9

    .line 190
    .line 191
    :cond_8
    move-object v3, v1

    .line 192
    :cond_9
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    if-lez v4, :cond_7

    .line 197
    .line 198
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Ljava/lang/String;

    .line 203
    .line 204
    invoke-virtual {p1, v2, v3}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_a
    invoke-virtual {p2}, Lokhttp3/HttpUrl$Builder;->c()Lokhttp3/HttpUrl;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->l(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 213
    .line 214
    .line 215
    :cond_b
    :goto_3
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 4
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lokhttp3/Request;->h()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0}, Lokhttp3/Request;->i()Lokhttp3/Request$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "GET"

    .line 19
    .line 20
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-nez v3, :cond_0

    .line 25
    .line 26
    const-string v3, "POST"

    .line 27
    .line 28
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    :cond_0
    invoke-virtual {v0}, Lokhttp3/Request;->l()Lokhttp3/HttpUrl;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p0, v2, v0}, Lzb/g;->a(Lokhttp3/Request$Builder;Lokhttp3/HttpUrl;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->b()Lokhttp3/Request;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {p1, v0}, Lokhttp3/Interceptor$Chain;->a(Lokhttp3/Request;)Lokhttp3/Response;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1
.end method
