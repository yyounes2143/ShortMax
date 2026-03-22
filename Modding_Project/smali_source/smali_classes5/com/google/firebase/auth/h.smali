.class public Lcom/google/firebase/auth/h;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.0.1"


# direct methods
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/AuthCredential;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/auth/GoogleAuthCredential;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/firebase/auth/GoogleAuthCredential;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
