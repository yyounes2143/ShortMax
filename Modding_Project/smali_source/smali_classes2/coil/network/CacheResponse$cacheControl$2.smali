.class final Lcoil/network/CacheResponse$cacheControl$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CacheResponse.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/network/CacheResponse;-><init>(Lokio/BufferedSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lokhttp3/CacheControl;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Lcoil/network/CacheResponse;


# direct methods
.method constructor <init>(Lcoil/network/CacheResponse;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil/network/CacheResponse$cacheControl$2;->d:Lcoil/network/CacheResponse;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final b()Lokhttp3/CacheControl;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lokhttp3/CacheControl;->n:Lokhttp3/CacheControl$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil/network/CacheResponse$cacheControl$2;->d:Lcoil/network/CacheResponse;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcoil/network/CacheResponse;->d()Lokhttp3/Headers;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lokhttp3/CacheControl$Companion;->b(Lokhttp3/Headers;)Lokhttp3/CacheControl;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcoil/network/CacheResponse$cacheControl$2;->b()Lokhttp3/CacheControl;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
