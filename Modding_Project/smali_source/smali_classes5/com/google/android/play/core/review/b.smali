.class public Lcom/google/android/play/core/review/b;
.super Ljava/lang/Object;
.source "com.google.android.play:review@@2.0.2"


# direct methods
.method public static a(Landroid/content/Context;)Lcom/google/android/play/core/review/a;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object p0, v0

    .line 8
    :cond_0
    new-instance v0, Lcom/google/android/play/core/review/d;

    .line 9
    .line 10
    new-instance v1, Lcom/google/android/play/core/review/i;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/google/android/play/core/review/i;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, v1}, Lcom/google/android/play/core/review/d;-><init>(Lcom/google/android/play/core/review/i;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
