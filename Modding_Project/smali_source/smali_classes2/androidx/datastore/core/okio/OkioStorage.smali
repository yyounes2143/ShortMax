.class public final Landroidx/datastore/core/okio/OkioStorage;
.super Ljava/lang/Object;
.source "OkioStorage.kt"

# interfaces
.implements Landroidx/datastore/core/Storage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/datastore/core/okio/OkioStorage$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroidx/datastore/core/Storage<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOkioStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OkioStorage.kt\nandroidx/datastore/core/okio/OkioStorage\n+ 2 Atomic.jvm.kt\nandroidx/datastore/core/okio/Synchronizer\n*L\n1#1,230:1\n49#2,2:231\n*S KotlinDebug\n*F\n+ 1 OkioStorage.kt\nandroidx/datastore/core/okio/OkioStorage\n*L\n64#1:231,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/datastore/core/okio/OkioStorage$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final activeFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final activeFilesLock:Landroidx/datastore/core/okio/Synchronizer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final canonicalPath$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final coordinatorProducer:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lokio/Path;",
            "Lokio/FileSystem;",
            "Landroidx/datastore/core/InterProcessCoordinator;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final fileSystem:Lokio/FileSystem;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final producePath:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lokio/Path;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final serializer:Landroidx/datastore/core/okio/OkioSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/datastore/core/okio/OkioSerializer<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/datastore/core/okio/OkioStorage$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/datastore/core/okio/OkioStorage$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/datastore/core/okio/OkioStorage;->Companion:Landroidx/datastore/core/okio/OkioStorage$Companion;

    .line 8
    .line 9
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/datastore/core/okio/OkioStorage;->activeFiles:Ljava/util/Set;

    .line 15
    .line 16
    new-instance v0, Landroidx/datastore/core/okio/Synchronizer;

    .line 17
    .line 18
    invoke-direct {v0}, Landroidx/datastore/core/okio/Synchronizer;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Landroidx/datastore/core/okio/OkioStorage;->activeFilesLock:Landroidx/datastore/core/okio/Synchronizer;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Lokio/FileSystem;Landroidx/datastore/core/okio/OkioSerializer;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lokio/FileSystem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/datastore/core/okio/OkioSerializer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/FileSystem;",
            "Landroidx/datastore/core/okio/OkioSerializer<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lokio/Path;",
            "-",
            "Lokio/FileSystem;",
            "+",
            "Landroidx/datastore/core/InterProcessCoordinator;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lokio/Path;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fileSystem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serializer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coordinatorProducer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "producePath"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/datastore/core/okio/OkioStorage;->fileSystem:Lokio/FileSystem;

    .line 3
    iput-object p2, p0, Landroidx/datastore/core/okio/OkioStorage;->serializer:Landroidx/datastore/core/okio/OkioSerializer;

    .line 4
    iput-object p3, p0, Landroidx/datastore/core/okio/OkioStorage;->coordinatorProducer:Lkotlin/jvm/functions/Function2;

    .line 5
    iput-object p4, p0, Landroidx/datastore/core/okio/OkioStorage;->producePath:Lkotlin/jvm/functions/Function0;

    .line 6
    new-instance p1, Landroidx/datastore/core/okio/OkioStorage$canonicalPath$2;

    invoke-direct {p1, p0}, Landroidx/datastore/core/okio/OkioStorage$canonicalPath$2;-><init>(Landroidx/datastore/core/okio/OkioStorage;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object p1

    iput-object p1, p0, Landroidx/datastore/core/okio/OkioStorage;->canonicalPath$delegate:Lms/i;

    return-void
.end method

.method public synthetic constructor <init>(Lokio/FileSystem;Landroidx/datastore/core/okio/OkioSerializer;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    .line 7
    sget-object p3, Landroidx/datastore/core/okio/OkioStorage$1;->INSTANCE:Landroidx/datastore/core/okio/OkioStorage$1;

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/datastore/core/okio/OkioStorage;-><init>(Lokio/FileSystem;Landroidx/datastore/core/okio/OkioSerializer;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getActiveFiles$cp()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/core/okio/OkioStorage;->activeFiles:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getActiveFilesLock$cp()Landroidx/datastore/core/okio/Synchronizer;
    .locals 1

    .line 1
    sget-object v0, Landroidx/datastore/core/okio/OkioStorage;->activeFilesLock:Landroidx/datastore/core/okio/Synchronizer;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getCanonicalPath(Landroidx/datastore/core/okio/OkioStorage;)Lokio/Path;
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/datastore/core/okio/OkioStorage;->getCanonicalPath()Lokio/Path;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getProducePath$p(Landroidx/datastore/core/okio/OkioStorage;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/datastore/core/okio/OkioStorage;->producePath:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object p0
.end method

.method private final getCanonicalPath()Lokio/Path;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/datastore/core/okio/OkioStorage;->canonicalPath$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lokio/Path;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public createConnection()Landroidx/datastore/core/StorageConnection;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/datastore/core/StorageConnection<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/datastore/core/okio/OkioStorage;->getCanonicalPath()Lokio/Path;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lokio/Path;->toString()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Landroidx/datastore/core/okio/OkioStorage;->activeFilesLock:Landroidx/datastore/core/okio/Synchronizer;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    sget-object v2, Landroidx/datastore/core/okio/OkioStorage;->activeFiles:Ljava/util/Set;

    .line 13
    .line 14
    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-nez v3, :cond_0

    .line 19
    .line 20
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit v1

    .line 24
    new-instance v0, Landroidx/datastore/core/okio/OkioStorageConnection;

    .line 25
    .line 26
    iget-object v5, p0, Landroidx/datastore/core/okio/OkioStorage;->fileSystem:Lokio/FileSystem;

    .line 27
    .line 28
    invoke-direct {p0}, Landroidx/datastore/core/okio/OkioStorage;->getCanonicalPath()Lokio/Path;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    iget-object v7, p0, Landroidx/datastore/core/okio/OkioStorage;->serializer:Landroidx/datastore/core/okio/OkioSerializer;

    .line 33
    .line 34
    iget-object v1, p0, Landroidx/datastore/core/okio/OkioStorage;->coordinatorProducer:Lkotlin/jvm/functions/Function2;

    .line 35
    .line 36
    invoke-direct {p0}, Landroidx/datastore/core/okio/OkioStorage;->getCanonicalPath()Lokio/Path;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v3, p0, Landroidx/datastore/core/okio/OkioStorage;->fileSystem:Lokio/FileSystem;

    .line 41
    .line 42
    invoke-interface {v1, v2, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    move-object v8, v1

    .line 47
    check-cast v8, Landroidx/datastore/core/InterProcessCoordinator;

    .line 48
    .line 49
    new-instance v9, Landroidx/datastore/core/okio/OkioStorage$createConnection$2;

    .line 50
    .line 51
    invoke-direct {v9, p0}, Landroidx/datastore/core/okio/OkioStorage$createConnection$2;-><init>(Landroidx/datastore/core/okio/OkioStorage;)V

    .line 52
    .line 53
    .line 54
    move-object v4, v0

    .line 55
    invoke-direct/range {v4 .. v9}, Landroidx/datastore/core/okio/OkioStorageConnection;-><init>(Lokio/FileSystem;Lokio/Path;Landroidx/datastore/core/okio/OkioSerializer;Landroidx/datastore/core/InterProcessCoordinator;Lkotlin/jvm/functions/Function0;)V

    .line 56
    .line 57
    .line 58
    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    goto :goto_0

    .line 61
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v3, "There are multiple DataStores active for the same file: "

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string v0, ". You should either maintain your DataStore as a singleton or confirm that there is no two DataStore\'s active on the same file (by confirming that the scope is cancelled)."

    .line 75
    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :goto_0
    monitor-exit v1

    .line 94
    throw v0
.end method
