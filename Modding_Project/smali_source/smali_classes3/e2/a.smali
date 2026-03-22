.class public final Le2/a;
.super Ljava/lang/Object;
.source "FeatureExtractor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Le2/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lorg/json/JSONObject;

.field private static f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le2/a;

    .line 2
    .line 3
    invoke-direct {v0}, Le2/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le2/a;->a:Le2/a;

    .line 7
    .line 8
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

.method public static final a(Lorg/json/JSONObject;Ljava/lang/String;)[F
    .locals 10
    .param p0    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-class v0, Le2/a;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    const-string v1, "viewHierarchy"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "appName"

    .line 17
    .line 18
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-boolean v1, Le2/a;->f:Z

    .line 22
    .line 23
    if-nez v1, :cond_1

    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_1
    const/16 v1, 0x1e

    .line 27
    .line 28
    new-array v3, v1, [F

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    :goto_0
    if-ge v4, v1, :cond_2

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    aput v5, v3, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    add-int/lit8 v4, v4, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    const-string p1, "this as java.lang.String).toLowerCase()"

    .line 46
    .line 47
    invoke-static {v9, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance p1, Lorg/json/JSONObject;

    .line 51
    .line 52
    const-string v1, "view"

    .line 53
    .line 54
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    const-string v1, "screenname"

    .line 66
    .line 67
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    new-instance v6, Lorg/json/JSONArray;

    .line 72
    .line 73
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 74
    .line 75
    .line 76
    sget-object p0, Le2/a;->a:Le2/a;

    .line 77
    .line 78
    invoke-direct {p0, p1, v6}, Le2/a;->j(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    .line 79
    .line 80
    .line 81
    invoke-direct {p0, p1}, Le2/a;->i(Lorg/json/JSONObject;)[F

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-direct {p0, v3, v1}, Le2/a;->m([F[F)V

    .line 86
    .line 87
    .line 88
    invoke-direct {p0, p1}, Le2/a;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    if-nez v5, :cond_3

    .line 93
    .line 94
    return-object v2

    .line 95
    :cond_3
    const-string v1, "screenName"

    .line 96
    .line 97
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    const-string p1, "viewTree.toString()"

    .line 105
    .line 106
    invoke-static {v8, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    move-object v4, p0

    .line 110
    invoke-direct/range {v4 .. v9}, Le2/a;->h(Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[F

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {p0, v3, p1}, Le2/a;->m([F[F)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    .line 117
    :catch_0
    return-object v3

    .line 118
    :goto_1
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    return-object v2
.end method

.method private final b(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    const-string v0, "is_interacted"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_1
    const-string v0, "childviews"

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-nez p1, :cond_2

    .line 25
    .line 26
    return-object v1

    .line 27
    :cond_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    const/4 v2, 0x0

    .line 32
    :goto_0
    if-ge v2, v0, :cond_4

    .line 33
    .line 34
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const-string v4, "children.getJSONObject(i)"

    .line 39
    .line 40
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0, v3}, Le2/a;->b(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    if-eqz v3, :cond_3

    .line 48
    .line 49
    return-object v3

    .line 50
    :cond_3
    add-int/lit8 v2, v2, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    :catch_0
    :cond_4
    return-object v1
.end method

.method public static final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Le2/a;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    const-string v1, "buttonText"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "activityName"

    .line 17
    .line 18
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "appName"

    .line 22
    .line 23
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p2, " | "

    .line 35
    .line 36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, ", "

    .line 43
    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    const-string p1, "this as java.lang.String).toLowerCase()"

    .line 59
    .line 60
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    .line 63
    return-object p0

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    return-object v2
.end method

.method public static final d(Ljava/io/File;)V
    .locals 15
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "4"

    .line 2
    .line 3
    const-string v1, "3"

    .line 4
    .line 5
    const-string v2, "2"

    .line 6
    .line 7
    const-string v3, "1"

    .line 8
    .line 9
    const-class v4, Le2/a;

    .line 10
    .line 11
    invoke-static {v4}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v5

    .line 15
    if-eqz v5, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    .line 19
    .line 20
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 21
    .line 22
    .line 23
    sput-object v5, Le2/a;->e:Lorg/json/JSONObject;

    .line 24
    .line 25
    new-instance v5, Ljava/io/FileInputStream;

    .line 26
    .line 27
    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    new-array p0, p0, [B

    .line 35
    .line 36
    invoke-virtual {v5, p0}, Ljava/io/InputStream;->read([B)I

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 40
    .line 41
    .line 42
    new-instance v5, Lorg/json/JSONObject;

    .line 43
    .line 44
    new-instance v6, Ljava/lang/String;

    .line 45
    .line 46
    sget-object v7, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 47
    .line 48
    invoke-direct {v6, p0, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sput-object v5, Le2/a;->e:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    :try_start_1
    const-string p0, "ENGLISH"

    .line 57
    .line 58
    invoke-static {p0, v3}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    const-string v5, "GERMAN"

    .line 63
    .line 64
    invoke-static {v5, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    const-string v6, "SPANISH"

    .line 69
    .line 70
    invoke-static {v6, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    const-string v7, "JAPANESE"

    .line 75
    .line 76
    invoke-static {v7, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    filled-new-array {p0, v5, v6, v7}, [Lkotlin/Pair;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-static {p0}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 85
    .line 86
    .line 87
    move-result-object p0

    .line 88
    sput-object p0, Le2/a;->b:Ljava/util/Map;

    .line 89
    .line 90
    const-string p0, "VIEW_CONTENT"

    .line 91
    .line 92
    const-string v5, "0"

    .line 93
    .line 94
    invoke-static {p0, v5}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    const-string p0, "SEARCH"

    .line 99
    .line 100
    invoke-static {p0, v3}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 101
    .line 102
    .line 103
    move-result-object v7

    .line 104
    const-string p0, "ADD_TO_CART"

    .line 105
    .line 106
    invoke-static {p0, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 107
    .line 108
    .line 109
    move-result-object v8

    .line 110
    const-string p0, "ADD_TO_WISHLIST"

    .line 111
    .line 112
    invoke-static {p0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    const-string p0, "INITIATE_CHECKOUT"

    .line 117
    .line 118
    invoke-static {p0, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 119
    .line 120
    .line 121
    move-result-object v10

    .line 122
    const-string p0, "ADD_PAYMENT_INFO"

    .line 123
    .line 124
    const-string v5, "5"

    .line 125
    .line 126
    invoke-static {p0, v5}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 127
    .line 128
    .line 129
    move-result-object v11

    .line 130
    const-string p0, "PURCHASE"

    .line 131
    .line 132
    const-string v5, "6"

    .line 133
    .line 134
    invoke-static {p0, v5}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 135
    .line 136
    .line 137
    move-result-object v12

    .line 138
    const-string p0, "LEAD"

    .line 139
    .line 140
    const-string v5, "7"

    .line 141
    .line 142
    invoke-static {p0, v5}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 143
    .line 144
    .line 145
    move-result-object v13

    .line 146
    const-string p0, "COMPLETE_REGISTRATION"

    .line 147
    .line 148
    const-string v5, "8"

    .line 149
    .line 150
    invoke-static {p0, v5}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 151
    .line 152
    .line 153
    move-result-object v14

    .line 154
    filled-new-array/range {v6 .. v14}, [Lkotlin/Pair;

    .line 155
    .line 156
    .line 157
    move-result-object p0

    .line 158
    invoke-static {p0}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 159
    .line 160
    .line 161
    move-result-object p0

    .line 162
    sput-object p0, Le2/a;->c:Ljava/util/Map;

    .line 163
    .line 164
    const-string p0, "BUTTON_TEXT"

    .line 165
    .line 166
    invoke-static {p0, v3}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    const-string v3, "PAGE_TITLE"

    .line 171
    .line 172
    invoke-static {v3, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    const-string v3, "RESOLVED_DOCUMENT_LINK"

    .line 177
    .line 178
    invoke-static {v3, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    const-string v3, "BUTTON_ID"

    .line 183
    .line 184
    invoke-static {v3, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    filled-new-array {p0, v2, v1, v0}, [Lkotlin/Pair;

    .line 189
    .line 190
    .line 191
    move-result-object p0

    .line 192
    invoke-static {p0}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    sput-object p0, Le2/a;->d:Ljava/util/Map;

    .line 197
    .line 198
    const/4 p0, 0x1

    .line 199
    sput-boolean p0, Le2/a;->f:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    .line 201
    return-void

    .line 202
    :catchall_0
    move-exception p0

    .line 203
    invoke-static {p0, v4}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    :catch_0
    return-void
.end method

.method private final e(Lorg/json/JSONObject;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    const-string v0, "classtypebitmask"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    const/4 v0, 0x1

    .line 16
    and-int/2addr p1, v0

    .line 17
    shl-int/lit8 p1, p1, 0x5

    .line 18
    .line 19
    if-lez p1, :cond_1

    .line 20
    .line 21
    move v1, v0

    .line 22
    :cond_1
    return v1

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return v1
.end method

.method public static final f()Z
    .locals 3

    .line 1
    const-class v0, Le2/a;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    :try_start_0
    sget-boolean v0, Le2/a;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    return v0

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return v2
.end method

.method private final g([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 9

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    array-length v0, p1

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_3

    .line 12
    .line 13
    aget-object v3, p1, v2

    .line 14
    .line 15
    array-length v4, p2

    .line 16
    move v5, v1

    .line 17
    :goto_1
    if-ge v5, v4, :cond_2

    .line 18
    .line 19
    aget-object v6, p2, v5

    .line 20
    .line 21
    const/4 v7, 0x2

    .line 22
    const/4 v8, 0x0

    .line 23
    invoke-static {v6, v3, v1, v7, v8}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-eqz v6, :cond_1

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    return p1

    .line 31
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_3
    return v1

    .line 40
    :goto_2
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return v1
.end method

.method private final h(Lorg/json/JSONObject;Lorg/json/JSONArray;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[F
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p4

    .line 4
    .line 5
    const-string v2, "LEAD"

    .line 6
    .line 7
    const-string v3, "PURCHASE"

    .line 8
    .line 9
    const-string v4, "PAGE_TITLE"

    .line 10
    .line 11
    const-string v5, "BUTTON_TEXT"

    .line 12
    .line 13
    const-string v6, "COMPLETE_REGISTRATION"

    .line 14
    .line 15
    const-string v7, "ENGLISH"

    .line 16
    .line 17
    invoke-static/range {p0 .. p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v8

    .line 21
    const/4 v9, 0x0

    .line 22
    if-eqz v8, :cond_0

    .line 23
    .line 24
    return-object v9

    .line 25
    :cond_0
    const/16 v8, 0x1e

    .line 26
    .line 27
    :try_start_0
    new-array v10, v8, [F

    .line 28
    .line 29
    const/4 v11, 0x0

    .line 30
    move v12, v11

    .line 31
    :goto_0
    const/4 v13, 0x0

    .line 32
    if-ge v12, v8, :cond_1

    .line 33
    .line 34
    aput v13, v10, v12

    .line 35
    .line 36
    add-int/lit8 v12, v12, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v0

    .line 40
    goto/16 :goto_10

    .line 41
    .line 42
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    .line 43
    .line 44
    .line 45
    move-result v8

    .line 46
    const/4 v12, 0x1

    .line 47
    const/high16 v14, 0x3f800000    # 1.0f

    .line 48
    .line 49
    if-le v8, v12, :cond_2

    .line 50
    .line 51
    int-to-float v8, v8

    .line 52
    sub-float/2addr v8, v14

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    move v8, v13

    .line 55
    :goto_1
    const/4 v12, 0x3

    .line 56
    aput v8, v10, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONArray;->length()I

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    move v12, v11

    .line 63
    :goto_2
    if-ge v12, v8, :cond_4

    .line 64
    .line 65
    move-object/from16 v15, p2

    .line 66
    .line 67
    invoke-virtual {v15, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    move-result-object v13

    .line 71
    const-string v9, "siblings.getJSONObject(i)"

    .line 72
    .line 73
    invoke-static {v13, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {v1, v13}, Le2/a;->e(Lorg/json/JSONObject;)Z

    .line 77
    .line 78
    .line 79
    move-result v9

    .line 80
    if-eqz v9, :cond_3

    .line 81
    .line 82
    const/16 v9, 0x9

    .line 83
    .line 84
    aget v13, v10, v9

    .line 85
    .line 86
    add-float/2addr v13, v14

    .line 87
    aput v13, v10, v9
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    .line 89
    :cond_3
    add-int/lit8 v12, v12, 0x1

    .line 90
    .line 91
    const/4 v9, 0x0

    .line 92
    const/4 v13, 0x0

    .line 93
    goto :goto_2

    .line 94
    :catch_0
    :cond_4
    const/16 v8, 0xd

    .line 95
    .line 96
    const/high16 v9, -0x40800000    # -1.0f

    .line 97
    .line 98
    :try_start_2
    aput v9, v10, v8

    .line 99
    .line 100
    const/16 v8, 0xe

    .line 101
    .line 102
    aput v9, v10, v8

    .line 103
    .line 104
    new-instance v8, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    move-object/from16 v9, p3

    .line 110
    .line 111
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const/16 v9, 0x7c

    .line 115
    .line 116
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    move-object/from16 v9, p5

    .line 120
    .line 121
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    new-instance v9, Ljava/lang/StringBuilder;

    .line 129
    .line 130
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .line 132
    .line 133
    new-instance v12, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    move-object/from16 v13, p1

    .line 139
    .line 140
    invoke-direct {v1, v13, v12, v9}, Le2/a;->n(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v9

    .line 147
    const-string v13, "hintSB.toString()"

    .line 148
    .line 149
    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v12

    .line 156
    const-string v13, "textSB.toString()"

    .line 157
    .line 158
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-direct {v1, v7, v6, v5, v12}, Le2/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 162
    .line 163
    .line 164
    move-result v13

    .line 165
    if-eqz v13, :cond_5

    .line 166
    .line 167
    move v13, v14

    .line 168
    goto :goto_3

    .line 169
    :cond_5
    const/4 v13, 0x0

    .line 170
    :goto_3
    const/16 v15, 0xf

    .line 171
    .line 172
    aput v13, v10, v15

    .line 173
    .line 174
    invoke-direct {v1, v7, v6, v4, v8}, Le2/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v13

    .line 178
    if-eqz v13, :cond_6

    .line 179
    .line 180
    move v13, v14

    .line 181
    goto :goto_4

    .line 182
    :cond_6
    const/4 v13, 0x0

    .line 183
    :goto_4
    const/16 v15, 0x10

    .line 184
    .line 185
    aput v13, v10, v15

    .line 186
    .line 187
    const-string v13, "BUTTON_ID"

    .line 188
    .line 189
    invoke-direct {v1, v7, v6, v13, v9}, Le2/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v6

    .line 193
    if-eqz v6, :cond_7

    .line 194
    .line 195
    move v6, v14

    .line 196
    goto :goto_5

    .line 197
    :cond_7
    const/4 v6, 0x0

    .line 198
    :goto_5
    const/16 v9, 0x11

    .line 199
    .line 200
    aput v6, v10, v9

    .line 201
    .line 202
    const-string v6, "password"

    .line 203
    .line 204
    const/4 v9, 0x2

    .line 205
    const/4 v13, 0x0

    .line 206
    invoke-static {v0, v6, v11, v9, v13}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 207
    .line 208
    .line 209
    move-result v6

    .line 210
    if-eqz v6, :cond_8

    .line 211
    .line 212
    move v6, v14

    .line 213
    goto :goto_6

    .line 214
    :cond_8
    const/4 v6, 0x0

    .line 215
    :goto_6
    const/16 v9, 0x12

    .line 216
    .line 217
    aput v6, v10, v9

    .line 218
    .line 219
    const-string v6, "(?i)(confirm.*password)|(password.*(confirmation|confirm)|confirmation)"

    .line 220
    .line 221
    invoke-direct {v1, v6, v0}, Le2/a;->k(Ljava/lang/String;Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v6

    .line 225
    if-eqz v6, :cond_9

    .line 226
    .line 227
    move v6, v14

    .line 228
    goto :goto_7

    .line 229
    :cond_9
    const/4 v6, 0x0

    .line 230
    :goto_7
    const/16 v9, 0x13

    .line 231
    .line 232
    aput v6, v10, v9

    .line 233
    .line 234
    const-string v6, "(?i)(sign in)|login|signIn"

    .line 235
    .line 236
    invoke-direct {v1, v6, v0}, Le2/a;->k(Ljava/lang/String;Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v6

    .line 240
    if-eqz v6, :cond_a

    .line 241
    .line 242
    move v6, v14

    .line 243
    goto :goto_8

    .line 244
    :cond_a
    const/4 v6, 0x0

    .line 245
    :goto_8
    const/16 v9, 0x14

    .line 246
    .line 247
    aput v6, v10, v9

    .line 248
    .line 249
    const-string v6, "(?i)(sign.*(up|now)|registration|register|(create|apply).*(profile|account)|open.*account|account.*(open|creation|application)|enroll|join.*now)"

    .line 250
    .line 251
    invoke-direct {v1, v6, v0}, Le2/a;->k(Ljava/lang/String;Ljava/lang/String;)Z

    .line 252
    .line 253
    .line 254
    move-result v0

    .line 255
    if-eqz v0, :cond_b

    .line 256
    .line 257
    move v0, v14

    .line 258
    goto :goto_9

    .line 259
    :cond_b
    const/4 v0, 0x0

    .line 260
    :goto_9
    const/16 v6, 0x15

    .line 261
    .line 262
    aput v0, v10, v6

    .line 263
    .line 264
    invoke-direct {v1, v7, v3, v5, v12}, Le2/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_c

    .line 269
    .line 270
    move v0, v14

    .line 271
    goto :goto_a

    .line 272
    :cond_c
    const/4 v0, 0x0

    .line 273
    :goto_a
    const/16 v6, 0x16

    .line 274
    .line 275
    aput v0, v10, v6

    .line 276
    .line 277
    invoke-direct {v1, v7, v3, v4, v8}, Le2/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_d

    .line 282
    .line 283
    move v0, v14

    .line 284
    goto :goto_b

    .line 285
    :cond_d
    const/4 v0, 0x0

    .line 286
    :goto_b
    const/16 v3, 0x18

    .line 287
    .line 288
    aput v0, v10, v3

    .line 289
    .line 290
    const-string v0, "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart"

    .line 291
    .line 292
    invoke-direct {v1, v0, v12}, Le2/a;->k(Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_e

    .line 297
    .line 298
    move v0, v14

    .line 299
    goto :goto_c

    .line 300
    :cond_e
    const/4 v0, 0x0

    .line 301
    :goto_c
    const/16 v3, 0x19

    .line 302
    .line 303
    aput v0, v10, v3

    .line 304
    .line 305
    const-string v0, "(?i)add to(\\s|\\Z)|update(\\s|\\Z)|cart|shop|buy"

    .line 306
    .line 307
    invoke-direct {v1, v0, v8}, Le2/a;->k(Ljava/lang/String;Ljava/lang/String;)Z

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    if-eqz v0, :cond_f

    .line 312
    .line 313
    move v0, v14

    .line 314
    goto :goto_d

    .line 315
    :cond_f
    const/4 v0, 0x0

    .line 316
    :goto_d
    const/16 v3, 0x1b

    .line 317
    .line 318
    aput v0, v10, v3

    .line 319
    .line 320
    invoke-direct {v1, v7, v2, v5, v12}, Le2/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 321
    .line 322
    .line 323
    move-result v0

    .line 324
    if-eqz v0, :cond_10

    .line 325
    .line 326
    move v0, v14

    .line 327
    goto :goto_e

    .line 328
    :cond_10
    const/4 v0, 0x0

    .line 329
    :goto_e
    const/16 v3, 0x1c

    .line 330
    .line 331
    aput v0, v10, v3

    .line 332
    .line 333
    invoke-direct {v1, v7, v2, v4, v8}, Le2/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_11

    .line 338
    .line 339
    move v13, v14

    .line 340
    goto :goto_f

    .line 341
    :cond_11
    const/4 v13, 0x0

    .line 342
    :goto_f
    const/16 v0, 0x1d

    .line 343
    .line 344
    aput v13, v10, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 345
    .line 346
    return-object v10

    .line 347
    :goto_10
    invoke-static {v0, v1}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 348
    .line 349
    .line 350
    const/4 v2, 0x0

    .line 351
    return-object v2
.end method

.method private final i(Lorg/json/JSONObject;)[F
    .locals 11

    .line 1
    const-string v0, "this as java.lang.String).toLowerCase()"

    .line 2
    .line 3
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    const/16 v1, 0x1e

    .line 12
    .line 13
    :try_start_0
    new-array v3, v1, [F

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    move v5, v4

    .line 17
    :goto_0
    if-ge v5, v1, :cond_1

    .line 18
    .line 19
    const/4 v6, 0x0

    .line 20
    aput v6, v3, v5

    .line 21
    .line 22
    add-int/lit8 v5, v5, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_1
    const-string v1, "text"

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v5, "node.optString(TEXT_KEY)"

    .line 35
    .line 36
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v5, "hint"

    .line 47
    .line 48
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    const-string v6, "node.optString(HINT_KEY)"

    .line 53
    .line 54
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    const-string v6, "classname"

    .line 65
    .line 66
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    const-string v7, "node.optString(CLASS_NAME_KEY)"

    .line 71
    .line 72
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    const-string v0, "inputtype"

    .line 83
    .line 84
    const/4 v7, -0x1

    .line 85
    invoke-virtual {p1, v0, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    filled-new-array {v1, v5}, [Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    const-string v7, "$"

    .line 94
    .line 95
    const-string v8, "amount"

    .line 96
    .line 97
    const-string v9, "price"

    .line 98
    .line 99
    const-string v10, "total"

    .line 100
    .line 101
    filled-new-array {v7, v8, v9, v10}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    invoke-direct {p0, v7, v5}, Le2/a;->g([Ljava/lang/String;[Ljava/lang/String;)Z

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    const/high16 v8, 0x3f800000    # 1.0f

    .line 110
    .line 111
    if-eqz v7, :cond_2

    .line 112
    .line 113
    aget v7, v3, v4

    .line 114
    .line 115
    add-float/2addr v7, v8

    .line 116
    aput v7, v3, v4

    .line 117
    .line 118
    :cond_2
    const-string v7, "password"

    .line 119
    .line 120
    const-string v9, "pwd"

    .line 121
    .line 122
    filled-new-array {v7, v9}, [Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v7

    .line 126
    invoke-direct {p0, v7, v5}, Le2/a;->g([Ljava/lang/String;[Ljava/lang/String;)Z

    .line 127
    .line 128
    .line 129
    move-result v7

    .line 130
    if-eqz v7, :cond_3

    .line 131
    .line 132
    const/4 v7, 0x1

    .line 133
    aget v9, v3, v7

    .line 134
    .line 135
    add-float/2addr v9, v8

    .line 136
    aput v9, v3, v7

    .line 137
    .line 138
    :cond_3
    const-string v7, "tel"

    .line 139
    .line 140
    const-string v9, "phone"

    .line 141
    .line 142
    filled-new-array {v7, v9}, [Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v7

    .line 146
    invoke-direct {p0, v7, v5}, Le2/a;->g([Ljava/lang/String;[Ljava/lang/String;)Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    const/4 v9, 0x2

    .line 151
    if-eqz v7, :cond_4

    .line 152
    .line 153
    aget v7, v3, v9

    .line 154
    .line 155
    add-float/2addr v7, v8

    .line 156
    aput v7, v3, v9

    .line 157
    .line 158
    :cond_4
    const-string v7, "search"

    .line 159
    .line 160
    filled-new-array {v7}, [Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-direct {p0, v7, v5}, Le2/a;->g([Ljava/lang/String;[Ljava/lang/String;)Z

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    if-eqz v5, :cond_5

    .line 169
    .line 170
    const/4 v5, 0x4

    .line 171
    aget v7, v3, v5

    .line 172
    .line 173
    add-float/2addr v7, v8

    .line 174
    aput v7, v3, v5

    .line 175
    .line 176
    :cond_5
    if-ltz v0, :cond_6

    .line 177
    .line 178
    const/4 v5, 0x5

    .line 179
    aget v7, v3, v5

    .line 180
    .line 181
    add-float/2addr v7, v8

    .line 182
    aput v7, v3, v5

    .line 183
    .line 184
    :cond_6
    if-eq v0, v9, :cond_7

    .line 185
    .line 186
    const/4 v5, 0x3

    .line 187
    if-eq v0, v5, :cond_7

    .line 188
    .line 189
    goto :goto_1

    .line 190
    :cond_7
    const/4 v5, 0x6

    .line 191
    aget v7, v3, v5

    .line 192
    .line 193
    add-float/2addr v7, v8

    .line 194
    aput v7, v3, v5

    .line 195
    .line 196
    :goto_1
    const/16 v5, 0x20

    .line 197
    .line 198
    if-eq v0, v5, :cond_8

    .line 199
    .line 200
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    if-eqz v0, :cond_9

    .line 211
    .line 212
    :cond_8
    const/4 v0, 0x7

    .line 213
    aget v5, v3, v0

    .line 214
    .line 215
    add-float/2addr v5, v8

    .line 216
    aput v5, v3, v0

    .line 217
    .line 218
    :cond_9
    const-string v0, "checkbox"

    .line 219
    .line 220
    invoke-static {v6, v0, v4, v9, v2}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_a

    .line 225
    .line 226
    const/16 v0, 0x8

    .line 227
    .line 228
    aget v5, v3, v0

    .line 229
    .line 230
    add-float/2addr v5, v8

    .line 231
    aput v5, v3, v0

    .line 232
    .line 233
    :cond_a
    const-string v0, "complete"

    .line 234
    .line 235
    const-string v5, "confirm"

    .line 236
    .line 237
    const-string v7, "done"

    .line 238
    .line 239
    const-string v10, "submit"

    .line 240
    .line 241
    filled-new-array {v0, v5, v7, v10}, [Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    filled-new-array {v1}, [Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-direct {p0, v0, v1}, Le2/a;->g([Ljava/lang/String;[Ljava/lang/String;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_b

    .line 254
    .line 255
    const/16 v0, 0xa

    .line 256
    .line 257
    aget v1, v3, v0

    .line 258
    .line 259
    add-float/2addr v1, v8

    .line 260
    aput v1, v3, v0

    .line 261
    .line 262
    :cond_b
    const-string v0, "radio"

    .line 263
    .line 264
    invoke-static {v6, v0, v4, v9, v2}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    if-eqz v0, :cond_c

    .line 269
    .line 270
    const-string v0, "button"

    .line 271
    .line 272
    invoke-static {v6, v0, v4, v9, v2}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    if-eqz v0, :cond_c

    .line 277
    .line 278
    const/16 v0, 0xc

    .line 279
    .line 280
    aget v1, v3, v0

    .line 281
    .line 282
    add-float/2addr v1, v8

    .line 283
    aput v1, v3, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    .line 285
    :cond_c
    :try_start_1
    const-string v0, "childviews"

    .line 286
    .line 287
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 292
    .line 293
    .line 294
    move-result v0

    .line 295
    :goto_2
    if-ge v4, v0, :cond_d

    .line 296
    .line 297
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    const-string v5, "childViews.getJSONObject(i)"

    .line 302
    .line 303
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    invoke-direct {p0, v1}, Le2/a;->i(Lorg/json/JSONObject;)[F

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    invoke-direct {p0, v3, v1}, Le2/a;->m([F[F)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 311
    .line 312
    .line 313
    add-int/lit8 v4, v4, 0x1

    .line 314
    .line 315
    goto :goto_2

    .line 316
    :catch_0
    :cond_d
    return-object v3

    .line 317
    :goto_3
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    return-object v2
.end method

.method private final j(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z
    .locals 10

    .line 1
    const-string v0, "childviews"

    .line 2
    .line 3
    const-string v1, "is_interacted"

    .line 4
    .line 5
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    return v3

    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v4, 0x1

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    return v4

    .line 21
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    move v6, v3

    .line 30
    :goto_0
    if-ge v6, v5, :cond_3

    .line 31
    .line 32
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    if-eqz v7, :cond_2

    .line 41
    .line 42
    move v1, v4

    .line 43
    :goto_1
    move v5, v1

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    goto :goto_5

    .line 50
    :cond_3
    move v1, v3

    .line 51
    goto :goto_1

    .line 52
    :goto_2
    new-instance v6, Lorg/json/JSONArray;

    .line 53
    .line 54
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 55
    .line 56
    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    move v0, v3

    .line 64
    :goto_3
    if-ge v0, p1, :cond_7

    .line 65
    .line 66
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 71
    .line 72
    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    move v7, v3

    .line 81
    :goto_4
    if-ge v7, v1, :cond_6

    .line 82
    .line 83
    invoke-virtual {v2, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    const-string v9, "child"

    .line 88
    .line 89
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v8, p2}, Le2/a;->j(Lorg/json/JSONObject;Lorg/json/JSONArray;)Z

    .line 93
    .line 94
    .line 95
    move-result v9

    .line 96
    if-eqz v9, :cond_5

    .line 97
    .line 98
    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 99
    .line 100
    .line 101
    move v5, v4

    .line 102
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 103
    .line 104
    goto :goto_4

    .line 105
    :cond_6
    invoke-virtual {p1, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    .line 107
    .line 108
    :cond_7
    return v5

    .line 109
    :goto_5
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :catch_0
    return v3
.end method

.method private final k(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    .line 18
    .line 19
    .line 20
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    return p1

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return v1
.end method

.method private final l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    sget-object v0, Le2/a;->e:Lorg/json/JSONObject;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const-string v0, "rules"

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v0, v2

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_3

    .line 23
    :cond_1
    :goto_0
    const-string v3, "rulesForLanguage"

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_5

    .line 30
    .line 31
    sget-object v3, Le2/a;->b:Ljava/util/Map;

    .line 32
    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    const-string v3, "languageInfo"

    .line 36
    .line 37
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    move-object v3, v2

    .line 41
    :cond_2
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-eqz p1, :cond_5

    .line 52
    .line 53
    const-string v0, "rulesForEvent"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_5

    .line 60
    .line 61
    sget-object v0, Le2/a;->c:Ljava/util/Map;

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    const-string v0, "eventInfo"

    .line 66
    .line 67
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    move-object v0, v2

    .line 71
    :cond_3
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    check-cast p2, Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_5

    .line 82
    .line 83
    const-string p2, "positiveRules"

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    sget-object p2, Le2/a;->d:Ljava/util/Map;

    .line 92
    .line 93
    if-nez p2, :cond_4

    .line 94
    .line 95
    const-string p2, "textTypeInfo"

    .line 96
    .line 97
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_4
    move-object v2, p2

    .line 102
    :goto_1
    invoke-interface {v2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    check-cast p2, Ljava/lang/String;

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    :cond_5
    if-nez v2, :cond_6

    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_6
    invoke-direct {p0, v2, p4}, Le2/a;->k(Ljava/lang/String;Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    :goto_2
    return v1

    .line 120
    :goto_3
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    return v1
.end method

.method private final m([F[F)V
    .locals 4

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

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
    :try_start_0
    array-length v0, p1

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    aget v2, p1, v1

    .line 13
    .line 14
    aget v3, p2, v1

    .line 15
    .line 16
    add-float/2addr v2, v3

    .line 17
    aput v2, p1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    return-void

    .line 25
    :goto_1
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private final n(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    .locals 4

    .line 1
    const-string v0, "this as java.lang.String).toLowerCase()"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    const-string v2, "text"

    .line 13
    .line 14
    invoke-virtual {p1, v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "view.optString(TEXT_KEY, \"\")"

    .line 19
    .line 20
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v3, "hint"

    .line 31
    .line 32
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v3, "view.optString(HINT_KEY, \"\")"

    .line 37
    .line 38
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 49
    .line 50
    .line 51
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    const-string v3, " "

    .line 53
    .line 54
    if-lez v0, :cond_1

    .line 55
    .line 56
    :try_start_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-lez v0, :cond_2

    .line 70
    .line 71
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_2
    const-string v0, "childviews"

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-nez p1, :cond_3

    .line 84
    .line 85
    return-void

    .line 86
    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 87
    .line 88
    .line 89
    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 90
    const/4 v1, 0x0

    .line 91
    :goto_1
    if-ge v1, v0, :cond_4

    .line 92
    .line 93
    :try_start_2
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const-string v3, "currentChildView"

    .line 98
    .line 99
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-direct {p0, v2, p2, p3}, Le2/a;->n(Lorg/json/JSONObject;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    .line 104
    .line 105
    :catch_0
    add-int/lit8 v1, v1, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_4
    return-void

    .line 109
    :goto_2
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    return-void
.end method
