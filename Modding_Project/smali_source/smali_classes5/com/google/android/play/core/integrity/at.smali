.class final Lcom/google/android/play/core/integrity/at;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.4.0"


# instance fields
.field private final a:Lcom/google/android/play/integrity/internal/x;

.field private final b:Lcom/google/android/play/integrity/internal/x;


# direct methods
.method constructor <init>(Lcom/google/android/play/integrity/internal/x;Lcom/google/android/play/integrity/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/play/core/integrity/at;->a:Lcom/google/android/play/integrity/internal/x;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/play/core/integrity/at;->b:Lcom/google/android/play/integrity/internal/x;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method final a(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/integrity/internal/f;)Lcom/google/android/play/core/integrity/as;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/at;->a:Lcom/google/android/play/integrity/internal/x;

    .line 2
    .line 3
    new-instance v7, Lcom/google/android/play/core/integrity/as;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/google/android/play/integrity/internal/x;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v2, v0

    .line 10
    check-cast v2, Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/play/core/integrity/at;->b:Lcom/google/android/play/integrity/internal/x;

    .line 16
    .line 17
    invoke-interface {v0}, Lcom/google/android/play/integrity/internal/x;->a()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    move-object v3, v0

    .line 22
    check-cast v3, Lcom/google/android/play/core/integrity/k;

    .line 23
    .line 24
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-object v1, v7

    .line 34
    move-object v4, p1

    .line 35
    move-object v5, p2

    .line 36
    move-object v6, p3

    .line 37
    invoke-direct/range {v1 .. v6}, Lcom/google/android/play/core/integrity/as;-><init>(Landroid/content/Context;Lcom/google/android/play/core/integrity/k;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/integrity/internal/f;)V

    .line 38
    .line 39
    .line 40
    return-object v7
.end method
