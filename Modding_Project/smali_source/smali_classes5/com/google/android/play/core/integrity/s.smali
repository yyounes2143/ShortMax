.class final Lcom/google/android/play/core/integrity/s;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.4.0"


# instance fields
.field private final a:Lcom/google/android/play/integrity/internal/w;

.field private final b:Lcom/google/android/play/integrity/internal/w;

.field private final c:Lcom/google/android/play/integrity/internal/w;

.field private final d:Lcom/google/android/play/integrity/internal/w;

.field private final e:Lcom/google/android/play/integrity/internal/w;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/integrity/r;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/play/integrity/internal/t;->b(Ljava/lang/Object;)Lcom/google/android/play/integrity/internal/s;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/play/core/integrity/s;->a:Lcom/google/android/play/integrity/internal/w;

    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/play/core/integrity/ac;->a()Lcom/google/android/play/core/integrity/ad;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-static {p2}, Lcom/google/android/play/integrity/internal/r;->b(Lcom/google/android/play/integrity/internal/w;)Lcom/google/android/play/integrity/internal/w;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Lcom/google/android/play/core/integrity/s;->b:Lcom/google/android/play/integrity/internal/w;

    .line 19
    .line 20
    invoke-static {}, Lcom/google/android/play/core/integrity/l;->a()Lcom/google/android/play/core/integrity/m;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lcom/google/android/play/core/integrity/au;

    .line 25
    .line 26
    invoke-direct {v1, p1, v0}, Lcom/google/android/play/core/integrity/au;-><init>(Lcom/google/android/play/integrity/internal/x;Lcom/google/android/play/integrity/internal/x;)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lcom/google/android/play/core/integrity/s;->c:Lcom/google/android/play/integrity/internal/w;

    .line 30
    .line 31
    invoke-static {}, Lcom/google/android/play/core/integrity/l;->a()Lcom/google/android/play/core/integrity/m;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v2, Lcom/google/android/play/core/integrity/al;

    .line 36
    .line 37
    invoke-direct {v2, p1, p2, v1, v0}, Lcom/google/android/play/core/integrity/al;-><init>(Lcom/google/android/play/integrity/internal/x;Lcom/google/android/play/integrity/internal/x;Lcom/google/android/play/integrity/internal/x;Lcom/google/android/play/integrity/internal/x;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lcom/google/android/play/integrity/internal/r;->b(Lcom/google/android/play/integrity/internal/w;)Lcom/google/android/play/integrity/internal/w;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/google/android/play/core/integrity/s;->d:Lcom/google/android/play/integrity/internal/w;

    .line 45
    .line 46
    new-instance p2, Lcom/google/android/play/core/integrity/ab;

    .line 47
    .line 48
    invoke-direct {p2, p1}, Lcom/google/android/play/core/integrity/ab;-><init>(Lcom/google/android/play/integrity/internal/x;)V

    .line 49
    .line 50
    .line 51
    invoke-static {p2}, Lcom/google/android/play/integrity/internal/r;->b(Lcom/google/android/play/integrity/internal/w;)Lcom/google/android/play/integrity/internal/w;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/google/android/play/core/integrity/s;->e:Lcom/google/android/play/integrity/internal/w;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/play/core/integrity/IntegrityManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/s;->e:Lcom/google/android/play/integrity/internal/w;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/google/android/play/integrity/internal/x;->a()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/play/core/integrity/IntegrityManager;

    .line 8
    .line 9
    return-object v0
.end method
