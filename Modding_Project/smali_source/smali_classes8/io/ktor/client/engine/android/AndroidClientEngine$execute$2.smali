.class final Lio/ktor/client/engine/android/AndroidClientEngine$execute$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidClientEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/engine/android/AndroidClientEngine;->r0(Lsr/c;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/net/HttpURLConnection;",
        "Lsr/e;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidClientEngine.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidClientEngine.kt\nio/ktor/client/engine/android/AndroidClientEngine$execute$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,130:1\n1#2:131\n457#3:132\n403#3:133\n515#3:138\n500#3,6:139\n1238#4,4:134\n*S KotlinDebug\n*F\n+ 1 AndroidClientEngine.kt\nio/ktor/client/engine/android/AndroidClientEngine$execute$2\n*L\n90#1:132\n90#1:133\n91#1:138\n91#1:139,6\n90#1:134,4\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic d:Lkotlin/coroutines/CoroutineContext;

.field final synthetic e:Lsr/c;

.field final synthetic f:Lbs/a;


# direct methods
.method constructor <init>(Lkotlin/coroutines/CoroutineContext;Lsr/c;Lbs/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/ktor/client/engine/android/AndroidClientEngine$execute$2;->d:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    iput-object p2, p0, Lio/ktor/client/engine/android/AndroidClientEngine$execute$2;->e:Lsr/c;

    .line 4
    .line 5
    iput-object p3, p0, Lio/ktor/client/engine/android/AndroidClientEngine$execute$2;->f:Lbs/a;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final b(Ljava/net/HttpURLConnection;)Lsr/e;
    .locals 10
    .param p1    # Ljava/net/HttpURLConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "current"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v2, Lwr/o;

    .line 17
    .line 18
    invoke-direct {v2, v0, v1}, Lwr/o;-><init>(ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :goto_0
    move-object v4, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    sget-object v1, Lwr/o;->c:Lwr/o$a;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lwr/o$a;->a(I)Lwr/o;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    goto :goto_0

    .line 30
    :goto_1
    iget-object v0, p0, Lio/ktor/client/engine/android/AndroidClientEngine$execute$2;->d:Lkotlin/coroutines/CoroutineContext;

    .line 31
    .line 32
    iget-object v1, p0, Lio/ktor/client/engine/android/AndroidClientEngine$execute$2;->e:Lsr/c;

    .line 33
    .line 34
    invoke-static {p1, v0, v1}, Lio/ktor/client/engine/android/AndroidURLConnectionUtilsKt;->a(Ljava/net/HttpURLConnection;Lkotlin/coroutines/CoroutineContext;Lsr/c;)Lio/ktor/utils/io/ByteReadChannel;

    .line 35
    .line 36
    .line 37
    move-result-object v8

    .line 38
    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    const-string v0, "current.headerFields"

    .line 43
    .line 44
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v1}, Lkotlin/collections/p0;->e(I)I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 58
    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Ljava/lang/Iterable;

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_3

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ljava/util/Map$Entry;

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    check-cast v2, Ljava/lang/String;

    .line 87
    .line 88
    if-eqz v2, :cond_1

    .line 89
    .line 90
    const-string v3, "key"

    .line 91
    .line 92
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    const-string v5, "getDefault()"

    .line 100
    .line 101
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    const-string v3, "this as java.lang.String).toLowerCase(locale)"

    .line 109
    .line 110
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    if-nez v2, :cond_2

    .line 114
    .line 115
    :cond_1
    const-string v2, ""

    .line 116
    .line 117
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_3
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 126
    .line 127
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    if-eqz v1, :cond_5

    .line 143
    .line 144
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Ljava/util/Map$Entry;

    .line 149
    .line 150
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    check-cast v2, Ljava/lang/CharSequence;

    .line 155
    .line 156
    invoke-static {v2}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    if-nez v2, :cond_4

    .line 161
    .line 162
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_5
    sget-object v0, Lwr/n;->d:Lwr/n$a;

    .line 175
    .line 176
    invoke-virtual {v0}, Lwr/n$a;->a()Lwr/n;

    .line 177
    .line 178
    .line 179
    move-result-object v7

    .line 180
    new-instance v6, Lwr/h;

    .line 181
    .line 182
    invoke-direct {v6, p1}, Lwr/h;-><init>(Ljava/util/Map;)V

    .line 183
    .line 184
    .line 185
    new-instance p1, Lsr/e;

    .line 186
    .line 187
    iget-object v5, p0, Lio/ktor/client/engine/android/AndroidClientEngine$execute$2;->f:Lbs/a;

    .line 188
    .line 189
    iget-object v9, p0, Lio/ktor/client/engine/android/AndroidClientEngine$execute$2;->d:Lkotlin/coroutines/CoroutineContext;

    .line 190
    .line 191
    move-object v3, p1

    .line 192
    invoke-direct/range {v3 .. v9}, Lsr/e;-><init>(Lwr/o;Lbs/a;Lwr/f;Lwr/n;Ljava/lang/Object;Lkotlin/coroutines/CoroutineContext;)V

    .line 193
    .line 194
    .line 195
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/net/HttpURLConnection;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/client/engine/android/AndroidClientEngine$execute$2;->b(Ljava/net/HttpURLConnection;)Lsr/e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
