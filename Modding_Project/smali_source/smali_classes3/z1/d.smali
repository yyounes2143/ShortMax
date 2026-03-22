.class public final Lz1/d;
.super Ljava/lang/Object;
.source "MACARuleMatchingManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMACARuleMatchingManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MACARuleMatchingManager.kt\ncom/facebook/appevents/integrity/MACARuleMatchingManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,261:1\n1747#2,3:262\n1726#2,3:265\n*S KotlinDebug\n*F\n+ 1 MACARuleMatchingManager.kt\ncom/facebook/appevents/integrity/MACARuleMatchingManager\n*L\n112#1:262,3\n120#1:265,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lz1/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Z

.field private static c:Lorg/json/JSONArray;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static d:[Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lz1/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lz1/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz1/d;->a:Lz1/d;

    .line 7
    .line 8
    const-string v12, "_deviceOSVersion"

    .line 9
    .line 10
    const-string v13, "_remainingDiskGB"

    .line 11
    .line 12
    const-string v1, "event"

    .line 13
    .line 14
    const-string v2, "_locale"

    .line 15
    .line 16
    const-string v3, "_appVersion"

    .line 17
    .line 18
    const-string v4, "_deviceOS"

    .line 19
    .line 20
    const-string v5, "_platform"

    .line 21
    .line 22
    const-string v6, "_deviceModel"

    .line 23
    .line 24
    const-string v7, "_nativeAppID"

    .line 25
    .line 26
    const-string v8, "_nativeAppShortVersion"

    .line 27
    .line 28
    const-string v9, "_timezone"

    .line 29
    .line 30
    const-string v10, "_carrier"

    .line 31
    .line 32
    const-string v11, "_deviceOSTypeName"

    .line 33
    .line 34
    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lz1/d;->d:[Ljava/lang/String;

    .line 39
    .line 40
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

.method public static final a()V
    .locals 2

    .line 1
    const-class v0, Lz1/d;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    sget-object v1, Lz1/d;->a:Lz1/d;

    .line 11
    .line 12
    invoke-direct {v1}, Lz1/d;->g()V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lz1/d;->c:Lorg/json/JSONArray;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    sput-boolean v1, Lz1/d;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    return-void

    .line 26
    :goto_1
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static final b(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 7
    .param p0    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "ANDROID"

    .line 2
    .line 3
    const-string v1, "event"

    .line 4
    .line 5
    const-class v2, Lz1/d;

    .line 6
    .line 7
    invoke-static {v2}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_0
    const-string v3, "params"

    .line 15
    .line 16
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "_locale"

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    sget-object v3, Lcom/facebook/internal/u0;->a:Lcom/facebook/internal/u0;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/facebook/internal/u0;->J()Ljava/util/Locale;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/4 v5, 0x0

    .line 39
    if-eqz v4, :cond_1

    .line 40
    .line 41
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_1
    move-object v4, v5

    .line 50
    :goto_0
    const-string v6, ""

    .line 51
    .line 52
    if-nez v4, :cond_2

    .line 53
    .line 54
    move-object v4, v6

    .line 55
    :cond_2
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const/16 v4, 0x5f

    .line 59
    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/facebook/internal/u0;->J()Ljava/util/Locale;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    if-eqz v4, :cond_3

    .line 68
    .line 69
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    :cond_3
    if-nez v5, :cond_4

    .line 74
    .line 75
    move-object v5, v6

    .line 76
    :cond_4
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string p1, "_appVersion"

    .line 87
    .line 88
    invoke-virtual {v3}, Lcom/facebook/internal/u0;->Q()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    if-nez v1, :cond_5

    .line 93
    .line 94
    move-object v1, v6

    .line 95
    :cond_5
    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const-string p1, "_deviceOS"

    .line 99
    .line 100
    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string p1, "_platform"

    .line 104
    .line 105
    const-string v1, "mobile"

    .line 106
    .line 107
    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string p1, "_deviceModel"

    .line 111
    .line 112
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 113
    .line 114
    if-nez v1, :cond_6

    .line 115
    .line 116
    move-object v1, v6

    .line 117
    :cond_6
    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const-string p1, "_nativeAppID"

    .line 121
    .line 122
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const-string p1, "_nativeAppShortVersion"

    .line 130
    .line 131
    invoke-virtual {v3}, Lcom/facebook/internal/u0;->Q()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    if-nez v1, :cond_7

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_7
    move-object v6, v1

    .line 139
    :goto_1
    invoke-virtual {p0, p1, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    const-string p1, "_timezone"

    .line 143
    .line 144
    invoke-virtual {v3}, Lcom/facebook/internal/u0;->E()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string p1, "_carrier"

    .line 152
    .line 153
    invoke-virtual {v3}, Lcom/facebook/internal/u0;->z()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string p1, "_deviceOSTypeName"

    .line 161
    .line 162
    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string p1, "_deviceOSVersion"

    .line 166
    .line 167
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {p0, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    const-string p1, "_remainingDiskGB"

    .line 173
    .line 174
    invoke-virtual {v3}, Lcom/facebook/internal/u0;->x()J

    .line 175
    .line 176
    .line 177
    move-result-wide v0

    .line 178
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 179
    .line 180
    .line 181
    return-void

    .line 182
    :goto_2
    invoke-static {p0, v2}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    return-void
.end method

.method public static final c(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p0    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-class v0, Lz1/d;

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
    const-string v1, "logic"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    return-object p0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    return-object v2

    .line 36
    :goto_0
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    return-object v2
.end method

.method public static final d(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 12
    .param p0    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lz1/d;

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
    sget-object v1, Lz1/d;->c:Lorg/json/JSONArray;

    .line 12
    .line 13
    if-eqz v1, :cond_6

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_2

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    goto :goto_3

    .line 26
    :cond_1
    sget-object v1, Lz1/d;->c:Lorg/json/JSONArray;

    .line 27
    .line 28
    const-string v3, "null cannot be cast to non-null type org.json.JSONArray"

    .line 29
    .line 30
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const/4 v5, 0x0

    .line 43
    :goto_0
    if-ge v5, v4, :cond_5

    .line 44
    .line 45
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    if-nez v6, :cond_2

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    new-instance v7, Lorg/json/JSONObject;

    .line 53
    .line 54
    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const-string v6, "id"

    .line 58
    .line 59
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 60
    .line 61
    .line 62
    move-result-wide v8

    .line 63
    const-wide/16 v10, 0x0

    .line 64
    .line 65
    cmp-long v6, v8, v10

    .line 66
    .line 67
    if-eqz v6, :cond_4

    .line 68
    .line 69
    const-string v6, "rule"

    .line 70
    .line 71
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    if-nez v6, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-static {v6, p0}, Lz1/d;->f(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    if-eqz v6, :cond_4

    .line 83
    .line 84
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_5
    new-instance p0, Lorg/json/JSONArray;

    .line 95
    .line 96
    invoke-direct {p0, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    const-string v1, "JSONArray(res).toString()"

    .line 104
    .line 105
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-object p0

    .line 109
    :cond_6
    :goto_2
    const-string p0, "[]"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .line 111
    return-object p0

    .line 112
    :goto_3
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    return-object v2
.end method

.method public static final e(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 6
    .param p0    # Lorg/json/JSONArray;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-class v0, Lz1/d;

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
    if-nez p0, :cond_1

    .line 12
    .line 13
    return-object v2

    .line 14
    :cond_1
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    :goto_0
    if-ge v4, v3, :cond_2

    .line 25
    .line 26
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    add-int/lit8 v4, v4, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    return-object v1

    .line 43
    :goto_1
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-object v2
.end method

.method public static final f(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-class v0, Lz1/d;

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
    if-eqz p0, :cond_10

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v1}, Lz1/d;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    if-nez p0, :cond_2

    .line 27
    .line 28
    return v2

    .line 29
    :cond_2
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/16 v4, 0xde3

    .line 38
    .line 39
    const/4 v5, 0x1

    .line 40
    if-eq v3, v4, :cond_9

    .line 41
    .line 42
    const v4, 0x179d7

    .line 43
    .line 44
    .line 45
    if-eq v3, v4, :cond_5

    .line 46
    .line 47
    const v4, 0x1aad3

    .line 48
    .line 49
    .line 50
    if-eq v3, v4, :cond_3

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    const-string v3, "not"

    .line 54
    .line 55
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-nez v3, :cond_4

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0, p1}, Lz1/d;->f(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    xor-int/2addr p0, v5

    .line 71
    return p0

    .line 72
    :catchall_0
    move-exception p0

    .line 73
    goto :goto_3

    .line 74
    :cond_5
    const-string v3, "and"

    .line 75
    .line 76
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_a

    .line 81
    .line 82
    check-cast v1, Lorg/json/JSONArray;

    .line 83
    .line 84
    if-nez v1, :cond_6

    .line 85
    .line 86
    return v2

    .line 87
    :cond_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    move v3, v2

    .line 92
    :goto_0
    if-ge v3, p0, :cond_8

    .line 93
    .line 94
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-static {v4, p1}, Lz1/d;->f(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    if-nez v4, :cond_7

    .line 107
    .line 108
    return v2

    .line 109
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_8
    return v5

    .line 113
    :cond_9
    const-string v3, "or"

    .line 114
    .line 115
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    if-nez v3, :cond_c

    .line 120
    .line 121
    :cond_a
    :goto_1
    check-cast v1, Lorg/json/JSONObject;

    .line 122
    .line 123
    if-nez v1, :cond_b

    .line 124
    .line 125
    return v2

    .line 126
    :cond_b
    invoke-static {p0, v1, p1}, Lz1/d;->j(Ljava/lang/String;Lorg/json/JSONObject;Landroid/os/Bundle;)Z

    .line 127
    .line 128
    .line 129
    move-result p0

    .line 130
    return p0

    .line 131
    :cond_c
    check-cast v1, Lorg/json/JSONArray;

    .line 132
    .line 133
    if-nez v1, :cond_d

    .line 134
    .line 135
    return v2

    .line 136
    :cond_d
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    move v3, v2

    .line 141
    :goto_2
    if-ge v3, p0, :cond_f

    .line 142
    .line 143
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-static {v4, p1}, Lz1/d;->f(Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 152
    .line 153
    .line 154
    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    if-eqz v4, :cond_e

    .line 156
    .line 157
    return v5

    .line 158
    :cond_e
    add-int/lit8 v3, v3, 0x1

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_f
    return v2

    .line 162
    :goto_3
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 163
    .line 164
    .line 165
    :cond_10
    :goto_4
    return v2
.end method

.method private final g()V
    .locals 2

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
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->u(Ljava/lang/String;Z)Lcom/facebook/internal/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/internal/p;->j()Lorg/json/JSONArray;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lz1/d;->c:Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v0

    .line 28
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static final h(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 2
    .param p0    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lz1/d;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "event"

    .line 11
    .line 12
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-boolean v1, Lz1/d;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    if-nez p0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    :try_start_1
    invoke-static {p0, p1}, Lz1/d;->b(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string p1, "_audiencePropertyIds"

    .line 26
    .line 27
    invoke-static {p0}, Lz1/d;->d(Landroid/os/Bundle;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string p1, "cs_maca"

    .line 35
    .line 36
    const-string v1, "1"

    .line 37
    .line 38
    invoke-virtual {p0, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p0}, Lz1/d;->i(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p0

    .line 46
    goto :goto_1

    .line 47
    :catch_0
    :cond_2
    :goto_0
    return-void

    .line 48
    :goto_1
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static final i(Landroid/os/Bundle;)V
    .locals 5
    .param p0    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lz1/d;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "params"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lz1/d;->d:[Ljava/lang/String;

    .line 16
    .line 17
    array-length v2, v1

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, v2, :cond_1

    .line 20
    .line 21
    aget-object v4, v1, v3

    .line 22
    .line 23
    invoke-virtual {p0, v4}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    return-void

    .line 32
    :goto_1
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public static final j(Ljava/lang/String;Lorg/json/JSONObject;Landroid/os/Bundle;)Z
    .locals 8
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-class v0, Lz1/d;

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
    const-string v1, "variable"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "values"

    .line 17
    .line 18
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lz1/d;->c(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    return v2

    .line 28
    :cond_1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lz1/d;->e(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const-string v4, "exists"

    .line 45
    .line 46
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    const/4 v5, 0x1

    .line 51
    if-eqz v4, :cond_3

    .line 52
    .line 53
    if-eqz p2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 60
    .line 61
    .line 62
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    if-ne p0, p1, :cond_2

    .line 64
    .line 65
    move v2, v5

    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto/16 :goto_4

    .line 69
    .line 70
    :cond_2
    :goto_0
    return v2

    .line 71
    :cond_3
    const/4 v4, 0x0

    .line 72
    const-string v6, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    .line 73
    .line 74
    if-eqz p2, :cond_4

    .line 75
    .line 76
    :try_start_1
    sget-object v7, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 77
    .line 78
    invoke-virtual {p0, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, v7}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    if-nez v7, :cond_6

    .line 90
    .line 91
    :cond_4
    if-eqz p2, :cond_5

    .line 92
    .line 93
    invoke-virtual {p2, p0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    move-object v7, p0

    .line 98
    goto :goto_1

    .line 99
    :cond_5
    move-object v7, v4

    .line 100
    :goto_1
    if-nez v7, :cond_6

    .line 101
    .line 102
    return v2

    .line 103
    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    const/4 p2, 0x2

    .line 108
    sparse-switch p0, :sswitch_data_0

    .line 109
    .line 110
    .line 111
    goto/16 :goto_3

    .line 112
    .line 113
    :sswitch_0
    const-string p0, "i_starts_with"

    .line 114
    .line 115
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result p0

    .line 119
    if-nez p0, :cond_7

    .line 120
    .line 121
    goto/16 :goto_3

    .line 122
    .line 123
    :cond_7
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p0

    .line 127
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 128
    .line 129
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {p0, p1, v2, p2, v4}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    goto/16 :goto_3

    .line 148
    .line 149
    :sswitch_1
    const-string p0, "not_contains"

    .line 150
    .line 151
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result p0

    .line 155
    if-nez p0, :cond_8

    .line 156
    .line 157
    goto/16 :goto_3

    .line 158
    .line 159
    :cond_8
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-static {p0, v3, v2, p2, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p0

    .line 167
    if-nez p0, :cond_23

    .line 168
    .line 169
    :cond_9
    :goto_2
    move v2, v5

    .line 170
    goto/16 :goto_3

    .line 171
    .line 172
    :sswitch_2
    const-string p0, "i_is_not_any"

    .line 173
    .line 174
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    if-nez p0, :cond_12

    .line 179
    .line 180
    goto/16 :goto_3

    .line 181
    .line 182
    :sswitch_3
    const-string p0, "i_contains"

    .line 183
    .line 184
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    if-nez p0, :cond_a

    .line 189
    .line 190
    goto/16 :goto_3

    .line 191
    .line 192
    :cond_a
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p0

    .line 196
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 197
    .line 198
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v3, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-static {p0, p1, v2, p2, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    goto/16 :goto_3

    .line 217
    .line 218
    :sswitch_4
    const-string p0, "i_str_in"

    .line 219
    .line 220
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result p0

    .line 224
    if-nez p0, :cond_16

    .line 225
    .line 226
    goto/16 :goto_3

    .line 227
    .line 228
    :sswitch_5
    const-string p0, "i_str_eq"

    .line 229
    .line 230
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result p0

    .line 234
    if-nez p0, :cond_b

    .line 235
    .line 236
    goto/16 :goto_3

    .line 237
    .line 238
    :cond_b
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p0

    .line 242
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 243
    .line 244
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v3, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v2

    .line 262
    goto/16 :goto_3

    .line 263
    .line 264
    :sswitch_6
    const-string p0, "neq"

    .line 265
    .line 266
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 267
    .line 268
    .line 269
    move-result p0

    .line 270
    if-nez p0, :cond_e

    .line 271
    .line 272
    goto/16 :goto_3

    .line 273
    .line 274
    :sswitch_7
    const-string p0, "lte"

    .line 275
    .line 276
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 277
    .line 278
    .line 279
    move-result p0

    .line 280
    if-nez p0, :cond_d

    .line 281
    .line 282
    goto/16 :goto_3

    .line 283
    .line 284
    :sswitch_8
    const-string p0, "gte"

    .line 285
    .line 286
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    move-result p0

    .line 290
    if-nez p0, :cond_c

    .line 291
    .line 292
    goto/16 :goto_3

    .line 293
    .line 294
    :sswitch_9
    const-string p0, "ne"

    .line 295
    .line 296
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result p0

    .line 300
    if-nez p0, :cond_e

    .line 301
    .line 302
    goto/16 :goto_3

    .line 303
    .line 304
    :sswitch_a
    const-string p0, "lt"

    .line 305
    .line 306
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 307
    .line 308
    .line 309
    move-result p0

    .line 310
    if-nez p0, :cond_11

    .line 311
    .line 312
    goto/16 :goto_3

    .line 313
    .line 314
    :sswitch_b
    const-string p0, "le"

    .line 315
    .line 316
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result p0

    .line 320
    if-nez p0, :cond_d

    .line 321
    .line 322
    goto/16 :goto_3

    .line 323
    .line 324
    :sswitch_c
    const-string p0, "in"

    .line 325
    .line 326
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result p0

    .line 330
    if-nez p0, :cond_20

    .line 331
    .line 332
    goto/16 :goto_3

    .line 333
    .line 334
    :sswitch_d
    const-string p0, "gt"

    .line 335
    .line 336
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result p0

    .line 340
    if-nez p0, :cond_f

    .line 341
    .line 342
    goto/16 :goto_3

    .line 343
    .line 344
    :sswitch_e
    const-string p0, "ge"

    .line 345
    .line 346
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result p0

    .line 350
    if-nez p0, :cond_c

    .line 351
    .line 352
    goto/16 :goto_3

    .line 353
    .line 354
    :sswitch_f
    const-string p0, "eq"

    .line 355
    .line 356
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 357
    .line 358
    .line 359
    move-result p0

    .line 360
    if-nez p0, :cond_10

    .line 361
    .line 362
    goto/16 :goto_3

    .line 363
    .line 364
    :sswitch_10
    const-string p0, ">="

    .line 365
    .line 366
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result p0

    .line 370
    if-nez p0, :cond_c

    .line 371
    .line 372
    goto/16 :goto_3

    .line 373
    .line 374
    :cond_c
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object p0

    .line 378
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 379
    .line 380
    .line 381
    move-result-wide p0

    .line 382
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 383
    .line 384
    .line 385
    move-result-wide v0

    .line 386
    cmpl-double p0, p0, v0

    .line 387
    .line 388
    if-ltz p0, :cond_23

    .line 389
    .line 390
    goto/16 :goto_2

    .line 391
    .line 392
    :sswitch_11
    const-string p0, "=="

    .line 393
    .line 394
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result p0

    .line 398
    if-nez p0, :cond_10

    .line 399
    .line 400
    goto/16 :goto_3

    .line 401
    .line 402
    :sswitch_12
    const-string p0, "<="

    .line 403
    .line 404
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result p0

    .line 408
    if-nez p0, :cond_d

    .line 409
    .line 410
    goto/16 :goto_3

    .line 411
    .line 412
    :cond_d
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object p0

    .line 416
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 417
    .line 418
    .line 419
    move-result-wide p0

    .line 420
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 421
    .line 422
    .line 423
    move-result-wide v0

    .line 424
    cmpg-double p0, p0, v0

    .line 425
    .line 426
    if-gtz p0, :cond_23

    .line 427
    .line 428
    goto/16 :goto_2

    .line 429
    .line 430
    :sswitch_13
    const-string p0, "!="

    .line 431
    .line 432
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 433
    .line 434
    .line 435
    move-result p0

    .line 436
    if-nez p0, :cond_e

    .line 437
    .line 438
    goto/16 :goto_3

    .line 439
    .line 440
    :cond_e
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object p0

    .line 444
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 445
    .line 446
    .line 447
    move-result p0

    .line 448
    if-nez p0, :cond_23

    .line 449
    .line 450
    goto/16 :goto_2

    .line 451
    .line 452
    :sswitch_14
    const-string p0, ">"

    .line 453
    .line 454
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result p0

    .line 458
    if-nez p0, :cond_f

    .line 459
    .line 460
    goto/16 :goto_3

    .line 461
    .line 462
    :cond_f
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object p0

    .line 466
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 467
    .line 468
    .line 469
    move-result-wide p0

    .line 470
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 471
    .line 472
    .line 473
    move-result-wide v0

    .line 474
    cmpl-double p0, p0, v0

    .line 475
    .line 476
    if-lez p0, :cond_23

    .line 477
    .line 478
    goto/16 :goto_2

    .line 479
    .line 480
    :sswitch_15
    const-string p0, "="

    .line 481
    .line 482
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 483
    .line 484
    .line 485
    move-result p0

    .line 486
    if-nez p0, :cond_10

    .line 487
    .line 488
    goto/16 :goto_3

    .line 489
    .line 490
    :cond_10
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object p0

    .line 494
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    goto/16 :goto_3

    .line 499
    .line 500
    :sswitch_16
    const-string p0, "<"

    .line 501
    .line 502
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 503
    .line 504
    .line 505
    move-result p0

    .line 506
    if-nez p0, :cond_11

    .line 507
    .line 508
    goto/16 :goto_3

    .line 509
    .line 510
    :cond_11
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object p0

    .line 514
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 515
    .line 516
    .line 517
    move-result-wide p0

    .line 518
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 519
    .line 520
    .line 521
    move-result-wide v0

    .line 522
    cmpg-double p0, p0, v0

    .line 523
    .line 524
    if-gez p0, :cond_23

    .line 525
    .line 526
    goto/16 :goto_2

    .line 527
    .line 528
    :sswitch_17
    const-string p0, "i_str_not_in"

    .line 529
    .line 530
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 531
    .line 532
    .line 533
    move-result p0

    .line 534
    if-nez p0, :cond_12

    .line 535
    .line 536
    goto/16 :goto_3

    .line 537
    .line 538
    :cond_12
    if-nez p1, :cond_13

    .line 539
    .line 540
    return v2

    .line 541
    :cond_13
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 542
    .line 543
    .line 544
    move-result p0

    .line 545
    if-eqz p0, :cond_14

    .line 546
    .line 547
    goto/16 :goto_2

    .line 548
    .line 549
    :cond_14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 550
    .line 551
    .line 552
    move-result-object p0

    .line 553
    :cond_15
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 554
    .line 555
    .line 556
    move-result p1

    .line 557
    if-eqz p1, :cond_9

    .line 558
    .line 559
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object p1

    .line 563
    check-cast p1, Ljava/lang/String;

    .line 564
    .line 565
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 566
    .line 567
    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 568
    .line 569
    .line 570
    move-result-object p1

    .line 571
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 572
    .line 573
    .line 574
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 575
    .line 576
    .line 577
    move-result-object v1

    .line 578
    invoke-virtual {v1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object p2

    .line 582
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 583
    .line 584
    .line 585
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 586
    .line 587
    .line 588
    move-result p1

    .line 589
    if-eqz p1, :cond_15

    .line 590
    .line 591
    goto/16 :goto_3

    .line 592
    .line 593
    :sswitch_18
    const-string p0, "i_is_any"

    .line 594
    .line 595
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 596
    .line 597
    .line 598
    move-result p0

    .line 599
    if-nez p0, :cond_16

    .line 600
    .line 601
    goto/16 :goto_3

    .line 602
    .line 603
    :cond_16
    if-nez p1, :cond_17

    .line 604
    .line 605
    return v2

    .line 606
    :cond_17
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 607
    .line 608
    .line 609
    move-result p0

    .line 610
    if-eqz p0, :cond_18

    .line 611
    .line 612
    goto/16 :goto_3

    .line 613
    .line 614
    :cond_18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 615
    .line 616
    .line 617
    move-result-object p0

    .line 618
    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 619
    .line 620
    .line 621
    move-result p1

    .line 622
    if-eqz p1, :cond_23

    .line 623
    .line 624
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object p1

    .line 628
    check-cast p1, Ljava/lang/String;

    .line 629
    .line 630
    sget-object p2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 631
    .line 632
    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object p1

    .line 636
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 640
    .line 641
    .line 642
    move-result-object v1

    .line 643
    invoke-virtual {v1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 644
    .line 645
    .line 646
    move-result-object p2

    .line 647
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 651
    .line 652
    .line 653
    move-result p1

    .line 654
    if-eqz p1, :cond_19

    .line 655
    .line 656
    goto/16 :goto_2

    .line 657
    .line 658
    :sswitch_19
    const-string p0, "i_str_neq"

    .line 659
    .line 660
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result p0

    .line 664
    if-nez p0, :cond_1a

    .line 665
    .line 666
    goto/16 :goto_3

    .line 667
    .line 668
    :cond_1a
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 669
    .line 670
    .line 671
    move-result-object p0

    .line 672
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 673
    .line 674
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object p0

    .line 678
    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v3, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object p1

    .line 685
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 689
    .line 690
    .line 691
    move-result p0

    .line 692
    if-nez p0, :cond_23

    .line 693
    .line 694
    goto/16 :goto_2

    .line 695
    .line 696
    :sswitch_1a
    const-string p0, "contains"

    .line 697
    .line 698
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 699
    .line 700
    .line 701
    move-result p0

    .line 702
    if-nez p0, :cond_1b

    .line 703
    .line 704
    goto/16 :goto_3

    .line 705
    .line 706
    :cond_1b
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object p0

    .line 710
    invoke-static {p0, v3, v2, p2, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 711
    .line 712
    .line 713
    move-result v2

    .line 714
    goto/16 :goto_3

    .line 715
    .line 716
    :sswitch_1b
    const-string p0, "is_not_any"

    .line 717
    .line 718
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 719
    .line 720
    .line 721
    move-result p0

    .line 722
    if-nez p0, :cond_1e

    .line 723
    .line 724
    goto/16 :goto_3

    .line 725
    .line 726
    :sswitch_1c
    const-string p0, "regex_match"

    .line 727
    .line 728
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 729
    .line 730
    .line 731
    move-result p0

    .line 732
    if-nez p0, :cond_1c

    .line 733
    .line 734
    goto/16 :goto_3

    .line 735
    .line 736
    :cond_1c
    new-instance p0, Lkotlin/text/Regex;

    .line 737
    .line 738
    invoke-direct {p0, v3}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object p1

    .line 745
    invoke-virtual {p0, p1}, Lkotlin/text/Regex;->k(Ljava/lang/CharSequence;)Z

    .line 746
    .line 747
    .line 748
    move-result v2

    .line 749
    goto :goto_3

    .line 750
    :sswitch_1d
    const-string p0, "starts_with"

    .line 751
    .line 752
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 753
    .line 754
    .line 755
    move-result p0

    .line 756
    if-nez p0, :cond_1d

    .line 757
    .line 758
    goto :goto_3

    .line 759
    :cond_1d
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object p0

    .line 763
    invoke-static {p0, v3, v2, p2, v4}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 764
    .line 765
    .line 766
    move-result v2

    .line 767
    goto :goto_3

    .line 768
    :sswitch_1e
    const-string p0, "not_in"

    .line 769
    .line 770
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 771
    .line 772
    .line 773
    move-result p0

    .line 774
    if-nez p0, :cond_1e

    .line 775
    .line 776
    goto :goto_3

    .line 777
    :cond_1e
    if-nez p1, :cond_1f

    .line 778
    .line 779
    return v2

    .line 780
    :cond_1f
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 781
    .line 782
    .line 783
    move-result-object p0

    .line 784
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 785
    .line 786
    .line 787
    move-result v2

    .line 788
    goto :goto_3

    .line 789
    :sswitch_1f
    const-string p0, "is_any"

    .line 790
    .line 791
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 792
    .line 793
    .line 794
    move-result p0

    .line 795
    if-nez p0, :cond_20

    .line 796
    .line 797
    goto :goto_3

    .line 798
    :cond_20
    if-nez p1, :cond_21

    .line 799
    .line 800
    return v2

    .line 801
    :cond_21
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object p0

    .line 805
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 806
    .line 807
    .line 808
    move-result v2

    .line 809
    goto :goto_3

    .line 810
    :sswitch_20
    const-string p0, "i_not_contains"

    .line 811
    .line 812
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 813
    .line 814
    .line 815
    move-result p0

    .line 816
    if-nez p0, :cond_22

    .line 817
    .line 818
    goto :goto_3

    .line 819
    :cond_22
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object p0

    .line 823
    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 824
    .line 825
    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object p0

    .line 829
    invoke-static {p0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    invoke-virtual {v3, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object p1

    .line 836
    invoke-static {p1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    invoke-static {p0, p1, v2, p2, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 840
    .line 841
    .line 842
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 843
    if-nez p0, :cond_23

    .line 844
    .line 845
    goto/16 :goto_2

    .line 846
    .line 847
    :cond_23
    :goto_3
    return v2

    .line 848
    :goto_4
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 849
    .line 850
    .line 851
    return v2

    .line 852
    nop

    :sswitch_data_0
    .sparse-switch
        -0x671069df -> :sswitch_20
        -0x4651eea9 -> :sswitch_1f
        -0x3df88def -> :sswitch_1e
        -0x39c5d40c -> :sswitch_1d
        -0x39996433 -> :sswitch_1c
        -0x27ac6395 -> :sswitch_1b
        -0x21d289e1 -> :sswitch_1a
        -0x138cbb4a -> :sswitch_19
        -0x9868a13 -> :sswitch_18
        -0x5874e8b -> :sswitch_17
        0x3c -> :sswitch_16
        0x3d -> :sswitch_15
        0x3e -> :sswitch_14
        0x43c -> :sswitch_13
        0x781 -> :sswitch_12
        0x7a0 -> :sswitch_11
        0x7bf -> :sswitch_10
        0xcac -> :sswitch_f
        0xcde -> :sswitch_e
        0xced -> :sswitch_d
        0xd25 -> :sswitch_c
        0xd79 -> :sswitch_b
        0xd88 -> :sswitch_a
        0xdb7 -> :sswitch_9
        0x19118 -> :sswitch_8
        0x1a3dd -> :sswitch_7
        0x1a99a -> :sswitch_6
        0x7a09e10 -> :sswitch_5
        0x7a09e89 -> :sswitch_4
        0x15b20d35 -> :sswitch_3
        0x410ec601 -> :sswitch_2
        0x72587a0b -> :sswitch_1
        0x74e4351e -> :sswitch_0
    .end sparse-switch
.end method
