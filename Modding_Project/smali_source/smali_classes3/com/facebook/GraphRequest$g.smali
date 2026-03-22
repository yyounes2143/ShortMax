.class final Lcom/facebook/GraphRequest$g;
.super Ljava/lang/Object;
.source "GraphRequest.kt"

# interfaces
.implements Lcom/facebook/GraphRequest$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/GraphRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "g"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Ljava/io/OutputStream;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lcom/facebook/internal/i0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Z

.field private final d:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/internal/i0;Z)V
    .locals 1
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/internal/i0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "outputStream"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/facebook/GraphRequest$g;->a:Ljava/io/OutputStream;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/facebook/GraphRequest$g;->b:Lcom/facebook/internal/i0;

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/facebook/GraphRequest$g;->c:Z

    .line 15
    .line 16
    iput-boolean p3, p0, Lcom/facebook/GraphRequest$g;->d:Z

    .line 17
    .line 18
    return-void
.end method

.method private final b()Ljava/lang/RuntimeException;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 2
    .line 3
    const-string v1, "value is not a supported type."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/GraphRequest$g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "%s"

    .line 16
    .line 17
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0, v0, v1}, Lcom/facebook/GraphRequest$g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$g;->k()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/facebook/GraphRequest$g;->b:Lcom/facebook/internal/i0;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v2, "    "

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, p1, p2}, Lcom/facebook/internal/i0;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method public final varargs c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "format"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "args"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$g;->d:Z

    .line 12
    .line 13
    const-string v1, "this as java.lang.String).getBytes(charset)"

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$g;->c:Z

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/facebook/GraphRequest$g;->a:Ljava/io/OutputStream;

    .line 22
    .line 23
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    const-string v3, "--"

    .line 26
    .line 27
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/facebook/GraphRequest$g;->a:Ljava/io/OutputStream;

    .line 38
    .line 39
    invoke-static {}, Lcom/facebook/GraphRequest;->d()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write([B)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/facebook/GraphRequest$g;->a:Ljava/io/OutputStream;

    .line 54
    .line 55
    const-string v3, "\r\n"

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write([B)V

    .line 65
    .line 66
    .line 67
    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/facebook/GraphRequest$g;->c:Z

    .line 69
    .line 70
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest$g;->a:Ljava/io/OutputStream;

    .line 71
    .line 72
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 73
    .line 74
    array-length v2, p2

    .line 75
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    array-length v2, p2

    .line 80
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    const-string p2, "format(format, *args)"

    .line 89
    .line 90
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    iget-object v0, p0, Lcom/facebook/GraphRequest$g;->a:Ljava/io/OutputStream;

    .line 107
    .line 108
    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 109
    .line 110
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 111
    .line 112
    array-length v3, p2

    .line 113
    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    array-length v3, p2

    .line 118
    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    const-string p2, "format(locale, format, *args)"

    .line 127
    .line 128
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string p2, "UTF-8"

    .line 132
    .line 133
    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    const-string p2, "encode(String.format(Loc\u2026 format, *args), \"UTF-8\")"

    .line 138
    .line 139
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 152
    .line 153
    .line 154
    :goto_0
    return-void
.end method

.method public final d(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bitmap"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "image/png"

    .line 12
    .line 13
    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/GraphRequest$g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 17
    .line 18
    const/16 v1, 0x64

    .line 19
    .line 20
    iget-object v2, p0, Lcom/facebook/GraphRequest$g;->a:Ljava/io/OutputStream;

    .line 21
    .line 22
    invoke-virtual {p2, v0, v1, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 23
    .line 24
    .line 25
    const/4 p2, 0x0

    .line 26
    new-array p2, p2, [Ljava/lang/Object;

    .line 27
    .line 28
    const-string v0, ""

    .line 29
    .line 30
    invoke-virtual {p0, v0, p2}, Lcom/facebook/GraphRequest$g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$g;->k()V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/facebook/GraphRequest$g;->b:Lcom/facebook/internal/i0;

    .line 37
    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v1, "    "

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const-string v0, "<Image>"

    .line 58
    .line 59
    invoke-virtual {p2, p1, v0}, Lcom/facebook/internal/i0;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :cond_0
    return-void
.end method

.method public final e(Ljava/lang/String;[B)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bytes"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "content/unknown"

    .line 12
    .line 13
    invoke-virtual {p0, p1, p1, v0}, Lcom/facebook/GraphRequest$g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/facebook/GraphRequest$g;->a:Ljava/io/OutputStream;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    new-array v0, v0, [Ljava/lang/Object;

    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    invoke-virtual {p0, v1, v0}, Lcom/facebook/GraphRequest$g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$g;->k()V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/facebook/GraphRequest$g;->b:Lcom/facebook/internal/i0;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v2, "    "

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 54
    .line 55
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 56
    .line 57
    array-length p2, p2

    .line 58
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p2

    .line 66
    const/4 v2, 0x1

    .line 67
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    const-string v2, "<Data: %d>"

    .line 72
    .line 73
    invoke-static {v1, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    const-string v1, "format(locale, format, *args)"

    .line 78
    .line 79
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, p1, p2}, Lcom/facebook/internal/i0;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$g;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const-string v0, "Content-Disposition: form-data; name=\"%s\""

    .line 6
    .line 7
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, v0, p1}, Lcom/facebook/GraphRequest$g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    const-string p1, "; filename=\"%s\""

    .line 17
    .line 18
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    new-array p2, p1, [Ljava/lang/Object;

    .line 27
    .line 28
    const-string v0, ""

    .line 29
    .line 30
    invoke-virtual {p0, v0, p2}, Lcom/facebook/GraphRequest$g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    if-eqz p3, :cond_1

    .line 34
    .line 35
    const-string p2, "Content-Type"

    .line 36
    .line 37
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const-string p3, "%s: %s"

    .line 42
    .line 43
    invoke-virtual {p0, p3, p2}, Lcom/facebook/GraphRequest$g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    new-array p1, p1, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-virtual {p0, v0, p1}, Lcom/facebook/GraphRequest$g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object p2, p0, Lcom/facebook/GraphRequest$g;->a:Ljava/io/OutputStream;

    .line 53
    .line 54
    sget-object p3, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 55
    .line 56
    const/4 p3, 0x1

    .line 57
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p1, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const-string p3, "%s="

    .line 66
    .line 67
    invoke-static {p3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    const-string p3, "format(format, *args)"

    .line 72
    .line 73
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-object p3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 77
    .line 78
    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const-string p3, "this as java.lang.String).getBytes(charset)"

    .line 83
    .line 84
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 88
    .line 89
    .line 90
    :goto_0
    return-void
.end method

.method public final g(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "contentUri"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    const-string p3, "content/unknown"

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/GraphRequest$g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p3, p0, Lcom/facebook/GraphRequest$g;->a:Ljava/io/OutputStream;

    .line 19
    .line 20
    instance-of p3, p3, Lcom/facebook/g0;

    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    if-eqz p3, :cond_1

    .line 24
    .line 25
    invoke-static {p2}, Lcom/facebook/internal/u0;->A(Landroid/net/Uri;)J

    .line 26
    .line 27
    .line 28
    move-result-wide p2

    .line 29
    iget-object v1, p0, Lcom/facebook/GraphRequest$g;->a:Ljava/io/OutputStream;

    .line 30
    .line 31
    check-cast v1, Lcom/facebook/g0;

    .line 32
    .line 33
    invoke-virtual {v1, p2, p3}, Lcom/facebook/g0;->g(J)V

    .line 34
    .line 35
    .line 36
    move p2, v0

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-static {}, Lcom/facebook/v;->l()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    invoke-virtual {p3, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    iget-object p3, p0, Lcom/facebook/GraphRequest$g;->a:Ljava/io/OutputStream;

    .line 51
    .line 52
    invoke-static {p2, p3}, Lcom/facebook/internal/u0;->q(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    :goto_0
    const-string p3, ""

    .line 57
    .line 58
    new-array v0, v0, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-virtual {p0, p3, v0}, Lcom/facebook/GraphRequest$g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$g;->k()V

    .line 64
    .line 65
    .line 66
    iget-object p3, p0, Lcom/facebook/GraphRequest$g;->b:Lcom/facebook/internal/i0;

    .line 67
    .line 68
    if-eqz p3, :cond_2

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v1, "    "

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 88
    .line 89
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 90
    .line 91
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    const/4 v1, 0x1

    .line 100
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    const-string v1, "<Data: %d>"

    .line 105
    .line 106
    invoke-static {v0, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    const-string v0, "format(locale, format, *args)"

    .line 111
    .line 112
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p3, p1, p2}, Lcom/facebook/internal/i0;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    :cond_2
    return-void
.end method

.method public final h(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/ParcelFileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "descriptor"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    if-nez p3, :cond_0

    .line 12
    .line 13
    const-string p3, "content/unknown"

    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0, p1, p1, p3}, Lcom/facebook/GraphRequest$g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p3, p0, Lcom/facebook/GraphRequest$g;->a:Ljava/io/OutputStream;

    .line 19
    .line 20
    instance-of v0, p3, Lcom/facebook/g0;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    check-cast p3, Lcom/facebook/g0;

    .line 26
    .line 27
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getStatSize()J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    invoke-virtual {p3, v2, v3}, Lcom/facebook/g0;->g(J)V

    .line 32
    .line 33
    .line 34
    move p2, v1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance p3, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    .line 37
    .line 38
    invoke-direct {p3, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 39
    .line 40
    .line 41
    iget-object p2, p0, Lcom/facebook/GraphRequest$g;->a:Ljava/io/OutputStream;

    .line 42
    .line 43
    invoke-static {p3, p2}, Lcom/facebook/internal/u0;->q(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    :goto_0
    const-string p3, ""

    .line 48
    .line 49
    new-array v0, v1, [Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {p0, p3, v0}, Lcom/facebook/GraphRequest$g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/facebook/GraphRequest$g;->k()V

    .line 55
    .line 56
    .line 57
    iget-object p3, p0, Lcom/facebook/GraphRequest$g;->b:Lcom/facebook/internal/i0;

    .line 58
    .line 59
    if-eqz p3, :cond_2

    .line 60
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v1, "    "

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 79
    .line 80
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 81
    .line 82
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    const/4 v1, 0x1

    .line 91
    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    const-string v1, "<Data: %d>"

    .line 96
    .line 97
    invoke-static {v0, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    const-string v0, "format(locale, format, *args)"

    .line 102
    .line 103
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3, p1, p2}, Lcom/facebook/internal/i0;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_2
    return-void
.end method

.method public final varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "format"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "args"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    array-length v0, p2

    .line 12
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-boolean p1, p0, Lcom/facebook/GraphRequest$g;->d:Z

    .line 20
    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    new-array p1, p1, [Ljava/lang/Object;

    .line 25
    .line 26
    const-string p2, "\r\n"

    .line 27
    .line 28
    invoke-virtual {p0, p2, p1}, Lcom/facebook/GraphRequest$g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final j(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/GraphRequest;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/GraphRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/facebook/GraphRequest$g;->a:Ljava/io/OutputStream;

    .line 7
    .line 8
    instance-of v1, v0, Lcom/facebook/j0;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "null cannot be cast to non-null type com.facebook.RequestOutputStream"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Lcom/facebook/j0;

    .line 18
    .line 19
    invoke-interface {v0, p3}, Lcom/facebook/j0;->a(Lcom/facebook/GraphRequest;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object p3, Lcom/facebook/GraphRequest;->n:Lcom/facebook/GraphRequest$c;

    .line 23
    .line 24
    invoke-static {p3, p2}, Lcom/facebook/GraphRequest$c;->d(Lcom/facebook/GraphRequest$c;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-static {p3, p2}, Lcom/facebook/GraphRequest$c;->e(Lcom/facebook/GraphRequest$c;Ljava/lang/Object;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    instance-of p3, p2, Landroid/graphics/Bitmap;

    .line 39
    .line 40
    if-eqz p3, :cond_2

    .line 41
    .line 42
    check-cast p2, Landroid/graphics/Bitmap;

    .line 43
    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$g;->d(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    instance-of p3, p2, [B

    .line 49
    .line 50
    if-eqz p3, :cond_3

    .line 51
    .line 52
    check-cast p2, [B

    .line 53
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$g;->e(Ljava/lang/String;[B)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    instance-of p3, p2, Landroid/net/Uri;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    if-eqz p3, :cond_4

    .line 62
    .line 63
    check-cast p2, Landroid/net/Uri;

    .line 64
    .line 65
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/GraphRequest$g;->g(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_4
    instance-of p3, p2, Landroid/os/ParcelFileDescriptor;

    .line 70
    .line 71
    if-eqz p3, :cond_5

    .line 72
    .line 73
    check-cast p2, Landroid/os/ParcelFileDescriptor;

    .line 74
    .line 75
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/GraphRequest$g;->h(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_5
    instance-of p3, p2, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    .line 80
    .line 81
    if-eqz p3, :cond_8

    .line 82
    .line 83
    check-cast p2, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;

    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->b()Landroid/os/Parcelable;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    invoke-virtual {p2}, Lcom/facebook/GraphRequest$ParcelableResourceWithMimeType;->a()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    instance-of v0, p3, Landroid/os/ParcelFileDescriptor;

    .line 94
    .line 95
    if-eqz v0, :cond_6

    .line 96
    .line 97
    check-cast p3, Landroid/os/ParcelFileDescriptor;

    .line 98
    .line 99
    invoke-virtual {p0, p1, p3, p2}, Lcom/facebook/GraphRequest$g;->h(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    instance-of v0, p3, Landroid/net/Uri;

    .line 104
    .line 105
    if-eqz v0, :cond_7

    .line 106
    .line 107
    check-cast p3, Landroid/net/Uri;

    .line 108
    .line 109
    invoke-virtual {p0, p1, p3, p2}, Lcom/facebook/GraphRequest$g;->g(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :goto_0
    return-void

    .line 113
    :cond_7
    invoke-direct {p0}, Lcom/facebook/GraphRequest$g;->b()Ljava/lang/RuntimeException;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    throw p1

    .line 118
    :cond_8
    invoke-direct {p0}, Lcom/facebook/GraphRequest$g;->b()Ljava/lang/RuntimeException;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    throw p1
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/facebook/GraphRequest$g;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/facebook/GraphRequest;->d()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "--%s"

    .line 14
    .line 15
    invoke-virtual {p0, v1, v0}, Lcom/facebook/GraphRequest$g;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/facebook/GraphRequest$g;->a:Ljava/io/OutputStream;

    .line 20
    .line 21
    const-string v1, "&"

    .line 22
    .line 23
    sget-object v2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v2, "this as java.lang.String).getBytes(charset)"

    .line 30
    .line 31
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public final l(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            "Ljava/util/Collection<",
            "Lcom/facebook/GraphRequest;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "requestJsonArray"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "requests"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/facebook/GraphRequest$g;->a:Ljava/io/OutputStream;

    .line 17
    .line 18
    instance-of v1, v0, Lcom/facebook/j0;

    .line 19
    .line 20
    const-string v2, "requestJsonArray.toString()"

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, p2}, Lcom/facebook/GraphRequest$g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    const-string v1, "null cannot be cast to non-null type com.facebook.RequestOutputStream"

    .line 36
    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    check-cast v0, Lcom/facebook/j0;

    .line 41
    .line 42
    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, p1, v1, v1}, Lcom/facebook/GraphRequest$g;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v1, "["

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    new-array v4, v3, [Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {p0, v1, v4}, Lcom/facebook/GraphRequest$g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    move v1, v3

    .line 59
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_2

    .line 64
    .line 65
    add-int/lit8 v4, v1, 0x1

    .line 66
    .line 67
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    check-cast v5, Lcom/facebook/GraphRequest;

    .line 72
    .line 73
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-interface {v0, v5}, Lcom/facebook/j0;->a(Lcom/facebook/GraphRequest;)V

    .line 78
    .line 79
    .line 80
    if-lez v1, :cond_1

    .line 81
    .line 82
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v5, ",%s"

    .line 91
    .line 92
    invoke-virtual {p0, v5, v1}, Lcom/facebook/GraphRequest$g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const-string v5, "%s"

    .line 105
    .line 106
    invoke-virtual {p0, v5, v1}, Lcom/facebook/GraphRequest$g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :goto_1
    move v1, v4

    .line 110
    goto :goto_0

    .line 111
    :cond_2
    const-string p3, "]"

    .line 112
    .line 113
    new-array v0, v3, [Ljava/lang/Object;

    .line 114
    .line 115
    invoke-virtual {p0, p3, v0}, Lcom/facebook/GraphRequest$g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    iget-object p3, p0, Lcom/facebook/GraphRequest$g;->b:Lcom/facebook/internal/i0;

    .line 119
    .line 120
    if-eqz p3, :cond_3

    .line 121
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v1, "    "

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p3, p1, p2}, Lcom/facebook/internal/i0;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :cond_3
    return-void
.end method
