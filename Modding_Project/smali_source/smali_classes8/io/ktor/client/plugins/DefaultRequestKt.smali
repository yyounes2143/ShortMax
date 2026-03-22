.class public final Lio/ktor/client/plugins/DefaultRequestKt;
.super Ljava/lang/Object;
.source "DefaultRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final a:Ldu/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "io.ktor.client.plugins.DefaultRequest"

    .line 2
    .line 3
    invoke-static {v0}, Lcs/a;->a(Ljava/lang/String;)Ldu/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lio/ktor/client/plugins/DefaultRequestKt;->a:Ldu/a;

    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic a()Ldu/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/DefaultRequestKt;->a:Ldu/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final b(Lio/ktor/client/HttpClientConfig;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p0    # Lio/ktor/client/HttpClientConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/HttpClientConfig<",
            "*>;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/ktor/client/plugins/DefaultRequest$a;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lio/ktor/client/plugins/DefaultRequest;->b:Lio/ktor/client/plugins/DefaultRequest$Plugin;

    .line 12
    .line 13
    new-instance v1, Lio/ktor/client/plugins/DefaultRequestKt$defaultRequest$1;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lio/ktor/client/plugins/DefaultRequestKt$defaultRequest$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0, v1}, Lio/ktor/client/HttpClientConfig;->i(Lqr/d;Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
