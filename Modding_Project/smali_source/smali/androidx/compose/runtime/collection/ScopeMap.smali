.class public final Landroidx/compose/runtime/collection/ScopeMap;
.super Ljava/lang/Object;
.source "ScopeMap.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Key:",
        "Ljava/lang/Object;",
        "Scope:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nScopeMap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ScopeMap.kt\nandroidx/compose/runtime/collection/ScopeMap\n+ 2 ScatterMap.kt\nandroidx/collection/MutableScatterMap\n+ 3 ScatterSet.kt\nandroidx/collection/ScatterSet\n+ 4 ScatterMap.kt\nandroidx/collection/ScatterMapKt\n+ 5 ScatterMap.kt\nandroidx/collection/ScatterMap\n+ 6 ScatterSet.kt\nandroidx/collection/MutableScatterSet\n*L\n1#1,193:1\n67#1,6:234\n75#1,4:265\n694#2,15:194\n842#2:269\n844#2:283\n845#2,3:311\n848#2:320\n842#2:321\n844#2:335\n845#2,3:363\n848#2:372\n842#2:373\n844#2,4:387\n848#2:397\n231#3,3:209\n200#3,7:212\n211#3,3:220\n214#3,9:224\n234#3:233\n231#3,3:240\n200#3,7:243\n211#3,3:251\n214#3,9:255\n234#3:264\n200#3,7:286\n211#3,3:294\n214#3,2:298\n217#3,6:304\n200#3,7:338\n211#3,3:346\n214#3,2:350\n217#3,6:356\n1399#4:219\n1270#4:223\n1399#4:250\n1270#4:254\n1399#4:276\n1270#4:280\n1399#4:293\n1270#4:297\n1399#4:328\n1270#4:332\n1399#4:345\n1270#4:349\n1399#4:380\n1270#4:384\n1399#4:408\n1270#4:412\n329#5,6:270\n339#5,3:277\n342#5,2:281\n345#5,6:314\n329#5,6:322\n339#5,3:329\n342#5,2:333\n345#5,6:366\n329#5,6:374\n339#5,3:381\n342#5,2:385\n345#5,6:391\n357#5,4:398\n329#5,6:402\n339#5,3:409\n342#5,9:413\n361#5:422\n809#6,2:284\n812#6,4:300\n816#6:310\n809#6,2:336\n812#6,4:352\n816#6:362\n*S KotlinDebug\n*F\n+ 1 ScopeMap.kt\nandroidx/compose/runtime/collection/ScopeMap\n*L\n81#1:234,6\n81#1:265,4\n36#1:194,15\n123#1:269\n123#1:283\n123#1:311,3\n123#1:320\n139#1:321\n139#1:335\n139#1:363,3\n139#1:372\n159#1:373\n159#1:387,4\n159#1:397\n72#1:209,3\n72#1:212,7\n72#1:220,3\n72#1:224,9\n72#1:233\n81#1:240,3\n81#1:243,7\n81#1:251,3\n81#1:255,9\n81#1:264\n127#1:286,7\n127#1:294,3\n127#1:298,2\n127#1:304,6\n144#1:338,7\n144#1:346,3\n144#1:350,2\n144#1:356,6\n72#1:219\n72#1:223\n81#1:250\n81#1:254\n123#1:276\n123#1:280\n127#1:293\n127#1:297\n139#1:328\n139#1:332\n144#1:345\n144#1:349\n159#1:380\n159#1:384\n179#1:408\n179#1:412\n123#1:270,6\n123#1:277,3\n123#1:281,2\n123#1:314,6\n139#1:322,6\n139#1:329,3\n139#1:333,2\n139#1:366,6\n159#1:374,6\n159#1:381,3\n159#1:385,2\n159#1:391,6\n179#1:398,4\n179#1:402,6\n179#1:409,3\n179#1:413,9\n179#1:422\n127#1:284,2\n127#1:300,4\n127#1:310\n144#1:336,2\n144#1:352,4\n144#1:362\n*E\n"
    }
.end annotation


# instance fields
.field private final map:Landroidx/collection/MutableScatterMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private synthetic constructor <init>(Landroidx/collection/MutableScatterMap;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    .line 5
    .line 6
    return-void
.end method

.method public static final add-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TKey;TScope;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->findInsertIndex(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-gez v0, :cond_0

    .line 8
    .line 9
    move v3, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v3, v1

    .line 12
    :goto_0
    const/4 v4, 0x0

    .line 13
    if-eqz v3, :cond_1

    .line 14
    .line 15
    move-object v5, v4

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    iget-object v5, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 18
    .line 19
    aget-object v5, v5, v0

    .line 20
    .line 21
    :goto_1
    if-nez v5, :cond_2

    .line 22
    .line 23
    goto :goto_3

    .line 24
    :cond_2
    instance-of v6, v5, Landroidx/collection/MutableScatterSet;

    .line 25
    .line 26
    if-eqz v6, :cond_3

    .line 27
    .line 28
    const-string v1, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>"

    .line 29
    .line 30
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    move-object v1, v5

    .line 34
    check-cast v1, Landroidx/collection/MutableScatterSet;

    .line 35
    .line 36
    invoke-virtual {v1, p2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_2

    .line 40
    :cond_3
    if-eq v5, p2, :cond_4

    .line 41
    .line 42
    new-instance v6, Landroidx/collection/MutableScatterSet;

    .line 43
    .line 44
    invoke-direct {v6, v1, v2, v4}, Landroidx/collection/MutableScatterSet;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    .line 46
    .line 47
    const-string v1, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap"

    .line 48
    .line 49
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6, v5}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {v6, p2}, Landroidx/collection/MutableScatterSet;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-object p2, v6

    .line 59
    goto :goto_3

    .line 60
    :cond_4
    :goto_2
    move-object p2, v5

    .line 61
    :goto_3
    if-eqz v3, :cond_5

    .line 62
    .line 63
    not-int v0, v0

    .line 64
    iget-object v1, p0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 65
    .line 66
    aput-object p1, v1, v0

    .line 67
    .line 68
    iget-object p0, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 69
    .line 70
    aput-object p2, p0, v0

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_5
    iget-object p0, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 74
    .line 75
    aput-object p2, p0, v0

    .line 76
    .line 77
    :goto_4
    return-void
.end method

.method public static final anyScopeOf-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Z
    .locals 13
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TKey;",
            "Lkotlin/jvm/functions/Function1<",
            "-TScope;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    if-eqz p0, :cond_4

    .line 7
    .line 8
    instance-of v0, p0, Landroidx/collection/MutableScatterSet;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_3

    .line 12
    .line 13
    check-cast p0, Landroidx/collection/MutableScatterSet;

    .line 14
    .line 15
    iget-object v0, p0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 16
    .line 17
    iget-object p0, p0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 18
    .line 19
    array-length v2, p0

    .line 20
    add-int/lit8 v2, v2, -0x2

    .line 21
    .line 22
    if-ltz v2, :cond_4

    .line 23
    .line 24
    move v3, p1

    .line 25
    :goto_0
    aget-wide v4, p0, v3

    .line 26
    .line 27
    not-long v6, v4

    .line 28
    const/4 v8, 0x7

    .line 29
    shl-long/2addr v6, v8

    .line 30
    and-long/2addr v6, v4

    .line 31
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    and-long/2addr v6, v8

    .line 37
    cmp-long v6, v6, v8

    .line 38
    .line 39
    if-eqz v6, :cond_2

    .line 40
    .line 41
    sub-int v6, v3, v2

    .line 42
    .line 43
    not-int v6, v6

    .line 44
    ushr-int/lit8 v6, v6, 0x1f

    .line 45
    .line 46
    const/16 v7, 0x8

    .line 47
    .line 48
    rsub-int/lit8 v6, v6, 0x8

    .line 49
    .line 50
    move v8, p1

    .line 51
    :goto_1
    if-ge v8, v6, :cond_1

    .line 52
    .line 53
    const-wide/16 v9, 0xff

    .line 54
    .line 55
    and-long/2addr v9, v4

    .line 56
    const-wide/16 v11, 0x80

    .line 57
    .line 58
    cmp-long v9, v9, v11

    .line 59
    .line 60
    if-gez v9, :cond_0

    .line 61
    .line 62
    shl-int/lit8 v9, v3, 0x3

    .line 63
    .line 64
    add-int/2addr v9, v8

    .line 65
    aget-object v9, v0, v9

    .line 66
    .line 67
    invoke-interface {p2, v9}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    check-cast v9, Ljava/lang/Boolean;

    .line 72
    .line 73
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_0

    .line 78
    .line 79
    return v1

    .line 80
    :cond_0
    shr-long/2addr v4, v7

    .line 81
    add-int/lit8 v8, v8, 0x1

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    if-ne v6, v7, :cond_4

    .line 85
    .line 86
    :cond_2
    if-eq v3, v2, :cond_4

    .line 87
    .line 88
    add-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_3
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    check-cast p0, Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    if-eqz p0, :cond_4

    .line 102
    .line 103
    return v1

    .line 104
    :cond_4
    return p1
.end method

.method public static final asMap-impl(Landroidx/collection/MutableScatterMap;)Ljava/util/Map;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "TKey;",
            "Ljava/util/Set<",
            "TScope;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 7
    .line 8
    iget-object v2, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 11
    .line 12
    array-length v3, p0

    .line 13
    add-int/lit8 v3, v3, -0x2

    .line 14
    .line 15
    if-ltz v3, :cond_4

    .line 16
    .line 17
    const/4 v4, 0x0

    .line 18
    move v5, v4

    .line 19
    :goto_0
    aget-wide v6, p0, v5

    .line 20
    .line 21
    not-long v8, v6

    .line 22
    const/4 v10, 0x7

    .line 23
    shl-long/2addr v8, v10

    .line 24
    and-long/2addr v8, v6

    .line 25
    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    and-long/2addr v8, v10

    .line 31
    cmp-long v8, v8, v10

    .line 32
    .line 33
    if-eqz v8, :cond_3

    .line 34
    .line 35
    sub-int v8, v5, v3

    .line 36
    .line 37
    not-int v8, v8

    .line 38
    ushr-int/lit8 v8, v8, 0x1f

    .line 39
    .line 40
    const/16 v9, 0x8

    .line 41
    .line 42
    rsub-int/lit8 v8, v8, 0x8

    .line 43
    .line 44
    move v10, v4

    .line 45
    :goto_1
    if-ge v10, v8, :cond_2

    .line 46
    .line 47
    const-wide/16 v11, 0xff

    .line 48
    .line 49
    and-long/2addr v11, v6

    .line 50
    const-wide/16 v13, 0x80

    .line 51
    .line 52
    cmp-long v11, v11, v13

    .line 53
    .line 54
    if-gez v11, :cond_1

    .line 55
    .line 56
    shl-int/lit8 v11, v5, 0x3

    .line 57
    .line 58
    add-int/2addr v11, v10

    .line 59
    aget-object v12, v1, v11

    .line 60
    .line 61
    aget-object v11, v2, v11

    .line 62
    .line 63
    const-string v13, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.ScopeMap"

    .line 64
    .line 65
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    instance-of v13, v11, Landroidx/collection/MutableScatterSet;

    .line 69
    .line 70
    if-eqz v13, :cond_0

    .line 71
    .line 72
    const-string v13, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>"

    .line 73
    .line 74
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    check-cast v11, Landroidx/collection/MutableScatterSet;

    .line 78
    .line 79
    invoke-virtual {v11}, Landroidx/collection/ScatterSet;->asSet()Ljava/util/Set;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    goto :goto_2

    .line 84
    :cond_0
    const-string v13, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap"

    .line 85
    .line 86
    invoke-static {v11, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    filled-new-array {v11}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    invoke-static {v11}, Lkotlin/collections/y0;->h([Ljava/lang/Object;)Ljava/util/Set;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    :goto_2
    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    :cond_1
    shr-long/2addr v6, v9

    .line 101
    add-int/lit8 v10, v10, 0x1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    if-ne v8, v9, :cond_4

    .line 105
    .line 106
    :cond_3
    if-eq v5, v3, :cond_4

    .line 107
    .line 108
    add-int/lit8 v5, v5, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    return-object v0
.end method

.method public static final synthetic box-impl(Landroidx/collection/MutableScatterMap;)Landroidx/compose/runtime/collection/ScopeMap;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/collection/ScopeMap;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/runtime/collection/ScopeMap;-><init>(Landroidx/collection/MutableScatterMap;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final clear-impl(Landroidx/collection/MutableScatterMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/collection/MutableScatterMap;->clear()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static constructor-impl(Landroidx/collection/MutableScatterMap;)Landroidx/collection/MutableScatterMap;
    .locals 0
    .param p0    # Landroidx/collection/MutableScatterMap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Key:",
            "Ljava/lang/Object;",
            "Scope:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    return-object p0
.end method

.method public static synthetic constructor-impl$default(Landroidx/collection/MutableScatterMap;ILkotlin/jvm/internal/DefaultConstructorMarker;)Landroidx/collection/MutableScatterMap;
    .locals 0

    .line 1
    and-int/lit8 p1, p1, 0x1

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {}, Landroidx/collection/ScatterMapKt;->mutableScatterMapOf()Landroidx/collection/MutableScatterMap;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    :cond_0
    invoke-static {p0}, Landroidx/compose/runtime/collection/ScopeMap;->constructor-impl(Landroidx/collection/MutableScatterMap;)Landroidx/collection/MutableScatterMap;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static final contains-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TKey;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->containsKey(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static equals-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/compose/runtime/collection/ScopeMap;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroidx/compose/runtime/collection/ScopeMap;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/runtime/collection/ScopeMap;->unbox-impl()Landroidx/collection/MutableScatterMap;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-nez p0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    const/4 p0, 0x1

    .line 21
    return p0
.end method

.method public static final equals-impl0(Landroidx/collection/MutableScatterMap;Landroidx/collection/MutableScatterMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final forEachScopeOf-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .locals 12
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TKey;",
            "Lkotlin/jvm/functions/Function1<",
            "-TScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_4

    .line 6
    .line 7
    instance-of p1, p0, Landroidx/collection/MutableScatterSet;

    .line 8
    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    check-cast p0, Landroidx/collection/MutableScatterSet;

    .line 12
    .line 13
    iget-object p1, p0, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 14
    .line 15
    iget-object p0, p0, Landroidx/collection/ScatterSet;->metadata:[J

    .line 16
    .line 17
    array-length v0, p0

    .line 18
    add-int/lit8 v0, v0, -0x2

    .line 19
    .line 20
    if-ltz v0, :cond_4

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    move v2, v1

    .line 24
    :goto_0
    aget-wide v3, p0, v2

    .line 25
    .line 26
    not-long v5, v3

    .line 27
    const/4 v7, 0x7

    .line 28
    shl-long/2addr v5, v7

    .line 29
    and-long/2addr v5, v3

    .line 30
    const-wide v7, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    and-long/2addr v5, v7

    .line 36
    cmp-long v5, v5, v7

    .line 37
    .line 38
    if-eqz v5, :cond_2

    .line 39
    .line 40
    sub-int v5, v2, v0

    .line 41
    .line 42
    not-int v5, v5

    .line 43
    ushr-int/lit8 v5, v5, 0x1f

    .line 44
    .line 45
    const/16 v6, 0x8

    .line 46
    .line 47
    rsub-int/lit8 v5, v5, 0x8

    .line 48
    .line 49
    move v7, v1

    .line 50
    :goto_1
    if-ge v7, v5, :cond_1

    .line 51
    .line 52
    const-wide/16 v8, 0xff

    .line 53
    .line 54
    and-long/2addr v8, v3

    .line 55
    const-wide/16 v10, 0x80

    .line 56
    .line 57
    cmp-long v8, v8, v10

    .line 58
    .line 59
    if-gez v8, :cond_0

    .line 60
    .line 61
    shl-int/lit8 v8, v2, 0x3

    .line 62
    .line 63
    add-int/2addr v8, v7

    .line 64
    aget-object v8, p1, v8

    .line 65
    .line 66
    invoke-interface {p2, v8}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_0
    shr-long/2addr v3, v6

    .line 70
    add-int/lit8 v7, v7, 0x1

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    if-ne v5, v6, :cond_4

    .line 74
    .line 75
    :cond_2
    if-eq v2, v0, :cond_4

    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    :cond_4
    return-void
.end method

.method public static final getSize-impl(Landroidx/collection/MutableScatterMap;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/collection/ScatterMap;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static hashCode-impl(Landroidx/collection/MutableScatterMap;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/collection/ScatterMap;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final remove-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TKey;TScope;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/collection/ScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    instance-of v2, v0, Landroidx/collection/MutableScatterSet;

    .line 10
    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    check-cast v0, Landroidx/collection/MutableScatterSet;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Landroidx/collection/ScatterSet;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_1
    return p2

    .line 31
    :cond_2
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-eqz p2, :cond_3

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    :cond_3
    return v1
.end method

.method public static final removeIf-impl(Landroidx/collection/MutableScatterMap;Lkotlin/jvm/functions/Function2;)V
    .locals 32
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-TKey;-TScope;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    add-int/lit8 v3, v3, -0x2

    .line 9
    .line 10
    if-ltz v3, :cond_b

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    :goto_0
    aget-wide v6, v2, v5

    .line 14
    .line 15
    not-long v8, v6

    .line 16
    const/4 v10, 0x7

    .line 17
    shl-long/2addr v8, v10

    .line 18
    and-long/2addr v8, v6

    .line 19
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v8, v11

    .line 25
    cmp-long v8, v8, v11

    .line 26
    .line 27
    if-eqz v8, :cond_a

    .line 28
    .line 29
    sub-int v8, v5, v3

    .line 30
    .line 31
    not-int v8, v8

    .line 32
    ushr-int/lit8 v8, v8, 0x1f

    .line 33
    .line 34
    const/16 v9, 0x8

    .line 35
    .line 36
    rsub-int/lit8 v8, v8, 0x8

    .line 37
    .line 38
    const/4 v13, 0x0

    .line 39
    :goto_1
    if-ge v13, v8, :cond_9

    .line 40
    .line 41
    const-wide/16 v14, 0xff

    .line 42
    .line 43
    and-long v16, v6, v14

    .line 44
    .line 45
    const-wide/16 v18, 0x80

    .line 46
    .line 47
    cmp-long v16, v16, v18

    .line 48
    .line 49
    if-gez v16, :cond_8

    .line 50
    .line 51
    shl-int/lit8 v16, v5, 0x3

    .line 52
    .line 53
    add-int v4, v16, v13

    .line 54
    .line 55
    iget-object v14, v0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 56
    .line 57
    aget-object v14, v14, v4

    .line 58
    .line 59
    iget-object v15, v0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 60
    .line 61
    aget-object v15, v15, v4

    .line 62
    .line 63
    const-string v9, "null cannot be cast to non-null type Key of androidx.compose.runtime.collection.ScopeMap"

    .line 64
    .line 65
    invoke-static {v14, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    instance-of v9, v15, Landroidx/collection/MutableScatterSet;

    .line 69
    .line 70
    if-eqz v9, :cond_6

    .line 71
    .line 72
    const-string v9, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>"

    .line 73
    .line 74
    invoke-static {v15, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    check-cast v15, Landroidx/collection/MutableScatterSet;

    .line 78
    .line 79
    iget-object v9, v15, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 80
    .line 81
    iget-object v11, v15, Landroidx/collection/ScatterSet;->metadata:[J

    .line 82
    .line 83
    array-length v12, v11

    .line 84
    add-int/lit8 v12, v12, -0x2

    .line 85
    .line 86
    move-object/from16 v25, v2

    .line 87
    .line 88
    move/from16 v26, v3

    .line 89
    .line 90
    if-ltz v12, :cond_4

    .line 91
    .line 92
    const/4 v10, 0x0

    .line 93
    :goto_2
    aget-wide v2, v11, v10

    .line 94
    .line 95
    move/from16 v27, v5

    .line 96
    .line 97
    move-wide/from16 v28, v6

    .line 98
    .line 99
    not-long v5, v2

    .line 100
    const/4 v7, 0x7

    .line 101
    shl-long/2addr v5, v7

    .line 102
    and-long/2addr v5, v2

    .line 103
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    and-long v5, v5, v22

    .line 109
    .line 110
    cmp-long v5, v5, v22

    .line 111
    .line 112
    if-eqz v5, :cond_3

    .line 113
    .line 114
    sub-int v5, v10, v12

    .line 115
    .line 116
    not-int v5, v5

    .line 117
    ushr-int/lit8 v5, v5, 0x1f

    .line 118
    .line 119
    const/16 v6, 0x8

    .line 120
    .line 121
    rsub-int/lit8 v5, v5, 0x8

    .line 122
    .line 123
    const/4 v6, 0x0

    .line 124
    :goto_3
    if-ge v6, v5, :cond_2

    .line 125
    .line 126
    const-wide/16 v20, 0xff

    .line 127
    .line 128
    and-long v30, v2, v20

    .line 129
    .line 130
    cmp-long v24, v30, v18

    .line 131
    .line 132
    if-gez v24, :cond_1

    .line 133
    .line 134
    shl-int/lit8 v24, v10, 0x3

    .line 135
    .line 136
    add-int v7, v24, v6

    .line 137
    .line 138
    move-object/from16 v24, v11

    .line 139
    .line 140
    aget-object v11, v9, v7

    .line 141
    .line 142
    invoke-interface {v1, v14, v11}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v11

    .line 146
    check-cast v11, Ljava/lang/Boolean;

    .line 147
    .line 148
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 149
    .line 150
    .line 151
    move-result v11

    .line 152
    if-eqz v11, :cond_0

    .line 153
    .line 154
    invoke-virtual {v15, v7}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    .line 155
    .line 156
    .line 157
    :cond_0
    :goto_4
    const/16 v7, 0x8

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_1
    move-object/from16 v24, v11

    .line 161
    .line 162
    goto :goto_4

    .line 163
    :goto_5
    shr-long/2addr v2, v7

    .line 164
    add-int/lit8 v6, v6, 0x1

    .line 165
    .line 166
    move-object/from16 v11, v24

    .line 167
    .line 168
    const/4 v7, 0x7

    .line 169
    goto :goto_3

    .line 170
    :cond_2
    move-object/from16 v24, v11

    .line 171
    .line 172
    const/16 v7, 0x8

    .line 173
    .line 174
    const-wide/16 v20, 0xff

    .line 175
    .line 176
    if-ne v5, v7, :cond_5

    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_3
    move-object/from16 v24, v11

    .line 180
    .line 181
    const-wide/16 v20, 0xff

    .line 182
    .line 183
    :goto_6
    if-eq v10, v12, :cond_5

    .line 184
    .line 185
    add-int/lit8 v10, v10, 0x1

    .line 186
    .line 187
    move-object/from16 v11, v24

    .line 188
    .line 189
    move/from16 v5, v27

    .line 190
    .line 191
    move-wide/from16 v6, v28

    .line 192
    .line 193
    goto :goto_2

    .line 194
    :cond_4
    move/from16 v27, v5

    .line 195
    .line 196
    move-wide/from16 v28, v6

    .line 197
    .line 198
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 199
    .line 200
    .line 201
    .line 202
    .line 203
    :cond_5
    invoke-virtual {v15}, Landroidx/collection/ScatterSet;->isEmpty()Z

    .line 204
    .line 205
    .line 206
    move-result v2

    .line 207
    goto :goto_7

    .line 208
    :cond_6
    move-object/from16 v25, v2

    .line 209
    .line 210
    move/from16 v26, v3

    .line 211
    .line 212
    move/from16 v27, v5

    .line 213
    .line 214
    move-wide/from16 v28, v6

    .line 215
    .line 216
    move-wide/from16 v22, v11

    .line 217
    .line 218
    const-string v2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap"

    .line 219
    .line 220
    invoke-static {v15, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    invoke-interface {v1, v14, v15}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    check-cast v2, Ljava/lang/Boolean;

    .line 228
    .line 229
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    :goto_7
    if-eqz v2, :cond_7

    .line 234
    .line 235
    invoke-virtual {v0, v4}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    :cond_7
    const/16 v2, 0x8

    .line 239
    .line 240
    goto :goto_8

    .line 241
    :cond_8
    move-object/from16 v25, v2

    .line 242
    .line 243
    move/from16 v26, v3

    .line 244
    .line 245
    move/from16 v27, v5

    .line 246
    .line 247
    move-wide/from16 v28, v6

    .line 248
    .line 249
    move-wide/from16 v22, v11

    .line 250
    .line 251
    move v2, v9

    .line 252
    :goto_8
    shr-long v6, v28, v2

    .line 253
    .line 254
    add-int/lit8 v13, v13, 0x1

    .line 255
    .line 256
    move v9, v2

    .line 257
    move-wide/from16 v11, v22

    .line 258
    .line 259
    move-object/from16 v2, v25

    .line 260
    .line 261
    move/from16 v3, v26

    .line 262
    .line 263
    move/from16 v5, v27

    .line 264
    .line 265
    const/4 v10, 0x7

    .line 266
    goto/16 :goto_1

    .line 267
    .line 268
    :cond_9
    move-object/from16 v25, v2

    .line 269
    .line 270
    move/from16 v26, v3

    .line 271
    .line 272
    move/from16 v27, v5

    .line 273
    .line 274
    move v2, v9

    .line 275
    if-ne v8, v2, :cond_b

    .line 276
    .line 277
    move/from16 v3, v26

    .line 278
    .line 279
    move/from16 v4, v27

    .line 280
    .line 281
    goto :goto_9

    .line 282
    :cond_a
    move-object/from16 v25, v2

    .line 283
    .line 284
    move v4, v5

    .line 285
    :goto_9
    if-eq v4, v3, :cond_b

    .line 286
    .line 287
    add-int/lit8 v5, v4, 0x1

    .line 288
    .line 289
    move-object/from16 v2, v25

    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :cond_b
    return-void
.end method

.method public static final removeScope-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)V
    .locals 13
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TScope;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    add-int/lit8 v1, v1, -0x2

    .line 5
    .line 6
    if-ltz v1, :cond_5

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    :goto_0
    aget-wide v4, v0, v3

    .line 11
    .line 12
    not-long v6, v4

    .line 13
    const/4 v8, 0x7

    .line 14
    shl-long/2addr v6, v8

    .line 15
    and-long/2addr v6, v4

    .line 16
    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 17
    .line 18
    .line 19
    .line 20
    .line 21
    and-long/2addr v6, v8

    .line 22
    cmp-long v6, v6, v8

    .line 23
    .line 24
    if-eqz v6, :cond_4

    .line 25
    .line 26
    sub-int v6, v3, v1

    .line 27
    .line 28
    not-int v6, v6

    .line 29
    ushr-int/lit8 v6, v6, 0x1f

    .line 30
    .line 31
    const/16 v7, 0x8

    .line 32
    .line 33
    rsub-int/lit8 v6, v6, 0x8

    .line 34
    .line 35
    move v8, v2

    .line 36
    :goto_1
    if-ge v8, v6, :cond_3

    .line 37
    .line 38
    const-wide/16 v9, 0xff

    .line 39
    .line 40
    and-long/2addr v9, v4

    .line 41
    const-wide/16 v11, 0x80

    .line 42
    .line 43
    cmp-long v9, v9, v11

    .line 44
    .line 45
    if-gez v9, :cond_2

    .line 46
    .line 47
    shl-int/lit8 v9, v3, 0x3

    .line 48
    .line 49
    add-int/2addr v9, v8

    .line 50
    iget-object v10, p0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 51
    .line 52
    aget-object v10, v10, v9

    .line 53
    .line 54
    iget-object v10, p0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 55
    .line 56
    aget-object v10, v10, v9

    .line 57
    .line 58
    instance-of v11, v10, Landroidx/collection/MutableScatterSet;

    .line 59
    .line 60
    if-eqz v11, :cond_0

    .line 61
    .line 62
    const-string v11, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>"

    .line 63
    .line 64
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    check-cast v10, Landroidx/collection/MutableScatterSet;

    .line 68
    .line 69
    invoke-virtual {v10, p1}, Landroidx/collection/MutableScatterSet;->remove(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {v10}, Landroidx/collection/ScatterSet;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v10

    .line 76
    goto :goto_2

    .line 77
    :cond_0
    if-ne v10, p1, :cond_1

    .line 78
    .line 79
    const/4 v10, 0x1

    .line 80
    goto :goto_2

    .line 81
    :cond_1
    move v10, v2

    .line 82
    :goto_2
    if-eqz v10, :cond_2

    .line 83
    .line 84
    invoke-virtual {p0, v9}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    :cond_2
    shr-long/2addr v4, v7

    .line 88
    add-int/lit8 v8, v8, 0x1

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_3
    if-ne v6, v7, :cond_5

    .line 92
    .line 93
    :cond_4
    if-eq v3, v1, :cond_5

    .line 94
    .line 95
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    return-void
.end method

.method public static final removeScopeIf-impl(Landroidx/collection/MutableScatterMap;Lkotlin/jvm/functions/Function1;)V
    .locals 30
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-TScope;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroidx/collection/ScatterMap;->metadata:[J

    .line 6
    .line 7
    array-length v3, v2

    .line 8
    add-int/lit8 v3, v3, -0x2

    .line 9
    .line 10
    if-ltz v3, :cond_b

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    :goto_0
    aget-wide v6, v2, v5

    .line 14
    .line 15
    not-long v8, v6

    .line 16
    const/4 v10, 0x7

    .line 17
    shl-long/2addr v8, v10

    .line 18
    and-long/2addr v8, v6

    .line 19
    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 20
    .line 21
    .line 22
    .line 23
    .line 24
    and-long/2addr v8, v11

    .line 25
    cmp-long v8, v8, v11

    .line 26
    .line 27
    if-eqz v8, :cond_a

    .line 28
    .line 29
    sub-int v8, v5, v3

    .line 30
    .line 31
    not-int v8, v8

    .line 32
    ushr-int/lit8 v8, v8, 0x1f

    .line 33
    .line 34
    const/16 v9, 0x8

    .line 35
    .line 36
    rsub-int/lit8 v8, v8, 0x8

    .line 37
    .line 38
    const/4 v13, 0x0

    .line 39
    :goto_1
    if-ge v13, v8, :cond_9

    .line 40
    .line 41
    const-wide/16 v14, 0xff

    .line 42
    .line 43
    and-long v16, v6, v14

    .line 44
    .line 45
    const-wide/16 v18, 0x80

    .line 46
    .line 47
    cmp-long v16, v16, v18

    .line 48
    .line 49
    if-gez v16, :cond_8

    .line 50
    .line 51
    shl-int/lit8 v16, v5, 0x3

    .line 52
    .line 53
    add-int v4, v16, v13

    .line 54
    .line 55
    iget-object v14, v0, Landroidx/collection/ScatterMap;->keys:[Ljava/lang/Object;

    .line 56
    .line 57
    aget-object v14, v14, v4

    .line 58
    .line 59
    iget-object v14, v0, Landroidx/collection/ScatterMap;->values:[Ljava/lang/Object;

    .line 60
    .line 61
    aget-object v14, v14, v4

    .line 62
    .line 63
    instance-of v15, v14, Landroidx/collection/MutableScatterSet;

    .line 64
    .line 65
    if-eqz v15, :cond_6

    .line 66
    .line 67
    const-string v15, "null cannot be cast to non-null type androidx.collection.MutableScatterSet<Scope of androidx.compose.runtime.collection.ScopeMap>"

    .line 68
    .line 69
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    check-cast v14, Landroidx/collection/MutableScatterSet;

    .line 73
    .line 74
    iget-object v15, v14, Landroidx/collection/ScatterSet;->elements:[Ljava/lang/Object;

    .line 75
    .line 76
    iget-object v9, v14, Landroidx/collection/ScatterSet;->metadata:[J

    .line 77
    .line 78
    array-length v11, v9

    .line 79
    add-int/lit8 v11, v11, -0x2

    .line 80
    .line 81
    move-object/from16 v24, v2

    .line 82
    .line 83
    move/from16 v25, v3

    .line 84
    .line 85
    if-ltz v11, :cond_4

    .line 86
    .line 87
    const/4 v12, 0x0

    .line 88
    :goto_2
    aget-wide v2, v9, v12

    .line 89
    .line 90
    move/from16 v26, v8

    .line 91
    .line 92
    move-object/from16 v27, v9

    .line 93
    .line 94
    not-long v8, v2

    .line 95
    shl-long/2addr v8, v10

    .line 96
    and-long/2addr v8, v2

    .line 97
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    and-long v8, v8, v22

    .line 103
    .line 104
    cmp-long v8, v8, v22

    .line 105
    .line 106
    if-eqz v8, :cond_3

    .line 107
    .line 108
    sub-int v8, v12, v11

    .line 109
    .line 110
    not-int v8, v8

    .line 111
    ushr-int/lit8 v8, v8, 0x1f

    .line 112
    .line 113
    const/16 v9, 0x8

    .line 114
    .line 115
    rsub-int/lit8 v8, v8, 0x8

    .line 116
    .line 117
    const/4 v9, 0x0

    .line 118
    :goto_3
    if-ge v9, v8, :cond_2

    .line 119
    .line 120
    const-wide/16 v20, 0xff

    .line 121
    .line 122
    and-long v28, v2, v20

    .line 123
    .line 124
    cmp-long v28, v28, v18

    .line 125
    .line 126
    if-gez v28, :cond_1

    .line 127
    .line 128
    shl-int/lit8 v28, v12, 0x3

    .line 129
    .line 130
    add-int v10, v28, v9

    .line 131
    .line 132
    move/from16 v28, v5

    .line 133
    .line 134
    aget-object v5, v15, v10

    .line 135
    .line 136
    invoke-interface {v1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    check-cast v5, Ljava/lang/Boolean;

    .line 141
    .line 142
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 143
    .line 144
    .line 145
    move-result v5

    .line 146
    if-eqz v5, :cond_0

    .line 147
    .line 148
    invoke-virtual {v14, v10}, Landroidx/collection/MutableScatterSet;->removeElementAt(I)V

    .line 149
    .line 150
    .line 151
    :cond_0
    :goto_4
    const/16 v5, 0x8

    .line 152
    .line 153
    goto :goto_5

    .line 154
    :cond_1
    move/from16 v28, v5

    .line 155
    .line 156
    goto :goto_4

    .line 157
    :goto_5
    shr-long/2addr v2, v5

    .line 158
    add-int/lit8 v9, v9, 0x1

    .line 159
    .line 160
    move/from16 v5, v28

    .line 161
    .line 162
    const/4 v10, 0x7

    .line 163
    goto :goto_3

    .line 164
    :cond_2
    move/from16 v28, v5

    .line 165
    .line 166
    const/16 v5, 0x8

    .line 167
    .line 168
    const-wide/16 v20, 0xff

    .line 169
    .line 170
    if-ne v8, v5, :cond_5

    .line 171
    .line 172
    goto :goto_6

    .line 173
    :cond_3
    move/from16 v28, v5

    .line 174
    .line 175
    const-wide/16 v20, 0xff

    .line 176
    .line 177
    :goto_6
    if-eq v12, v11, :cond_5

    .line 178
    .line 179
    add-int/lit8 v12, v12, 0x1

    .line 180
    .line 181
    move/from16 v8, v26

    .line 182
    .line 183
    move-object/from16 v9, v27

    .line 184
    .line 185
    move/from16 v5, v28

    .line 186
    .line 187
    const/4 v10, 0x7

    .line 188
    goto :goto_2

    .line 189
    :cond_4
    move/from16 v28, v5

    .line 190
    .line 191
    move/from16 v26, v8

    .line 192
    .line 193
    const-wide v22, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    :cond_5
    invoke-virtual {v14}, Landroidx/collection/ScatterSet;->isEmpty()Z

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    goto :goto_7

    .line 203
    :cond_6
    move-object/from16 v24, v2

    .line 204
    .line 205
    move/from16 v25, v3

    .line 206
    .line 207
    move/from16 v28, v5

    .line 208
    .line 209
    move/from16 v26, v8

    .line 210
    .line 211
    move-wide/from16 v22, v11

    .line 212
    .line 213
    const-string v2, "null cannot be cast to non-null type Scope of androidx.compose.runtime.collection.ScopeMap"

    .line 214
    .line 215
    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    invoke-interface {v1, v14}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    check-cast v2, Ljava/lang/Boolean;

    .line 223
    .line 224
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    :goto_7
    if-eqz v2, :cond_7

    .line 229
    .line 230
    invoke-virtual {v0, v4}, Landroidx/collection/MutableScatterMap;->removeValueAt(I)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    :cond_7
    const/16 v2, 0x8

    .line 234
    .line 235
    goto :goto_8

    .line 236
    :cond_8
    move-object/from16 v24, v2

    .line 237
    .line 238
    move/from16 v25, v3

    .line 239
    .line 240
    move/from16 v28, v5

    .line 241
    .line 242
    move/from16 v26, v8

    .line 243
    .line 244
    move-wide/from16 v22, v11

    .line 245
    .line 246
    move v2, v9

    .line 247
    :goto_8
    shr-long/2addr v6, v2

    .line 248
    add-int/lit8 v13, v13, 0x1

    .line 249
    .line 250
    move v9, v2

    .line 251
    move-wide/from16 v11, v22

    .line 252
    .line 253
    move-object/from16 v2, v24

    .line 254
    .line 255
    move/from16 v3, v25

    .line 256
    .line 257
    move/from16 v8, v26

    .line 258
    .line 259
    move/from16 v5, v28

    .line 260
    .line 261
    const/4 v10, 0x7

    .line 262
    goto/16 :goto_1

    .line 263
    .line 264
    :cond_9
    move-object/from16 v24, v2

    .line 265
    .line 266
    move/from16 v25, v3

    .line 267
    .line 268
    move/from16 v28, v5

    .line 269
    .line 270
    move v2, v9

    .line 271
    move v9, v8

    .line 272
    if-ne v9, v2, :cond_b

    .line 273
    .line 274
    move/from16 v3, v25

    .line 275
    .line 276
    move/from16 v4, v28

    .line 277
    .line 278
    goto :goto_9

    .line 279
    :cond_a
    move-object/from16 v24, v2

    .line 280
    .line 281
    move v4, v5

    .line 282
    :goto_9
    if-eq v4, v3, :cond_b

    .line 283
    .line 284
    add-int/lit8 v5, v4, 0x1

    .line 285
    .line 286
    move-object/from16 v2, v24

    .line 287
    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :cond_b
    return-void
.end method

.method public static final set-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;TKey;TScope;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static toString-impl(Landroidx/collection/MutableScatterMap;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ScopeMap(map="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 p0, 0x29

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/runtime/collection/ScopeMap;->equals-impl(Landroidx/collection/MutableScatterMap;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getMap()Landroidx/collection/MutableScatterMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/MutableScatterMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/collection/ScopeMap;->hashCode-impl(Landroidx/collection/MutableScatterMap;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/runtime/collection/ScopeMap;->toString-impl(Landroidx/collection/MutableScatterMap;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic unbox-impl()Landroidx/collection/MutableScatterMap;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/collection/ScopeMap;->map:Landroidx/collection/MutableScatterMap;

    .line 2
    .line 3
    return-object v0
.end method
