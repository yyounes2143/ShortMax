.class public final Lcom/google/firebase/auth/FirebaseAuthWeakPasswordException;
.super Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;
.source "com.google.firebase:firebase-auth@@24.0.1"


# instance fields
.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/auth/FirebaseAuthInvalidCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/google/firebase/auth/FirebaseAuthWeakPasswordException;->b:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method
