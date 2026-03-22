.class public final Lxr/c;
.super Lxr/b$a;
.source "TextContent.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTextContent.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TextContent.kt\nio/ktor/http/content/TextContent\n+ 2 Strings.kt\nio/ktor/utils/io/core/StringsKt\n*L\n1#1,29:1\n8#2,3:30\n*S KotlinDebug\n*F\n+ 1 TextContent.kt\nio/ktor/http/content/TextContent\n*L\n20#1:30,3\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lio/ktor/http/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lwr/o;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/ktor/http/a;Lwr/o;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/http/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lwr/o;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lxr/b$a;-><init>()V

    .line 3
    iput-object p1, p0, Lxr/c;->a:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lxr/c;->b:Lio/ktor/http/a;

    .line 5
    iput-object p3, p0, Lxr/c;->c:Lwr/o;

    .line 6
    invoke-virtual {p0}, Lxr/c;->b()Lio/ktor/http/a;

    move-result-object p2

    invoke-static {p2}, Lwr/a;->a(Lio/ktor/http/c;)Ljava/nio/charset/Charset;

    move-result-object p2

    if-nez p2, :cond_0

    sget-object p2, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 7
    :cond_0
    sget-object p3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p1}, Lkotlin/text/StringsKt;->D(Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p2

    const-string p3, "charset.newEncoder()"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p2, p1, p3, v0}, Lgs/a;->g(Ljava/nio/charset/CharsetEncoder;Ljava/lang/CharSequence;II)[B

    move-result-object p1

    .line 9
    :goto_0
    iput-object p1, p0, Lxr/c;->d:[B

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lio/ktor/http/a;Lwr/o;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lxr/c;-><init>(Ljava/lang/String;Lio/ktor/http/a;Lwr/o;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Long;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lxr/c;->d:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    int-to-long v0, v0

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public b()Lio/ktor/http/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lxr/c;->b:Lio/ktor/http/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lxr/c;->d:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "TextContent["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lxr/c;->b()Lio/ktor/http/a;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, "] \""

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lxr/c;->a:Ljava/lang/String;

    .line 24
    .line 25
    const/16 v2, 0x1e

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->I1(Ljava/lang/String;I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x22

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method
