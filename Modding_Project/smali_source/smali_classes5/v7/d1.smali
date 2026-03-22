.class public final Lv7/d1;
.super Lcom/google/firebase/auth/b;
.source "com.google.firebase:firebase-auth@@24.0.1"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/b;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/firebase/auth/b;->a:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method
