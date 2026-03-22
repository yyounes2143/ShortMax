.class public final Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcherException$a;
.super Ljava/lang/Object;
.source "OkHttpNetworkFetcherException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcherException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
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
    invoke-direct {p0}, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcherException$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lokhttp3/Response;)Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcherException;
    .locals 3
    .param p1    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcherException;

    .line 7
    .line 8
    invoke-virtual {p1}, Lokhttp3/Response;->x()Lokhttp3/Response;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lokhttp3/Response;->o()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move-object v1, v2

    .line 25
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Response;->x()Lokhttp3/Response;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lokhttp3/Response;->u()Lokhttp3/Headers;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    :cond_1
    invoke-direct {v0, v1, v2}, Lcom/facebook/imagepipeline/backends/okhttp3/OkHttpNetworkFetcherException;-><init>(Ljava/lang/Integer;Lokhttp3/Headers;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method
