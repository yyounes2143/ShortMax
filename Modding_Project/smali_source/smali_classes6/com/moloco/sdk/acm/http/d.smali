.class public final Lcom/moloco/sdk/acm/http/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/moloco/sdk/acm/http/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static b:Lio/ktor/client/HttpClient;

.field public static c:Ljava/lang/String;

.field public static final d:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/acm/http/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/acm/http/d;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/acm/http/d;->a:Lcom/moloco/sdk/acm/http/d;

    .line 7
    .line 8
    new-instance v0, Lcom/moloco/sdk/acm/http/c;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/moloco/sdk/acm/http/c;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/moloco/sdk/acm/http/d;->d:Lms/i;

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final c()Lcom/moloco/sdk/acm/http/f;
    .locals 4

    .line 1
    new-instance v0, Lcom/moloco/sdk/acm/http/f;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/acm/http/d;->b:Lio/ktor/client/HttpClient;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-string v1, "httpClient"

    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object v1, v2

    .line 14
    :cond_0
    sget-object v3, Lcom/moloco/sdk/acm/http/d;->c:Ljava/lang/String;

    .line 15
    .line 16
    if-nez v3, :cond_1

    .line 17
    .line 18
    const-string v3, "apiUrl"

    .line 19
    .line 20
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    move-object v2, v3

    .line 25
    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/acm/http/f;-><init>(Lio/ktor/client/HttpClient;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public final a()Lcom/moloco/sdk/acm/http/j;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/acm/http/d;->d:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/acm/http/j;

    .line 8
    .line 9
    return-object v0
.end method

.method public final b(Lio/ktor/client/HttpClient;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "httpClient"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "apiUrl"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/moloco/sdk/acm/http/d;->b:Lio/ktor/client/HttpClient;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sput-object p1, Lcom/moloco/sdk/acm/http/d;->b:Lio/ktor/client/HttpClient;

    .line 16
    .line 17
    sput-object p2, Lcom/moloco/sdk/acm/http/d;->c:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    return-void
.end method
