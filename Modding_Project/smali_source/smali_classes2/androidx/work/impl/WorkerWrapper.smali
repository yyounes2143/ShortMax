.class public Landroidx/work/impl/WorkerWrapper;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/WorkerWrapper$Builder;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field mAppContext:Landroid/content/Context;

.field private mConfiguration:Landroidx/work/Configuration;

.field private mDependencyDao:Landroidx/work/impl/model/DependencyDao;

.field private mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

.field mFuture:Landroidx/work/impl/utils/futures/SettableFuture;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/SettableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInterrupted:Z

.field mResult:Landroidx/work/ListenableWorker$Result;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

.field private mSchedulers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/work/impl/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkDatabase:Landroidx/work/impl/WorkDatabase;

.field private mWorkDescription:Ljava/lang/String;

.field mWorkSpec:Landroidx/work/impl/model/WorkSpec;

.field private mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

.field private final mWorkSpecId:Ljava/lang/String;

.field mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

.field mWorker:Landroidx/work/ListenableWorker;

.field final mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/impl/utils/futures/SettableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "WorkerWrapper"

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Landroidx/work/impl/WorkerWrapper$Builder;)V
    .locals 1
    .param p1    # Landroidx/work/impl/WorkerWrapper$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mResult:Landroidx/work/ListenableWorker$Result;

    .line 9
    .line 10
    invoke-static {}, Landroidx/work/impl/utils/futures/SettableFuture;->create()Landroidx/work/impl/utils/futures/SettableFuture;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 15
    .line 16
    invoke-static {}, Landroidx/work/impl/utils/futures/SettableFuture;->create()Landroidx/work/impl/utils/futures/SettableFuture;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 21
    .line 22
    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mAppContext:Landroid/content/Context;

    .line 23
    .line 24
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mAppContext:Landroid/content/Context;

    .line 25
    .line 26
    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 27
    .line 28
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 29
    .line 30
    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    .line 31
    .line 32
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    .line 33
    .line 34
    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 35
    .line 36
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 37
    .line 38
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mSchedulers:Ljava/util/List;

    .line 43
    .line 44
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mSchedulers:Ljava/util/List;

    .line 45
    .line 46
    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 47
    .line 48
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 49
    .line 50
    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mWorker:Landroidx/work/ListenableWorker;

    .line 51
    .line 52
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    .line 53
    .line 54
    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mConfiguration:Landroidx/work/Configuration;

    .line 55
    .line 56
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mConfiguration:Landroidx/work/Configuration;

    .line 57
    .line 58
    iget-object v0, p1, Landroidx/work/impl/WorkerWrapper$Builder;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 59
    .line 60
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 69
    .line 70
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->dependencyDao()Landroidx/work/impl/model/DependencyDao;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mDependencyDao:Landroidx/work/impl/model/DependencyDao;

    .line 75
    .line 76
    invoke-static {p1}, Landroidx/work/impl/WorkerWrapper$Builder;->access$000(Landroidx/work/impl/WorkerWrapper$Builder;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Landroidx/work/impl/WorkerWrapper;->mTags:Ljava/util/List;

    .line 81
    .line 82
    return-void
.end method

.method public static synthetic a(Landroidx/work/impl/WorkerWrapper;Lcom/google/common/util/concurrent/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/work/impl/WorkerWrapper;->lambda$runWorker$0(Lcom/google/common/util/concurrent/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private createWorkDescription(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Work [ id="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", tags={ "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const/4 v1, 0x1

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    check-cast v2, Ljava/lang/String;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const-string v3, ", "

    .line 40
    .line 41
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const-string p1, " } ]"

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method

.method private handleResult(Landroidx/work/ListenableWorker$Result;)V
    .locals 3

    .line 1
    instance-of v0, p1, Landroidx/work/ListenableWorker$Result$Success;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "Worker result SUCCESS for "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->resetPeriodicAndResolve()V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->setSucceededAndResolve()V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    instance-of p1, p1, Landroidx/work/ListenableWorker$Result$Retry;

    .line 50
    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    sget-object v0, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v2, "Worker result RETRY for "

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->rescheduleAndResolve()V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    sget-object v0, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    .line 90
    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v2, "Worker result FAILURE for "

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {p1, v0, v1}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 114
    .line 115
    invoke-virtual {p1}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-eqz p1, :cond_3

    .line 120
    .line 121
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->resetPeriodicAndResolve()V

    .line 122
    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_3
    invoke-virtual {p0}, Landroidx/work/impl/WorkerWrapper;->setFailedAndResolve()V

    .line 126
    .line 127
    .line 128
    :goto_0
    return-void
.end method

.method private iterativelyFailWorkAndDependents(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    :goto_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/String;

    .line 20
    .line 21
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 22
    .line 23
    invoke-interface {v1, p1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    sget-object v2, Landroidx/work/WorkInfo$State;->CANCELLED:Landroidx/work/WorkInfo$State;

    .line 28
    .line 29
    if-eq v1, v2, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 32
    .line 33
    sget-object v2, Landroidx/work/WorkInfo$State;->FAILED:Landroidx/work/WorkInfo$State;

    .line 34
    .line 35
    invoke-interface {v1, v2, p1}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mDependencyDao:Landroidx/work/impl/model/DependencyDao;

    .line 39
    .line 40
    invoke-interface {v1, p1}, Landroidx/work/impl/model/DependencyDao;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    return-void
.end method

.method private synthetic lambda$runWorker$0(Lcom/google/common/util/concurrent/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->isCancelled()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private rescheduleAndResolve()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 8
    .line 9
    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 21
    .line 22
    .line 23
    move-result-wide v3

    .line 24
    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/model/WorkSpecDao;->setLastEnqueuedTime(Ljava/lang/String;J)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 30
    .line 31
    const-wide/16 v3, -0x1

    .line 32
    .line 33
    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 44
    .line 45
    .line 46
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 52
    .line 53
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 57
    .line 58
    .line 59
    throw v1
.end method

.method private resetPeriodicAndResolve()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 8
    .line 9
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/model/WorkSpecDao;->setLastEnqueuedTime(Ljava/lang/String;J)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 19
    .line 20
    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->resetWorkSpecRunAttemptCount(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 35
    .line 36
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->incrementPeriodCount(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 42
    .line 43
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 44
    .line 45
    const-wide/16 v3, -0x1

    .line 46
    .line 47
    invoke-interface {v1, v2, v3, v4}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 56
    .line 57
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception v1

    .line 65
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 66
    .line 67
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 71
    .line 72
    .line 73
    throw v1
.end method

.method private resolve(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/work/impl/WorkDatabase;->workSpecDao()Landroidx/work/impl/model/WorkSpecDao;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Landroidx/work/impl/model/WorkSpecDao;->hasUnfinishedWork()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mAppContext:Landroid/content/Context;

    .line 19
    .line 20
    const-class v1, Landroidx/work/impl/background/systemalarm/RescheduleReceiver;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v1, v2}, Landroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 32
    .line 33
    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 34
    .line 35
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 41
    .line 42
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 43
    .line 44
    const-wide/16 v2, -0x1

    .line 45
    .line 46
    invoke-interface {v0, v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    .line 58
    .line 59
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 60
    .line 61
    invoke-interface {v0, v1}, Landroidx/work/impl/foreground/ForegroundProcessor;->isEnqueuedInForeground(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    .line 68
    .line 69
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 70
    .line 71
    invoke-interface {v0, v1}, Landroidx/work/impl/foreground/ForegroundProcessor;->stopForeground(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 85
    .line 86
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v0, p1}, Landroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    return-void

    .line 94
    :goto_1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 95
    .line 96
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 97
    .line 98
    .line 99
    throw p1
.end method

.method private resolveIncorrectStatus()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    .line 10
    .line 11
    const-string v2, "Status for "

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sget-object v1, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, " is RUNNING; not doing any work and rescheduling for later execution"

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    sget-object v3, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, " is "

    .line 71
    .line 72
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, " ; not doing any work"

    .line 79
    .line 80
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {v1, v3, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 v0, 0x0

    .line 91
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 92
    .line 93
    .line 94
    :goto_0
    return-void
.end method

.method private runWorker()V
    .locals 15

    .line 1
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->tryCheckForInterruptionAndResolve()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 11
    .line 12
    .line 13
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 14
    .line 15
    iget-object v1, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 16
    .line 17
    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 18
    .line 19
    if-eq v1, v2, :cond_1

    .line 20
    .line 21
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->resolveIncorrectStatus()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sget-object v1, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 41
    .line 42
    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v3, " is not in ENQUEUED state. Nothing more to do"

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    goto/16 :goto_3

    .line 67
    .line 68
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_2

    .line 73
    .line 74
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 75
    .line 76
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isBackedOff()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_3

    .line 81
    .line 82
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 83
    .line 84
    .line 85
    move-result-wide v0

    .line 86
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 87
    .line 88
    invoke-virtual {v2}, Landroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    cmp-long v0, v0, v2

    .line 93
    .line 94
    if-gez v0, :cond_3

    .line 95
    .line 96
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    sget-object v1, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    .line 101
    .line 102
    const-string v2, "Delaying execution for %s because it is being executed before schedule."

    .line 103
    .line 104
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 105
    .line 106
    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 107
    .line 108
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const/4 v0, 0x1

    .line 120
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 124
    .line 125
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 129
    .line 130
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 131
    .line 132
    .line 133
    return-void

    .line 134
    :cond_3
    :try_start_2
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 135
    .line 136
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 140
    .line 141
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_4

    .line 151
    .line 152
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 153
    .line 154
    iget-object v0, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 155
    .line 156
    :goto_0
    move-object v3, v0

    .line 157
    goto :goto_1

    .line 158
    :cond_4
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mConfiguration:Landroidx/work/Configuration;

    .line 159
    .line 160
    invoke-virtual {v0}, Landroidx/work/Configuration;->getInputMergerFactory()Landroidx/work/InputMergerFactory;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 165
    .line 166
    iget-object v1, v1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroidx/work/InputMergerFactory;->createInputMergerWithDefaultFallback(Ljava/lang/String;)Landroidx/work/InputMerger;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    if-nez v0, :cond_5

    .line 173
    .line 174
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    sget-object v1, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    .line 179
    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v3, "Could not create Input Merger "

    .line 186
    .line 187
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 191
    .line 192
    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 193
    .line 194
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Landroidx/work/impl/WorkerWrapper;->setFailedAndResolve()V

    .line 205
    .line 206
    .line 207
    return-void

    .line 208
    :cond_5
    new-instance v1, Ljava/util/ArrayList;

    .line 209
    .line 210
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .line 212
    .line 213
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 214
    .line 215
    iget-object v2, v2, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 216
    .line 217
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 221
    .line 222
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 223
    .line 224
    invoke-interface {v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 229
    .line 230
    .line 231
    invoke-virtual {v0, v1}, Landroidx/work/InputMerger;->merge(Ljava/util/List;)Landroidx/work/Data;

    .line 232
    .line 233
    .line 234
    move-result-object v0

    .line 235
    goto :goto_0

    .line 236
    :goto_1
    new-instance v0, Landroidx/work/WorkerParameters;

    .line 237
    .line 238
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mTags:Ljava/util/List;

    .line 245
    .line 246
    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mRuntimeExtras:Landroidx/work/WorkerParameters$RuntimeExtras;

    .line 247
    .line 248
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 249
    .line 250
    iget v6, v1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 251
    .line 252
    invoke-virtual {v1}, Landroidx/work/impl/model/WorkSpec;->getGeneration()I

    .line 253
    .line 254
    .line 255
    move-result v7

    .line 256
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mConfiguration:Landroidx/work/Configuration;

    .line 257
    .line 258
    invoke-virtual {v1}, Landroidx/work/Configuration;->getExecutor()Ljava/util/concurrent/Executor;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    iget-object v9, p0, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 263
    .line 264
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mConfiguration:Landroidx/work/Configuration;

    .line 265
    .line 266
    invoke-virtual {v1}, Landroidx/work/Configuration;->getWorkerFactory()Landroidx/work/WorkerFactory;

    .line 267
    .line 268
    .line 269
    move-result-object v10

    .line 270
    new-instance v11, Landroidx/work/impl/utils/WorkProgressUpdater;

    .line 271
    .line 272
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 273
    .line 274
    iget-object v12, p0, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 275
    .line 276
    invoke-direct {v11, v1, v12}, Landroidx/work/impl/utils/WorkProgressUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 277
    .line 278
    .line 279
    new-instance v12, Landroidx/work/impl/utils/WorkForegroundUpdater;

    .line 280
    .line 281
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 282
    .line 283
    iget-object v13, p0, Landroidx/work/impl/WorkerWrapper;->mForegroundProcessor:Landroidx/work/impl/foreground/ForegroundProcessor;

    .line 284
    .line 285
    iget-object v14, p0, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 286
    .line 287
    invoke-direct {v12, v1, v13, v14}, Landroidx/work/impl/utils/WorkForegroundUpdater;-><init>(Landroidx/work/impl/WorkDatabase;Landroidx/work/impl/foreground/ForegroundProcessor;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 288
    .line 289
    .line 290
    move-object v1, v0

    .line 291
    invoke-direct/range {v1 .. v12}, Landroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Landroidx/work/Data;Ljava/util/Collection;Landroidx/work/WorkerParameters$RuntimeExtras;IILjava/util/concurrent/Executor;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;Landroidx/work/WorkerFactory;Landroidx/work/ProgressUpdater;Landroidx/work/ForegroundUpdater;)V

    .line 292
    .line 293
    .line 294
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    .line 295
    .line 296
    if-nez v1, :cond_6

    .line 297
    .line 298
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mConfiguration:Landroidx/work/Configuration;

    .line 299
    .line 300
    invoke-virtual {v1}, Landroidx/work/Configuration;->getWorkerFactory()Landroidx/work/WorkerFactory;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mAppContext:Landroid/content/Context;

    .line 305
    .line 306
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 307
    .line 308
    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 309
    .line 310
    invoke-virtual {v1, v2, v3, v0}, Landroidx/work/WorkerFactory;->createWorkerWithDefaultFallback(Landroid/content/Context;Ljava/lang/String;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    iput-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    .line 315
    .line 316
    :cond_6
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    .line 317
    .line 318
    if-nez v1, :cond_7

    .line 319
    .line 320
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    sget-object v1, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    .line 325
    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    .line 327
    .line 328
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 329
    .line 330
    .line 331
    const-string v3, "Could not create Worker "

    .line 332
    .line 333
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    .line 335
    .line 336
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 337
    .line 338
    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 339
    .line 340
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    .line 342
    .line 343
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0}, Landroidx/work/impl/WorkerWrapper;->setFailedAndResolve()V

    .line 351
    .line 352
    .line 353
    return-void

    .line 354
    :cond_7
    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->isUsed()Z

    .line 355
    .line 356
    .line 357
    move-result v1

    .line 358
    if-eqz v1, :cond_8

    .line 359
    .line 360
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    sget-object v1, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    .line 365
    .line 366
    new-instance v2, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .line 370
    .line 371
    const-string v3, "Received an already-used Worker "

    .line 372
    .line 373
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 377
    .line 378
    iget-object v3, v3, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 379
    .line 380
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    .line 382
    .line 383
    const-string v3, "; Worker Factory should return new instances"

    .line 384
    .line 385
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v2

    .line 392
    invoke-virtual {v0, v1, v2}, Landroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {p0}, Landroidx/work/impl/WorkerWrapper;->setFailedAndResolve()V

    .line 396
    .line 397
    .line 398
    return-void

    .line 399
    :cond_8
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    .line 400
    .line 401
    invoke-virtual {v1}, Landroidx/work/ListenableWorker;->setUsed()V

    .line 402
    .line 403
    .line 404
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->trySetRunning()Z

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    if-eqz v1, :cond_a

    .line 409
    .line 410
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->tryCheckForInterruptionAndResolve()Z

    .line 411
    .line 412
    .line 413
    move-result v1

    .line 414
    if-eqz v1, :cond_9

    .line 415
    .line 416
    return-void

    .line 417
    :cond_9
    new-instance v1, Landroidx/work/impl/utils/WorkForegroundRunnable;

    .line 418
    .line 419
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mAppContext:Landroid/content/Context;

    .line 420
    .line 421
    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 422
    .line 423
    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    .line 424
    .line 425
    invoke-virtual {v0}, Landroidx/work/WorkerParameters;->getForegroundUpdater()Landroidx/work/ForegroundUpdater;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    iget-object v7, p0, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 430
    .line 431
    move-object v2, v1

    .line 432
    invoke-direct/range {v2 .. v7}, Landroidx/work/impl/utils/WorkForegroundRunnable;-><init>(Landroid/content/Context;Landroidx/work/impl/model/WorkSpec;Landroidx/work/ListenableWorker;Landroidx/work/ForegroundUpdater;Landroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    .line 433
    .line 434
    .line 435
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 436
    .line 437
    invoke-interface {v0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v1}, Landroidx/work/impl/utils/WorkForegroundRunnable;->getFuture()Lcom/google/common/util/concurrent/e;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 449
    .line 450
    new-instance v2, Landroidx/work/impl/g;

    .line 451
    .line 452
    invoke-direct {v2, p0, v0}, Landroidx/work/impl/g;-><init>(Landroidx/work/impl/WorkerWrapper;Lcom/google/common/util/concurrent/e;)V

    .line 453
    .line 454
    .line 455
    new-instance v3, Landroidx/work/impl/utils/SynchronousExecutor;

    .line 456
    .line 457
    invoke-direct {v3}, Landroidx/work/impl/utils/SynchronousExecutor;-><init>()V

    .line 458
    .line 459
    .line 460
    invoke-virtual {v1, v2, v3}, Landroidx/work/impl/utils/futures/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 461
    .line 462
    .line 463
    new-instance v1, Landroidx/work/impl/WorkerWrapper$1;

    .line 464
    .line 465
    invoke-direct {v1, p0, v0}, Landroidx/work/impl/WorkerWrapper$1;-><init>(Landroidx/work/impl/WorkerWrapper;Lcom/google/common/util/concurrent/e;)V

    .line 466
    .line 467
    .line 468
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 469
    .line 470
    invoke-interface {v2}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    invoke-interface {v0, v1, v2}, Lcom/google/common/util/concurrent/e;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 475
    .line 476
    .line 477
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    .line 478
    .line 479
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 480
    .line 481
    new-instance v2, Landroidx/work/impl/WorkerWrapper$2;

    .line 482
    .line 483
    invoke-direct {v2, p0, v0}, Landroidx/work/impl/WorkerWrapper$2;-><init>(Landroidx/work/impl/WorkerWrapper;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 487
    .line 488
    invoke-interface {v0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    .line 489
    .line 490
    .line 491
    move-result-object v0

    .line 492
    invoke-virtual {v1, v2, v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 493
    .line 494
    .line 495
    goto :goto_2

    .line 496
    :cond_a
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->resolveIncorrectStatus()V

    .line 497
    .line 498
    .line 499
    :goto_2
    return-void

    .line 500
    :goto_3
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 501
    .line 502
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 503
    .line 504
    .line 505
    throw v0
.end method

.method private setSucceededAndResolve()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 8
    .line 9
    sget-object v2, Landroidx/work/WorkInfo$State;->SUCCEEDED:Landroidx/work/WorkInfo$State;

    .line 10
    .line 11
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 12
    .line 13
    invoke-interface {v1, v2, v3}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mResult:Landroidx/work/ListenableWorker$Result;

    .line 17
    .line 18
    check-cast v1, Landroidx/work/ListenableWorker$Result$Success;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/work/ListenableWorker$Result$Success;->getOutputData()Landroidx/work/Data;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 25
    .line 26
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v2, v3, v1}, Landroidx/work/impl/model/WorkSpecDao;->setOutput(Ljava/lang/String;Landroidx/work/Data;)V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mDependencyDao:Landroidx/work/impl/model/DependencyDao;

    .line 36
    .line 37
    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-interface {v3, v4}, Landroidx/work/impl/model/DependencyDao;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_1

    .line 52
    .line 53
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    check-cast v4, Ljava/lang/String;

    .line 58
    .line 59
    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 60
    .line 61
    invoke-interface {v5, v4}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    sget-object v6, Landroidx/work/WorkInfo$State;->BLOCKED:Landroidx/work/WorkInfo$State;

    .line 66
    .line 67
    if-ne v5, v6, :cond_0

    .line 68
    .line 69
    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mDependencyDao:Landroidx/work/impl/model/DependencyDao;

    .line 70
    .line 71
    invoke-interface {v5, v4}, Landroidx/work/impl/model/DependencyDao;->hasCompletedAllPrerequisites(Ljava/lang/String;)Z

    .line 72
    .line 73
    .line 74
    move-result v5

    .line 75
    if-eqz v5, :cond_0

    .line 76
    .line 77
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    sget-object v6, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    .line 82
    .line 83
    new-instance v7, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v8, "Setting status to enqueued for "

    .line 89
    .line 90
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v5, v6, v7}, Landroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 104
    .line 105
    sget-object v6, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 106
    .line 107
    invoke-interface {v5, v6, v4}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    iget-object v5, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 111
    .line 112
    invoke-interface {v5, v4, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->setLastEnqueuedTime(Ljava/lang/String;J)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catchall_0
    move-exception v1

    .line 117
    goto :goto_1

    .line 118
    :cond_1
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 119
    .line 120
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 124
    .line 125
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :goto_1
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 133
    .line 134
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 135
    .line 136
    .line 137
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 138
    .line 139
    .line 140
    throw v1
.end method

.method private tryCheckForInterruptionAndResolve()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/work/impl/WorkerWrapper;->mInterrupted:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sget-object v2, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v4, "Work interrupted for "

    .line 18
    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v4, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v0, v2, v3}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 35
    .line 36
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v0, v2}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const/4 v2, 0x1

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    invoke-direct {p0, v1}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    xor-int/2addr v0, v2

    .line 54
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return v2

    .line 58
    :cond_1
    return v1
.end method

.method private trySetRunning()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 19
    .line 20
    sget-object v1, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    .line 21
    .line 22
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {v0, v1, v2}, Landroidx/work/impl/model/WorkSpecDao;->setState(Landroidx/work/WorkInfo$State;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    :goto_0
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 40
    .line 41
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 47
    .line 48
    .line 49
    return v0

    .line 50
    :goto_1
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 53
    .line 54
    .line 55
    throw v0
.end method


# virtual methods
.method public getFuture()Lcom/google/common/util/concurrent/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 2
    .line 3
    return-object v0
.end method

.method public getWorkGenerationalId()Landroidx/work/impl/model/WorkGenerationalId;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/work/impl/model/WorkSpecKt;->generationalId(Landroidx/work/impl/model/WorkSpec;)Landroidx/work/impl/model/WorkGenerationalId;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getWorkSpec()Landroidx/work/impl/model/WorkSpec;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 2
    .line 3
    return-object v0
.end method

.method public interrupt()V
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/work/impl/WorkerWrapper;->mInterrupted:Z

    .line 3
    .line 4
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->tryCheckForInterruptionAndResolve()Z

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->cancel(Z)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkerResultFuture:Landroidx/work/impl/utils/futures/SettableFuture;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/work/impl/utils/futures/AbstractFuture;->isCancelled()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorker:Landroidx/work/ListenableWorker;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->stop()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "WorkSpec "

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpec:Landroidx/work/impl/model/WorkSpec;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, " is already done. Not interrupting."

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {}, Landroidx/work/Logger;->get()Landroidx/work/Logger;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    sget-object v2, Landroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1, v2, v0}, Landroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    return-void
.end method

.method onWorkFinished()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->tryCheckForInterruptionAndResolve()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 13
    .line 14
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Landroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Landroidx/work/WorkInfo$State;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->workProgressDao()Landroidx/work/impl/model/WorkProgressDao;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 27
    .line 28
    invoke-interface {v1, v2}, Landroidx/work/impl/model/WorkProgressDao;->delete(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception v0

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    sget-object v1, Landroidx/work/WorkInfo$State;->RUNNING:Landroidx/work/WorkInfo$State;

    .line 41
    .line 42
    if-ne v0, v1, :cond_1

    .line 43
    .line 44
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mResult:Landroidx/work/ListenableWorker$Result;

    .line 45
    .line 46
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->handleResult(Landroidx/work/ListenableWorker$Result;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v0}, Landroidx/work/WorkInfo$State;->isFinished()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->rescheduleAndResolve()V

    .line 57
    .line 58
    .line 59
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 60
    .line 61
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 67
    .line 68
    .line 69
    goto :goto_2

    .line 70
    :goto_1
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 71
    .line 72
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 73
    .line 74
    .line 75
    throw v0

    .line 76
    :cond_3
    :goto_2
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mSchedulers:Ljava/util/List;

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_4

    .line 89
    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Landroidx/work/impl/Scheduler;

    .line 95
    .line 96
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 97
    .line 98
    invoke-interface {v1, v2}, Landroidx/work/impl/Scheduler;->cancel(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mConfiguration:Landroidx/work/Configuration;

    .line 103
    .line 104
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 105
    .line 106
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mSchedulers:Ljava/util/List;

    .line 107
    .line 108
    invoke-static {v0, v1, v2}, Landroidx/work/impl/Schedulers;->schedule(Landroidx/work/Configuration;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 109
    .line 110
    .line 111
    :cond_5
    return-void
.end method

.method public run()V
    .locals 1
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mTags:Ljava/util/List;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->createWorkDescription(Ljava/util/List;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/work/impl/WorkerWrapper;->runWorker()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method setFailedAndResolve()V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0, v1}, Landroidx/work/impl/WorkerWrapper;->iterativelyFailWorkAndDependents(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mResult:Landroidx/work/ListenableWorker$Result;

    .line 13
    .line 14
    check-cast v1, Landroidx/work/ListenableWorker$Result$Failure;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/work/ListenableWorker$Result$Failure;->getOutputData()Landroidx/work/Data;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Landroidx/work/impl/model/WorkSpecDao;

    .line 21
    .line 22
    iget-object v3, p0, Landroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-interface {v2, v3, v1}, Landroidx/work/impl/model/WorkSpecDao;->setOutput(Ljava/lang/String;Landroidx/work/Data;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 33
    .line 34
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    iget-object v2, p0, Landroidx/work/impl/WorkerWrapper;->mWorkDatabase:Landroidx/work/impl/WorkDatabase;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0}, Landroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 48
    .line 49
    .line 50
    throw v1
.end method
