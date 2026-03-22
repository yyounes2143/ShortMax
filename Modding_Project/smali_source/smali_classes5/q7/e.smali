.class public final synthetic Lq7/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic a:Lcom/google/firebase/appcheck/internal/b;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/appcheck/internal/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq7/e;->a:Lcom/google/firebase/appcheck/internal/b;

    .line 5
    .line 6
    iput-boolean p2, p0, Lq7/e;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lq7/e;->a:Lcom/google/firebase/appcheck/internal/b;

    .line 2
    .line 3
    iget-boolean v1, p0, Lq7/e;->b:Z

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/google/firebase/appcheck/internal/b;->i(Lcom/google/firebase/appcheck/internal/b;ZLcom/google/android/gms/tasks/Task;)Lcom/google/android/gms/tasks/Task;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
