.class final Lcom/google/android/play/core/review/h;
.super Lcom/google/android/play/core/review/g;
.source "com.google.android.play:review@@2.0.2"


# direct methods
.method constructor <init>(Lcom/google/android/play/core/review/i;Lcom/google/android/gms/tasks/TaskCompletionSource;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p3, Lf7/i;

    .line 2
    .line 3
    const-string v0, "OnRequestInstallCallback"

    .line 4
    .line 5
    invoke-direct {p3, v0}, Lf7/i;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/play/core/review/g;-><init>(Lcom/google/android/play/core/review/i;Lf7/i;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zzb(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/play/core/review/g;->zzb(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "confirmation_intent"

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Landroid/app/PendingIntent;

    .line 11
    .line 12
    const-string v1, "is_review_no_op"

    .line 13
    .line 14
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    new-instance v1, Lcom/google/android/play/core/review/zza;

    .line 19
    .line 20
    invoke-direct {v1, v0, p1}, Lcom/google/android/play/core/review/zza;-><init>(Landroid/app/PendingIntent;Z)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/google/android/play/core/review/g;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method
