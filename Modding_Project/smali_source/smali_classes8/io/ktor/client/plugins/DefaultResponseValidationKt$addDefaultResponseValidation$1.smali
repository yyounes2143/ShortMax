.class final Lio/ktor/client/plugins/DefaultResponseValidationKt$addDefaultResponseValidation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DefaultResponseValidation.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/client/plugins/DefaultResponseValidationKt;->c(Lio/ktor/client/HttpClientConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lio/ktor/client/plugins/HttpCallValidator$a;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Lio/ktor/client/HttpClientConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/client/HttpClientConfig<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/ktor/client/HttpClientConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/HttpClientConfig<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/client/plugins/DefaultResponseValidationKt$addDefaultResponseValidation$1;->d:Lio/ktor/client/HttpClientConfig;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final b(Lio/ktor/client/plugins/HttpCallValidator$a;)V
    .locals 2
    .param p1    # Lio/ktor/client/plugins/HttpCallValidator$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "$this$HttpResponseValidator"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/ktor/client/plugins/DefaultResponseValidationKt$addDefaultResponseValidation$1;->d:Lio/ktor/client/HttpClientConfig;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/ktor/client/HttpClientConfig;->d()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Lio/ktor/client/plugins/HttpCallValidator$a;->d(Z)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lio/ktor/client/plugins/DefaultResponseValidationKt$addDefaultResponseValidation$1$1;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {v0, v1}, Lio/ktor/client/plugins/DefaultResponseValidationKt$addDefaultResponseValidation$1$1;-><init>(Lrs/c;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lio/ktor/client/plugins/HttpCallValidator$a;->e(Lkotlin/jvm/functions/Function2;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/ktor/client/plugins/HttpCallValidator$a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/client/plugins/DefaultResponseValidationKt$addDefaultResponseValidation$1;->b(Lio/ktor/client/plugins/HttpCallValidator$a;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method
