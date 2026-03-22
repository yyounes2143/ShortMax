.class public final Lio/ktor/client/plugins/HttpRequestRetry$d;
.super Ljava/lang/Object;
.source "HttpRequestRetry.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/client/plugins/HttpRequestRetry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lio/ktor/client/request/HttpRequestBuilder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:I

.field private final c:Ltr/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/client/request/HttpRequestBuilder;ILtr/c;Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Lio/ktor/client/request/HttpRequestBuilder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ltr/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lio/ktor/client/plugins/HttpRequestRetry$d;->a:Lio/ktor/client/request/HttpRequestBuilder;

    .line 10
    .line 11
    iput p2, p0, Lio/ktor/client/plugins/HttpRequestRetry$d;->b:I

    .line 12
    .line 13
    iput-object p3, p0, Lio/ktor/client/plugins/HttpRequestRetry$d;->c:Ltr/c;

    .line 14
    .line 15
    iput-object p4, p0, Lio/ktor/client/plugins/HttpRequestRetry$d;->d:Ljava/lang/Throwable;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$d;->d:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Lio/ktor/client/request/HttpRequestBuilder;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$d;->a:Lio/ktor/client/request/HttpRequestBuilder;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ltr/c;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$d;->c:Ltr/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lio/ktor/client/plugins/HttpRequestRetry$d;->b:I

    .line 2
    .line 3
    return v0
.end method
