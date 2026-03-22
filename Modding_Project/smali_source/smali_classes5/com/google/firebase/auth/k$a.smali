.class public final Lcom/google/firebase/auth/k$a;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.0.1"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/auth/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/auth/FirebaseAuth;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/Long;

.field private d:Lcom/google/firebase/auth/PhoneAuthProvider$a;

.field private e:Ljava/util/concurrent/Executor;

.field private f:Landroid/app/Activity;

.field private g:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/google/firebase/auth/MultiFactorSession;

.field private i:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

.field private j:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 0
    .param p1    # Lcom/google/firebase/auth/FirebaseAuth;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/google/firebase/auth/FirebaseAuth;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/firebase/auth/k$a;->a:Lcom/google/firebase/auth/FirebaseAuth;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/firebase/auth/k;
    .locals 15
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/k$a;->a:Lcom/google/firebase/auth/FirebaseAuth;

    .line 2
    .line 3
    const-string v1, "FirebaseAuth instance cannot be null"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/firebase/auth/k$a;->c:Ljava/lang/Long;

    .line 9
    .line 10
    const-string v1, "You must specify an auto-retrieval timeout; please call #setTimeout()"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/firebase/auth/k$a;->d:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 16
    .line 17
    const-string v1, "You must specify callbacks on your PhoneAuthOptions. Please call #setCallbacks()"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/google/firebase/auth/k$a;->a:Lcom/google/firebase/auth/FirebaseAuth;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/google/firebase/auth/FirebaseAuth;->A:Ljava/util/concurrent/Executor;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/firebase/auth/k$a;->e:Ljava/util/concurrent/Executor;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/google/firebase/auth/k$a;->c:Ljava/lang/Long;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v0

    .line 34
    const-wide/16 v2, 0x0

    .line 35
    .line 36
    cmp-long v0, v0, v2

    .line 37
    .line 38
    if-ltz v0, :cond_6

    .line 39
    .line 40
    iget-object v0, p0, Lcom/google/firebase/auth/k$a;->c:Ljava/lang/Long;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    const-wide/16 v2, 0x78

    .line 47
    .line 48
    cmp-long v0, v0, v2

    .line 49
    .line 50
    if-gtz v0, :cond_6

    .line 51
    .line 52
    iget-object v0, p0, Lcom/google/firebase/auth/k$a;->h:Lcom/google/firebase/auth/MultiFactorSession;

    .line 53
    .line 54
    const-string v1, "A phoneMultiFactorInfo must be set for second factor sign-in."

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    const/4 v3, 0x1

    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/google/firebase/auth/k$a;->b:Ljava/lang/String;

    .line 61
    .line 62
    const-string v4, "The given phoneNumber is empty. Please set a non-empty phone number with #setPhoneNumber()"

    .line 63
    .line 64
    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    iget-boolean v0, p0, Lcom/google/firebase/auth/k$a;->j:Z

    .line 68
    .line 69
    xor-int/2addr v0, v3

    .line 70
    const-string v4, "You cannot require sms validation without setting a multi-factor session."

    .line 71
    .line 72
    invoke-static {v0, v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/google/firebase/auth/k$a;->i:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 76
    .line 77
    if-nez v0, :cond_0

    .line 78
    .line 79
    move v2, v3

    .line 80
    :cond_0
    invoke-static {v2, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    if-eqz v0, :cond_3

    .line 85
    .line 86
    check-cast v0, Lcom/google/firebase/auth/internal/zzam;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzam;->zzd()Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    iget-object v0, p0, Lcom/google/firebase/auth/k$a;->b:Ljava/lang/String;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/google/firebase/auth/k$a;->i:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 100
    .line 101
    if-nez v0, :cond_2

    .line 102
    .line 103
    move v2, v3

    .line 104
    :cond_2
    const-string v0, "Invalid MultiFactorSession - use the getSession method in MultiFactorResolver to get a valid sign-in session."

    .line 105
    .line 106
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/auth/k$a;->i:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 111
    .line 112
    if-eqz v0, :cond_4

    .line 113
    .line 114
    move v0, v3

    .line 115
    goto :goto_0

    .line 116
    :cond_4
    move v0, v2

    .line 117
    :goto_0
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/google/firebase/auth/k$a;->b:Ljava/lang/String;

    .line 121
    .line 122
    if-nez v0, :cond_5

    .line 123
    .line 124
    move v2, v3

    .line 125
    :cond_5
    const-string v0, "A phone number must not be set for MFA sign-in. A PhoneMultiFactorInfo should be set instead."

    .line 126
    .line 127
    invoke-static {v2, v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    :goto_1
    new-instance v0, Lcom/google/firebase/auth/k;

    .line 131
    .line 132
    iget-object v4, p0, Lcom/google/firebase/auth/k$a;->a:Lcom/google/firebase/auth/FirebaseAuth;

    .line 133
    .line 134
    iget-object v5, p0, Lcom/google/firebase/auth/k$a;->c:Ljava/lang/Long;

    .line 135
    .line 136
    iget-object v6, p0, Lcom/google/firebase/auth/k$a;->d:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 137
    .line 138
    iget-object v7, p0, Lcom/google/firebase/auth/k$a;->e:Ljava/util/concurrent/Executor;

    .line 139
    .line 140
    iget-object v8, p0, Lcom/google/firebase/auth/k$a;->b:Ljava/lang/String;

    .line 141
    .line 142
    iget-object v9, p0, Lcom/google/firebase/auth/k$a;->f:Landroid/app/Activity;

    .line 143
    .line 144
    iget-object v10, p0, Lcom/google/firebase/auth/k$a;->g:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 145
    .line 146
    iget-object v11, p0, Lcom/google/firebase/auth/k$a;->h:Lcom/google/firebase/auth/MultiFactorSession;

    .line 147
    .line 148
    iget-object v12, p0, Lcom/google/firebase/auth/k$a;->i:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 149
    .line 150
    iget-boolean v13, p0, Lcom/google/firebase/auth/k$a;->j:Z

    .line 151
    .line 152
    const/4 v14, 0x0

    .line 153
    move-object v3, v0

    .line 154
    invoke-direct/range {v3 .. v14}, Lcom/google/firebase/auth/k;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/Long;Lcom/google/firebase/auth/PhoneAuthProvider$a;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;Lcom/google/firebase/auth/MultiFactorSession;Lcom/google/firebase/auth/PhoneMultiFactorInfo;ZLcom/google/firebase/auth/x;)V

    .line 155
    .line 156
    .line 157
    return-object v0

    .line 158
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 159
    .line 160
    const-string v1, "We only support 0-120 seconds for sms-auto-retrieval timeout"

    .line 161
    .line 162
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw v0
.end method

.method public final b(Landroid/app/Activity;)Lcom/google/firebase/auth/k$a;
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/k$a;->f:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c(Lcom/google/firebase/auth/PhoneAuthProvider$a;)Lcom/google/firebase/auth/k$a;
    .locals 0
    .param p1    # Lcom/google/firebase/auth/PhoneAuthProvider$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/k$a;->d:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public final d(Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)Lcom/google/firebase/auth/k$a;
    .locals 0
    .param p1    # Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/k$a;->g:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 2
    .line 3
    return-object p0
.end method

.method public final e(Ljava/lang/String;)Lcom/google/firebase/auth/k$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/k$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final f(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcom/google/firebase/auth/k$a;
    .locals 3
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-virtual {v0, v1, v2, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/google/firebase/auth/k$a;->c:Ljava/lang/Long;

    .line 16
    .line 17
    return-object p0
.end method
