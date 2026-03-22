.class public final Lio/ktor/http/d;
.super Ljava/lang/Object;
.source "HttpMessageProperties.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttpMessageProperties.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpMessageProperties.kt\nio/ktor/http/HttpMessagePropertiesKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,172:1\n1#2:173\n1360#3:174\n1446#3,2:175\n1549#3:177\n1620#3,3:178\n1448#3,3:181\n1360#3:184\n1446#3,2:185\n1549#3:187\n1620#3,3:188\n1448#3,3:191\n1360#3:194\n1446#3,5:195\n1549#3:200\n1620#3,3:201\n1549#3:204\n1620#3,3:205\n*S KotlinDebug\n*F\n+ 1 HttpMessageProperties.kt\nio/ktor/http/HttpMessagePropertiesKt\n*L\n64#1:174\n64#1:175,2\n65#1:177\n65#1:178,3\n64#1:181,3\n91#1:184\n91#1:185,2\n92#1:187\n92#1:188,3\n91#1:191,3\n104#1:194\n104#1:195,5\n105#1:200\n105#1:201,3\n112#1:204\n112#1:205,3\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lwr/k;)Ljava/nio/charset/Charset;
    .locals 1
    .param p0    # Lwr/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lio/ktor/http/d;->c(Lwr/k;)Lio/ktor/http/a;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Lwr/a;->a(Lio/ktor/http/c;)Ljava/nio/charset/Charset;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return-object p0
.end method

.method public static final b(Lwr/k;)Ljava/lang/Long;
    .locals 2
    .param p0    # Lwr/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lwr/k;->a()Lwr/f;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Lwr/i;->a:Lwr/i;

    .line 11
    .line 12
    invoke-virtual {v0}, Lwr/i;->g()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p0, v0}, Lyr/p;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    return-object p0
.end method

.method public static final c(Lwr/k;)Lio/ktor/http/a;
    .locals 1
    .param p0    # Lwr/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lwr/k;->a()Lwr/f;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Lwr/i;->a:Lwr/i;

    .line 11
    .line 12
    invoke-virtual {v0}, Lwr/i;->i()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p0, v0}, Lyr/p;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    sget-object v0, Lio/ktor/http/a;->f:Lio/ktor/http/a$b;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lio/ktor/http/a$b;->b(Ljava/lang/String;)Lio/ktor/http/a;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return-object p0
.end method

.method public static final d(Lwr/l;)Lio/ktor/http/a;
    .locals 1
    .param p0    # Lwr/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lwr/l;->a()Lwr/g;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    sget-object v0, Lwr/i;->a:Lwr/i;

    .line 11
    .line 12
    invoke-virtual {v0}, Lwr/i;->i()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lio/ktor/util/StringValuesBuilderImpl;->h(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    sget-object v0, Lio/ktor/http/a;->f:Lio/ktor/http/a$b;

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Lio/ktor/http/a$b;->b(Ljava/lang/String;)Lio/ktor/http/a;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return-object p0
.end method

.method public static final e(Lwr/l;Lio/ktor/http/a;)V
    .locals 1
    .param p0    # Lwr/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lio/ktor/http/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "type"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Lwr/l;->a()Lwr/g;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sget-object v0, Lwr/i;->a:Lwr/i;

    .line 16
    .line 17
    invoke-virtual {v0}, Lwr/i;->i()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p1}, Lio/ktor/http/c;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p0, v0, p1}, Lio/ktor/util/StringValuesBuilderImpl;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
