.class final Lcom/google/android/play/core/integrity/bt;
.super Ljava/lang/Object;
.source "com.google.android.play:integrity@@1.4.0"


# instance fields
.field private final a:Lcom/google/android/play/core/integrity/bn;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/bn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/play/core/integrity/bt;->a:Lcom/google/android/play/core/integrity/bn;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method final synthetic a(JJILcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;)Lcom/google/android/gms/tasks/Task;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/google/android/play/core/integrity/bt;->a:Lcom/google/android/play/core/integrity/bn;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    move-object v1, p6

    .line 5
    move-wide v2, p1

    .line 6
    move-wide v4, p3

    .line 7
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/play/core/integrity/bn;->d(Lcom/google/android/play/core/integrity/StandardIntegrityManager$StandardIntegrityTokenRequest;JJI)Lcom/google/android/gms/tasks/Task;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
