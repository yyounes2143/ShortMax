.class public final Lio/ktor/client/plugins/DefaultResponseValidationKt;
.super Ljava/lang/Object;
.source "DefaultResponseValidation.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final a:Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyr/a<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ldu/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyr/a;

    .line 2
    .line 3
    const-string v1, "ValidateMark"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lyr/a;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lio/ktor/client/plugins/DefaultResponseValidationKt;->a:Lyr/a;

    .line 9
    .line 10
    const-string v0, "io.ktor.client.plugins.DefaultResponseValidation"

    .line 11
    .line 12
    invoke-static {v0}, Lcs/a;->a(Ljava/lang/String;)Ldu/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lio/ktor/client/plugins/DefaultResponseValidationKt;->b:Ldu/a;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic a()Ldu/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/DefaultResponseValidationKt;->b:Ldu/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b()Lyr/a;
    .locals 1

    .line 1
    sget-object v0, Lio/ktor/client/plugins/DefaultResponseValidationKt;->a:Lyr/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final c(Lio/ktor/client/HttpClientConfig;)V
    .locals 1
    .param p0    # Lio/ktor/client/HttpClientConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/client/HttpClientConfig<",
            "*>;)V"
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
    new-instance v0, Lio/ktor/client/plugins/DefaultResponseValidationKt$addDefaultResponseValidation$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lio/ktor/client/plugins/DefaultResponseValidationKt$addDefaultResponseValidation$1;-><init>(Lio/ktor/client/HttpClientConfig;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0}, Lio/ktor/client/plugins/a;->b(Lio/ktor/client/HttpClientConfig;Lkotlin/jvm/functions/Function1;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
