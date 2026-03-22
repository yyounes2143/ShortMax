.class public final Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;
.super Ljava/lang/Object;
.source "FirebaseAuthManager.kt"

# interfaces
.implements Lka/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "tag"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public b(Lcom/hades/aar/auth/base/AuthType;ZILjava/lang/String;)V
    .locals 2

    .line 1
    const-string p2, "authType"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "authType("

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ") errorCode("

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p3, ") mAuthReason("

    .line 30
    .line 31
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object p3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 35
    .line 36
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/manager/auth/a;->k()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 37
    .line 38
    .line 39
    move-result-object p3

    .line 40
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string p3, ") errMsg("

    .line 44
    .line 45
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const/16 p3, 0x29

    .line 52
    .line 53
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    invoke-virtual {p2, p3}, Lcom/startshorts/androidplayer/manager/auth/a;->f(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 p2, 0x1

    .line 64
    if-eqz p4, :cond_0

    .line 65
    .line 66
    const-string p3, "network"

    .line 67
    .line 68
    invoke-static {p4, p3, p2}, Lkotlin/text/StringsKt;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    if-ne p3, p2, :cond_0

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    if-eqz p4, :cond_1

    .line 76
    .line 77
    const-string p3, "CANCELED"

    .line 78
    .line 79
    invoke-static {p4, p3, p2}, Lkotlin/text/StringsKt;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    if-ne p3, p2, :cond_1

    .line 84
    .line 85
    const/4 p2, 0x0

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    const/4 p2, 0x3

    .line 88
    :goto_0
    iget-object p3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 89
    .line 90
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/manager/auth/a;->k()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 91
    .line 92
    .line 93
    move-result-object p3

    .line 94
    sget-object v0, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 95
    .line 96
    if-ne p3, v0, :cond_2

    .line 97
    .line 98
    iget-object p3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 99
    .line 100
    invoke-static {p3, p1, p2, p4, p4}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->w(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    iget-object p3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 105
    .line 106
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/manager/auth/a;->k()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 107
    .line 108
    .line 109
    move-result-object p3

    .line 110
    sget-object v0, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->BIND:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 111
    .line 112
    if-ne p3, v0, :cond_3

    .line 113
    .line 114
    iget-object p3, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 115
    .line 116
    invoke-static {p3, p1, p2, p4, p4}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->u(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_3
    :goto_1
    return-void
.end method

.method public c(Landroid/app/Activity;Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Ljava/lang/String;Lcom/hades/aar/auth/base/AuthUser;)V
    .locals 1

    .line 1
    const-string p1, "authType"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "firebaseToken"

    .line 7
    .line 8
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 12
    .line 13
    new-instance p5, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v0, "onSuccess -> authType("

    .line 19
    .line 20
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, ") mAuthReason("

    .line 27
    .line 28
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/auth/a;->k()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/16 v0, 0x29

    .line 41
    .line 42
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p5

    .line 49
    invoke-virtual {p1, p5}, Lcom/startshorts/androidplayer/manager/auth/a;->m(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    sget-object p1, Lcom/hades/aar/auth/base/AuthType;->PHONE_SEND:Lcom/hades/aar/auth/base/AuthType;

    .line 53
    .line 54
    if-eq p2, p1, :cond_3

    .line 55
    .line 56
    sget-object p1, Lcom/hades/aar/auth/base/AuthType;->EMAIL_SEND:Lcom/hades/aar/auth/base/AuthType;

    .line 57
    .line 58
    if-eq p2, p1, :cond_3

    .line 59
    .line 60
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/auth/a;->k()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    sget-object p5, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 67
    .line 68
    const-string v0, ""

    .line 69
    .line 70
    if-ne p1, p5, :cond_1

    .line 71
    .line 72
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 73
    .line 74
    if-nez p3, :cond_0

    .line 75
    .line 76
    move-object p3, v0

    .line 77
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->y(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/auth/a;->k()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    sget-object p5, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->BIND:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 88
    .line 89
    if-ne p1, p5, :cond_5

    .line 90
    .line 91
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 92
    .line 93
    if-nez p3, :cond_2

    .line 94
    .line 95
    move-object p3, v0

    .line 96
    :cond_2
    invoke-static {p1, p2, p3, p4}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->t(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/auth/a;->k()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    sget-object p3, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 107
    .line 108
    if-ne p1, p3, :cond_4

    .line 109
    .line 110
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/auth/a;->j()Lke/b;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_5

    .line 117
    .line 118
    invoke-interface {p1, p2}, Lke/b;->a(Lcom/hades/aar/auth/base/AuthType;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/auth/a;->k()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    sget-object p3, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->BIND:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 129
    .line 130
    if-ne p1, p3, :cond_5

    .line 131
    .line 132
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/auth/a;->h()Lke/a;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-eqz p1, :cond_5

    .line 139
    .line 140
    invoke-interface {p1, p2}, Lke/a;->a(Lcom/hades/aar/auth/base/AuthType;)V

    .line 141
    .line 142
    .line 143
    :cond_5
    :goto_0
    return-void
.end method

.method public d(Lcom/hades/aar/auth/base/AuthType;)V
    .locals 4

    .line 1
    const-string v0, "authType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onCancelled -> authType("

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/16 v2, 0x29

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->f(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 34
    .line 35
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_user_canceled:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/auth/a;->k()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget-object v2, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    if-ne v1, v2, :cond_0

    .line 51
    .line 52
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 53
    .line 54
    invoke-static {v1, p1, v3, v0, v0}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->w(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/auth/a;->k()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    sget-object v2, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->BIND:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 65
    .line 66
    if-ne v1, v2, :cond_1

    .line 67
    .line 68
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager$a;->a:Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 69
    .line 70
    invoke-static {v1, p1, v3, v0, v0}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->u(Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    return-void
.end method
