.class public final Lcom/startshorts/androidplayer/repo/config/appConfig/impl/RemoteConfigFetcher;
.super Ljava/lang/Object;
.source "RemoteConfigFetcher.kt"

# interfaces
.implements Lpg/a;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lqg/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lqg/a;)V
    .locals 1
    .param p1    # Lqg/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "config"

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/config/appConfig/impl/RemoteConfigFetcher;->a:Lqg/a;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic b(Lcom/startshorts/androidplayer/repo/config/appConfig/impl/RemoteConfigFetcher;)Lqg/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/repo/config/appConfig/impl/RemoteConfigFetcher;->a:Lqg/a;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lgt/q0;->b()Lgt/c0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/repo/config/appConfig/impl/RemoteConfigFetcher$fetch$2;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p0, v2}, Lcom/startshorts/androidplayer/repo/config/appConfig/impl/RemoteConfigFetcher$fetch$2;-><init>(Lcom/startshorts/androidplayer/repo/config/appConfig/impl/RemoteConfigFetcher;Lrs/c;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
