.class final Lio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnServerErrors$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HttpRequestRetry.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/HttpRequestRetry$Configuration;->s(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lat/n<",
        "Lio/ktor/client/plugins/HttpRequestRetry$e;",
        "Lsr/b;",
        "Ltr/c;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttpRequestRetry.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpRequestRetry.kt\nio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnServerErrors$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,407:1\n1#2:408\n*E\n"
    }
.end annotation


# static fields
.field public static final d:Lio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnServerErrors$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnServerErrors$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnServerErrors$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnServerErrors$1;->d:Lio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnServerErrors$1;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final b(Lio/ktor/client/plugins/HttpRequestRetry$e;Lsr/b;Ltr/c;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Lio/ktor/client/plugins/HttpRequestRetry$e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lsr/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ltr/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$retryIf"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "<anonymous parameter 0>"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "response"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Ltr/c;->e()Lwr/o;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Lwr/o;->e0()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    const/16 p2, 0x1f4

    .line 25
    .line 26
    const/4 p3, 0x0

    .line 27
    if-gt p2, p1, :cond_0

    .line 28
    .line 29
    const/16 p2, 0x258

    .line 30
    .line 31
    if-ge p1, p2, :cond_0

    .line 32
    .line 33
    const/4 p3, 0x1

    .line 34
    :cond_0
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/ktor/client/plugins/HttpRequestRetry$e;

    .line 2
    .line 3
    check-cast p2, Lsr/b;

    .line 4
    .line 5
    check-cast p3, Ltr/c;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lio/ktor/client/plugins/HttpRequestRetry$Configuration$retryOnServerErrors$1;->b(Lio/ktor/client/plugins/HttpRequestRetry$e;Lsr/b;Ltr/c;)Ljava/lang/Boolean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
