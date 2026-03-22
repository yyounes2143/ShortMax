.class public final Lt3/k$a;
.super Ljava/lang/Object;
.source "DiskCachesStoreFactory.kt"

# interfaces
.implements Lt3/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt3/k;-><init>(Lt3/p;Lb4/d0;Lt3/o;Lr3/s;ILg2/b;Lg2/b;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiskCachesStoreFactory.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiskCachesStoreFactory.kt\ncom/facebook/imagepipeline/core/DiskCachesStoreFactory$diskCachesStore$2$1\n+ 2 Maps.kt\nkotlin/collections/MapsKt__MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,101:1\n462#2:102\n412#2:103\n462#2:109\n412#2:110\n1246#3,4:104\n1246#3,4:111\n1#4:108\n*S KotlinDebug\n*F\n+ 1 DiskCachesStoreFactory.kt\ncom/facebook/imagepipeline/core/DiskCachesStoreFactory$diskCachesStore$2$1\n*L\n79#1:102\n79#1:103\n86#1:109\n86#1:110\n79#1:104,4\n86#1:111,4\n*E\n"
    }
.end annotation


# instance fields
.field private final a:Lms/i;

.field private final b:Lms/i;

.field private final c:Lms/i;

.field private final d:Lms/i;

.field private final e:Lms/i;

.field private final f:Lms/i;


# direct methods
.method constructor <init>(Lt3/k;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 5
    .line 6
    new-instance v1, Lt3/e;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lt3/e;-><init>(Lt3/k;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    iput-object v1, p0, Lt3/k$a;->a:Lms/i;

    .line 16
    .line 17
    new-instance v1, Lt3/f;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Lt3/f;-><init>(Lt3/k$a;Lt3/k;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lt3/k$a;->b:Lms/i;

    .line 27
    .line 28
    new-instance v1, Lt3/g;

    .line 29
    .line 30
    invoke-direct {v1, p1}, Lt3/g;-><init>(Lt3/k;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v1}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iput-object v1, p0, Lt3/k$a;->c:Lms/i;

    .line 38
    .line 39
    new-instance v1, Lt3/h;

    .line 40
    .line 41
    invoke-direct {v1, p0, p1}, Lt3/h;-><init>(Lt3/k$a;Lt3/k;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v0, v1}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, Lt3/k$a;->d:Lms/i;

    .line 49
    .line 50
    new-instance v1, Lt3/i;

    .line 51
    .line 52
    invoke-direct {v1, p1, p0}, Lt3/i;-><init>(Lt3/k;Lt3/k$a;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v0, v1}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    iput-object v1, p0, Lt3/k$a;->e:Lms/i;

    .line 60
    .line 61
    new-instance v1, Lt3/j;

    .line 62
    .line 63
    invoke-direct {v1, p0, p1}, Lt3/j;-><init>(Lt3/k$a;Lt3/k;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0, v1}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lt3/k$a;->f:Lms/i;

    .line 71
    .line 72
    return-void
.end method

.method public static synthetic d(Lt3/k;)Lg2/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lt3/k$a;->r(Lt3/k;)Lg2/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lt3/k$a;Lt3/k;)Lr3/i;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt3/k$a;->q(Lt3/k$a;Lt3/k;)Lr3/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lt3/k$a;Lt3/k;)Lr3/i;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt3/k$a;->o(Lt3/k$a;Lt3/k;)Lr3/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lt3/k;)Lg2/e;
    .locals 0

    .line 1
    invoke-static {p0}, Lt3/k$a;->p(Lt3/k;)Lg2/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lt3/k$a;Lt3/k;)Lcom/facebook/common/internal/ImmutableMap;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt3/k$a;->j(Lt3/k$a;Lt3/k;)Lcom/facebook/common/internal/ImmutableMap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i(Lt3/k;Lt3/k$a;)Ljava/util/Map;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lt3/k$a;->k(Lt3/k;Lt3/k$a;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final j(Lt3/k$a;Lt3/k;)Lcom/facebook/common/internal/ImmutableMap;
    .locals 10

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$1"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lt3/k$a;->l()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Map;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {v1}, Lkotlin/collections/p0;->e(I)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Ljava/lang/Iterable;

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-eqz v1, :cond_0

    .line 43
    .line 44
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Ljava/util/Map$Entry;

    .line 49
    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    move-object v4, v1

    .line 59
    check-cast v4, Lg2/e;

    .line 60
    .line 61
    new-instance v1, Lr3/i;

    .line 62
    .line 63
    invoke-static {p1}, Lt3/k;->h(Lt3/k;)Lb4/d0;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-static {p1}, Lt3/k;->g(Lt3/k;)I

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-virtual {v3, v5}, Lb4/d0;->i(I)Ln2/g;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    const-string v3, "getPooledByteBufferFactory(...)"

    .line 76
    .line 77
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lt3/k;->h(Lt3/k;)Lb4/d0;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v3}, Lb4/d0;->j()Ln2/j;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    const-string v3, "getPooledByteStreams(...)"

    .line 89
    .line 90
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Lt3/k;->c(Lt3/k;)Lt3/o;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-interface {v3}, Lt3/o;->c()Ljava/util/concurrent/Executor;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    const-string v3, "forLocalStorageRead(...)"

    .line 102
    .line 103
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {p1}, Lt3/k;->c(Lt3/k;)Lt3/o;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-interface {v3}, Lt3/o;->e()Ljava/util/concurrent/Executor;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    const-string v3, "forLocalStorageWrite(...)"

    .line 115
    .line 116
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-static {p1}, Lt3/k;->e(Lt3/k;)Lr3/s;

    .line 120
    .line 121
    .line 122
    move-result-object v9

    .line 123
    move-object v3, v1

    .line 124
    invoke-direct/range {v3 .. v9}, Lr3/i;-><init>(Lg2/e;Ln2/g;Ln2/j;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lr3/s;)V

    .line 125
    .line 126
    .line 127
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_0
    invoke-static {v0}, Lcom/facebook/common/internal/ImmutableMap;->b(Ljava/util/Map;)Lcom/facebook/common/internal/ImmutableMap;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    return-object p0
.end method

.method private static final k(Lt3/k;Lt3/k$a;)Ljava/util/Map;
    .locals 4

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$1"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lt3/k;->b(Lt3/k;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-static {v1}, Lkotlin/collections/p0;->e(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Iterable;

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_1

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Ljava/util/Map$Entry;

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lg2/b;

    .line 61
    .line 62
    invoke-static {p0}, Lt3/k;->d(Lt3/k;)Lt3/p;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v3, v1}, Lt3/p;->a(Lg2/b;)Lg2/e;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :cond_1
    return-object v0
.end method

.method private static final o(Lt3/k$a;Lt3/k;)Lr3/i;
    .locals 8

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$1"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lr3/i;

    .line 12
    .line 13
    invoke-virtual {p0}, Lt3/k$a;->m()Lg2/e;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {p1}, Lt3/k;->h(Lt3/k;)Lb4/d0;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p1}, Lt3/k;->g(Lt3/k;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0, v1}, Lb4/d0;->i(I)Ln2/g;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string p0, "getPooledByteBufferFactory(...)"

    .line 30
    .line 31
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lt3/k;->h(Lt3/k;)Lb4/d0;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lb4/d0;->j()Ln2/j;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const-string p0, "getPooledByteStreams(...)"

    .line 43
    .line 44
    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lt3/k;->c(Lt3/k;)Lt3/o;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-interface {p0}, Lt3/o;->c()Ljava/util/concurrent/Executor;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const-string p0, "forLocalStorageRead(...)"

    .line 56
    .line 57
    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lt3/k;->c(Lt3/k;)Lt3/o;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-interface {p0}, Lt3/o;->e()Ljava/util/concurrent/Executor;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const-string p0, "forLocalStorageWrite(...)"

    .line 69
    .line 70
    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lt3/k;->e(Lt3/k;)Lr3/s;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    move-object v1, v0

    .line 78
    invoke-direct/range {v1 .. v7}, Lr3/i;-><init>(Lg2/e;Ln2/g;Ln2/j;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lr3/s;)V

    .line 79
    .line 80
    .line 81
    return-object v0
.end method

.method private static final p(Lt3/k;)Lg2/e;
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lt3/k;->d(Lt3/k;)Lt3/p;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p0}, Lt3/k;->f(Lt3/k;)Lg2/b;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {v0, p0}, Lt3/p;->a(Lg2/b;)Lg2/e;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private static final q(Lt3/k$a;Lt3/k;)Lr3/i;
    .locals 8

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$1"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lr3/i;

    .line 12
    .line 13
    invoke-virtual {p0}, Lt3/k$a;->n()Lg2/e;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {p1}, Lt3/k;->h(Lt3/k;)Lb4/d0;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-static {p1}, Lt3/k;->g(Lt3/k;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0, v1}, Lb4/d0;->i(I)Ln2/g;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    const-string p0, "getPooledByteBufferFactory(...)"

    .line 30
    .line 31
    invoke-static {v3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lt3/k;->h(Lt3/k;)Lb4/d0;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-virtual {p0}, Lb4/d0;->j()Ln2/j;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const-string p0, "getPooledByteStreams(...)"

    .line 43
    .line 44
    invoke-static {v4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Lt3/k;->c(Lt3/k;)Lt3/o;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-interface {p0}, Lt3/o;->c()Ljava/util/concurrent/Executor;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    const-string p0, "forLocalStorageRead(...)"

    .line 56
    .line 57
    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lt3/k;->c(Lt3/k;)Lt3/o;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    invoke-interface {p0}, Lt3/o;->e()Ljava/util/concurrent/Executor;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    const-string p0, "forLocalStorageWrite(...)"

    .line 69
    .line 70
    invoke-static {v6, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1}, Lt3/k;->e(Lt3/k;)Lr3/s;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    move-object v1, v0

    .line 78
    invoke-direct/range {v1 .. v7}, Lr3/i;-><init>(Lg2/e;Ln2/g;Ln2/j;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lr3/s;)V

    .line 79
    .line 80
    .line 81
    return-object v0
.end method

.method private static final r(Lt3/k;)Lg2/e;
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lt3/k;->d(Lt3/k;)Lt3/p;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p0}, Lt3/k;->i(Lt3/k;)Lg2/b;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {v0, p0}, Lt3/p;->a(Lg2/b;)Lg2/e;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method


# virtual methods
.method public a()Lr3/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lt3/k$a;->d:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lr3/i;

    .line 8
    .line 9
    return-object v0
.end method

.method public b()Lr3/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lt3/k$a;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lr3/i;

    .line 8
    .line 9
    return-object v0
.end method

.method public c()Lcom/facebook/common/internal/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/common/internal/ImmutableMap<",
            "Ljava/lang/String;",
            "Lr3/i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt3/k$a;->f:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getValue(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/facebook/common/internal/ImmutableMap;

    .line 13
    .line 14
    return-object v0
.end method

.method public l()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lg2/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lt3/k$a;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/Map;

    .line 8
    .line 9
    return-object v0
.end method

.method public m()Lg2/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lt3/k$a;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lg2/e;

    .line 8
    .line 9
    return-object v0
.end method

.method public n()Lg2/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lt3/k$a;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lg2/e;

    .line 8
    .line 9
    return-object v0
.end method
