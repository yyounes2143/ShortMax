.class public final Lja/j;
.super Lka/i;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPhoneAuth.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhoneAuth.kt\ncom/hades/aar/auth/PhoneAuth\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,124:1\n1#2:125\n*E\n"
    }
.end annotation


# static fields
.field public static final f:Lv/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public d:Ljava/lang/String;

.field public e:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lv/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lja/j;->f:Lv/g;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lka/i;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final s(Lja/j;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lja/j;->tag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static final t(Lja/j;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lka/i;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic u(Lja/j;Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Ljava/lang/String;Lcom/hades/aar/auth/base/AuthUser;ZLka/j;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p7}, Lka/i;->d(Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Ljava/lang/String;Lcom/hades/aar/auth/base/AuthUser;ZLka/j;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final v(Lja/j;Ljava/lang/String;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lja/j;->tag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static final synthetic w(Lja/j;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lja/j;->e:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic x(Lja/j;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lja/j;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public j(Landroid/app/Activity;Ljava/lang/String;Lka/j;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lka/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "otp"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lka/i;->a:Z

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v0, "auth start"

    .line 17
    .line 18
    invoke-virtual {p0}, Lja/j;->tag()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lja/j;->d:Ljava/lang/String;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lka/i;->j(Landroid/app/Activity;Ljava/lang/String;Lka/j;)V

    .line 37
    .line 38
    .line 39
    :try_start_0
    invoke-static {v0, p2}, Lcom/google/firebase/auth/PhoneAuthProvider;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    const-string v0, "getCredential(verificationId, otp)"

    .line 44
    .line 45
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v0, "auth CredentialAuth.auth start"

    .line 49
    .line 50
    invoke-virtual {p0}, Lja/j;->tag()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    new-instance v0, Lja/a;

    .line 58
    .line 59
    invoke-direct {v0}, Lja/a;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lka/i;->b:Lka/b;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Lka/i;->p(Lka/b;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, p1, p2, p3}, Lja/a;->i(Landroid/app/Activity;Lcom/google/firebase/auth/AuthCredential;Lka/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catch_0
    move-exception p1

    .line 72
    new-instance p2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    const-string v0, "auth failed -> "

    .line 75
    .line 76
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p0}, Lja/j;->tag()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    sget-object p2, Lcom/hades/aar/auth/base/AuthType;->PHONE_VERIFY:Lcom/hades/aar/auth/base/AuthType;

    .line 98
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    const-string v1, "verify failed : "

    .line 102
    .line 103
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0, p2, p1, p3}, Lja/j;->y(Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Lka/j;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_2
    :goto_0
    const-string p1, "auth failed -> mVerificationId is empty"

    .line 122
    .line 123
    invoke-virtual {p0}, Lja/j;->tag()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    sget-object p1, Lcom/hades/aar/auth/base/AuthType;->PHONE_VERIFY:Lcom/hades/aar/auth/base/AuthType;

    .line 131
    .line 132
    const-string p2, "verify failed : mVerificationId is empty"

    .line 133
    .line 134
    invoke-virtual {p0, p1, p2, p3}, Lja/j;->y(Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Lka/j;)V

    .line 135
    .line 136
    .line 137
    :goto_1
    return-void
.end method

.method public q()V
    .locals 1

    .line 1
    invoke-super {p0}, Lka/i;->q()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lja/j;->d:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lja/j;->e:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 8
    .line 9
    return-void
.end method

.method public r(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lka/j;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lka/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "areaCode"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "phoneNumber"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v1, "send -> areaCode("

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ") phoneNumber("

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x29

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lja/j;->tag()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    invoke-super {p0, p1, p2, p3, p4}, Lka/i;->r(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lka/j;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Lcom/google/firebase/auth/k;->a()Lcom/google/firebase/auth/k$a;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Lcom/google/firebase/auth/k$a;->b(Landroid/app/Activity;)Lcom/google/firebase/auth/k$a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v2, "+"

    .line 64
    .line 65
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {v0, p2}, Lcom/google/firebase/auth/k$a;->e(Ljava/lang/String;)Lcom/google/firebase/auth/k$a;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    const-wide/16 v0, 0x3c

    .line 83
    .line 84
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 89
    .line 90
    invoke-virtual {p2, p3, v0}, Lcom/google/firebase/auth/k$a;->f(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lcom/google/firebase/auth/k$a;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    new-instance p3, Lv/h;

    .line 95
    .line 96
    invoke-direct {p3, p0, p1, p4}, Lv/h;-><init>(Lja/j;Landroid/app/Activity;Lka/j;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p3}, Lcom/google/firebase/auth/k$a;->c(Lcom/google/firebase/auth/PhoneAuthProvider$a;)Lcom/google/firebase/auth/k$a;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string p2, "override fun send(\n     \u2026er(builder.build())\n    }"

    .line 104
    .line 105
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object p2, p0, Lja/j;->e:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 109
    .line 110
    if-eqz p2, :cond_0

    .line 111
    .line 112
    invoke-virtual {p1, p2}, Lcom/google/firebase/auth/k$a;->d(Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)Lcom/google/firebase/auth/k$a;

    .line 113
    .line 114
    .line 115
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/k$a;->a()Lcom/google/firebase/auth/k;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-static {p1}, Lcom/google/firebase/auth/PhoneAuthProvider;->b(Lcom/google/firebase/auth/k;)V

    .line 120
    .line 121
    .line 122
    return-void
.end method

.method public tag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "PhoneAuth"

    .line 2
    .line 3
    return-object v0
.end method

.method public final y(Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Lka/j;)V
    .locals 3
    .param p1    # Lcom/hades/aar/auth/base/AuthType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lka/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "authType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    const-string p2, ""

    .line 9
    .line 10
    :cond_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lka/i;->a:Z

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object v0, p0, Lka/i;->b:Lka/b;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-interface {v0}, Lka/b;->a()V

    .line 23
    .line 24
    .line 25
    :cond_2
    if-eqz p3, :cond_3

    .line 26
    .line 27
    invoke-interface {p0}, Lka/a;->tag()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "auth failed -> authType("

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, ") firebaseError(false) errMsg("

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const/16 v2, 0x29

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-interface {p3, v0, v1}, Lka/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 v0, 0x0

    .line 62
    const/4 v1, -0x1

    .line 63
    invoke-interface {p3, p1, v0, v1, p2}, Lka/j;->b(Lcom/hades/aar/auth/base/AuthType;ZILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_3
    :goto_0
    return-void
.end method
