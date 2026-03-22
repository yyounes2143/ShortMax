.class public final synthetic Lq7/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field public final synthetic a:Lcom/google/firebase/appcheck/internal/b;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/appcheck/internal/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq7/g;->a:Lcom/google/firebase/appcheck/internal/b;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/g;->a:Lcom/google/firebase/appcheck/internal/b;

    .line 2
    .line 3
    check-cast p1, Lp7/c;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/google/firebase/appcheck/internal/b;->h(Lcom/google/firebase/appcheck/internal/b;Lp7/c;)Lcom/google/android/gms/tasks/Task;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
