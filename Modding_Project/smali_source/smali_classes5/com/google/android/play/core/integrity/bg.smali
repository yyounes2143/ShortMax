.class final Lcom/google/android/play/core/integrity/bg;
.super Lcom/google/android/play/core/integrity/bm;
.source "com.google.android.play:integrity@@1.4.0"


# instance fields
.field final synthetic a:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic e:Lcom/google/android/play/core/integrity/bn;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/bn;Lcom/google/android/gms/tasks/TaskCompletionSource;ILcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;JJLcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    iput-object p4, p0, Lcom/google/android/play/core/integrity/bg;->a:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;

    .line 2
    .line 3
    iput-wide p5, p0, Lcom/google/android/play/core/integrity/bg;->b:J

    .line 4
    .line 5
    iput-wide p7, p0, Lcom/google/android/play/core/integrity/bg;->c:J

    .line 6
    .line 7
    iput-object p9, p0, Lcom/google/android/play/core/integrity/bg;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/google/android/play/core/integrity/bg;->e:Lcom/google/android/play/core/integrity/bn;

    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/google/android/play/core/integrity/bm;-><init>(Lcom/google/android/play/core/integrity/bn;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method protected final b()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/bg;->e:Lcom/google/android/play/core/integrity/bn;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/play/core/integrity/bn;->l(Lcom/google/android/play/core/integrity/bn;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    .line 11
    .line 12
    const/4 v2, -0x2

    .line 13
    invoke-direct {v0, v2, v1}, Lcom/google/android/play/core/integrity/StandardIntegrityException;-><init>(ILjava/lang/Throwable;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, v0}, Lcom/google/android/play/core/integrity/bm;->a(Ljava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/integrity/bg;->e:Lcom/google/android/play/core/integrity/bn;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    invoke-static {v0, v2}, Lcom/google/android/play/core/integrity/bn;->k(Lcom/google/android/play/core/integrity/bn;I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    .line 30
    .line 31
    const/16 v2, -0xe

    .line 32
    .line 33
    invoke-direct {v0, v2, v1}, Lcom/google/android/play/core/integrity/StandardIntegrityException;-><init>(ILjava/lang/Throwable;)V

    .line 34
    .line 35
    .line 36
    invoke-super {p0, v0}, Lcom/google/android/play/core/integrity/bm;->a(Ljava/lang/Exception;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/google/android/play/core/integrity/bg;->e:Lcom/google/android/play/core/integrity/bn;

    .line 41
    .line 42
    iget-object v0, v3, Lcom/google/android/play/core/integrity/bn;->a:Lcom/google/android/play/integrity/internal/f;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/google/android/play/integrity/internal/f;->e()Landroid/os/IInterface;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/google/android/play/integrity/internal/e0;

    .line 49
    .line 50
    iget-object v4, p0, Lcom/google/android/play/core/integrity/bg;->a:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;

    .line 51
    .line 52
    iget-wide v5, p0, Lcom/google/android/play/core/integrity/bg;->b:J

    .line 53
    .line 54
    iget-wide v7, p0, Lcom/google/android/play/core/integrity/bg;->c:J

    .line 55
    .line 56
    const/4 v9, 0x0

    .line 57
    invoke-static/range {v3 .. v9}, Lcom/google/android/play/core/integrity/bn;->a(Lcom/google/android/play/core/integrity/bn;Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;JJI)Landroid/os/Bundle;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    new-instance v2, Lcom/google/android/play/core/integrity/bk;

    .line 62
    .line 63
    iget-object v3, p0, Lcom/google/android/play/core/integrity/bg;->e:Lcom/google/android/play/core/integrity/bn;

    .line 64
    .line 65
    iget-object v4, p0, Lcom/google/android/play/core/integrity/bg;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 66
    .line 67
    iget-wide v5, p0, Lcom/google/android/play/core/integrity/bg;->b:J

    .line 68
    .line 69
    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/play/core/integrity/bk;-><init>(Lcom/google/android/play/core/integrity/bn;Lcom/google/android/gms/tasks/TaskCompletionSource;J)V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, v1, v2}, Lcom/google/android/play/integrity/internal/e0;->e(Landroid/os/Bundle;Lcom/google/android/play/integrity/internal/g0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :catch_0
    move-exception v0

    .line 77
    iget-object v1, p0, Lcom/google/android/play/core/integrity/bg;->e:Lcom/google/android/play/core/integrity/bn;

    .line 78
    .line 79
    iget-object v2, p0, Lcom/google/android/play/core/integrity/bg;->a:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;

    .line 80
    .line 81
    invoke-static {v1}, Lcom/google/android/play/core/integrity/bn;->i(Lcom/google/android/play/core/integrity/bn;)Lcom/google/android/play/integrity/internal/o0;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v2}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;->requestHash()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iget-object v3, p0, Lcom/google/android/play/core/integrity/bg;->a:Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;

    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;->verdictOptOut()Ljava/util/Set;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    iget-wide v4, p0, Lcom/google/android/play/core/integrity/bg;->b:J

    .line 96
    .line 97
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    filled-new-array {v2, v3, v4}, [Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const-string v3, "requestExpressIntegrityToken(%s, %s, %s)"

    .line 106
    .line 107
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/integrity/internal/o0;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/google/android/play/core/integrity/bg;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 111
    .line 112
    new-instance v2, Lcom/google/android/play/core/integrity/StandardIntegrityException;

    .line 113
    .line 114
    const/16 v3, -0x64

    .line 115
    .line 116
    invoke-direct {v2, v3, v0}, Lcom/google/android/play/core/integrity/StandardIntegrityException;-><init>(ILjava/lang/Throwable;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 120
    .line 121
    .line 122
    return-void
.end method
