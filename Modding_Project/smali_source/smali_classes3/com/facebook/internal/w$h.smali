.class final Lcom/facebook/internal/w$h;
.super Ljava/lang/Object;
.source "FileLruCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "h"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/facebook/internal/w$h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/internal/w$h;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/internal/w$h;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/internal/w$h;->a:Lcom/facebook/internal/w$h;

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


# virtual methods
.method public final a(Ljava/io/InputStream;)Lorg/json/JSONObject;
    .locals 7
    .param p1    # Ljava/io/InputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "stream"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    move v2, v0

    .line 16
    move v3, v2

    .line 17
    :goto_0
    const-string v4, "TAG"

    .line 18
    .line 19
    const/4 v5, 0x3

    .line 20
    if-ge v2, v5, :cond_2

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    const/4 v6, -0x1

    .line 27
    if-ne v5, v6, :cond_1

    .line 28
    .line 29
    sget-object p1, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 30
    .line 31
    sget-object v0, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .line 32
    .line 33
    sget-object v2, Lcom/facebook/internal/w;->i:Lcom/facebook/internal/w$c;

    .line 34
    .line 35
    invoke-virtual {v2}, Lcom/facebook/internal/w$c;->a()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string v3, "readHeader: stream.read returned -1 while reading header size"

    .line 43
    .line 44
    invoke-virtual {p1, v0, v2, v3}, Lcom/facebook/internal/i0$a;->b(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-object v1

    .line 48
    :cond_1
    shl-int/lit8 v3, v3, 0x8

    .line 49
    .line 50
    and-int/lit16 v4, v5, 0xff

    .line 51
    .line 52
    add-int/2addr v3, v4

    .line 53
    add-int/lit8 v2, v2, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    new-array v2, v3, [B

    .line 57
    .line 58
    :goto_1
    if-ge v0, v3, :cond_4

    .line 59
    .line 60
    sub-int v5, v3, v0

    .line 61
    .line 62
    invoke-virtual {p1, v2, v0, v5}, Ljava/io/InputStream;->read([BII)I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    const/4 v6, 0x1

    .line 67
    if-ge v5, v6, :cond_3

    .line 68
    .line 69
    sget-object p1, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 70
    .line 71
    sget-object v2, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .line 72
    .line 73
    sget-object v5, Lcom/facebook/internal/w;->i:Lcom/facebook/internal/w$c;

    .line 74
    .line 75
    invoke-virtual {v5}, Lcom/facebook/internal/w$c;->a()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v6, "readHeader: stream.read stopped at "

    .line 88
    .line 89
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v0, " when expected "

    .line 100
    .line 101
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p1, v2, v5, v0}, Lcom/facebook/internal/i0$a;->b(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    return-object v1

    .line 115
    :cond_3
    add-int/2addr v0, v5

    .line 116
    goto :goto_1

    .line 117
    :cond_4
    new-instance p1, Ljava/lang/String;

    .line 118
    .line 119
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 120
    .line 121
    invoke-direct {p1, v2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lorg/json/JSONTokener;

    .line 125
    .line 126
    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    instance-of v0, p1, Lorg/json/JSONObject;

    .line 134
    .line 135
    if-nez v0, :cond_5

    .line 136
    .line 137
    sget-object v0, Lcom/facebook/internal/i0;->e:Lcom/facebook/internal/i0$a;

    .line 138
    .line 139
    sget-object v2, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    .line 140
    .line 141
    sget-object v3, Lcom/facebook/internal/w;->i:Lcom/facebook/internal/w$c;

    .line 142
    .line 143
    invoke-virtual {v3}, Lcom/facebook/internal/w$c;->a()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    .line 151
    .line 152
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .line 154
    .line 155
    const-string v5, "readHeader: expected JSONObject, got "

    .line 156
    .line 157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {v0, v2, v3, p1}, Lcom/facebook/internal/i0$a;->b(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return-object v1

    .line 179
    :catch_0
    move-exception p1

    .line 180
    goto :goto_2

    .line 181
    :cond_5
    check-cast p1, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    .line 183
    return-object p1

    .line 184
    :goto_2
    new-instance v0, Ljava/io/IOException;

    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v0
.end method

.method public final b(Ljava/io/OutputStream;Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-string v0, "stream"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "header"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, "header.toString()"

    .line 16
    .line 17
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    const-string v0, "this as java.lang.String).getBytes(charset)"

    .line 27
    .line 28
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 33
    .line 34
    .line 35
    array-length v0, p2

    .line 36
    shr-int/lit8 v0, v0, 0x10

    .line 37
    .line 38
    and-int/lit16 v0, v0, 0xff

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 41
    .line 42
    .line 43
    array-length v0, p2

    .line 44
    shr-int/lit8 v0, v0, 0x8

    .line 45
    .line 46
    and-int/lit16 v0, v0, 0xff

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 49
    .line 50
    .line 51
    array-length v0, p2

    .line 52
    and-int/lit16 v0, v0, 0xff

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
