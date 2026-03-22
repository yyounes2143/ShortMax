.class public final Lkotlin/text/k;
.super Ljava/lang/Object;
.source "Regex.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRegex.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Regex.kt\nkotlin/text/RegexKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,397:1\n1797#2,3:398\n*S KotlinDebug\n*F\n+ 1 Regex.kt\nkotlin/text/RegexKt\n*L\n19#1:398,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic a(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lkotlin/text/MatchResult;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/text/k;->e(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lkotlin/text/MatchResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/text/k;->f(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Ljava/util/regex/MatchResult;)Lkotlin/ranges/IntRange;
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/text/k;->g(Ljava/util/regex/MatchResult;)Lkotlin/ranges/IntRange;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Ljava/util/regex/MatchResult;I)Lkotlin/ranges/IntRange;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/text/k;->h(Ljava/util/regex/MatchResult;I)Lkotlin/ranges/IntRange;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final e(Ljava/util/regex/Matcher;ILjava/lang/CharSequence;)Lkotlin/text/MatchResult;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->find(I)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lkotlin/text/h;

    .line 10
    .line 11
    invoke-direct {p1, p0, p2}, Lkotlin/text/h;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    move-object p0, p1

    .line 15
    :goto_0
    return-object p0
.end method

.method private static final f(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)Lkotlin/text/MatchResult;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Lkotlin/text/h;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1}, Lkotlin/text/h;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    move-object p0, v0

    .line 15
    :goto_0
    return-object p0
.end method

.method private static final g(Ljava/util/regex/MatchResult;)Lkotlin/ranges/IntRange;
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/util/regex/MatchResult;->start()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p0}, Ljava/util/regex/MatchResult;->end()I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {v0, p0}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method private static final h(Ljava/util/regex/MatchResult;I)Lkotlin/ranges/IntRange;
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->start(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p0, p1}, Ljava/util/regex/MatchResult;->end(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    invoke-static {v0, p0}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method
