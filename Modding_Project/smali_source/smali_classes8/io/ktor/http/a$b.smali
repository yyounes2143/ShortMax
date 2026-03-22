.class public final Lio/ktor/http/a$b;
.super Ljava/lang/Object;
.source "ContentTypes.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/http/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nContentTypes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ContentTypes.kt\nio/ktor/http/ContentType$Companion\n+ 2 HeaderValueWithParameters.kt\nio/ktor/http/HeaderValueWithParameters$Companion\n*L\n1#1,318:1\n63#2,2:319\n*S KotlinDebug\n*F\n+ 1 ContentTypes.kt\nio/ktor/http/ContentType$Companion\n*L\n117#1:319,2\n*E\n"
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
    invoke-direct {p0}, Lio/ktor/http/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lio/ktor/http/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lio/ktor/http/a;->d()Lio/ktor/http/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lio/ktor/http/a;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lio/ktor/http/a$b;->a()Lio/ktor/http/a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1

    .line 17
    :cond_0
    sget-object v0, Lio/ktor/http/c;->c:Lio/ktor/http/c$a;

    .line 18
    .line 19
    invoke-static {p1}, Lio/ktor/http/HttpHeaderValueParserKt;->b(Ljava/lang/String;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->C0(Ljava/util/List;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lwr/c;

    .line 28
    .line 29
    invoke-virtual {v0}, Lwr/c;->b()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    invoke-virtual {v0}, Lwr/c;->a()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v5, 0x6

    .line 38
    const/4 v6, 0x0

    .line 39
    const/16 v2, 0x2f

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    move-object v1, v7

    .line 44
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->p0(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const/4 v2, -0x1

    .line 49
    if-ne v1, v2, :cond_2

    .line 50
    .line 51
    invoke-static {v7}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-string v1, "*"

    .line 60
    .line 61
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    sget-object p1, Lio/ktor/http/a;->f:Lio/ktor/http/a$b;

    .line 68
    .line 69
    invoke-virtual {p1}, Lio/ktor/http/a$b;->a()Lio/ktor/http/a;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    return-object p1

    .line 74
    :cond_1
    new-instance v0, Lio/ktor/http/BadContentTypeFormatException;

    .line 75
    .line 76
    invoke-direct {v0, p1}, Lio/ktor/http/BadContentTypeFormatException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0

    .line 80
    :cond_2
    const/4 v2, 0x0

    .line 81
    invoke-virtual {v7, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const-string v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    .line 86
    .line 87
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v3}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 99
    .line 100
    .line 101
    move-result v4

    .line 102
    if-eqz v4, :cond_5

    .line 103
    .line 104
    add-int/lit8 v1, v1, 0x1

    .line 105
    .line 106
    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const-string v4, "this as java.lang.String).substring(startIndex)"

    .line 111
    .line 112
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-static {v1}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const/16 v4, 0x20

    .line 124
    .line 125
    const/4 v5, 0x2

    .line 126
    const/4 v6, 0x0

    .line 127
    invoke-static {v3, v4, v2, v5, v6}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-nez v7, :cond_4

    .line 132
    .line 133
    invoke-static {v1, v4, v2, v5, v6}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    if-nez v4, :cond_4

    .line 138
    .line 139
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    if-eqz v4, :cond_3

    .line 144
    .line 145
    const/16 v4, 0x2f

    .line 146
    .line 147
    invoke-static {v1, v4, v2, v5, v6}, Lkotlin/text/StringsKt;->a0(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_3

    .line 152
    .line 153
    new-instance p1, Lio/ktor/http/a;

    .line 154
    .line 155
    invoke-direct {p1, v3, v1, v0}, Lio/ktor/http/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 156
    .line 157
    .line 158
    return-object p1

    .line 159
    :cond_3
    new-instance v0, Lio/ktor/http/BadContentTypeFormatException;

    .line 160
    .line 161
    invoke-direct {v0, p1}, Lio/ktor/http/BadContentTypeFormatException;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    throw v0

    .line 165
    :cond_4
    new-instance v0, Lio/ktor/http/BadContentTypeFormatException;

    .line 166
    .line 167
    invoke-direct {v0, p1}, Lio/ktor/http/BadContentTypeFormatException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw v0

    .line 171
    :cond_5
    new-instance v0, Lio/ktor/http/BadContentTypeFormatException;

    .line 172
    .line 173
    invoke-direct {v0, p1}, Lio/ktor/http/BadContentTypeFormatException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw v0
.end method
