.class public final synthetic Lcom/google/firebase/auth/h0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.0.1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/firebase/auth/PhoneAuthProvider$a;

.field private synthetic b:Lcom/google/firebase/FirebaseException;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/auth/PhoneAuthProvider$a;Lcom/google/firebase/FirebaseException;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/firebase/auth/h0;->a:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/firebase/auth/h0;->b:Lcom/google/firebase/FirebaseException;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/h0;->a:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/auth/h0;->b:Lcom/google/firebase/FirebaseException;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/google/firebase/auth/PhoneAuthProvider$a;->onVerificationFailed(Lcom/google/firebase/FirebaseException;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
