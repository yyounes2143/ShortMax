.class public final Lcom/google/firebase/sessions/b$b$a;
.super Ljava/lang/Object;
.source "FirebaseSessionsComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/sessions/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic a:Lcom/google/firebase/sessions/b$b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/b$b$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/sessions/b$b$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/sessions/b$b$a;->a:Lcom/google/firebase/sessions/b$b$a;

    .line 7
    .line 8
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

.method public static synthetic a(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/sessions/b$b$a;->l(Landroid/content/Context;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/sessions/b$b$a;->o(Landroid/content/Context;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Landroidx/datastore/core/CorruptionException;)Lcom/google/firebase/sessions/settings/a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/firebase/sessions/b$b$a;->k(Landroidx/datastore/core/CorruptionException;)Lcom/google/firebase/sessions/settings/a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lcom/google/firebase/sessions/SessionDataSerializer;Landroidx/datastore/core/CorruptionException;)Lcom/google/firebase/sessions/i;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/google/firebase/sessions/b$b$a;->n(Lcom/google/firebase/sessions/SessionDataSerializer;Landroidx/datastore/core/CorruptionException;)Lcom/google/firebase/sessions/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final f(Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lgt/g0;Lkotlin/jvm/functions/Function0;)Landroidx/datastore/core/DataStore;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/datastore/core/Serializer<",
            "TT;>;",
            "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler<",
            "TT;>;",
            "Ljava/util/List<",
            "+",
            "Landroidx/datastore/core/DataMigration<",
            "TT;>;>;",
            "Lgt/g0;",
            "Lkotlin/jvm/functions/Function0<",
            "+",
            "Ljava/io/File;",
            ">;)",
            "Landroidx/datastore/core/DataStore<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/sessions/b$b$a;->h()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Landroidx/datastore/core/MultiProcessDataStoreFactory;->INSTANCE:Landroidx/datastore/core/MultiProcessDataStoreFactory;

    .line 8
    .line 9
    move-object v2, p1

    .line 10
    move-object v3, p2

    .line 11
    move-object v4, p3

    .line 12
    move-object v5, p4

    .line 13
    move-object v6, p5

    .line 14
    invoke-virtual/range {v1 .. v6}, Landroidx/datastore/core/MultiProcessDataStoreFactory;->create(Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lgt/g0;Lkotlin/jvm/functions/Function0;)Landroidx/datastore/core/DataStore;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Landroidx/datastore/core/DataStoreFactory;->INSTANCE:Landroidx/datastore/core/DataStoreFactory;

    .line 20
    .line 21
    move-object v1, p1

    .line 22
    move-object v2, p2

    .line 23
    move-object v3, p3

    .line 24
    move-object v4, p4

    .line 25
    move-object v5, p5

    .line 26
    invoke-virtual/range {v0 .. v5}, Landroidx/datastore/core/DataStoreFactory;->create(Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lgt/g0;Lkotlin/jvm/functions/Function0;)Landroidx/datastore/core/DataStore;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    return-object p1
.end method

.method static synthetic g(Lcom/google/firebase/sessions/b$b$a;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lgt/g0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/datastore/core/DataStore;
    .locals 6

    .line 1
    and-int/lit8 p6, p6, 0x4

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    :cond_0
    move-object v3, p3

    .line 10
    move-object v0, p0

    .line 11
    move-object v1, p1

    .line 12
    move-object v2, p2

    .line 13
    move-object v4, p4

    .line 14
    move-object v5, p5

    .line 15
    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/sessions/b$b$a;->f(Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lgt/g0;Lkotlin/jvm/functions/Function0;)Landroidx/datastore/core/DataStore;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private final h()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "datastore_shared_counter"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    :catch_0
    return v0
.end method

.method private final i(Ljava/io/File;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, "firebaseSessions"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v2, "Failed to delete conflicting file: "

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    return-void

    .line 69
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    .line 71
    const/16 v1, 0x1a

    .line 72
    .line 73
    const-string v2, "Failed to create directory: "

    .line 74
    .line 75
    if-lt v0, v1, :cond_4

    .line 76
    .line 77
    :try_start_0
    invoke-static {p1}, Lj9/j;->a(Ljava/io/File;)Ljava/nio/file/Path;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const/4 v1, 0x0

    .line 82
    new-array v1, v1, [Ljava/nio/file/attribute/FileAttribute;

    .line 83
    .line 84
    invoke-static {v0, v1}, Lj9/k;->a(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :catch_0
    move-exception v0

    .line 89
    new-instance v1, Ljava/io/IOException;

    .line 90
    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-direct {v1, p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    .line 108
    .line 109
    throw v1

    .line 110
    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-nez v0, :cond_6

    .line 115
    .line 116
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    if-eqz v0, :cond_5

    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_5
    new-instance v0, Ljava/io/IOException;

    .line 124
    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw v0

    .line 144
    :cond_6
    :goto_1
    return-void
.end method

.method private static final k(Landroidx/datastore/core/CorruptionException;)Lcom/google/firebase/sessions/settings/a;
    .locals 2

    .line 1
    const-string v0, "ex"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "FirebaseSessions"

    .line 7
    .line 8
    const-string v1, "CorruptionException in session configs DataStore"

    .line 9
    .line 10
    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    sget-object p0, Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;->a:Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;->a()Lcom/google/firebase/sessions/settings/a;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method private static final l(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 1
    const-string v0, "firebaseSessions/sessionConfigsDataStore.data"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/datastore/DataStoreFile;->dataStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/google/firebase/sessions/b$b$a;->a:Lcom/google/firebase/sessions/b$b$a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/b$b$a;->i(Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method private static final n(Lcom/google/firebase/sessions/SessionDataSerializer;Landroidx/datastore/core/CorruptionException;)Lcom/google/firebase/sessions/i;
    .locals 2

    .line 1
    const-string v0, "ex"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "FirebaseSessions"

    .line 7
    .line 8
    const-string v1, "CorruptionException in session data DataStore"

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/sessions/SessionDataSerializer;->a()Lcom/google/firebase/sessions/i;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private static final o(Landroid/content/Context;)Ljava/io/File;
    .locals 1

    .line 1
    const-string v0, "firebaseSessions/sessionDataStore.data"

    .line 2
    .line 3
    invoke-static {p0, v0}, Landroidx/datastore/DataStoreFile;->dataStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    sget-object v0, Lcom/google/firebase/sessions/b$b$a;->a:Lcom/google/firebase/sessions/b$b$a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/b$b$a;->i(Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public final e(Lcom/google/firebase/f;)Lj9/b;
    .locals 1
    .param p1    # Lcom/google/firebase/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "firebaseApp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lj9/c0;->a:Lj9/c0;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lj9/c0;->b(Lcom/google/firebase/f;)Lj9/b;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1
.end method

.method public final j(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;)Landroidx/datastore/core/DataStore;
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/CoroutineContext;
        .annotation runtime Lo7/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/CoroutineContext;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/google/firebase/sessions/settings/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "appContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "blockingDispatcher"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v2, Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;->a:Lcom/google/firebase/sessions/settings/SessionConfigsSerializer;

    .line 12
    .line 13
    new-instance v3, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    .line 14
    .line 15
    new-instance v0, Lj9/l;

    .line 16
    .line 17
    invoke-direct {v0}, Lj9/l;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-direct {v3, v0}, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    new-instance v6, Lj9/m;

    .line 28
    .line 29
    invoke-direct {v6, p1}, Lj9/m;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    const/4 v7, 0x4

    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    move-object v1, p0

    .line 36
    invoke-static/range {v1 .. v8}, Lcom/google/firebase/sessions/b$b$a;->g(Lcom/google/firebase/sessions/b$b$a;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lgt/g0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/datastore/core/DataStore;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    return-object p1
.end method

.method public final m(Landroid/content/Context;Lkotlin/coroutines/CoroutineContext;Lcom/google/firebase/sessions/SessionDataSerializer;)Landroidx/datastore/core/DataStore;
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/coroutines/CoroutineContext;
        .annotation runtime Lo7/b;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/google/firebase/sessions/SessionDataSerializer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/coroutines/CoroutineContext;",
            "Lcom/google/firebase/sessions/SessionDataSerializer;",
            ")",
            "Landroidx/datastore/core/DataStore<",
            "Lcom/google/firebase/sessions/i;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "appContext"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "blockingDispatcher"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "sessionDataSerializer"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v3, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;

    .line 17
    .line 18
    new-instance v0, Lj9/n;

    .line 19
    .line 20
    invoke-direct {v0, p3}, Lj9/n;-><init>(Lcom/google/firebase/sessions/SessionDataSerializer;)V

    .line 21
    .line 22
    .line 23
    invoke-direct {v3, v0}, Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p2}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    new-instance v6, Lj9/o;

    .line 31
    .line 32
    invoke-direct {v6, p1}, Lj9/o;-><init>(Landroid/content/Context;)V

    .line 33
    .line 34
    .line 35
    const/4 v7, 0x4

    .line 36
    const/4 v8, 0x0

    .line 37
    const/4 v4, 0x0

    .line 38
    move-object v1, p0

    .line 39
    move-object v2, p3

    .line 40
    invoke-static/range {v1 .. v8}, Lcom/google/firebase/sessions/b$b$a;->g(Lcom/google/firebase/sessions/b$b$a;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Ljava/util/List;Lgt/g0;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Landroidx/datastore/core/DataStore;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method public final p()Lj9/m0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lj9/n0;->a:Lj9/n0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final q()Lj9/o0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lj9/p0;->a:Lj9/p0;

    .line 2
    .line 3
    return-object v0
.end method
