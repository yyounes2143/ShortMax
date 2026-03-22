.class public final Lc5/l;
.super Ljava/lang/Object;
.source "ForcedSender.java"


# direct methods
.method public static a(La5/h;Lcom/google/android/datatransport/Priority;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DiscouragedApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La5/h<",
            "*>;",
            "Lcom/google/android/datatransport/Priority;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Lc5/s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p0, Lc5/s;

    .line 6
    .line 7
    invoke-virtual {p0}, Lc5/s;->d()Lc5/p;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0, p1}, Lc5/p;->f(Lcom/google/android/datatransport/Priority;)Lc5/p;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {}, Lc5/u;->c()Lc5/u;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lc5/u;->e()Lj5/o;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-virtual {p1, p0, v0}, Lj5/o;->u(Lc5/p;I)Lcom/google/android/datatransport/runtime/backends/BackendResponse;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p1, "ForcedSender"

    .line 29
    .line 30
    const-string v0, "Expected instance of `TransportImpl`, got `%s`."

    .line 31
    .line 32
    invoke-static {p1, v0, p0}, Lg5/a;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method
