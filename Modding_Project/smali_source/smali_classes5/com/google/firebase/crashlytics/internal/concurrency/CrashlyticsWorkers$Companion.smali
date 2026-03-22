.class public final Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;
.super Ljava/lang/Object;
.source "CrashlyticsWorkers.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->l()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->j()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->h()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d(Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->p()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic e(Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->q()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic f(Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->r()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final h()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Must be called on a background thread, was called on "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->o()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x2e

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method private static final j()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Must be called on a blocking thread, was called on "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->o()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x2e

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method private static final l()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Must not be called on a main thread, was called on "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->e:Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;

    .line 12
    .line 13
    invoke-direct {v1}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->o()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x2e

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method private final m(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lz7/g;->f()Lz7/g;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    check-cast p2, Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Lz7/g;->b(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->n()Z

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method private final o()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method private final p()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->o()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "<get-threadName>(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "Firebase Background Thread #"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method private final q()Z
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->o()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "<get-threadName>(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x2

    .line 11
    const/4 v2, 0x0

    .line 12
    const-string v3, "Firebase Blocking Thread #"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    invoke-static {v0, v3, v4, v1, v2}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method private final r()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    return v0
.end method


# virtual methods
.method public final g()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion$checkBackgroundThread$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion$checkBackgroundThread$1;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lc8/e;

    .line 7
    .line 8
    invoke-direct {v1}, Lc8/e;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->m(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final i()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion$checkBlockingThread$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion$checkBlockingThread$1;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lc8/g;

    .line 7
    .line 8
    invoke-direct {v1}, Lc8/g;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->m(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final k()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion$checkNotMainThread$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion$checkNotMainThread$1;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lc8/f;

    .line 7
    .line 8
    invoke-direct {v1}, Lc8/f;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, v0, v1}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers$Companion;->m(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final n()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final s(Z)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->b(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
