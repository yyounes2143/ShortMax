.class public final Lcom/applovin/shadow/okhttp3/internal/cache/CacheStrategy;
.super Ljava/lang/Object;
.source "CacheStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/shadow/okhttp3/internal/cache/CacheStrategy$Companion;,
        Lcom/applovin/shadow/okhttp3/internal/cache/CacheStrategy$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/applovin/shadow/okhttp3/internal/cache/CacheStrategy$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final cacheResponse:Lcom/applovin/shadow/okhttp3/Response;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final networkRequest:Lcom/applovin/shadow/okhttp3/Request;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheStrategy$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/applovin/shadow/okhttp3/internal/cache/CacheStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheStrategy;->Companion:Lcom/applovin/shadow/okhttp3/internal/cache/CacheStrategy$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/applovin/shadow/okhttp3/Request;Lcom/applovin/shadow/okhttp3/Response;)V
    .locals 0
    .param p1    # Lcom/applovin/shadow/okhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/applovin/shadow/okhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheStrategy;->networkRequest:Lcom/applovin/shadow/okhttp3/Request;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheStrategy;->cacheResponse:Lcom/applovin/shadow/okhttp3/Response;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getCacheResponse()Lcom/applovin/shadow/okhttp3/Response;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheStrategy;->cacheResponse:Lcom/applovin/shadow/okhttp3/Response;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNetworkRequest()Lcom/applovin/shadow/okhttp3/Request;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/cache/CacheStrategy;->networkRequest:Lcom/applovin/shadow/okhttp3/Request;

    .line 2
    .line 3
    return-object v0
.end method
