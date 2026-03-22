.class public final synthetic Lv7/o0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.0.1"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# instance fields
.field private synthetic a:Lv7/r;

.field private synthetic b:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field private synthetic c:Lcom/google/firebase/auth/FirebaseAuth;

.field private synthetic d:Lv7/n0;

.field private synthetic e:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lv7/r;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lv7/n0;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv7/o0;->a:Lv7/r;

    .line 5
    .line 6
    iput-object p2, p0, Lv7/o0;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 7
    .line 8
    iput-object p3, p0, Lv7/o0;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 9
    .line 10
    iput-object p4, p0, Lv7/o0;->d:Lv7/n0;

    .line 11
    .line 12
    iput-object p5, p0, Lv7/o0;->e:Landroid/app/Activity;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lv7/o0;->a:Lv7/r;

    .line 2
    .line 3
    iget-object v1, p0, Lv7/o0;->b:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 4
    .line 5
    iget-object v2, p0, Lv7/o0;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 6
    .line 7
    iget-object v3, p0, Lv7/o0;->d:Lv7/n0;

    .line 8
    .line 9
    iget-object v4, p0, Lv7/o0;->e:Landroid/app/Activity;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    invoke-static/range {v0 .. v5}, Lv7/r;->f(Lv7/r;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lv7/n0;Landroid/app/Activity;Lcom/google/android/gms/tasks/Task;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
