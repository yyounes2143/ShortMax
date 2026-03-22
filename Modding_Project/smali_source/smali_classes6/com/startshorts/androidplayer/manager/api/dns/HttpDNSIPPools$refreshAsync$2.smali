.class final Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools$refreshAsync$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "HttpDNSIPPools.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->j(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.manager.api.dns.HttpDNSIPPools$refreshAsync$2"
    f = "HttpDNSIPPools.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttpDNSIPPools.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpDNSIPPools.kt\ncom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools$refreshAsync$2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,217:1\n1863#2,2:218\n*S KotlinDebug\n*F\n+ 1 HttpDNSIPPools.kt\ncom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools$refreshAsync$2\n*L\n75#1:218,2\n*E\n"
    }
.end annotation


# instance fields
.field h:I

.field final synthetic i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools$refreshAsync$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools$refreshAsync$2;->i:Ljava/util/List;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools$refreshAsync$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools$refreshAsync$2;->i:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools$refreshAsync$2;-><init>(Ljava/util/List;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools$refreshAsync$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools$refreshAsync$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools$refreshAsync$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools$refreshAsync$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools$refreshAsync$2;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->a:Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools$refreshAsync$2;->i:Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->l(Ljava/util/List;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    sget-object p1, Lzb/f;->a:Lzb/f;

    .line 19
    .line 20
    invoke-virtual {p1}, Lzb/f;->d()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Ljava/lang/Iterable;

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0}, Ljk/v;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sget-object v1, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->a:Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;

    .line 47
    .line 48
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->e(Ljava/lang/String;)Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_0

    .line 53
    .line 54
    sget-object v2, Lcom/jiuzhou/cdn/CdnHelper;->a:Lcom/jiuzhou/cdn/CdnHelper;

    .line 55
    .line 56
    invoke-virtual {v2, v0, v1}, Lcom/jiuzhou/cdn/CdnHelper;->e(Ljava/lang/String;Ljava/util/List;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p1

    .line 63
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1
.end method
