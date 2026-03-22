.class public final Lcom/facebook/appevents/gps/topics/GpsTopicsManager;
.super Ljava/lang/Object;
.source "GpsTopicsManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGpsTopicsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GpsTopicsManager.kt\ncom/facebook/appevents/gps/topics/GpsTopicsManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,109:1\n1549#2:110\n1620#2,3:111\n*S KotlinDebug\n*F\n+ 1 GpsTopicsManager.kt\ncom/facebook/appevents/gps/topics/GpsTopicsManager\n*L\n100#1:110\n100#1:111,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/facebook/appevents/gps/topics/GpsTopicsManager;
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

.field private static final d:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/appevents/gps/topics/GpsTopicsManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/appevents/gps/topics/GpsTopicsManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/appevents/gps/topics/GpsTopicsManager;->a:Lcom/facebook/appevents/gps/topics/GpsTopicsManager;

    .line 7
    .line 8
    const-class v0, Lcom/facebook/appevents/gps/topics/GpsTopicsManager;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "GpsTopicsManager::class.java.toString()"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/facebook/appevents/gps/topics/GpsTopicsManager;->b:Ljava/lang/String;

    .line 20
    .line 21
    sget-object v0, Lcom/facebook/appevents/gps/topics/GpsTopicsManager$executor$2;->d:Lcom/facebook/appevents/gps/topics/GpsTopicsManager$executor$2;

    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/facebook/appevents/gps/topics/GpsTopicsManager;->c:Lms/i;

    .line 28
    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/facebook/appevents/gps/topics/GpsTopicsManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
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

.method public static final a()V
    .locals 3

    .line 1
    const-class v0, Lcom/facebook/appevents/gps/topics/GpsTopicsManager;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    sget-object v1, Lcom/facebook/appevents/gps/topics/GpsTopicsManager;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v2, 0x1

    .line 13
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v1

    .line 18
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
