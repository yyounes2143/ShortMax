.class final synthetic Landroidx/room/RoomDatabaseKt__RoomDatabaseKt;
.super Ljava/lang/Object;
.source "RoomDatabase.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRoomDatabase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoomDatabase.kt\nandroidx/room/RoomDatabaseKt__RoomDatabaseKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,616:1\n1#2:617\n216#3,2:618\n*S KotlinDebug\n*F\n+ 1 RoomDatabase.kt\nandroidx/room/RoomDatabaseKt__RoomDatabaseKt\n*L\n585#1:618,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final useReaderConnection(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p0    # Landroidx/room/RoomDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/room/Transactor;",
            "-",
            "Lrs/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1;->label:I

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
    iput v1, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0

    .line 53
    :cond_2
    iget-object p0, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1;->L$1:Ljava/lang/Object;

    .line 54
    .line 55
    move-object p1, p0

    .line 56
    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 57
    .line 58
    iget-object p0, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1;->L$0:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p0, Landroidx/room/RoomDatabase;

    .line 61
    .line 62
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    iput-object p0, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1;->L$0:Ljava/lang/Object;

    .line 70
    .line 71
    iput-object p1, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1;->L$1:Ljava/lang/Object;

    .line 72
    .line 73
    iput v4, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1;->label:I

    .line 74
    .line 75
    const/4 p2, 0x0

    .line 76
    invoke-static {p0, p2, v0}, Landroidx/room/util/DBUtil;->getCoroutineContext(Landroidx/room/RoomDatabase;ZLrs/c;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p2

    .line 80
    if-ne p2, v1, :cond_4

    .line 81
    .line 82
    return-object v1

    .line 83
    :cond_4
    :goto_1
    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    .line 84
    .line 85
    sget-object v2, Landroidx/room/RoomExternalOperationElement;->INSTANCE:Landroidx/room/RoomExternalOperationElement;

    .line 86
    .line 87
    invoke-interface {p2, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    new-instance v2, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$2;

    .line 92
    .line 93
    const/4 v4, 0x0

    .line 94
    invoke-direct {v2, p0, p1, v4}, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$2;-><init>(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function2;Lrs/c;)V

    .line 95
    .line 96
    .line 97
    iput-object v4, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1;->L$0:Ljava/lang/Object;

    .line 98
    .line 99
    iput-object v4, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1;->L$1:Ljava/lang/Object;

    .line 100
    .line 101
    iput v3, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useReaderConnection$1;->label:I

    .line 102
    .line 103
    invoke-static {p2, v2, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    if-ne p2, v1, :cond_5

    .line 108
    .line 109
    return-object v1

    .line 110
    :cond_5
    :goto_2
    return-object p2
.end method

.method public static final useWriterConnection(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p0    # Landroidx/room/RoomDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/room/RoomDatabase;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/room/Transactor;",
            "-",
            "Lrs/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lrs/c<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1;->label:I

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
    iput v1, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget-object p0, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1;->L$0:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Landroidx/room/RoomDatabase;

    .line 44
    .line 45
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_2
    iget-object p0, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1;->L$1:Ljava/lang/Object;

    .line 58
    .line 59
    move-object p1, p0

    .line 60
    check-cast p1, Lkotlin/jvm/functions/Function2;

    .line 61
    .line 62
    iget-object p0, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1;->L$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Landroidx/room/RoomDatabase;

    .line 65
    .line 66
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iput-object p0, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1;->L$0:Ljava/lang/Object;

    .line 74
    .line 75
    iput-object p1, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1;->L$1:Ljava/lang/Object;

    .line 76
    .line 77
    iput v4, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1;->label:I

    .line 78
    .line 79
    const/4 p2, 0x0

    .line 80
    invoke-static {p0, p2, v0}, Landroidx/room/util/DBUtil;->getCoroutineContext(Landroidx/room/RoomDatabase;ZLrs/c;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p2

    .line 84
    if-ne p2, v1, :cond_4

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_4
    :goto_1
    check-cast p2, Lkotlin/coroutines/CoroutineContext;

    .line 88
    .line 89
    sget-object v2, Landroidx/room/RoomExternalOperationElement;->INSTANCE:Landroidx/room/RoomExternalOperationElement;

    .line 90
    .line 91
    invoke-interface {p2, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    new-instance v2, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$2;

    .line 96
    .line 97
    const/4 v4, 0x0

    .line 98
    invoke-direct {v2, p0, p1, v4}, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$2;-><init>(Landroidx/room/RoomDatabase;Lkotlin/jvm/functions/Function2;Lrs/c;)V

    .line 99
    .line 100
    .line 101
    iput-object p0, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1;->L$0:Ljava/lang/Object;

    .line 102
    .line 103
    iput-object v4, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1;->L$1:Ljava/lang/Object;

    .line 104
    .line 105
    iput v3, v0, Landroidx/room/RoomDatabaseKt__RoomDatabaseKt$useWriterConnection$1;->label:I

    .line 106
    .line 107
    invoke-static {p2, v2, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    if-ne p2, v1, :cond_5

    .line 112
    .line 113
    return-object v1

    .line 114
    :cond_5
    :goto_2
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getInvalidationTracker()Landroidx/room/InvalidationTracker;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    invoke-virtual {p0}, Landroidx/room/InvalidationTracker;->refreshAsync()V

    .line 119
    .line 120
    .line 121
    return-object p2
.end method

.method public static final validateAutoMigrations(Landroidx/room/RoomDatabase;Landroidx/room/DatabaseConfiguration;)V
    .locals 9
    .param p0    # Landroidx/room/RoomDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/room/DatabaseConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "configuration"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getRequiredAutoMigrationSpecClasses()Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p1, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    new-array v3, v2, [Z

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/4 v5, -0x1

    .line 37
    if-eqz v4, :cond_4

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lkotlin/reflect/KClass;

    .line 44
    .line 45
    iget-object v6, p1, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    .line 46
    .line 47
    check-cast v6, Ljava/util/Collection;

    .line 48
    .line 49
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    add-int/2addr v6, v5

    .line 54
    if-ltz v6, :cond_2

    .line 55
    .line 56
    :goto_1
    add-int/lit8 v7, v6, -0x1

    .line 57
    .line 58
    iget-object v8, p1, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    invoke-interface {v4, v8}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v8

    .line 68
    if-eqz v8, :cond_0

    .line 69
    .line 70
    const/4 v5, 0x1

    .line 71
    aput-boolean v5, v3, v6

    .line 72
    .line 73
    move v5, v6

    .line 74
    goto :goto_2

    .line 75
    :cond_0
    if-gez v7, :cond_1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_1
    move v6, v7

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    :goto_2
    if-ltz v5, :cond_3

    .line 81
    .line 82
    iget-object v6, p1, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    .line 83
    .line 84
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v5

    .line 88
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string p1, "A required auto migration spec ("

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-interface {v4}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string p1, ") is missing in the database configuration."

    .line 110
    .line 111
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p0

    .line 118
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 119
    .line 120
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p0

    .line 124
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    throw p1

    .line 128
    :cond_4
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->autoMigrationSpecs:Ljava/util/List;

    .line 129
    .line 130
    check-cast v1, Ljava/util/Collection;

    .line 131
    .line 132
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    add-int/2addr v1, v5

    .line 137
    if-ltz v1, :cond_7

    .line 138
    .line 139
    :goto_3
    add-int/lit8 v4, v1, -0x1

    .line 140
    .line 141
    if-ge v1, v2, :cond_6

    .line 142
    .line 143
    aget-boolean v1, v3, v1

    .line 144
    .line 145
    if-eqz v1, :cond_6

    .line 146
    .line 147
    if-gez v4, :cond_5

    .line 148
    .line 149
    goto :goto_4

    .line 150
    :cond_5
    move v1, v4

    .line 151
    goto :goto_3

    .line 152
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    const-string p1, "Unexpected auto migration specs found. Annotate AutoMigrationSpec implementation with @ProvidedAutoMigrationSpec annotation or remove this spec from the builder."

    .line 155
    .line 156
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    throw p0

    .line 160
    :cond_7
    :goto_4
    invoke-virtual {p0, v0}, Landroidx/room/RoomDatabase;->createAutoMigrations(Ljava/util/Map;)Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    :cond_8
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-eqz v0, :cond_9

    .line 173
    .line 174
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Landroidx/room/migration/Migration;

    .line 179
    .line 180
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 181
    .line 182
    iget v2, v0, Landroidx/room/migration/Migration;->startVersion:I

    .line 183
    .line 184
    iget v3, v0, Landroidx/room/migration/Migration;->endVersion:I

    .line 185
    .line 186
    invoke-virtual {v1, v2, v3}, Landroidx/room/RoomDatabase$MigrationContainer;->contains(II)Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-nez v1, :cond_8

    .line 191
    .line 192
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->migrationContainer:Landroidx/room/RoomDatabase$MigrationContainer;

    .line 193
    .line 194
    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase$MigrationContainer;->addMigration(Landroidx/room/migration/Migration;)V

    .line 195
    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_9
    return-void
.end method

.method public static final validateMigrationsNotRequired(Ljava/util/Set;Ljava/util/Set;)V
    .locals 2
    .param p0    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "migrationStartAndEndVersions"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "migrationsNotRequiredFrom"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, p0

    .line 12
    check-cast v0, Ljava/util/Collection;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Number;

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {p1, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_0

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string p1, "Inconsistency detected. A Migration was supplied to addMigration() that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(). Start version is: "

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :cond_1
    return-void
.end method

.method public static final validateTypeConverters(Landroidx/room/RoomDatabase;Landroidx/room/DatabaseConfiguration;)V
    .locals 9
    .param p0    # Landroidx/room/RoomDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/room/DatabaseConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "configuration"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/room/RoomDatabase;->getRequiredTypeConverterClassesMap$room_runtime()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    new-array v1, v1, [Z

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/4 v3, -0x1

    .line 36
    if-eqz v2, :cond_5

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/util/Map$Entry;

    .line 43
    .line 44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Lkotlin/reflect/KClass;

    .line 49
    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/util/List;

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    if-eqz v5, :cond_0

    .line 65
    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Lkotlin/reflect/KClass;

    .line 71
    .line 72
    iget-object v6, p1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    .line 73
    .line 74
    check-cast v6, Ljava/util/Collection;

    .line 75
    .line 76
    invoke-interface {v6}, Ljava/util/Collection;->size()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    add-int/2addr v6, v3

    .line 81
    if-ltz v6, :cond_3

    .line 82
    .line 83
    :goto_1
    add-int/lit8 v7, v6, -0x1

    .line 84
    .line 85
    iget-object v8, p1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    invoke-interface {v5, v8}, Lkotlin/reflect/KClass;->isInstance(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-eqz v8, :cond_1

    .line 96
    .line 97
    const/4 v7, 0x1

    .line 98
    aput-boolean v7, v1, v6

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_1
    if-gez v7, :cond_2

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_2
    move v6, v7

    .line 105
    goto :goto_1

    .line 106
    :cond_3
    :goto_2
    move v6, v3

    .line 107
    :goto_3
    if-ltz v6, :cond_4

    .line 108
    .line 109
    iget-object v7, p1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    invoke-virtual {p0, v5, v6}, Landroidx/room/RoomDatabase;->addTypeConverter$room_runtime(Lkotlin/reflect/KClass;Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string p1, "A required type converter ("

    .line 125
    .line 126
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-interface {v5}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string p1, ") for "

    .line 137
    .line 138
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-interface {v4}, Lkotlin/reflect/KClass;->getQualifiedName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string p1, " is missing in the database configuration."

    .line 149
    .line 150
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 158
    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p1

    .line 167
    :cond_5
    iget-object p0, p1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    .line 168
    .line 169
    check-cast p0, Ljava/util/Collection;

    .line 170
    .line 171
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    .line 172
    .line 173
    .line 174
    move-result p0

    .line 175
    add-int/2addr p0, v3

    .line 176
    if-ltz p0, :cond_8

    .line 177
    .line 178
    :goto_4
    add-int/lit8 v0, p0, -0x1

    .line 179
    .line 180
    aget-boolean v2, v1, p0

    .line 181
    .line 182
    if-eqz v2, :cond_7

    .line 183
    .line 184
    if-gez v0, :cond_6

    .line 185
    .line 186
    goto :goto_5

    .line 187
    :cond_6
    move p0, v0

    .line 188
    goto :goto_4

    .line 189
    :cond_7
    iget-object p1, p1, Landroidx/room/DatabaseConfiguration;->typeConverters:Ljava/util/List;

    .line 190
    .line 191
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 196
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    const-string v1, "Unexpected type converter "

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    const-string p0, ". Annotate TypeConverter class with @ProvidedTypeConverter annotation or remove this converter from the builder."

    .line 211
    .line 212
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    throw p1

    .line 223
    :cond_8
    :goto_5
    return-void
.end method
