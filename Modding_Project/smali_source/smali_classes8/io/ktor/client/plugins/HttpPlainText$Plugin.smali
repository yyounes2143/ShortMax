.class public final Lio/ktor/client/plugins/HttpPlainText$Plugin;
.super Ljava/lang/Object;
.source "HttpPlainText.kt"

# interfaces
.implements Lqr/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpPlainText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Plugin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqr/d<",
        "Lio/ktor/client/plugins/HttpPlainText$a;",
        "Lio/ktor/client/plugins/HttpPlainText;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
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
    invoke-direct {p0}, Lio/ktor/client/plugins/HttpPlainText$Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/HttpPlainText$Plugin;->d(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/HttpPlainText;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic b(Ljava/lang/Object;Lio/ktor/client/HttpClient;)V
    .locals 0

    .line 1
    check-cast p1, Lio/ktor/client/plugins/HttpPlainText;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/HttpPlainText$Plugin;->c(Lio/ktor/client/plugins/HttpPlainText;Lio/ktor/client/HttpClient;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lio/ktor/client/plugins/HttpPlainText;Lio/ktor/client/HttpClient;)V
    .locals 4
    .param p1    # Lio/ktor/client/plugins/HttpPlainText;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "plugin"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lio/ktor/client/HttpClient;->p()Lsr/d;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lsr/d;->h:Lsr/d$a;

    .line 16
    .line 17
    invoke-virtual {v1}, Lsr/d$a;->b()Lds/f;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lio/ktor/client/plugins/HttpPlainText$Plugin$install$1;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct {v2, p1, v3}, Lio/ktor/client/plugins/HttpPlainText$Plugin$install$1;-><init>(Lio/ktor/client/plugins/HttpPlainText;Lrs/c;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lds/b;->l(Lds/f;Lat/n;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lio/ktor/client/HttpClient;->q()Ltr/e;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    sget-object v0, Ltr/e;->h:Ltr/e$a;

    .line 35
    .line 36
    invoke-virtual {v0}, Ltr/e$a;->c()Lds/f;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lio/ktor/client/plugins/HttpPlainText$Plugin$install$2;

    .line 41
    .line 42
    invoke-direct {v1, p1, v3}, Lio/ktor/client/plugins/HttpPlainText$Plugin$install$2;-><init>(Lio/ktor/client/plugins/HttpPlainText;Lrs/c;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v0, v1}, Lds/b;->l(Lds/f;Lat/n;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public d(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/HttpPlainText;
    .locals 4
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/client/plugins/HttpPlainText$a;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/client/plugins/HttpPlainText;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "block"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/ktor/client/plugins/HttpPlainText$a;

    .line 7
    .line 8
    invoke-direct {v0}, Lio/ktor/client/plugins/HttpPlainText$a;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    new-instance p1, Lio/ktor/client/plugins/HttpPlainText;

    .line 15
    .line 16
    invoke-virtual {v0}, Lio/ktor/client/plugins/HttpPlainText$a;->b()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0}, Lio/ktor/client/plugins/HttpPlainText$a;->a()Ljava/util/Map;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0}, Lio/ktor/client/plugins/HttpPlainText$a;->d()Ljava/nio/charset/Charset;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v0}, Lio/ktor/client/plugins/HttpPlainText$a;->c()Ljava/nio/charset/Charset;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-direct {p1, v1, v2, v3, v0}, Lio/ktor/client/plugins/HttpPlainText;-><init>(Ljava/util/Set;Ljava/util/Map;Ljava/nio/charset/Charset;Ljava/nio/charset/Charset;)V

    .line 33
    .line 34
    .line 35
    return-object p1
.end method

.method public getKey()Lyr/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyr/a<",
            "Lio/ktor/client/plugins/HttpPlainText;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lio/ktor/client/plugins/HttpPlainText;->a()Lyr/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
