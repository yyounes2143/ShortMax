.class Lcom/google/firebase/appcheck/internal/e$a;
.super Ljava/lang/Object;
.source "TokenRefreshManager.java"

# interfaces
.implements Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/firebase/appcheck/internal/e;-><init>(Landroid/content/Context;Lcom/google/firebase/appcheck/internal/c;Lr7/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/firebase/appcheck/internal/c;

.field final synthetic b:Lr7/a;

.field final synthetic c:Lcom/google/firebase/appcheck/internal/e;


# direct methods
.method constructor <init>(Lcom/google/firebase/appcheck/internal/e;Lcom/google/firebase/appcheck/internal/c;Lr7/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/appcheck/internal/e$a;->c:Lcom/google/firebase/appcheck/internal/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/firebase/appcheck/internal/e$a;->a:Lcom/google/firebase/appcheck/internal/c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/firebase/appcheck/internal/e$a;->b:Lr7/a;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onBackgroundStateChanged(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/e$a;->c:Lcom/google/firebase/appcheck/internal/e;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/firebase/appcheck/internal/e;->a(Lcom/google/firebase/appcheck/internal/e;Z)Z

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/e$a;->a:Lcom/google/firebase/appcheck/internal/c;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/firebase/appcheck/internal/c;->c()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/e$a;->c:Lcom/google/firebase/appcheck/internal/e;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/google/firebase/appcheck/internal/e;->b(Lcom/google/firebase/appcheck/internal/e;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/google/firebase/appcheck/internal/e$a;->a:Lcom/google/firebase/appcheck/internal/c;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/firebase/appcheck/internal/e$a;->c:Lcom/google/firebase/appcheck/internal/e;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/firebase/appcheck/internal/e;->c(Lcom/google/firebase/appcheck/internal/e;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    iget-object v2, p0, Lcom/google/firebase/appcheck/internal/e$a;->b:Lr7/a;

    .line 31
    .line 32
    invoke-interface {v2}, Lr7/a;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    sub-long/2addr v0, v2

    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/google/firebase/appcheck/internal/c;->g(J)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method
