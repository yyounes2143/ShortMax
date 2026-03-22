.class public final Lcom/facebook/b0$a;
.super Ljava/lang/Object;
.source "GraphResponse.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGraphResponse.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GraphResponse.kt\ncom/facebook/GraphResponse$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,359:1\n1549#2:360\n1620#2,3:361\n*S KotlinDebug\n*F\n+ 1 GraphResponse.kt\ncom/facebook/GraphResponse$Companion\n*L\n355#1:360\n355#1:361,3\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/b0$a;-><init>()V

    return-void
.end method

.method private final b(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/b0;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    instance-of v0, p3, Lorg/json/JSONObject;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    sget-object v0, Lcom/facebook/FacebookRequestError;->o:Lcom/facebook/FacebookRequestError$b;

    .line 7
    .line 8
    check-cast p3, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-virtual {v0, p3, p4, p2}, Lcom/facebook/FacebookRequestError$b;->a(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/net/HttpURLConnection;)Lcom/facebook/FacebookRequestError;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    if-eqz p4, :cond_2

    .line 15
    .line 16
    invoke-static {}, Lcom/facebook/b0;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    invoke-virtual {p4}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p4}, Lcom/facebook/FacebookRequestError;->b()I

    .line 28
    .line 29
    .line 30
    move-result p3

    .line 31
    const/16 v0, 0xbe

    .line 32
    .line 33
    if-ne p3, v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/facebook/GraphRequest;->m()Lcom/facebook/AccessToken;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-static {p3}, Lcom/facebook/internal/u0;->Z(Lcom/facebook/AccessToken;)Z

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    if-eqz p3, :cond_1

    .line 44
    .line 45
    invoke-virtual {p4}, Lcom/facebook/FacebookRequestError;->g()I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    const/16 v0, 0x1ed

    .line 50
    .line 51
    if-eq p3, v0, :cond_0

    .line 52
    .line 53
    sget-object p3, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    .line 54
    .line 55
    invoke-virtual {p3, v1}, Lcom/facebook/AccessToken$c;->i(Lcom/facebook/AccessToken;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    sget-object p3, Lcom/facebook/AccessToken;->l:Lcom/facebook/AccessToken$c;

    .line 60
    .line 61
    invoke-virtual {p3}, Lcom/facebook/AccessToken$c;->e()Lcom/facebook/AccessToken;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/facebook/AccessToken;->o()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-nez v0, :cond_1

    .line 72
    .line 73
    invoke-virtual {p3}, Lcom/facebook/AccessToken$c;->d()V

    .line 74
    .line 75
    .line 76
    :cond_1
    :goto_0
    new-instance p3, Lcom/facebook/b0;

    .line 77
    .line 78
    invoke-direct {p3, p1, p2, p4}, Lcom/facebook/b0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 79
    .line 80
    .line 81
    return-object p3

    .line 82
    :cond_2
    const-string p4, "body"

    .line 83
    .line 84
    const-string v0, "FACEBOOK_NON_JSON_RESULT"

    .line 85
    .line 86
    invoke-static {p3, p4, v0}, Lcom/facebook/internal/u0;->P(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p3

    .line 90
    instance-of p4, p3, Lorg/json/JSONObject;

    .line 91
    .line 92
    if-eqz p4, :cond_3

    .line 93
    .line 94
    new-instance p4, Lcom/facebook/b0;

    .line 95
    .line 96
    check-cast p3, Lorg/json/JSONObject;

    .line 97
    .line 98
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-direct {p4, p1, p2, v0, p3}, Lcom/facebook/b0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 103
    .line 104
    .line 105
    return-object p4

    .line 106
    :cond_3
    instance-of p4, p3, Lorg/json/JSONArray;

    .line 107
    .line 108
    if-eqz p4, :cond_4

    .line 109
    .line 110
    new-instance p4, Lcom/facebook/b0;

    .line 111
    .line 112
    check-cast p3, Lorg/json/JSONArray;

    .line 113
    .line 114
    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-direct {p4, p1, p2, v0, p3}, Lcom/facebook/b0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 119
    .line 120
    .line 121
    return-object p4

    .line 122
    :cond_4
    sget-object p3, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 123
    .line 124
    const-string p4, "NULL"

    .line 125
    .line 126
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_5
    sget-object p4, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 130
    .line 131
    if-ne p3, p4, :cond_6

    .line 132
    .line 133
    new-instance p4, Lcom/facebook/b0;

    .line 134
    .line 135
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p3

    .line 139
    invoke-direct {p4, p1, p2, p3, v1}, Lcom/facebook/b0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 140
    .line 141
    .line 142
    return-object p4

    .line 143
    :cond_6
    new-instance p1, Lcom/facebook/FacebookException;

    .line 144
    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string p4, "Got unexpected object type in response, class: "

    .line 151
    .line 152
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p1
.end method

.method private final c(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/b0;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    if-ne v0, v2, :cond_1

    .line 13
    .line 14
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    check-cast v2, Lcom/facebook/GraphRequest;

    .line 19
    .line 20
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    .line 21
    .line 22
    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v5, "body"

    .line 26
    .line 27
    invoke-virtual {v4, v5, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 33
    .line 34
    .line 35
    move-result v5

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception v4

    .line 38
    goto :goto_1

    .line 39
    :catch_1
    move-exception v4

    .line 40
    goto :goto_2

    .line 41
    :cond_0
    const/16 v5, 0xc8

    .line 42
    .line 43
    :goto_0
    const-string v6, "code"

    .line 44
    .line 45
    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    new-instance v5, Lorg/json/JSONArray;

    .line 49
    .line 50
    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_4

    .line 57
    :goto_1
    new-instance v5, Lcom/facebook/b0;

    .line 58
    .line 59
    new-instance v6, Lcom/facebook/FacebookRequestError;

    .line 60
    .line 61
    invoke-direct {v6, p1, v4}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    .line 62
    .line 63
    .line 64
    invoke-direct {v5, v2, p1, v6}, Lcom/facebook/b0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_3

    .line 71
    :goto_2
    new-instance v5, Lcom/facebook/b0;

    .line 72
    .line 73
    new-instance v6, Lcom/facebook/FacebookRequestError;

    .line 74
    .line 75
    invoke-direct {v6, p1, v4}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    .line 76
    .line 77
    .line 78
    invoke-direct {v5, v2, p1, v6}, Lcom/facebook/b0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    :cond_1
    :goto_3
    move-object v5, p3

    .line 85
    :goto_4
    instance-of v2, v5, Lorg/json/JSONArray;

    .line 86
    .line 87
    if-eqz v2, :cond_3

    .line 88
    .line 89
    move-object v2, v5

    .line 90
    check-cast v2, Lorg/json/JSONArray;

    .line 91
    .line 92
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-ne v4, v0, :cond_3

    .line 97
    .line 98
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    :goto_5
    if-ge v3, v0, :cond_2

    .line 103
    .line 104
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    check-cast v2, Lcom/facebook/GraphRequest;

    .line 109
    .line 110
    :try_start_1
    move-object v4, v5

    .line 111
    check-cast v4, Lorg/json/JSONArray;

    .line 112
    .line 113
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    const-string v6, "obj"

    .line 118
    .line 119
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, v2, p1, v4, p3}, Lcom/facebook/b0$a;->b(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Ljava/lang/Object;Ljava/lang/Object;)Lcom/facebook/b0;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_2

    .line 127
    .line 128
    .line 129
    goto :goto_8

    .line 130
    :catch_2
    move-exception v4

    .line 131
    goto :goto_6

    .line 132
    :catch_3
    move-exception v4

    .line 133
    goto :goto_7

    .line 134
    :goto_6
    new-instance v6, Lcom/facebook/b0;

    .line 135
    .line 136
    new-instance v7, Lcom/facebook/FacebookRequestError;

    .line 137
    .line 138
    invoke-direct {v7, p1, v4}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {v6, v2, p1, v7}, Lcom/facebook/b0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 142
    .line 143
    .line 144
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_8

    .line 148
    :goto_7
    new-instance v6, Lcom/facebook/b0;

    .line 149
    .line 150
    new-instance v7, Lcom/facebook/FacebookRequestError;

    .line 151
    .line 152
    invoke-direct {v7, p1, v4}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    .line 153
    .line 154
    .line 155
    invoke-direct {v6, v2, p1, v7}, Lcom/facebook/b0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    :goto_8
    add-int/lit8 v3, v3, 0x1

    .line 162
    .line 163
    goto :goto_5

    .line 164
    :cond_2
    return-object v1

    .line 165
    :cond_3
    new-instance p1, Lcom/facebook/FacebookException;

    .line 166
    .line 167
    const-string p2, "Unexpected number of results"

    .line 168
    .line 169
    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    throw p1
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/net/HttpURLConnection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/FacebookException;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/facebook/GraphRequest;",
            ">;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/FacebookException;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/b0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "requests"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Iterable;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lcom/facebook/GraphRequest;

    .line 34
    .line 35
    new-instance v2, Lcom/facebook/b0;

    .line 36
    .line 37
    new-instance v3, Lcom/facebook/FacebookRequestError;

    .line 38
    .line 39
    invoke-direct {v3, p2, p3}, Lcom/facebook/FacebookRequestError;-><init>(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v2, v1, p2, v3}, Lcom/facebook/b0;-><init>(Lcom/facebook/GraphRequest;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookRequestError;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-object v0
.end method

.method public final d(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/a0;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/net/HttpURLConnection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/a0;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/b0;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "requests"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/facebook/internal/u0;->t0(Ljava/io/InputStream;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    sget-object v0, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 11
    .line 12
    sget-object v1, Lcom/facebook/LoggingBehavior;->INCLUDE_RAW_RESPONSES:Lcom/facebook/LoggingBehavior;

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "Response"

    .line 27
    .line 28
    const-string v4, "Response (raw)\n  Size: %d\n  Response:\n%s\n"

    .line 29
    .line 30
    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/facebook/internal/i0$a;->c(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/b0$a;->e(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/a0;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    return-object p1
.end method

.method public final e(Ljava/lang/String;Ljava/net/HttpURLConnection;Lcom/facebook/a0;)Ljava/util/List;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/net/HttpURLConnection;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/a0;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/b0;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/FacebookException;,
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "responseString"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "requests"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lorg/json/JSONTokener;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "resultObject"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p2, p3, v0}, Lcom/facebook/b0$a;->c(Ljava/net/HttpURLConnection;Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    sget-object v0, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 30
    .line 31
    sget-object v1, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 32
    .line 33
    invoke-virtual {p3}, Lcom/facebook/a0;->o()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const-string p3, "Response"

    .line 50
    .line 51
    const-string v2, "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n"

    .line 52
    .line 53
    invoke-virtual {v0, v1, p3, v2, p1}, Lcom/facebook/internal/i0$a;->c(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-object p2
.end method

.method public final f(Ljava/net/HttpURLConnection;Lcom/facebook/a0;)Ljava/util/List;
    .locals 7
    .param p1    # Ljava/net/HttpURLConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/a0;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/b0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "Response <Error>: %s"

    .line 2
    .line 3
    const-string v1, "Response"

    .line 4
    .line 5
    const-string v2, "connection"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "requests"

    .line 11
    .line 12
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    :try_start_0
    invoke-static {}, Lcom/facebook/v;->F()Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/16 v4, 0x190

    .line 27
    .line 28
    if-lt v3, v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    goto :goto_5

    .line 37
    :catch_0
    move-exception v3

    .line 38
    goto :goto_2

    .line 39
    :catch_1
    move-exception v3

    .line 40
    goto :goto_3

    .line 41
    :cond_0
    invoke-virtual {p1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    :goto_0
    invoke-virtual {p0, v2, p1, p2}, Lcom/facebook/b0$a;->d(Ljava/io/InputStream;Ljava/net/HttpURLConnection;Lcom/facebook/a0;)Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p1
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :goto_1
    invoke-static {v2}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V

    .line 50
    .line 51
    .line 52
    goto :goto_4

    .line 53
    :cond_1
    :try_start_1
    const-string v3, "GraphRequest can\'t be used when Facebook SDK isn\'t fully initialized"

    .line 54
    .line 55
    invoke-static {}, Lcom/facebook/b0;->a()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    new-instance v4, Lcom/facebook/FacebookException;

    .line 63
    .line 64
    invoke-direct {v4, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v4
    :try_end_1
    .catch Lcom/facebook/FacebookException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :goto_2
    :try_start_2
    sget-object v4, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 69
    .line 70
    sget-object v5, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 71
    .line 72
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v4, v5, v1, v0, v6}, Lcom/facebook/internal/i0$a;->c(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    new-instance v0, Lcom/facebook/FacebookException;

    .line 80
    .line 81
    invoke-direct {v0, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, p2, p1, v0}, Lcom/facebook/b0$a;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    goto :goto_1

    .line 89
    :goto_3
    sget-object v4, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 90
    .line 91
    sget-object v5, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    .line 92
    .line 93
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v4, v5, v1, v0, v6}, Lcom/facebook/internal/i0$a;->c(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p2, p1, v3}, Lcom/facebook/b0$a;->a(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    goto :goto_1

    .line 105
    :goto_4
    return-object p1

    .line 106
    :goto_5
    invoke-static {v2}, Lcom/facebook/internal/u0;->j(Ljava/io/Closeable;)V

    .line 107
    .line 108
    .line 109
    throw p1
.end method
