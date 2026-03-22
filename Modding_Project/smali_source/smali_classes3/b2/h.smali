.class public final Lb2/h;
.super Ljava/lang/Object;
.source "Utils.kt"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Utils.kt\ncom/facebook/appevents/ml/Utils\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,126:1\n107#2:127\n79#2,22:128\n37#3,2:150\n*S KotlinDebug\n*F\n+ 1 Utils.kt\ncom/facebook/appevents/ml/Utils\n*L\n43#1:127\n43#1:128,22\n44#1:150,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lb2/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb2/h;

    .line 2
    .line 3
    invoke-direct {v0}, Lb2/h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb2/h;->a:Lb2/h;

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

.method public static final a()Ljava/io/File;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-class v0, Lb2/h;

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
    new-instance v1, Ljava/io/File;

    .line 12
    .line 13
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const-string v4, "facebook_ml/"

    .line 22
    .line 23
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-nez v3, :cond_1

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 33
    .line 34
    .line 35
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    :goto_0
    move-object v2, v1

    .line 42
    :cond_2
    return-object v2

    .line 43
    :goto_1
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-object v2
.end method

.method public static final c(Ljava/io/File;)Ljava/util/Map;
    .locals 17
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lb2/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-class v1, Lb2/h;

    .line 4
    .line 5
    invoke-static {v1}, Lo4/a;->d(Ljava/lang/Object;)Z

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
    return-object v3

    .line 13
    :cond_0
    :try_start_0
    const-string v2, "file"

    .line 14
    .line 15
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    .line 19
    .line 20
    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    new-instance v4, Ljava/io/DataInputStream;

    .line 28
    .line 29
    invoke-direct {v4, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 30
    .line 31
    .line 32
    new-array v2, v0, [B

    .line 33
    .line 34
    invoke-virtual {v4, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 38
    .line 39
    .line 40
    const/4 v4, 0x4

    .line 41
    if-ge v0, v4, :cond_1

    .line 42
    .line 43
    return-object v3

    .line 44
    :cond_1
    const/4 v5, 0x0

    .line 45
    invoke-static {v2, v5, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 50
    .line 51
    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getInt()I

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    add-int/lit8 v7, v6, 0x4

    .line 59
    .line 60
    if-ge v0, v7, :cond_2

    .line 61
    .line 62
    return-object v3

    .line 63
    :cond_2
    new-instance v8, Ljava/lang/String;

    .line 64
    .line 65
    sget-object v9, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 66
    .line 67
    invoke-direct {v8, v2, v4, v6, v9}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 68
    .line 69
    .line 70
    new-instance v4, Lorg/json/JSONObject;

    .line 71
    .line 72
    invoke-direct {v4, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    .line 76
    .line 77
    .line 78
    move-result-object v6

    .line 79
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    new-array v9, v8, [Ljava/lang/String;

    .line 84
    .line 85
    move v10, v5

    .line 86
    :goto_0
    if-ge v10, v8, :cond_3

    .line 87
    .line 88
    invoke-virtual {v6, v10}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v11

    .line 92
    aput-object v11, v9, v10

    .line 93
    .line 94
    add-int/lit8 v10, v10, 0x1

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    goto :goto_4

    .line 99
    :cond_3
    invoke-static {v9}, Lkotlin/collections/n;->R([Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    new-instance v6, Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 105
    .line 106
    .line 107
    move v10, v5

    .line 108
    :goto_1
    if-ge v10, v8, :cond_7

    .line 109
    .line 110
    aget-object v11, v9, v10

    .line 111
    .line 112
    if-nez v11, :cond_4

    .line 113
    .line 114
    move v14, v5

    .line 115
    goto :goto_3

    .line 116
    :cond_4
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 117
    .line 118
    .line 119
    move-result-object v12

    .line 120
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    .line 121
    .line 122
    .line 123
    move-result v13

    .line 124
    new-array v14, v13, [I

    .line 125
    .line 126
    const/4 v15, 0x1

    .line 127
    :goto_2
    if-ge v5, v13, :cond_5

    .line 128
    .line 129
    invoke-virtual {v12, v5}, Lorg/json/JSONArray;->getInt(I)I

    .line 130
    .line 131
    .line 132
    move-result v16

    .line 133
    aput v16, v14, v5

    .line 134
    .line 135
    mul-int v15, v15, v16

    .line 136
    .line 137
    add-int/lit8 v5, v5, 0x1

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_5
    mul-int/lit8 v5, v15, 0x4

    .line 141
    .line 142
    add-int v12, v7, v5

    .line 143
    .line 144
    if-le v12, v0, :cond_6

    .line 145
    .line 146
    return-object v3

    .line 147
    :cond_6
    invoke-static {v2, v7, v5}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 152
    .line 153
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 154
    .line 155
    .line 156
    new-instance v7, Lb2/a;

    .line 157
    .line 158
    invoke-direct {v7, v14}, Lb2/a;-><init>([I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 162
    .line 163
    .line 164
    move-result-object v5

    .line 165
    invoke-virtual {v7}, Lb2/a;->a()[F

    .line 166
    .line 167
    .line 168
    move-result-object v13

    .line 169
    const/4 v14, 0x0

    .line 170
    invoke-virtual {v5, v13, v14, v15}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    .line 171
    .line 172
    .line 173
    invoke-interface {v6, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .line 175
    .line 176
    move v7, v12

    .line 177
    :goto_3
    add-int/lit8 v10, v10, 0x1

    .line 178
    .line 179
    move v5, v14

    .line 180
    goto :goto_1

    .line 181
    :cond_7
    return-object v6

    .line 182
    :catch_0
    return-object v3

    .line 183
    :goto_4
    invoke-static {v0, v1}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    return-object v3
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    const-string v0, "str"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x1

    .line 19
    sub-int/2addr v0, v2

    .line 20
    const/4 v3, 0x0

    .line 21
    move v4, v3

    .line 22
    move v5, v4

    .line 23
    :goto_0
    if-gt v4, v0, :cond_6

    .line 24
    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    move v6, v4

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v6, v0

    .line 30
    :goto_1
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/16 v7, 0x20

    .line 35
    .line 36
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-gtz v6, :cond_2

    .line 41
    .line 42
    move v6, v2

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move v6, v3

    .line 45
    :goto_2
    if-nez v5, :cond_4

    .line 46
    .line 47
    if-nez v6, :cond_3

    .line 48
    .line 49
    move v5, v2

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    add-int/lit8 v4, v4, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_4
    if-nez v6, :cond_5

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    goto :goto_4

    .line 62
    :cond_6
    :goto_3
    add-int/2addr v0, v2

    .line 63
    invoke-interface {p1, v4, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    new-instance v0, Lkotlin/text/Regex;

    .line 72
    .line 73
    const-string v2, "\\s+"

    .line 74
    .line 75
    invoke-direct {v0, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, p1, v3}, Lkotlin/text/Regex;->q(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Ljava/util/Collection;

    .line 83
    .line 84
    new-array v0, v3, [Ljava/lang/String;

    .line 85
    .line 86
    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, [Ljava/lang/String;

    .line 91
    .line 92
    const-string v0, " "

    .line 93
    .line 94
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v0, "join(\" \", strArray)"

    .line 99
    .line 100
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    .line 102
    .line 103
    return-object p1

    .line 104
    :goto_4
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    return-object v1
.end method

.method public final d(Ljava/lang/String;I)[I
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

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
    const-string v0, "texts"

    .line 10
    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-array v0, p2, [I

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lb2/h;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v2, "UTF-8"

    .line 21
    .line 22
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-string v3, "forName(\"UTF-8\")"

    .line 27
    .line 28
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v2, "this as java.lang.String).getBytes(charset)"

    .line 36
    .line 37
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    move v3, v2

    .line 42
    :goto_0
    if-ge v3, p2, :cond_2

    .line 43
    .line 44
    array-length v4, p1

    .line 45
    if-ge v3, v4, :cond_1

    .line 46
    .line 47
    aget-byte v4, p1, v3

    .line 48
    .line 49
    and-int/lit16 v4, v4, 0xff

    .line 50
    .line 51
    aput v4, v0, v3

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    goto :goto_2

    .line 56
    :cond_1
    aput v2, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    return-object v0

    .line 62
    :goto_2
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-object v1
.end method
