.class public final Lv/h;
.super Lcom/google/firebase/auth/PhoneAuthProvider$a;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lja/j;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Lka/j;


# direct methods
.method public constructor <init>(Lja/j;Landroid/app/Activity;Lka/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv/h;->a:Lja/j;

    .line 2
    .line 3
    iput-object p2, p0, Lv/h;->b:Landroid/app/Activity;

    .line 4
    .line 5
    iput-object p3, p0, Lv/h;->c:Lka/j;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/google/firebase/auth/PhoneAuthProvider$a;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onCodeSent(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V
    .locals 9

    .line 1
    const-string/jumbo v0, "verificationId"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "forceResendingToken"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lv/h;->a:Lja/j;

    .line 13
    .line 14
    invoke-static {v0}, Lja/j;->t(Lja/j;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v0, p0, Lv/h;->a:Lja/j;

    .line 22
    .line 23
    invoke-static {v0, p1}, Lja/j;->x(Lja/j;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lv/h;->a:Lja/j;

    .line 27
    .line 28
    invoke-static {v0, p2}, Lja/j;->w(Lja/j;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lv/h;->a:Lja/j;

    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v1, "onCodeSent succeed -> verificationId("

    .line 36
    .line 37
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/16 v1, 0x29

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {p2, v0}, Lja/j;->v(Lja/j;Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Lv/h;->a:Lja/j;

    .line 56
    .line 57
    iget-object v2, p0, Lv/h;->b:Landroid/app/Activity;

    .line 58
    .line 59
    sget-object v3, Lcom/hades/aar/auth/base/AuthType;->PHONE_SEND:Lcom/hades/aar/auth/base/AuthType;

    .line 60
    .line 61
    iget-object v8, p0, Lv/h;->c:Lka/j;

    .line 62
    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v7, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    move-object v5, p1

    .line 67
    invoke-static/range {v1 .. v8}, Lja/j;->u(Lja/j;Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Ljava/lang/String;Lcom/hades/aar/auth/base/AuthUser;ZLka/j;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public final onVerificationCompleted(Lcom/google/firebase/auth/PhoneAuthCredential;)V
    .locals 1

    .line 1
    const-string v0, "p0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lv/h;->a:Lja/j;

    .line 7
    .line 8
    const-string v0, "onVerificationCompleted"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lja/j;->v(Lja/j;Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onVerificationFailed(Lcom/google/firebase/FirebaseException;)V
    .locals 4

    .line 1
    const-string v0, "exception"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lv/h;->a:Lja/j;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, "onVerificationFailed -> "

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v0, v1}, Lja/j;->s(Lja/j;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lv/h;->a:Lja/j;

    .line 30
    .line 31
    sget-object v1, Lcom/hades/aar/auth/base/AuthType;->PHONE_VERIFY:Lcom/hades/aar/auth/base/AuthType;

    .line 32
    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo v3, "verify failed : "

    .line 36
    .line 37
    .line 38
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iget-object v2, p0, Lv/h;->c:Lka/j;

    .line 53
    .line 54
    invoke-virtual {v0, v1, p1, v2}, Lja/j;->y(Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Lka/j;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
