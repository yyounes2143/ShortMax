.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzaan;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.0.1"


# instance fields
.field private final zza:Lcom/google/firebase/auth/PhoneAuthCredential;


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaan;->zza:Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/firebase/auth/PhoneAuthCredential;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaan;->zza:Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 2
    .line 3
    return-object v0
.end method
