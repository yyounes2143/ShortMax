.class public final Lio/ktor/client/plugins/HttpCallValidator$Companion;
.super Ljava/lang/Object;
.source "HttpCallValidator.kt"

# interfaces
.implements Lqr/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpCallValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqr/d<",
        "Lio/ktor/client/plugins/HttpCallValidator$a;",
        "Lio/ktor/client/plugins/HttpCallValidator;",
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
    invoke-direct {p0}, Lio/ktor/client/plugins/HttpCallValidator$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/HttpCallValidator$Companion;->d(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/HttpCallValidator;

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
    check-cast p1, Lio/ktor/client/plugins/HttpCallValidator;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/HttpCallValidator$Companion;->c(Lio/ktor/client/plugins/HttpCallValidator;Lio/ktor/client/HttpClient;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lio/ktor/client/plugins/HttpCallValidator;Lio/ktor/client/HttpClient;)V
    .locals 4
    .param p1    # Lio/ktor/client/plugins/HttpCallValidator;
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
    invoke-virtual {v1}, Lsr/d$a;->a()Lds/f;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$1;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-direct {v2, p1, v3}, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$1;-><init>(Lio/ktor/client/plugins/HttpCallValidator;Lrs/c;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lds/b;->l(Lds/f;Lat/n;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lds/f;

    .line 31
    .line 32
    const-string v1, "BeforeReceive"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Lds/f;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Lio/ktor/client/HttpClient;->q()Ltr/e;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sget-object v2, Ltr/e;->h:Ltr/e$a;

    .line 42
    .line 43
    invoke-virtual {v2}, Ltr/e$a;->b()Lds/f;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2, v0}, Lds/b;->k(Lds/f;Lds/f;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Lio/ktor/client/HttpClient;->q()Ltr/e;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    new-instance v2, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;

    .line 55
    .line 56
    invoke-direct {v2, p1, v3}, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$2;-><init>(Lio/ktor/client/plugins/HttpCallValidator;Lrs/c;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v0, v2}, Lds/b;->l(Lds/f;Lat/n;)V

    .line 60
    .line 61
    .line 62
    sget-object v0, Lio/ktor/client/plugins/HttpSend;->c:Lio/ktor/client/plugins/HttpSend$Plugin;

    .line 63
    .line 64
    invoke-static {p2, v0}, Lqr/e;->b(Lio/ktor/client/HttpClient;Lqr/d;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p2

    .line 68
    check-cast p2, Lio/ktor/client/plugins/HttpSend;

    .line 69
    .line 70
    new-instance v0, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;

    .line 71
    .line 72
    invoke-direct {v0, p1, v3}, Lio/ktor/client/plugins/HttpCallValidator$Companion$install$3;-><init>(Lio/ktor/client/plugins/HttpCallValidator;Lrs/c;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0}, Lio/ktor/client/plugins/HttpSend;->d(Lat/n;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public d(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/HttpCallValidator;
    .locals 3
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/client/plugins/HttpCallValidator$a;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/client/plugins/HttpCallValidator;"
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
    new-instance v0, Lio/ktor/client/plugins/HttpCallValidator$a;

    .line 7
    .line 8
    invoke-direct {v0}, Lio/ktor/client/plugins/HttpCallValidator$a;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    new-instance p1, Lio/ktor/client/plugins/HttpCallValidator;

    .line 15
    .line 16
    invoke-virtual {v0}, Lio/ktor/client/plugins/HttpCallValidator$a;->c()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Iterable;

    .line 21
    .line 22
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->N0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0}, Lio/ktor/client/plugins/HttpCallValidator$a;->b()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/Iterable;

    .line 31
    .line 32
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->N0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0}, Lio/ktor/client/plugins/HttpCallValidator$a;->a()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-direct {p1, v1, v2, v0}, Lio/ktor/client/plugins/HttpCallValidator;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    .line 41
    .line 42
    .line 43
    return-object p1
.end method

.method public getKey()Lyr/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyr/a<",
            "Lio/ktor/client/plugins/HttpCallValidator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lio/ktor/client/plugins/HttpCallValidator;->b()Lyr/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
