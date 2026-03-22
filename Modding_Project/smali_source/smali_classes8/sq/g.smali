.class public final Lsq/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lsq/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lsq/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lsq/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lsq/g;->a:Lsq/g;

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

.method private final a(Ljava/lang/String;)Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;
    .locals 6

    .line 1
    invoke-static {}, Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;->values()[Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_1

    .line 8
    .line 9
    aget-object v3, v0, v2

    .line 10
    .line 11
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    const/4 v5, 0x1

    .line 16
    invoke-static {v4, p1, v5}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v3, 0x0

    .line 27
    :goto_1
    return-object v3
.end method

.method private final b(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 3
    .line 4
    sget-object v1, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 5
    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v1, "this as java.lang.String).getBytes(charset)"

    .line 11
    .line 12
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-static {p1, v2, v1, v0}, Lyq/s;->g([BIILjava/lang/Object;)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    move-object p1, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    array-length v1, p1

    .line 26
    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    move-object v0, p1

    .line 54
    :goto_2
    check-cast v0, Landroid/graphics/Bitmap;

    .line 55
    .line 56
    return-object v0
.end method

.method public static final c(Ljava/lang/String;)Lio/bidmachine/rendering/model/PrivacySheetParams;
    .locals 16
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "data"

    .line 4
    .line 5
    const-string v2, "subtitle"

    .line 6
    .line 7
    const-string v3, "title"

    .line 8
    .line 9
    const-string v4, "json"

    .line 10
    .line 11
    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v4, Lsq/g;->a:Lsq/g;

    .line 15
    .line 16
    :try_start_0
    sget-object v6, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 17
    .line 18
    new-instance v6, Lorg/json/JSONObject;

    .line 19
    .line 20
    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    const-string v8, "actions"

    .line 32
    .line 33
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    if-nez v6, :cond_0

    .line 38
    .line 39
    new-instance v6, Lorg/json/JSONArray;

    .line 40
    .line 41
    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    .line 46
    goto :goto_5

    .line 47
    :cond_0
    const-string v8, "rootObject.optJSONArray(\"actions\") ?: JSONArray()"

    .line 48
    .line 49
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    new-instance v8, Ljava/util/ArrayList;

    .line 53
    .line 54
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 58
    .line 59
    .line 60
    move-result v9

    .line 61
    const/4 v10, 0x0

    .line 62
    :goto_1
    if-ge v10, v9, :cond_4

    .line 63
    .line 64
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 65
    .line 66
    .line 67
    move-result-object v11

    .line 68
    const-string v12, "type"

    .line 69
    .line 70
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v12

    .line 74
    const-string v13, "actionObject.optString(\"type\")"

    .line 75
    .line 76
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-direct {v4, v12}, Lsq/g;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    .line 80
    .line 81
    .line 82
    move-result-object v12

    .line 83
    if-nez v12, :cond_1

    .line 84
    .line 85
    goto :goto_4

    .line 86
    :cond_1
    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    invoke-virtual {v11, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v14

    .line 94
    const-string v15, "icon"

    .line 95
    .line 96
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    const-string v15, "it"

    .line 101
    .line 102
    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-static {v11}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v15

    .line 109
    if-nez v15, :cond_2

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_2
    const/4 v11, 0x0

    .line 113
    :goto_2
    if-eqz v11, :cond_3

    .line 114
    .line 115
    invoke-direct {v4, v11}, Lsq/g;->b(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    goto :goto_3

    .line 120
    :cond_3
    const/4 v11, 0x0

    .line 121
    :goto_3
    new-instance v15, Lio/bidmachine/rendering/model/PrivacySheetParams$a;

    .line 122
    .line 123
    const-string v5, "actionTitle"

    .line 124
    .line 125
    invoke-static {v13, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v14, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {v15, v12, v13, v14, v11}, Lio/bidmachine/rendering/model/PrivacySheetParams$a;-><init>(Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {v8, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :goto_4
    add-int/lit8 v10, v10, 0x1

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    new-instance v1, Lio/bidmachine/rendering/model/PrivacySheetParams;

    .line 141
    .line 142
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-direct {v1, v0, v7, v8}, Lio/bidmachine/rendering/model/PrivacySheetParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    goto :goto_6

    .line 156
    :goto_5
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 157
    .line 158
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    :goto_6
    invoke-static {v0}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-eqz v1, :cond_5

    .line 171
    .line 172
    const/4 v5, 0x0

    .line 173
    goto :goto_7

    .line 174
    :cond_5
    move-object v5, v0

    .line 175
    :goto_7
    check-cast v5, Lio/bidmachine/rendering/model/PrivacySheetParams;

    .line 176
    .line 177
    return-object v5
.end method
