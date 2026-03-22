.class public final Lcom/jiuzhou/cdn/CdnHelper;
.super Ljava/lang/Object;
.source "CdnHelper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCdnHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CdnHelper.kt\ncom/jiuzhou/cdn/CdnHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,245:1\n360#2,7:246\n1053#2:254\n774#2:255\n865#2,2:256\n1053#2:258\n295#2,2:259\n1#3:253\n*S KotlinDebug\n*F\n+ 1 CdnHelper.kt\ncom/jiuzhou/cdn/CdnHelper\n*L\n68#1:246,7\n188#1:254\n194#1:255\n194#1:256,2\n195#1:258\n219#1:259,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/jiuzhou/cdn/CdnHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiuzhou/cdn/model/CdnInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiuzhou/cdn/model/CdnInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/jiuzhou/cdn/CdnHelper;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/jiuzhou/cdn/CdnHelper;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/jiuzhou/cdn/CdnHelper;->a:Lcom/jiuzhou/cdn/CdnHelper;

    .line 7
    .line 8
    const-string v0, "CdnHelper"

    .line 9
    .line 10
    sput-object v0, Lcom/jiuzhou/cdn/CdnHelper;->b:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v0, Lxb/a;

    .line 13
    .line 14
    invoke-direct {v0}, Lxb/a;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/jiuzhou/cdn/CdnHelper;->c:Lms/i;

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lcom/jiuzhou/cdn/CdnHelper;->d:Ljava/util/List;

    .line 33
    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lcom/jiuzhou/cdn/CdnHelper;->e:Ljava/util/List;

    .line 44
    .line 45
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    invoke-static {}, Lcom/jiuzhou/cdn/CdnHelper;->l()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic b(Lcom/jiuzhou/cdn/CdnHelper;Ljava/util/concurrent/atomic/AtomicInteger;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jiuzhou/cdn/CdnHelper;->g(Ljava/util/concurrent/atomic/AtomicInteger;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c(Lcom/jiuzhou/cdn/a$a;Ljava/util/List;)Lcom/jiuzhou/cdn/model/CdnInfo;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/jiuzhou/cdn/CdnHelper;->m(Lcom/jiuzhou/cdn/a$a;Ljava/util/List;)Lcom/jiuzhou/cdn/model/CdnInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/jiuzhou/cdn/CdnHelper;ZLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/jiuzhou/cdn/CdnHelper;->w(ZLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final g(Ljava/util/concurrent/atomic/AtomicInteger;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/jiuzhou/cdn/CdnHelper$fetchAllCdnList$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/jiuzhou/cdn/CdnHelper$fetchAllCdnList$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/jiuzhou/cdn/CdnHelper$fetchAllCdnList$1;->k:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/jiuzhou/cdn/CdnHelper$fetchAllCdnList$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/jiuzhou/cdn/CdnHelper$fetchAllCdnList$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/jiuzhou/cdn/CdnHelper$fetchAllCdnList$1;-><init>(Lcom/jiuzhou/cdn/CdnHelper;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/jiuzhou/cdn/CdnHelper$fetchAllCdnList$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/jiuzhou/cdn/CdnHelper$fetchAllCdnList$1;->k:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/jiuzhou/cdn/CdnHelper$fetchAllCdnList$1;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-nez p2, :cond_5

    .line 62
    .line 63
    sget-object p2, Lcom/jiuzhou/cdn/repo/CdnRepo;->a:Lcom/jiuzhou/cdn/repo/CdnRepo;

    .line 64
    .line 65
    iput-object p1, v0, Lcom/jiuzhou/cdn/CdnHelper$fetchAllCdnList$1;->h:Ljava/lang/Object;

    .line 66
    .line 67
    iput v3, v0, Lcom/jiuzhou/cdn/CdnHelper$fetchAllCdnList$1;->k:I

    .line 68
    .line 69
    invoke-virtual {p2, v0}, Lcom/jiuzhou/cdn/repo/CdnRepo;->d(Lrs/c;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    if-ne p2, v1, :cond_3

    .line 74
    .line 75
    return-object v1

    .line 76
    :cond_3
    :goto_1
    check-cast p2, Ljava/util/List;

    .line 77
    .line 78
    if-nez p2, :cond_4

    .line 79
    .line 80
    new-instance p2, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    :cond_4
    sget-object v0, Lcom/jiuzhou/cdn/CdnHelper;->d:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 88
    .line 89
    .line 90
    check-cast p2, Ljava/util/Collection;

    .line 91
    .line 92
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_5

    .line 97
    .line 98
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1, v1, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_5

    .line 104
    .line 105
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    .line 107
    .line 108
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 109
    .line 110
    return-object p1
.end method

.method private final i()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/jiuzhou/cdn/CdnHelper;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final j()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/jiuzhou/cdn/CdnHelper;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final l()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final m(Lcom/jiuzhou/cdn/a$a;Ljava/util/List;)Lcom/jiuzhou/cdn/model/CdnInfo;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiuzhou/cdn/a$a;",
            "Ljava/util/List<",
            "Lcom/jiuzhou/cdn/model/CdnInfo;",
            ">;)",
            "Lcom/jiuzhou/cdn/model/CdnInfo;"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    move-object v2, v0

    .line 19
    check-cast v2, Lcom/jiuzhou/cdn/model/CdnInfo;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/jiuzhou/cdn/model/CdnInfo;->getCdn()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p0}, Lcom/jiuzhou/cdn/a$a;->a()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v0, v1

    .line 37
    :goto_0
    move-object v2, v0

    .line 38
    check-cast v2, Lcom/jiuzhou/cdn/model/CdnInfo;

    .line 39
    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/jiuzhou/cdn/a$a;->c()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/jiuzhou/cdn/a$a;->b()J

    .line 49
    .line 50
    .line 51
    move-result-wide v0

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    const-wide/32 v0, 0xea60

    .line 54
    .line 55
    .line 56
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    invoke-virtual {p0}, Lcom/jiuzhou/cdn/a$a;->c()Z

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    const/4 v8, 0x7

    .line 69
    const/4 v9, 0x0

    .line 70
    const/4 v3, 0x0

    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    invoke-static/range {v2 .. v9}, Lcom/jiuzhou/cdn/model/CdnInfo;->copy$default(Lcom/jiuzhou/cdn/model/CdnInfo;Ljava/lang/String;Ljava/lang/String;FLjava/lang/Long;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/jiuzhou/cdn/model/CdnInfo;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    return-object p0

    .line 78
    :cond_3
    return-object v1
.end method

.method public static synthetic o(Lcom/jiuzhou/cdn/CdnHelper;Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x2

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const-wide/32 p2, 0xea60

    .line 6
    .line 7
    .line 8
    :cond_0
    move-wide v2, p2

    .line 9
    move-object v0, p0

    .line 10
    move-object v1, p1

    .line 11
    move-object v4, p4

    .line 12
    move-object v5, p5

    .line 13
    invoke-virtual/range {v0 .. v5}, Lcom/jiuzhou/cdn/CdnHelper;->n(Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private final p(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v3, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "toString(...)"

    .line 39
    .line 40
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    sget-object v3, Lbc/e;->a:Lbc/e$a;

    .line 44
    .line 45
    sget-object v4, Lcom/jiuzhou/cdn/CdnHelper;->b:Ljava/lang/String;

    .line 46
    .line 47
    new-instance v5, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v6, "replaceUrlWithCdn: newCdn: "

    .line 53
    .line 54
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string p2, "  url "

    .line 61
    .line 62
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p1, ",\n newUrl "

    .line 69
    .line 70
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-virtual {v3, v4, p1}, Lbc/e$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-lez p1, :cond_6

    .line 88
    .line 89
    new-instance p1, Landroid/net/Uri$Builder;

    .line 90
    .line 91
    invoke-direct {p1}, Landroid/net/Uri$Builder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    const-string p2, "toString(...)"

    .line 119
    .line 120
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    sget-object p2, Lcom/jiuzhou/cdn/CdnHelper;->d:Ljava/util/List;

    .line 124
    .line 125
    const-string v1, "allCdnList"

    .line 126
    .line 127
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :try_start_1
    const-string v1, "allCdnList"

    .line 132
    .line 133
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    move-object v1, p2

    .line 137
    check-cast v1, Ljava/lang/Iterable;

    .line 138
    .line 139
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_1

    .line 148
    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    move-object v4, v3

    .line 154
    check-cast v4, Lcom/jiuzhou/cdn/model/CdnInfo;

    .line 155
    .line 156
    invoke-virtual {v4}, Lcom/jiuzhou/cdn/model/CdnInfo;->getCdn()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result v4

    .line 164
    if-eqz v4, :cond_0

    .line 165
    .line 166
    goto :goto_0

    .line 167
    :catchall_0
    move-exception p1

    .line 168
    goto/16 :goto_5

    .line 169
    .line 170
    :cond_1
    move-object v3, v0

    .line 171
    :goto_0
    check-cast v3, Lcom/jiuzhou/cdn/model/CdnInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .line 173
    :try_start_2
    monitor-exit p2

    .line 174
    sget-object p1, Lcom/jiuzhou/cdn/CdnHelper;->e:Ljava/util/List;

    .line 175
    .line 176
    const-string p2, "cdnList"

    .line 177
    .line 178
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    monitor-enter p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 182
    :try_start_3
    const-string p2, "cdnList"

    .line 183
    .line 184
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    move-object p2, p1

    .line 188
    check-cast p2, Ljava/lang/Iterable;

    .line 189
    .line 190
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-eqz v1, :cond_5

    .line 199
    .line 200
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    move-object v4, v1

    .line 205
    check-cast v4, Lcom/jiuzhou/cdn/model/CdnInfo;

    .line 206
    .line 207
    invoke-virtual {v4}, Lcom/jiuzhou/cdn/model/CdnInfo;->getCdn()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    if-eqz v5, :cond_2

    .line 212
    .line 213
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 214
    .line 215
    .line 216
    move-result v5

    .line 217
    if-nez v5, :cond_3

    .line 218
    .line 219
    goto :goto_1

    .line 220
    :cond_3
    invoke-virtual {v4}, Lcom/jiuzhou/cdn/model/CdnInfo;->getCdn()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v4

    .line 224
    if-nez v4, :cond_4

    .line 225
    .line 226
    const-string v4, ""

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :catchall_1
    move-exception p2

    .line 230
    goto :goto_4

    .line 231
    :cond_4
    :goto_2
    const/4 v5, 0x0

    .line 232
    const/4 v6, 0x2

    .line 233
    invoke-static {v2, v4, v5, v6, v0}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    if-eqz v4, :cond_2

    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_5
    move-object v1, v0

    .line 241
    :goto_3
    check-cast v1, Lcom/jiuzhou/cdn/model/CdnInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 242
    .line 243
    :try_start_4
    monitor-exit p1

    .line 244
    if-eqz v3, :cond_6

    .line 245
    .line 246
    if-eqz v1, :cond_6

    .line 247
    .line 248
    sget-object p1, Lbc/e;->a:Lbc/e$a;

    .line 249
    .line 250
    sget-object p2, Lcom/jiuzhou/cdn/CdnHelper;->b:Ljava/lang/String;

    .line 251
    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    const-string v5, "replaceUrlWithCdn: notify "

    .line 258
    .line 259
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    .line 261
    .line 262
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string p3, " onCdnUpdate oldCdn "

    .line 266
    .line 267
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string p3, ", newCdn "

    .line 274
    .line 275
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p3

    .line 285
    invoke-virtual {p1, p2, p3}, Lbc/e$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    goto :goto_6

    .line 289
    :catch_0
    move-exception p1

    .line 290
    goto :goto_7

    .line 291
    :goto_4
    monitor-exit p1

    .line 292
    throw p2

    .line 293
    :goto_5
    monitor-exit p2

    .line 294
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 295
    :cond_6
    :goto_6
    return-object v2

    .line 296
    :goto_7
    sget-object p2, Lbc/e;->a:Lbc/e$a;

    .line 297
    .line 298
    sget-object p3, Lcom/jiuzhou/cdn/CdnHelper;->b:Ljava/lang/String;

    .line 299
    .line 300
    new-instance v1, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    const-string v2, "replaceUrlWithCdn failed -> "

    .line 306
    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-virtual {p2, p3, p1}, Lbc/e$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    return-object v0
.end method

.method static synthetic q(Lcom/jiuzhou/cdn/CdnHelper;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x1

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/jiuzhou/cdn/CdnHelper;->p(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic t(Lcom/jiuzhou/cdn/CdnHelper;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/jiuzhou/cdn/CdnHelper;->s(Ljava/lang/String;Z)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final v(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiuzhou/cdn/model/CdnInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lbc/e;->a:Lbc/e$a;

    .line 2
    .line 3
    sget-object v1, Lcom/jiuzhou/cdn/CdnHelper;->b:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "updateCdnList:  "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v0, v1, v2}, Lbc/e$a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v0, Lcom/jiuzhou/cdn/CdnHelper;->e:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 28
    .line 29
    .line 30
    check-cast p1, Ljava/util/Collection;

    .line 31
    .line 32
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private final w(ZLrs/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of p1, p2, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    move-object p1, p2

    .line 6
    check-cast p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;

    .line 7
    .line 8
    iget v0, p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;->l:I

    .line 9
    .line 10
    const/high16 v1, -0x80000000

    .line 11
    .line 12
    and-int v2, v0, v1

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    sub-int/2addr v0, v1

    .line 17
    iput v0, p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;

    .line 21
    .line 22
    invoke-direct {p1, p0, p2}, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;-><init>(Lcom/jiuzhou/cdn/CdnHelper;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget v1, p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;->l:I

    .line 32
    .line 33
    const/4 v2, 0x3

    .line 34
    const/4 v3, 0x2

    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v1, :cond_4

    .line 37
    .line 38
    if-eq v1, v4, :cond_3

    .line 39
    .line 40
    if-eq v1, v3, :cond_2

    .line 41
    .line 42
    if-ne v1, v2, :cond_1

    .line 43
    .line 44
    iget-object v0, p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;->i:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Ljava/util/List;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;->h:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Lcom/jiuzhou/cdn/CdnHelper;

    .line 51
    .line 52
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_3

    .line 56
    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1

    .line 65
    :cond_2
    iget-object v1, p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;->h:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v1, Lcom/jiuzhou/cdn/CdnHelper;

    .line 68
    .line 69
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_3
    iget-object v1, p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;->i:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v1, Ljava/util/List;

    .line 76
    .line 77
    iget-object v5, p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;->h:Ljava/lang/Object;

    .line 78
    .line 79
    check-cast v5, Lcom/jiuzhou/cdn/CdnHelper;

    .line 80
    .line 81
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    sget-object v1, Lcom/jiuzhou/cdn/CdnHelper;->d:Ljava/util/List;

    .line 89
    .line 90
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    iput-object p0, p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;->h:Ljava/lang/Object;

    .line 94
    .line 95
    iput-object v1, p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;->i:Ljava/lang/Object;

    .line 96
    .line 97
    iput v4, p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;->l:I

    .line 98
    .line 99
    invoke-virtual {p0, v1, p1}, Lcom/jiuzhou/cdn/CdnHelper;->f(Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    if-ne p2, v0, :cond_5

    .line 104
    .line 105
    return-object v0

    .line 106
    :cond_5
    move-object v5, p0

    .line 107
    :goto_1
    check-cast p2, Lkt/b;

    .line 108
    .line 109
    new-instance v6, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1;

    .line 110
    .line 111
    const/4 v7, 0x0

    .line 112
    invoke-direct {v6, v1, v7}, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1;-><init>(Ljava/util/List;Lrs/c;)V

    .line 113
    .line 114
    .line 115
    const/4 v1, 0x0

    .line 116
    invoke-static {p2, v1, v6, v4, v7}, Lkotlinx/coroutines/flow/c;->C(Lkt/b;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkt/b;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .line 124
    .line 125
    iput-object v5, p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;->h:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object v7, p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;->i:Ljava/lang/Object;

    .line 128
    .line 129
    iput v3, p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;->l:I

    .line 130
    .line 131
    invoke-static {p2, v1, p1}, Lkotlinx/coroutines/flow/c;->W(Lkt/b;Ljava/util/Collection;Lrs/c;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    if-ne p2, v0, :cond_6

    .line 136
    .line 137
    return-object v0

    .line 138
    :cond_6
    move-object v1, v5

    .line 139
    :goto_2
    check-cast p2, Ljava/util/List;

    .line 140
    .line 141
    check-cast p2, Ljava/lang/Iterable;

    .line 142
    .line 143
    new-instance v3, Lcom/jiuzhou/cdn/CdnHelper$a;

    .line 144
    .line 145
    invoke-direct {v3}, Lcom/jiuzhou/cdn/CdnHelper$a;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt;->U0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    check-cast p2, Ljava/util/Collection;

    .line 153
    .line 154
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    sget-object v3, Lcom/jiuzhou/cdn/repo/CdnRepo;->a:Lcom/jiuzhou/cdn/repo/CdnRepo;

    .line 159
    .line 160
    iput-object v1, p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;->h:Ljava/lang/Object;

    .line 161
    .line 162
    iput-object p2, p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;->i:Ljava/lang/Object;

    .line 163
    .line 164
    iput v2, p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$1;->l:I

    .line 165
    .line 166
    invoke-virtual {v3, p2, p1}, Lcom/jiuzhou/cdn/repo/CdnRepo;->e(Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-ne p1, v0, :cond_7

    .line 171
    .line 172
    return-object v0

    .line 173
    :cond_7
    move-object v0, p2

    .line 174
    move-object p1, v1

    .line 175
    :goto_3
    check-cast v0, Ljava/lang/Iterable;

    .line 176
    .line 177
    new-instance p2, Ljava/util/ArrayList;

    .line 178
    .line 179
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_9

    .line 191
    .line 192
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    move-object v2, v1

    .line 197
    check-cast v2, Lcom/jiuzhou/cdn/model/CdnInfo;

    .line 198
    .line 199
    invoke-virtual {v2}, Lcom/jiuzhou/cdn/model/CdnInfo;->getSuccess()Ljava/lang/Boolean;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_8

    .line 212
    .line 213
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    goto :goto_4

    .line 217
    :cond_9
    new-instance v0, Lcom/jiuzhou/cdn/CdnHelper$b;

    .line 218
    .line 219
    invoke-direct {v0}, Lcom/jiuzhou/cdn/CdnHelper$b;-><init>()V

    .line 220
    .line 221
    .line 222
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->U0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    check-cast p2, Ljava/util/Collection;

    .line 227
    .line 228
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 229
    .line 230
    .line 231
    move-result-object p2

    .line 232
    invoke-direct {p1, p2}, Lcom/jiuzhou/cdn/CdnHelper;->v(Ljava/util/List;)V

    .line 233
    .line 234
    .line 235
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 236
    .line 237
    return-object p1
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "host"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ips"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/jiuzhou/cdn/CdnHelper;->i()Ljava/util/concurrent/ConcurrentHashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final f(Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Lcom/jiuzhou/cdn/model/CdnInfo;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkt/b<",
            "Lcom/jiuzhou/cdn/a$a;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlinx/coroutines/flow/c;->a(Ljava/lang/Iterable;)Lkt/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance p2, Lcom/jiuzhou/cdn/CdnHelper$checkCdnAsync$2;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-direct {p2, v0}, Lcom/jiuzhou/cdn/CdnHelper$checkCdnAsync$2;-><init>(Lrs/c;)V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {p1, v2, p2, v1, v0}, Lkotlinx/coroutines/flow/c;->C(Lkt/b;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkt/b;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    new-instance p2, Lcom/jiuzhou/cdn/CdnHelper$checkCdnAsync$3;

    .line 20
    .line 21
    invoke-direct {p2, v0}, Lcom/jiuzhou/cdn/CdnHelper$checkCdnAsync$3;-><init>(Lrs/c;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/c;->O(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public final h(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "host"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/jiuzhou/cdn/CdnHelper;->i()Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Ljava/util/List;

    .line 15
    .line 16
    return-object p1
.end method

.method public final k(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lbc/b;->a:Lbc/b$a;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {v0, p1}, Lbc/b$a;->b(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    sget-object p1, Lcom/jiuzhou/cdn/CdnHelper;->d:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final n(Ljava/lang/String;JLkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object p2, Lbc/e;->a:Lbc/e$a;

    .line 2
    .line 3
    sget-object p3, Lcom/jiuzhou/cdn/CdnHelper;->b:Ljava/lang/String;

    .line 4
    .line 5
    new-instance p5, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "onUrlError url: "

    .line 11
    .line 12
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p5

    .line 22
    invoke-virtual {p2, p3, p5}, Lbc/e$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object p2, Lcom/jiuzhou/cdn/CdnHelper;->e:Ljava/util/List;

    .line 26
    .line 27
    const-string p3, "cdnList"

    .line 28
    .line 29
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    const-string p3, "cdnList"

    .line 34
    .line 35
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    const/4 p5, 0x0

    .line 43
    move v0, p5

    .line 44
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    check-cast v1, Lcom/jiuzhou/cdn/model/CdnInfo;

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/jiuzhou/cdn/model/CdnInfo;->getCdn()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-nez v1, :cond_0

    .line 61
    .line 62
    const-string v1, ""

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :catchall_0
    move-exception p1

    .line 66
    goto :goto_3

    .line 67
    :cond_0
    :goto_1
    const/4 v2, 0x2

    .line 68
    const/4 v3, 0x0

    .line 69
    invoke-static {p1, v1, p5, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    if-eqz v1, :cond_1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const/4 v0, -0x1

    .line 80
    :goto_2
    monitor-exit p2

    .line 81
    if-ltz v0, :cond_3

    .line 82
    .line 83
    sget-object p1, Lcom/jiuzhou/cdn/CdnHelper;->e:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    check-cast p2, Lcom/jiuzhou/cdn/model/CdnInfo;

    .line 90
    .line 91
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    :cond_3
    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 98
    .line 99
    return-object p1

    .line 100
    :goto_3
    monitor-exit p2

    .line 101
    throw p1
.end method

.method public final r()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lcom/jiuzhou/cdn/CdnHelper;->e:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    const-string v1, "cdnList"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcom/jiuzhou/cdn/model/CdnInfo;

    .line 21
    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/jiuzhou/cdn/model/CdnInfo;->getCdn()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    move-object v1, v2

    .line 32
    :goto_0
    sget-object v3, Lbc/e;->a:Lbc/e$a;

    .line 33
    .line 34
    sget-object v4, Lcom/jiuzhou/cdn/CdnHelper;->b:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v5, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v6, "selectCdn4Url: cdn "

    .line 42
    .line 43
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const/16 v6, 0x20

    .line 50
    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v3, v4, v0}, Lbc/e$a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    .line 64
    return-object v1

    .line 65
    :goto_1
    sget-object v1, Lbc/e;->a:Lbc/e$a;

    .line 66
    .line 67
    sget-object v3, Lcom/jiuzhou/cdn/CdnHelper;->b:Ljava/lang/String;

    .line 68
    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v5, "selectCdn4Url failed -> "

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v1, v3, v0}, Lbc/e$a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    const-string v0, "selectCdn4Url: cdn null"

    .line 94
    .line 95
    invoke-virtual {v1, v3, v0}, Lbc/e$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-object v2
.end method

.method public final s(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string p2, "url"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/jiuzhou/cdn/CdnHelper;->r()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 p2, 0x0

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x2

    .line 22
    invoke-static {p1, v2, v0, v1, p2}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    return-object p2

    .line 29
    :cond_1
    const/4 v4, 0x4

    .line 30
    const/4 v5, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    move-object v0, p0

    .line 33
    move-object v1, p1

    .line 34
    invoke-static/range {v0 .. v5}, Lcom/jiuzhou/cdn/CdnHelper;->q(Lcom/jiuzhou/cdn/CdnHelper;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_2
    :goto_0
    return-object p2
.end method

.method public final u(ZLrs/c;)Ljava/lang/Object;
    .locals 11
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->n:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;-><init>(Lcom/jiuzhou/cdn/CdnHelper;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->l:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->n:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x0

    .line 35
    const/4 v5, 0x2

    .line 36
    const/4 v6, 0x1

    .line 37
    if-eqz v2, :cond_5

    .line 38
    .line 39
    if-eq v2, v6, :cond_4

    .line 40
    .line 41
    if-eq v2, v5, :cond_3

    .line 42
    .line 43
    if-ne v2, v3, :cond_2

    .line 44
    .line 45
    iget p1, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->k:I

    .line 46
    .line 47
    iget-boolean v2, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->j:Z

    .line 48
    .line 49
    iget-object v7, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->i:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 52
    .line 53
    iget-object v8, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->h:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v8, Lcom/jiuzhou/cdn/CdnHelper;

    .line 56
    .line 57
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    move p2, p1

    .line 61
    move p1, v2

    .line 62
    goto :goto_1

    .line 63
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 66
    .line 67
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p1

    .line 71
    :cond_3
    iget p1, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->k:I

    .line 72
    .line 73
    iget-boolean v2, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->j:Z

    .line 74
    .line 75
    iget-object v7, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->i:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    .line 79
    iget-object v8, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->h:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v8, Lcom/jiuzhou/cdn/CdnHelper;

    .line 82
    .line 83
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_4
    iget p1, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->k:I

    .line 88
    .line 89
    iget-boolean v2, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->j:Z

    .line 90
    .line 91
    iget-object v7, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->i:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v7, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    .line 95
    iget-object v8, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->h:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v8, Lcom/jiuzhou/cdn/CdnHelper;

    .line 98
    .line 99
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_5
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    sget-object p2, Lbc/b;->a:Lbc/b$a;

    .line 107
    .line 108
    invoke-virtual {p2}, Lbc/b$a;->a()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    if-nez p2, :cond_6

    .line 113
    .line 114
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 115
    .line 116
    return-object p1

    .line 117
    :cond_6
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 118
    .line 119
    invoke-direct {p2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 120
    .line 121
    .line 122
    move-object v8, p0

    .line 123
    move-object v7, p2

    .line 124
    move p2, v4

    .line 125
    :goto_1
    iput-object v8, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->h:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object v7, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->i:Ljava/lang/Object;

    .line 128
    .line 129
    iput-boolean p1, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->j:Z

    .line 130
    .line 131
    iput p2, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->k:I

    .line 132
    .line 133
    iput v6, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->n:I

    .line 134
    .line 135
    invoke-direct {v8, v7, v0}, Lcom/jiuzhou/cdn/CdnHelper;->g(Ljava/util/concurrent/atomic/AtomicInteger;Lrs/c;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    if-ne v2, v1, :cond_7

    .line 140
    .line 141
    return-object v1

    .line 142
    :cond_7
    move v2, p1

    .line 143
    move p1, p2

    .line 144
    :goto_2
    if-ge p1, v5, :cond_8

    .line 145
    .line 146
    move p2, v6

    .line 147
    goto :goto_3

    .line 148
    :cond_8
    move p2, v4

    .line 149
    :goto_3
    iput-object v8, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->h:Ljava/lang/Object;

    .line 150
    .line 151
    iput-object v7, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->i:Ljava/lang/Object;

    .line 152
    .line 153
    iput-boolean v2, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->j:Z

    .line 154
    .line 155
    iput p1, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->k:I

    .line 156
    .line 157
    iput v5, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->n:I

    .line 158
    .line 159
    invoke-direct {v8, p2, v0}, Lcom/jiuzhou/cdn/CdnHelper;->w(ZLrs/c;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    if-ne p2, v1, :cond_9

    .line 164
    .line 165
    return-object v1

    .line 166
    :cond_9
    :goto_4
    add-int/2addr p1, v6

    .line 167
    if-nez v2, :cond_a

    .line 168
    .line 169
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 170
    .line 171
    return-object p1

    .line 172
    :cond_a
    iput-object v8, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->h:Ljava/lang/Object;

    .line 173
    .line 174
    iput-object v7, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->i:Ljava/lang/Object;

    .line 175
    .line 176
    iput-boolean v2, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->j:Z

    .line 177
    .line 178
    iput p1, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->k:I

    .line 179
    .line 180
    iput v3, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdn$1;->n:I

    .line 181
    .line 182
    const-wide/16 v9, 0x1770

    .line 183
    .line 184
    invoke-static {v9, v10, v0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    if-ne p2, v1, :cond_1

    .line 189
    .line 190
    return-object v1
.end method
