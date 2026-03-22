.class public final Lwt/v0;
.super Ljava/lang/Object;
.source "StringJsonLexer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lkotlinx/serialization/json/a;Ljava/lang/String;)Lwt/u0;
    .locals 1
    .param p0    # Lkotlinx/serialization/json/a;
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
    const-string v0, "json"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "source"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lkotlinx/serialization/json/a;->d()Lkotlinx/serialization/json/e;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Lkotlinx/serialization/json/e;->a()Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    new-instance p0, Lwt/u0;

    .line 22
    .line 23
    invoke-direct {p0, p1}, Lwt/u0;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Lwt/w0;

    .line 28
    .line 29
    invoke-direct {p0, p1}, Lwt/w0;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-object p0
.end method
