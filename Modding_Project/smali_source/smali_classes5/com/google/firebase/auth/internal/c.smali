.class public final synthetic Lcom/google/firebase/auth/internal/c;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.0.1"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field private synthetic a:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/auth/internal/c;->a:Landroid/net/Uri;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/c;->a:Landroid/net/Uri;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/firebase/auth/internal/GenericIdpActivity;->k(Landroid/net/Uri;Lcom/google/android/gms/tasks/Task;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
