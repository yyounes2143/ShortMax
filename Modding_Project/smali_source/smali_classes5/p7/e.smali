.class public abstract Lp7/e;
.super Ljava/lang/Object;
.source "FirebaseAppCheck.java"

# interfaces
.implements Ls7/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lp7/e$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static c()Lp7/e;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/f;->m()Lcom/google/firebase/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lp7/e;->d(Lcom/google/firebase/f;)Lp7/e;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static d(Lcom/google/firebase/f;)Lp7/e;
    .locals 1
    .param p0    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-class v0, Lp7/e;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lp7/e;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public abstract b(Z)Lcom/google/android/gms/tasks/Task;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lp7/c;",
            ">;"
        }
    .end annotation
.end method

.method public abstract e(Lp7/b;)V
    .param p1    # Lp7/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
