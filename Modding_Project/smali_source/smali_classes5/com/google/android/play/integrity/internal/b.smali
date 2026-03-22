.class final Lcom/google/android/play/integrity/internal/b;
.super Lcom/google/android/play/integrity/internal/p0;
.source "com.google.android.play:integrity@@1.4.0"


# instance fields
.field final synthetic g:Landroid/os/IBinder;

.field final synthetic h:Lcom/google/android/play/integrity/internal/e;


# direct methods
.method constructor <init>(Lcom/google/android/play/integrity/internal/e;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/play/integrity/internal/b;->g:Landroid/os/IBinder;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/google/android/play/integrity/internal/b;->h:Lcom/google/android/play/integrity/internal/e;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/play/integrity/internal/p0;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/b;->h:Lcom/google/android/play/integrity/internal/e;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/play/integrity/internal/e;->a:Lcom/google/android/play/integrity/internal/f;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/play/integrity/internal/f;->g(Lcom/google/android/play/integrity/internal/f;)Lcom/google/android/play/integrity/internal/v0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/google/android/play/integrity/internal/b;->g:Landroid/os/IBinder;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lcom/google/android/play/integrity/internal/v0;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/os/IInterface;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/google/android/play/integrity/internal/b;->h:Lcom/google/android/play/integrity/internal/e;

    .line 18
    .line 19
    iget-object v1, v1, Lcom/google/android/play/integrity/internal/e;->a:Lcom/google/android/play/integrity/internal/f;

    .line 20
    .line 21
    invoke-static {v1, v0}, Lcom/google/android/play/integrity/internal/f;->n(Lcom/google/android/play/integrity/internal/f;Landroid/os/IInterface;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/b;->h:Lcom/google/android/play/integrity/internal/e;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/google/android/play/integrity/internal/e;->a:Lcom/google/android/play/integrity/internal/f;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/google/android/play/integrity/internal/f;->r(Lcom/google/android/play/integrity/internal/f;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/b;->h:Lcom/google/android/play/integrity/internal/e;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/google/android/play/integrity/internal/e;->a:Lcom/google/android/play/integrity/internal/f;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-static {v0, v1}, Lcom/google/android/play/integrity/internal/f;->m(Lcom/google/android/play/integrity/internal/f;Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/b;->h:Lcom/google/android/play/integrity/internal/e;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/google/android/play/integrity/internal/e;->a:Lcom/google/android/play/integrity/internal/f;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/google/android/play/integrity/internal/f;->i(Lcom/google/android/play/integrity/internal/f;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/Runnable;

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/google/android/play/integrity/internal/b;->h:Lcom/google/android/play/integrity/internal/e;

    .line 68
    .line 69
    iget-object v0, v0, Lcom/google/android/play/integrity/internal/e;->a:Lcom/google/android/play/integrity/internal/f;

    .line 70
    .line 71
    invoke-static {v0}, Lcom/google/android/play/integrity/internal/f;->i(Lcom/google/android/play/integrity/internal/f;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 76
    .line 77
    .line 78
    return-void
.end method
