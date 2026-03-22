.class Lcom/google/firebase/crashlytics/internal/common/o$d;
.super Ljava/lang/Object;
.source "CrashlyticsController.java"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/crashlytics/internal/common/o;->Z(Lcom/google/android/gms/tasks/Task;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/SuccessContinuation<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/tasks/Task;

.field final synthetic b:Lcom/google/firebase/crashlytics/internal/common/o;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/o;Lcom/google/android/gms/tasks/Task;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/o$d;->b:Lcom/google/firebase/crashlytics/internal/common/o;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/o$d;->a:Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lz7/g;->f()Lz7/g;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "Deleting cached crash reports..."

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lz7/g;->i(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/o$d;->b:Lcom/google/firebase/crashlytics/internal/common/o;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/o;->N()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/o;->m(Ljava/util/List;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/o$d;->b:Lcom/google/firebase/crashlytics/internal/common/o;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/common/o;->g(Lcom/google/firebase/crashlytics/internal/common/o;)Lcom/google/firebase/crashlytics/internal/common/s0;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/s0;->z()V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/o$d;->b:Lcom/google/firebase/crashlytics/internal/common/o;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/google/firebase/crashlytics/internal/common/o;->r:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_0
    invoke-static {}, Lz7/g;->f()Lz7/g;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "Sending cached crash reports..."

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lz7/g;->b(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/o$d;->b:Lcom/google/firebase/crashlytics/internal/common/o;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/o;->j(Lcom/google/firebase/crashlytics/internal/common/o;)Lcom/google/firebase/crashlytics/internal/common/e0;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/common/e0;->c(Z)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/o$d;->a:Lcom/google/android/gms/tasks/Task;

    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/o$d;->b:Lcom/google/firebase/crashlytics/internal/common/o;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/common/o;->k(Lcom/google/firebase/crashlytics/internal/common/o;)Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget-object v0, v0, Lcom/google/firebase/crashlytics/internal/concurrency/CrashlyticsWorkers;->a:Lcom/google/firebase/crashlytics/internal/concurrency/a;

    .line 78
    .line 79
    new-instance v1, Lcom/google/firebase/crashlytics/internal/common/o$d$a;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/google/firebase/crashlytics/internal/common/o$d$a;-><init>(Lcom/google/firebase/crashlytics/internal/common/o$d;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/tasks/Task;->onSuccessTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/SuccessContinuation;)Lcom/google/android/gms/tasks/Task;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1
.end method

.method public bridge synthetic then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/o$d;->a(Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
