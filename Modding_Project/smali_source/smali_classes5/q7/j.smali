.class public final synthetic Lq7/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic a:Lcom/google/firebase/appcheck/internal/c;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/appcheck/internal/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq7/j;->a:Lcom/google/firebase/appcheck/internal/c;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lq7/j;->a:Lcom/google/firebase/appcheck/internal/c;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/firebase/appcheck/internal/c;->a(Lcom/google/firebase/appcheck/internal/c;Ljava/lang/Exception;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
