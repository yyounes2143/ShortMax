.class public final Lmg/f$a;
.super Ljava/lang/Object;
.source "IRemoteConfigDS.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmg/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static a(Lmg/f;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p0    # Lmg/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmg/f;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-interface {p0}, Lmg/f;->a()Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-wide/16 v0, 0x1388

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0, p1, v0, p2}, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->a(Ljava/lang/String;Ljava/lang/Long;Lrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static b(Lmg/f;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0
    .param p0    # Lmg/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmg/f;",
            ")",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/configure/RemoteConfigValue;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-interface {p0}, Lmg/f;->e()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-object p0
.end method

.method public static c(Lmg/f;)Z
    .locals 1
    .param p0    # Lmg/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p0}, Lmg/f;->e()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move p0, v0

    .line 14
    :goto_0
    if-lez p0, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    :cond_1
    return v0
.end method

.method public static d(Lmg/f;Lkotlin/jvm/functions/Function0;)Lmg/f;
    .locals 1
    .param p0    # Lmg/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lmg/f;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lmg/f;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "action"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lmg/f;->a()Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/repo/config/QueryDeferredDelegate;->g(Lkotlin/jvm/functions/Function0;)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method
