.class final Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndLogin$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "PhoneAuthRemoteDS.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.repo.auth.phone.PhoneAuthRemoteDS"
    f = "PhoneAuthRemoteDS.kt"
    l = {
        0x23
    }
    m = "verifyOTPAndLogin-bMdYcbs"
.end annotation


# instance fields
.field synthetic h:Ljava/lang/Object;

.field final synthetic i:Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS;

.field j:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndLogin$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndLogin$1;->i:Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndLogin$1;->h:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndLogin$1;->j:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndLogin$1;->j:I

    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS$verifyOTPAndLogin$1;->i:Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS;

    .line 11
    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x0

    .line 18
    move-object v7, p0

    .line 19
    invoke-virtual/range {v0 .. v7}, Lcom/startshorts/androidplayer/repo/auth/phone/PhoneAuthRemoteDS;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-ne p1, v0, :cond_0

    .line 28
    .line 29
    return-object p1

    .line 30
    :cond_0
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method
