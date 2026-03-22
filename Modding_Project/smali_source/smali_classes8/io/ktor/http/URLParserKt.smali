.class public final Lio/ktor/http/URLParserKt;
.super Ljava/lang/Object;
.source "URLParser.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nURLParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 URLParser.kt\nio/ktor/http/URLParserKt\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,263:1\n151#2,6:264\n163#2,6:270\n1#3:276\n*S KotlinDebug\n*F\n+ 1 URLParser.kt\nio/ktor/http/URLParserKt\n*L\n34#1:264,6\n35#1:270,6\n*E\n"
    }
.end annotation


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/ktor/http/URLParserKt;->a:Ljava/util/List;

    .line 8
    .line 9
    return-void
.end method

.method private static final a(Ljava/lang/String;IIC)I
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    add-int v1, p1, v0

    .line 3
    .line 4
    if-ge v1, p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-ne v1, p3, :cond_0

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return v0
.end method

.method private static final b(Lio/ktor/http/h;Ljava/lang/String;II)V
    .locals 2

    .line 1
    invoke-static {p1, p2, p3}, Lio/ktor/http/URLParserKt;->e(Ljava/lang/String;II)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-lez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v0, p3

    .line 25
    :goto_1
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 30
    .line 31
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p2}, Lio/ktor/http/h;->w(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    if-ge v0, p3, :cond_2

    .line 40
    .line 41
    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-virtual {p0, p1}, Lio/ktor/http/h;->x(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    const/4 p1, 0x0

    .line 57
    invoke-virtual {p0, p1}, Lio/ktor/http/h;->x(I)V

    .line 58
    .line 59
    .line 60
    :goto_2
    return-void
.end method

.method private static final c(Ljava/lang/String;II)I
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x5b

    .line 6
    .line 7
    const/16 v2, 0x41

    .line 8
    .line 9
    const/16 v3, 0x7b

    .line 10
    .line 11
    const/4 v4, -0x1

    .line 12
    const/16 v5, 0x61

    .line 13
    .line 14
    if-gt v5, v0, :cond_0

    .line 15
    .line 16
    if-ge v0, v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    if-gt v2, v0, :cond_1

    .line 20
    .line 21
    if-ge v0, v1, :cond_1

    .line 22
    .line 23
    :goto_0
    move v0, p1

    .line 24
    move v6, v4

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    move v0, p1

    .line 27
    move v6, v0

    .line 28
    :goto_1
    if-ge v0, p2, :cond_9

    .line 29
    .line 30
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v7

    .line 34
    const/16 v8, 0x3a

    .line 35
    .line 36
    if-ne v7, v8, :cond_3

    .line 37
    .line 38
    if-ne v6, v4, :cond_2

    .line 39
    .line 40
    sub-int/2addr v0, p1

    .line 41
    return v0

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string p2, "Illegal character in scheme at position "

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_3
    const/16 v9, 0x2f

    .line 66
    .line 67
    if-eq v7, v9, :cond_9

    .line 68
    .line 69
    const/16 v9, 0x3f

    .line 70
    .line 71
    if-eq v7, v9, :cond_9

    .line 72
    .line 73
    const/16 v9, 0x23

    .line 74
    .line 75
    if-ne v7, v9, :cond_4

    .line 76
    .line 77
    goto :goto_3

    .line 78
    :cond_4
    if-ne v6, v4, :cond_8

    .line 79
    .line 80
    if-gt v5, v7, :cond_5

    .line 81
    .line 82
    if-ge v7, v3, :cond_5

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    if-gt v2, v7, :cond_6

    .line 86
    .line 87
    if-ge v7, v1, :cond_6

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_6
    const/16 v9, 0x30

    .line 91
    .line 92
    if-gt v9, v7, :cond_7

    .line 93
    .line 94
    if-ge v7, v8, :cond_7

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_7
    const/16 v8, 0x2e

    .line 98
    .line 99
    if-eq v7, v8, :cond_8

    .line 100
    .line 101
    const/16 v8, 0x2b

    .line 102
    .line 103
    if-eq v7, v8, :cond_8

    .line 104
    .line 105
    const/16 v8, 0x2d

    .line 106
    .line 107
    if-eq v7, v8, :cond_8

    .line 108
    .line 109
    move v6, v0

    .line 110
    :cond_8
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_9
    :goto_3
    return v4
.end method

.method public static final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/ktor/http/URLParserKt;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final e(Ljava/lang/String;II)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    if-ge p1, p2, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/16 v3, 0x5b

    .line 10
    .line 11
    if-ne v2, v3, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/16 v3, 0x5d

    .line 16
    .line 17
    if-ne v2, v3, :cond_1

    .line 18
    .line 19
    move v1, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/16 v3, 0x3a

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    return p1

    .line 28
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    const/4 p0, -0x1

    .line 32
    return p0
.end method

.method private static final f(Lio/ktor/http/h;Ljava/lang/String;III)V
    .locals 8

    .line 1
    const/4 v0, 0x2

    .line 2
    const-string v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 3
    .line 4
    if-eq p4, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x3

    .line 7
    if-ne p4, v0, :cond_0

    .line 8
    .line 9
    const-string p4, ""

    .line 10
    .line 11
    invoke-virtual {p0, p4}, Lio/ktor/http/h;->w(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0x2f

    .line 20
    .line 21
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p0, p1}, Lio/ktor/http/j;->i(Lio/ktor/http/h;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string p3, "Invalid file url: "

    .line 50
    .line 51
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_1
    const/4 v6, 0x4

    .line 66
    const/4 v7, 0x0

    .line 67
    const/16 v3, 0x2f

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    move-object v2, p1

    .line 71
    move v4, p2

    .line 72
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->p0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    const/4 v0, -0x1

    .line 77
    if-eq p4, v0, :cond_3

    .line 78
    .line 79
    if-ne p4, p3, :cond_2

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {p1, p2, p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0, p2}, Lio/ktor/http/h;->w(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p4, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-static {p0, p1}, Lio/ktor/http/j;->i(Lio/ktor/http/h;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    return-void

    .line 103
    :cond_3
    :goto_1
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lio/ktor/http/h;->w(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method private static final g(Lio/ktor/http/h;Ljava/lang/String;II)V
    .locals 2

    .line 1
    if-ge p2, p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x23

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    add-int/lit8 p2, p2, 0x1

    .line 12
    .line 13
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string p2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 18
    .line 19
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lio/ktor/http/h;->r(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method private static final h(Lio/ktor/http/h;Ljava/lang/String;II)V
    .locals 8

    .line 1
    const/4 v4, 0x4

    .line 2
    const/4 v5, 0x0

    .line 3
    const-string v1, "@"

    .line 4
    .line 5
    const/4 v3, 0x0

    .line 6
    move-object v0, p1

    .line 7
    move v2, p2

    .line 8
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, -0x1

    .line 13
    if-eq v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string p2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 20
    .line 21
    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v6, 0x7

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-static/range {v2 .. v7}, Lio/ktor/http/CodecsKt;->i(Ljava/lang/String;IILjava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p0, v1}, Lio/ktor/http/h;->A(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    invoke-virtual {p1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lio/ktor/http/h;->w(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    new-instance p2, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string p3, "Invalid mailto url: "

    .line 57
    .line 58
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p1, ", it should contain \'@\'."

    .line 65
    .line 66
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p0
.end method

.method private static final i(Lio/ktor/http/h;Ljava/lang/String;II)I
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    add-int/2addr p2, v0

    .line 3
    if-ne p2, p3, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lio/ktor/http/h;->z(Z)V

    .line 6
    .line 7
    .line 8
    return p3

    .line 9
    :cond_0
    const/4 v5, 0x4

    .line 10
    const/4 v6, 0x0

    .line 11
    const/16 v2, 0x23

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v1, p1

    .line 15
    move v3, p2

    .line 16
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->p0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-lez v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p3

    .line 38
    :cond_2
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string p1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 43
    .line 44
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x6

    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v1, 0x0

    .line 50
    const/4 v2, 0x0

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static/range {v0 .. v5}, Lio/ktor/http/g;->d(Ljava/lang/String;IIZILjava/lang/Object;)Lio/ktor/http/e;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-instance p2, Lio/ktor/http/URLParserKt$parseQuery$1;

    .line 57
    .line 58
    invoke-direct {p2, p0}, Lio/ktor/http/URLParserKt$parseQuery$1;-><init>(Lio/ktor/http/h;)V

    .line 59
    .line 60
    .line 61
    invoke-interface {p1, p2}, Lyr/p;->d(Lkotlin/jvm/functions/Function2;)V

    .line 62
    .line 63
    .line 64
    return p3
.end method

.method public static final j(Lio/ktor/http/h;Ljava/lang/String;)Lio/ktor/http/h;
    .locals 1
    .param p0    # Lio/ktor/http/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "urlString"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lio/ktor/http/URLParserKt;->k(Lio/ktor/http/h;Ljava/lang/String;)Lio/ktor/http/h;

    .line 19
    .line 20
    .line 21
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    return-object p0

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    new-instance v0, Lio/ktor/http/URLParserException;

    .line 25
    .line 26
    invoke-direct {v0, p1, p0}, Lio/ktor/http/URLParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw v0
.end method

.method public static final k(Lio/ktor/http/h;Ljava/lang/String;)Lio/ktor/http/h;
    .locals 24
    .param p0    # Lio/ktor/http/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const/4 v8, -0x1

    .line 6
    const/4 v9, 0x1

    .line 7
    const-string v1, "<this>"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "urlString"

    .line 13
    .line 14
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v7, v2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-static {v3}, Lkotlin/text/CharsKt;->b(C)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/2addr v2, v9

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v2, v8

    .line 38
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v1, v8

    .line 43
    if-ltz v1, :cond_4

    .line 44
    .line 45
    :goto_2
    add-int/lit8 v3, v1, -0x1

    .line 46
    .line 47
    invoke-interface {v7, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    invoke-static {v4}, Lkotlin/text/CharsKt;->b(C)Z

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-nez v4, :cond_2

    .line 56
    .line 57
    move v11, v1

    .line 58
    goto :goto_4

    .line 59
    :cond_2
    if-gez v3, :cond_3

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_3
    move v1, v3

    .line 63
    goto :goto_2

    .line 64
    :cond_4
    :goto_3
    move v11, v8

    .line 65
    :goto_4
    add-int/lit8 v12, v11, 0x1

    .line 66
    .line 67
    invoke-static {v7, v2, v12}, Lio/ktor/http/URLParserKt;->c(Ljava/lang/String;II)I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const-string v13, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 72
    .line 73
    if-lez v1, :cond_5

    .line 74
    .line 75
    add-int v3, v2, v1

    .line 76
    .line 77
    invoke-virtual {v7, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    sget-object v4, Lio/ktor/http/k;->c:Lio/ktor/http/k$a;

    .line 85
    .line 86
    invoke-virtual {v4, v3}, Lio/ktor/http/k$a;->a(Ljava/lang/String;)Lio/ktor/http/k;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-virtual {v0, v3}, Lio/ktor/http/h;->y(Lio/ktor/http/k;)V

    .line 91
    .line 92
    .line 93
    add-int/2addr v1, v9

    .line 94
    add-int/2addr v2, v1

    .line 95
    :cond_5
    const/16 v14, 0x2f

    .line 96
    .line 97
    invoke-static {v7, v2, v12, v14}, Lio/ktor/http/URLParserKt;->a(Ljava/lang/String;IIC)I

    .line 98
    .line 99
    .line 100
    move-result v15

    .line 101
    add-int/2addr v2, v15

    .line 102
    invoke-virtual/range {p0 .. p0}, Lio/ktor/http/h;->o()Lio/ktor/http/k;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lio/ktor/http/k;->d()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const-string v3, "file"

    .line 111
    .line 112
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-eqz v1, :cond_6

    .line 117
    .line 118
    invoke-static {v0, v7, v2, v12, v15}, Lio/ktor/http/URLParserKt;->f(Lio/ktor/http/h;Ljava/lang/String;III)V

    .line 119
    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lio/ktor/http/h;->o()Lio/ktor/http/k;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1}, Lio/ktor/http/k;->d()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    const-string v3, "mailto"

    .line 131
    .line 132
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_8

    .line 137
    .line 138
    if-nez v15, :cond_7

    .line 139
    .line 140
    invoke-static {v0, v7, v2, v12}, Lio/ktor/http/URLParserKt;->h(Lio/ktor/http/h;Ljava/lang/String;II)V

    .line 141
    .line 142
    .line 143
    return-object v0

    .line 144
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    const-string v1, "Failed requirement."

    .line 147
    .line 148
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v0

    .line 152
    :cond_8
    const/4 v1, 0x2

    .line 153
    const/16 v16, 0x0

    .line 154
    .line 155
    if-lt v15, v1, :cond_d

    .line 156
    .line 157
    move v6, v2

    .line 158
    :goto_5
    const-string v1, "@/\\?#"

    .line 159
    .line 160
    invoke-static {v1}, Lyr/g;->b(Ljava/lang/String;)[C

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    const/4 v5, 0x4

    .line 165
    const/16 v17, 0x0

    .line 166
    .line 167
    const/4 v4, 0x0

    .line 168
    move-object/from16 v1, p1

    .line 169
    .line 170
    move v3, v6

    .line 171
    move v10, v6

    .line 172
    move-object/from16 v6, v17

    .line 173
    .line 174
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;[CIZILjava/lang/Object;)I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-lez v2, :cond_9

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_9
    move-object/from16 v1, v16

    .line 190
    .line 191
    :goto_6
    if-eqz v1, :cond_a

    .line 192
    .line 193
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    move v2, v1

    .line 198
    goto :goto_7

    .line 199
    :cond_a
    move v2, v12

    .line 200
    :goto_7
    if-ge v2, v12, :cond_c

    .line 201
    .line 202
    invoke-virtual {v7, v2}, Ljava/lang/String;->charAt(I)C

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    const/16 v3, 0x40

    .line 207
    .line 208
    if-ne v1, v3, :cond_c

    .line 209
    .line 210
    invoke-static {v7, v10, v2}, Lio/ktor/http/URLParserKt;->e(Ljava/lang/String;II)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-eq v1, v8, :cond_b

    .line 215
    .line 216
    invoke-virtual {v7, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v3}, Lio/ktor/http/h;->v(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    add-int/2addr v1, v9

    .line 227
    invoke-virtual {v7, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, v1}, Lio/ktor/http/h;->t(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    goto :goto_8

    .line 238
    :cond_b
    invoke-virtual {v7, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-static {v1, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v0, v1}, Lio/ktor/http/h;->v(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    :goto_8
    add-int/lit8 v6, v2, 0x1

    .line 249
    .line 250
    goto :goto_5

    .line 251
    :cond_c
    invoke-static {v0, v7, v10, v2}, Lio/ktor/http/URLParserKt;->b(Lio/ktor/http/h;Ljava/lang/String;II)V

    .line 252
    .line 253
    .line 254
    :cond_d
    move v8, v2

    .line 255
    if-lt v8, v12, :cond_f

    .line 256
    .line 257
    invoke-virtual {v7, v11}, Ljava/lang/String;->charAt(I)C

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    if-ne v1, v14, :cond_e

    .line 262
    .line 263
    sget-object v1, Lio/ktor/http/URLParserKt;->a:Ljava/util/List;

    .line 264
    .line 265
    goto :goto_9

    .line 266
    :cond_e
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    :goto_9
    invoke-virtual {v0, v1}, Lio/ktor/http/h;->u(Ljava/util/List;)V

    .line 271
    .line 272
    .line 273
    return-object v0

    .line 274
    :cond_f
    if-nez v15, :cond_10

    .line 275
    .line 276
    invoke-virtual/range {p0 .. p0}, Lio/ktor/http/h;->g()Ljava/util/List;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-static {v1, v9}, Lkotlin/collections/CollectionsKt;->k0(Ljava/util/List;I)Ljava/util/List;

    .line 281
    .line 282
    .line 283
    move-result-object v1

    .line 284
    goto :goto_a

    .line 285
    :cond_10
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    :goto_a
    invoke-virtual {v0, v1}, Lio/ktor/http/h;->u(Ljava/util/List;)V

    .line 290
    .line 291
    .line 292
    const-string v1, "?#"

    .line 293
    .line 294
    invoke-static {v1}, Lyr/g;->b(Ljava/lang/String;)[C

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    const/4 v5, 0x4

    .line 299
    const/4 v6, 0x0

    .line 300
    const/4 v4, 0x0

    .line 301
    move-object/from16 v1, p1

    .line 302
    .line 303
    move v3, v8

    .line 304
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->s0(Ljava/lang/CharSequence;[CIZILjava/lang/Object;)I

    .line 305
    .line 306
    .line 307
    move-result v1

    .line 308
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 313
    .line 314
    .line 315
    move-result v2

    .line 316
    if-lez v2, :cond_11

    .line 317
    .line 318
    move-object/from16 v16, v1

    .line 319
    .line 320
    :cond_11
    if-eqz v16, :cond_12

    .line 321
    .line 322
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    goto :goto_b

    .line 327
    :cond_12
    move v1, v12

    .line 328
    :goto_b
    if-le v1, v8, :cond_16

    .line 329
    .line 330
    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-static {v2, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    invoke-virtual/range {p0 .. p0}, Lio/ktor/http/h;->g()Ljava/util/List;

    .line 338
    .line 339
    .line 340
    move-result-object v3

    .line 341
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    if-ne v3, v9, :cond_13

    .line 346
    .line 347
    invoke-virtual/range {p0 .. p0}, Lio/ktor/http/h;->g()Ljava/util/List;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->r0(Ljava/util/List;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v3

    .line 355
    check-cast v3, Ljava/lang/CharSequence;

    .line 356
    .line 357
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 358
    .line 359
    .line 360
    move-result v3

    .line 361
    if-nez v3, :cond_13

    .line 362
    .line 363
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    goto :goto_c

    .line 368
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lio/ktor/http/h;->g()Ljava/util/List;

    .line 369
    .line 370
    .line 371
    move-result-object v3

    .line 372
    :goto_c
    const-string v4, "/"

    .line 373
    .line 374
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v4

    .line 378
    if-eqz v4, :cond_14

    .line 379
    .line 380
    sget-object v2, Lio/ktor/http/URLParserKt;->a:Ljava/util/List;

    .line 381
    .line 382
    goto :goto_d

    .line 383
    :cond_14
    new-array v4, v9, [C

    .line 384
    .line 385
    const/4 v5, 0x0

    .line 386
    aput-char v14, v4, v5

    .line 387
    .line 388
    const/16 v22, 0x6

    .line 389
    .line 390
    const/16 v23, 0x0

    .line 391
    .line 392
    const/16 v20, 0x0

    .line 393
    .line 394
    const/16 v21, 0x0

    .line 395
    .line 396
    move-object/from16 v18, v2

    .line 397
    .line 398
    move-object/from16 v19, v4

    .line 399
    .line 400
    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->Y0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    .line 401
    .line 402
    .line 403
    move-result-object v2

    .line 404
    :goto_d
    if-ne v15, v9, :cond_15

    .line 405
    .line 406
    sget-object v4, Lio/ktor/http/URLParserKt;->a:Ljava/util/List;

    .line 407
    .line 408
    goto :goto_e

    .line 409
    :cond_15
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 410
    .line 411
    .line 412
    move-result-object v4

    .line 413
    :goto_e
    check-cast v4, Ljava/util/Collection;

    .line 414
    .line 415
    check-cast v2, Ljava/lang/Iterable;

    .line 416
    .line 417
    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->K0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 418
    .line 419
    .line 420
    move-result-object v2

    .line 421
    check-cast v3, Ljava/util/Collection;

    .line 422
    .line 423
    check-cast v2, Ljava/lang/Iterable;

    .line 424
    .line 425
    invoke-static {v3, v2}, Lkotlin/collections/CollectionsKt;->K0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    invoke-virtual {v0, v2}, Lio/ktor/http/h;->u(Ljava/util/List;)V

    .line 430
    .line 431
    .line 432
    move v8, v1

    .line 433
    :cond_16
    if-ge v8, v12, :cond_17

    .line 434
    .line 435
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    .line 436
    .line 437
    .line 438
    move-result v1

    .line 439
    const/16 v2, 0x3f

    .line 440
    .line 441
    if-ne v1, v2, :cond_17

    .line 442
    .line 443
    invoke-static {v0, v7, v8, v12}, Lio/ktor/http/URLParserKt;->i(Lio/ktor/http/h;Ljava/lang/String;II)I

    .line 444
    .line 445
    .line 446
    move-result v8

    .line 447
    :cond_17
    invoke-static {v0, v7, v8, v12}, Lio/ktor/http/URLParserKt;->g(Lio/ktor/http/h;Ljava/lang/String;II)V

    .line 448
    .line 449
    .line 450
    return-object v0
.end method
