.class public final Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS;
.super Ljava/lang/Object;
.source "EmailAuthRemoteDS.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$sendOTP$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$sendOTP$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$sendOTP$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$sendOTP$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$sendOTP$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$sendOTP$1;-><init>(Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$sendOTP$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$sendOTP$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p3, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p3}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p3, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 60
    .line 61
    invoke-direct {p3}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3, p1, v3}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->u(Landroid/content/Context;Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance p3, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$sendOTP$2;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-direct {p3, p2, v2}, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$sendOTP$2;-><init>(Ljava/lang/String;Lrs/c;)V

    .line 76
    .line 77
    .line 78
    iput v3, v0, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$sendOTP$1;->j:I

    .line 79
    .line 80
    invoke-virtual {p1, p3, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v1, :cond_3

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_3
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    if-eqz p2, :cond_4

    .line 92
    .line 93
    sget-object p2, Lud/b;->a:Lud/b;

    .line 94
    .line 95
    sget-object p3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 96
    .line 97
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 98
    .line 99
    .line 100
    move-result-wide v0

    .line 101
    invoke-virtual {p2, v0, v1}, Lud/b;->Y2(J)V

    .line 102
    .line 103
    .line 104
    :cond_4
    return-object p1
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$verifyOTP$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$verifyOTP$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$verifyOTP$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$verifyOTP$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$verifyOTP$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$verifyOTP$1;-><init>(Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$verifyOTP$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$verifyOTP$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p4, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p4}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p4, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 60
    .line 61
    invoke-direct {p4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p4, p1, v3}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->u(Landroid/content/Context;Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance p4, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$verifyOTP$2;

    .line 73
    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-direct {p4, p2, p3, v2}, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$verifyOTP$2;-><init>(Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 76
    .line 77
    .line 78
    iput v3, v0, Lcom/startshorts/androidplayer/repo/auth/email/EmailAuthRemoteDS$verifyOTP$1;->j:I

    .line 79
    .line 80
    invoke-virtual {p1, p4, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v1, :cond_3

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_3
    :goto_1
    return-object p1
.end method
