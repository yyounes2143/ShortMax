.class final Lcom/google/firebase/auth/k0;
.super Lcom/google/firebase/auth/PhoneAuthProvider$a;
.source "com.google.firebase:firebase-auth@@24.0.1"


# instance fields
.field private final synthetic a:Lcom/google/firebase/auth/k;

.field private final synthetic b:Lv7/u0;

.field private final synthetic c:Lcom/google/firebase/auth/PhoneAuthProvider$a;

.field private final synthetic d:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/k;Lv7/u0;Lcom/google/firebase/auth/PhoneAuthProvider$a;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/firebase/auth/k0;->a:Lcom/google/firebase/auth/k;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/firebase/auth/k0;->b:Lv7/u0;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/firebase/auth/k0;->c:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/firebase/auth/k0;->d:Lcom/google/firebase/auth/FirebaseAuth;

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/google/firebase/auth/PhoneAuthProvider$a;-><init>()V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onCodeAutoRetrievalTimeOut(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/k0;->c:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/PhoneAuthProvider$a;->onCodeAutoRetrievalTimeOut(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onCodeSent(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/k0;->c:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/google/firebase/auth/PhoneAuthProvider$a;->onCodeSent(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/k0;->c:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/PhoneAuthProvider$a;->onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onVerificationFailed(Lcom/google/firebase/FirebaseException;)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaen;->zza(Ljava/lang/Exception;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const-string v2, "FirebaseAuth"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/google/firebase/auth/k0;->a:Lcom/google/firebase/auth/k;

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Lcom/google/firebase/auth/k;->c(Z)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/google/firebase/auth/k0;->a:Lcom/google/firebase/auth/k;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/google/firebase/auth/k;->k()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    const-string v1, "Re-triggering phone verification with Recaptcha flow forced for phone number "

    .line 24
    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/google/firebase/auth/k0;->a:Lcom/google/firebase/auth/k;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/google/firebase/auth/FirebaseAuth;->B(Lcom/google/firebase/auth/k;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/k0;->b:Lv7/u0;

    .line 45
    .line 46
    invoke-virtual {v0}, Lv7/u0;->c()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const-string v3, ", error - "

    .line 55
    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaen;->zzb(Ljava/lang/Exception;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/google/firebase/auth/k0;->d:Lcom/google/firebase/auth/FirebaseAuth;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseAuth;->E()Lv7/e0;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v4, "PHONE_PROVIDER"

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Lv7/e0;->d(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    iget-object v0, p0, Lcom/google/firebase/auth/k0;->b:Lv7/u0;

    .line 79
    .line 80
    invoke-virtual {v0}, Lv7/u0;->b()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    .line 90
    iget-object p1, p0, Lcom/google/firebase/auth/k0;->a:Lcom/google/firebase/auth/k;

    .line 91
    .line 92
    invoke-virtual {p1, v1}, Lcom/google/firebase/auth/k;->e(Z)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/google/firebase/auth/k0;->a:Lcom/google/firebase/auth/k;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/google/firebase/auth/k;->k()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v1, "Re-triggering phone verification with non-reCAPTCHA Enterprise flow for phone number "

    .line 104
    .line 105
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/google/firebase/auth/k0;->a:Lcom/google/firebase/auth/k;

    .line 119
    .line 120
    invoke-static {p1}, Lcom/google/firebase/auth/FirebaseAuth;->B(Lcom/google/firebase/auth/k;)V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/k0;->a:Lcom/google/firebase/auth/k;

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/google/firebase/auth/k;->k()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    .line 135
    .line 136
    const-string v5, "Invoking original failure callbacks after reCAPTCHA Enterprise + phone verification failure for "

    .line 137
    .line 138
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/google/firebase/auth/k0;->c:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 158
    .line 159
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/PhoneAuthProvider$a;->onVerificationFailed(Lcom/google/firebase/FirebaseException;)V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/google/firebase/auth/k0;->a:Lcom/google/firebase/auth/k;

    .line 164
    .line 165
    invoke-virtual {v0}, Lcom/google/firebase/auth/k;->k()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    new-instance v4, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v5, "Invoking original failure callbacks after phone verification failure for "

    .line 176
    .line 177
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/google/firebase/auth/k0;->c:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 197
    .line 198
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/PhoneAuthProvider$a;->onVerificationFailed(Lcom/google/firebase/FirebaseException;)V

    .line 199
    .line 200
    .line 201
    return-void
.end method
