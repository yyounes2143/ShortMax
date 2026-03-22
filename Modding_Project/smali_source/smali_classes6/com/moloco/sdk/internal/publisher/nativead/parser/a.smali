.class public final Lcom/moloco/sdk/internal/publisher/nativead/parser/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNativeAdOrtbResponseParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeAdOrtbResponseParser.kt\ncom/moloco/sdk/internal/publisher/nativead/parser/NativeAdOrtbResponseParser\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,128:1\n1#2:129\n*E\n"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
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


# virtual methods
.method public final a(Lorg/json/JSONObject;IZ)Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$a;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v7, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$a;

    .line 6
    .line 7
    const-string/jumbo v1, "type"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v4, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v4, v0

    .line 27
    :goto_0
    const-string v1, "len"

    .line 28
    .line 29
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    :cond_2
    move-object v5, v0

    .line 44
    const-string/jumbo v0, "value"

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    const-string p1, "getString(...)"

    .line 52
    .line 53
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    move-object v1, v7

    .line 57
    move v2, p2

    .line 58
    move v3, p3

    .line 59
    invoke-direct/range {v1 .. v6}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$a;-><init>(IZLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v7
.end method

.method public final b(Lorg/json/JSONObject;)Lcom/moloco/sdk/internal/publisher/nativead/model/a$c;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    const-string/jumbo v1, "url"

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "fallback"

    .line 13
    .line 14
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    const-string v2, "clicktrackers"

    .line 25
    .line 26
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/publisher/nativead/parser/a;->h(Lorg/json/JSONArray;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    new-instance v2, Lcom/moloco/sdk/internal/publisher/nativead/model/a$c;

    .line 35
    .line 36
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {v2, v1, p1, v0}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$c;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-object v2
.end method

.method public final c(Ljava/lang/String;)Ljava/lang/Object;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "privacy"

    .line 2
    .line 3
    const-string/jumbo v1, "ver"

    .line 4
    .line 5
    .line 6
    const-string v2, "nativeOrtbString"

    .line 7
    .line 8
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "native"

    .line 17
    .line 18
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v2, p1

    .line 26
    :goto_0
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 27
    .line 28
    new-instance p1, Lcom/moloco/sdk/internal/publisher/nativead/model/a;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x0

    .line 35
    if-eqz v3, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p1

    .line 43
    goto :goto_3

    .line 44
    :cond_1
    move-object v1, v4

    .line 45
    :goto_1
    const-string v3, "assets"

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p0, v3}, Lcom/moloco/sdk/internal/publisher/nativead/parser/a;->d(Lorg/json/JSONArray;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const-string v3, "link"

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {p0, v3}, Lcom/moloco/sdk/internal/publisher/nativead/parser/a;->b(Lorg/json/JSONObject;)Lcom/moloco/sdk/internal/publisher/nativead/model/a$c;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const-string v3, "imptrackers"

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p0, v3}, Lcom/moloco/sdk/internal/publisher/nativead/parser/a;->h(Lorg/json/JSONArray;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    const-string v3, "eventtrackers"

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {p0, v3}, Lcom/moloco/sdk/internal/publisher/nativead/parser/a;->f(Lorg/json/JSONArray;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    move-object v9, v0

    .line 96
    goto :goto_2

    .line 97
    :cond_2
    move-object v9, v4

    .line 98
    :goto_2
    move-object v3, p1

    .line 99
    move-object v4, v1

    .line 100
    invoke-direct/range {v3 .. v9}, Lcom/moloco/sdk/internal/publisher/nativead/model/a;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/moloco/sdk/internal/publisher/nativead/model/a$c;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_4

    .line 108
    :goto_3
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 109
    .line 110
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    :goto_4
    return-object p1
.end method

.method public final d(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/a$a;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    move v3, v2

    .line 19
    :goto_0
    if-ge v3, v1, :cond_6

    .line 20
    .line 21
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    const-string v5, "id"

    .line 26
    .line 27
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_5

    .line 32
    .line 33
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const-string v6, "required"

    .line 38
    .line 39
    invoke-virtual {v4, v6, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    const/4 v7, 0x1

    .line 44
    if-ne v6, v7, :cond_1

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move v7, v2

    .line 48
    :goto_1
    const-string/jumbo v6, "title"

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {p0, v6, v5, v7}, Lcom/moloco/sdk/internal/publisher/nativead/parser/a;->g(Lorg/json/JSONObject;IZ)Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$c;

    .line 56
    .line 57
    .line 58
    move-result-object v6

    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    const-string v6, "img"

    .line 63
    .line 64
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {p0, v6, v5, v7}, Lcom/moloco/sdk/internal/publisher/nativead/parser/a;->e(Lorg/json/JSONObject;IZ)Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$b;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    if-eqz v6, :cond_3

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_3
    const-string/jumbo v6, "video"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-virtual {p0, v6, v5, v7}, Lcom/moloco/sdk/internal/publisher/nativead/parser/a;->i(Lorg/json/JSONObject;IZ)Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$d;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    if-eqz v6, :cond_4

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_4
    const-string v6, "data"

    .line 90
    .line 91
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-virtual {p0, v4, v5, v7}, Lcom/moloco/sdk/internal/publisher/nativead/parser/a;->a(Lorg/json/JSONObject;IZ)Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$a;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    :goto_2
    if-eqz v6, :cond_5

    .line 100
    .line 101
    invoke-interface {v0, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_5
    add-int/lit8 v3, v3, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_6
    return-object v0
.end method

.method public final e(Lorg/json/JSONObject;IZ)Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$b;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v8, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$b;

    .line 6
    .line 7
    const-string/jumbo v1, "type"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    move-object v4, v1

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move-object v4, v0

    .line 27
    :goto_0
    const-string/jumbo v1, "url"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    const-string v1, "getString(...)"

    .line 35
    .line 36
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v1, "w"

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    move-object v6, v1

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    move-object v6, v0

    .line 59
    :goto_1
    const-string v1, "h"

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_3

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    :cond_3
    move-object v7, v0

    .line 76
    move-object v1, v8

    .line 77
    move v2, p2

    .line 78
    move v3, p3

    .line 79
    invoke-direct/range {v1 .. v7}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$b;-><init>(IZLjava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 80
    .line 81
    .line 82
    return-object v8
.end method

.method public final f(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/internal/publisher/nativead/model/a$b;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    new-instance v4, Lcom/moloco/sdk/internal/publisher/nativead/model/a$b;

    .line 25
    .line 26
    const-string v5, "event"

    .line 27
    .line 28
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    const-string v6, "method"

    .line 33
    .line 34
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    move-result v6

    .line 38
    const-string/jumbo v7, "url"

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 42
    .line 43
    .line 44
    move-result v8

    .line 45
    if-eqz v8, :cond_1

    .line 46
    .line 47
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 v3, 0x0

    .line 53
    :goto_1
    invoke-direct {v4, v5, v6, v3}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$b;-><init>(IILjava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    return-object v0
.end method

.method public final g(Lorg/json/JSONObject;IZ)Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$c;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    new-instance v1, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$c;

    .line 6
    .line 7
    const-string/jumbo v2, "text"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "getString(...)"

    .line 15
    .line 16
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v3, "len"

    .line 20
    .line 21
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :cond_1
    invoke-direct {v1, p2, p3, v2, v0}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$c;-><init>(IZLjava/lang/String;Ljava/lang/Integer;)V

    .line 36
    .line 37
    .line 38
    return-object v1
.end method

.method public final h(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    :goto_0
    if-ge v2, v1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return-object v0
.end method

.method public final i(Lorg/json/JSONObject;IZ)Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$d;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return-object p1

    .line 5
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$d;

    .line 6
    .line 7
    const-string/jumbo v1, "vasttag"

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v1, "getString(...)"

    .line 15
    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p2, p3, p1}, Lcom/moloco/sdk/internal/publisher/nativead/model/a$a$d;-><init>(IZLjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method
