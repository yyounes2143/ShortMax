.class final Lv7/m;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.0.1"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field private final synthetic a:Lv7/n;


# direct methods
.method constructor <init>(Lv7/n;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv7/m;->a:Lv7/n;

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    instance-of p1, p1, Lcom/google/firebase/FirebaseNetworkException;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lv7/k;->a()Lcom/google/android/gms/common/logging/Logger;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [Ljava/lang/Object;

    .line 11
    .line 12
    const-string v1, "Failure to refresh token; scheduling refresh after failure"

    .line 13
    .line 14
    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/common/logging/Logger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lv7/m;->a:Lv7/n;

    .line 18
    .line 19
    iget-object p1, p1, Lv7/n;->b:Lv7/k;

    .line 20
    .line 21
    invoke-virtual {p1}, Lv7/k;->d()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
