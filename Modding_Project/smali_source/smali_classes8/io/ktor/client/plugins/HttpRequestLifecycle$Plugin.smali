.class public final Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin;
.super Ljava/lang/Object;
.source "HttpRequestLifecycle.kt"

# interfaces
.implements Lqr/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpRequestLifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Plugin"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lqr/d<",
        "Lkotlin/Unit;",
        "Lio/ktor/client/plugins/HttpRequestLifecycle;",
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
    invoke-direct {p0}, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin;->d(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/HttpRequestLifecycle;

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
    check-cast p1, Lio/ktor/client/plugins/HttpRequestLifecycle;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin;->c(Lio/ktor/client/plugins/HttpRequestLifecycle;Lio/ktor/client/HttpClient;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Lio/ktor/client/plugins/HttpRequestLifecycle;Lio/ktor/client/HttpClient;)V
    .locals 3
    .param p1    # Lio/ktor/client/plugins/HttpRequestLifecycle;
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
    const-string p1, "scope"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lio/ktor/client/HttpClient;->p()Lsr/d;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v0, Lsr/d;->h:Lsr/d$a;

    .line 16
    .line 17
    invoke-virtual {v0}, Lsr/d$a;->a()Lds/f;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-instance v1, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin$install$1;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, p2, v2}, Lio/ktor/client/plugins/HttpRequestLifecycle$Plugin$install$1;-><init>(Lio/ktor/client/HttpClient;Lrs/c;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Lds/b;->l(Lds/f;Lat/n;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public d(Lkotlin/jvm/functions/Function1;)Lio/ktor/client/plugins/HttpRequestLifecycle;
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Unit;",
            "Lkotlin/Unit;",
            ">;)",
            "Lio/ktor/client/plugins/HttpRequestLifecycle;"
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
    new-instance p1, Lio/ktor/client/plugins/HttpRequestLifecycle;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Lio/ktor/client/plugins/HttpRequestLifecycle;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public getKey()Lyr/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyr/a<",
            "Lio/ktor/client/plugins/HttpRequestLifecycle;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lio/ktor/client/plugins/HttpRequestLifecycle;->a()Lyr/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
