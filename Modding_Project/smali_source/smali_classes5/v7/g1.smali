.class public final Lv7/g1;
.super Lcom/google/firebase/auth/c;
.source "com.google.firebase:firebase-auth@@24.0.1"


# instance fields
.field private final b:Lcom/google/firebase/auth/MultiFactorInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/firebase/auth/MultiFactorInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/c;-><init>()V

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
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/google/firebase/auth/MultiFactorInfo;

    .line 15
    .line 16
    iput-object p1, p0, Lv7/g1;->b:Lcom/google/firebase/auth/MultiFactorInfo;

    .line 17
    .line 18
    return-void
.end method
