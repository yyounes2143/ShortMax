.class public Lcom/startshorts/androidplayer/manager/auth/a;
.super Ljava/lang/Object;
.source "BaseAuthManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/auth/a$a;,
        Lcom/startshorts/androidplayer/manager/auth/a$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final j:Lcom/startshorts/androidplayer/manager/auth/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lja/f;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Lja/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lja/j;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lja/i;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lcom/startshorts/androidplayer/bean/auth/AuthReason;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lka/j;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lke/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lke/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/auth/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/auth/a;->j:Lcom/startshorts/androidplayer/manager/auth/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final e()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->e:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->a:Lja/f;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lka/i;->q()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->a:Lja/f;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->b:Lja/b;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v1}, Lja/b;->q()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->b:Lja/b;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->c:Lja/j;

    .line 23
    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    invoke-virtual {v1}, Lja/j;->q()V

    .line 27
    .line 28
    .line 29
    :cond_2
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->c:Lja/j;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->d:Lja/i;

    .line 32
    .line 33
    if-eqz v1, :cond_3

    .line 34
    .line 35
    invoke-virtual {v1}, Lja/i;->q()V

    .line 36
    .line 37
    .line 38
    :cond_3
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->d:Lja/i;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/bean/auth/AuthReason;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "reason"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "authWithFacebook"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/auth/a;->m(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->e()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->e:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 15
    .line 16
    new-instance p1, Lfk/p;

    .line 17
    .line 18
    invoke-direct {p1}, Lfk/p;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lfk/p;->d()Lfk/p;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "init FacebookSdk took "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lfk/p;->b()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, "ms"

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/auth/a;->m(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :try_start_0
    new-instance p1, Lja/b;

    .line 55
    .line 56
    invoke-direct {p1}, Lja/b;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->b:Lja/b;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->g()Landroid/app/Activity;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->b:Lja/b;

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    new-instance v1, Lii/j;

    .line 72
    .line 73
    invoke-direct {v1, p1}, Lii/j;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->g()Landroid/app/Activity;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eqz v2, :cond_0

    .line 81
    .line 82
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_waiting:I

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception p1

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    const/4 v2, 0x0

    .line 92
    :goto_0
    invoke-virtual {v1, v2}, Lhi/b;->y(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lka/i;->p(Lka/b;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->b:Lja/b;

    .line 99
    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->f:Lka/j;

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-virtual {v0, p1, v2, v1}, Lja/b;->k(Landroid/app/Activity;ZLka/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v1, "authType("

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    sget-object v1, Lcom/hades/aar/auth/base/AuthType;->FACEBOOK:Lcom/hades/aar/auth/base/AuthType;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, ") errMsg("

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const/16 p1, 0x29

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/auth/a;->f(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_2
    :goto_2
    return-void
.end method

.method public b(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/bean/auth/AuthReason;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "reason"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "authWithGoogle"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/auth/a;->m(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->e()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->e:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 15
    .line 16
    :try_start_0
    new-instance p1, Lja/f;

    .line 17
    .line 18
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 19
    .line 20
    sget v1, Lcom/startshorts/androidplayer/R$string;->google_server_id:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const/16 v1, 0x3e9

    .line 27
    .line 28
    invoke-direct {p1, v0, v1}, Lja/f;-><init>(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->a:Lja/f;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->g()Landroid/app/Activity;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->a:Lja/f;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    new-instance v1, Lii/j;

    .line 44
    .line 45
    invoke-direct {v1, p1}, Lii/j;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->g()Landroid/app/Activity;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_waiting:I

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p1

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    const/4 v2, 0x0

    .line 64
    :goto_0
    invoke-virtual {v1, v2}, Lhi/b;->y(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lka/i;->p(Lka/b;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->a:Lja/f;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->f:Lka/j;

    .line 75
    .line 76
    const/4 v2, 0x0

    .line 77
    invoke-virtual {v0, p1, v2, v1}, Lja/f;->k(Landroid/app/Activity;ZLka/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v1, "authType("

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    sget-object v1, Lcom/hades/aar/auth/base/AuthType;->GOOGLE:Lcom/hades/aar/auth/base/AuthType;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, ") errMsg("

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const/16 p1, 0x29

    .line 109
    .line 110
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/auth/a;->f(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :cond_2
    :goto_2
    return-void
.end method

.method public c(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/bean/auth/AuthReason;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "reason"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "authWithHuaWei"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/auth/a;->m(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->e()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->e:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 15
    .line 16
    new-instance p1, Lfk/p;

    .line 17
    .line 18
    invoke-direct {p1}, Lfk/p;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lfk/p;->d()Lfk/p;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "init HuaWei took "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lfk/p;->b()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, "ms"

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/auth/a;->m(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :try_start_0
    new-instance p1, Lja/i;

    .line 55
    .line 56
    invoke-direct {p1}, Lja/i;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->d:Lja/i;

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->g()Landroid/app/Activity;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->d:Lja/i;

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    new-instance v1, Lii/j;

    .line 72
    .line 73
    invoke-direct {v1, p1}, Lii/j;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->g()Landroid/app/Activity;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eqz v2, :cond_0

    .line 81
    .line 82
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_waiting:I

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception p1

    .line 90
    goto :goto_1

    .line 91
    :cond_0
    const/4 v2, 0x0

    .line 92
    :goto_0
    invoke-virtual {v1, v2}, Lhi/b;->y(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lka/i;->p(Lka/b;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->d:Lja/i;

    .line 99
    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->f:Lka/j;

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-virtual {v0, p1, v2, v1}, Lja/i;->k(Landroid/app/Activity;ZLka/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v1, "authType("

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    sget-object v1, Lcom/hades/aar/auth/base/AuthType;->HUAWEI:Lcom/hades/aar/auth/base/AuthType;

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const-string v1, ") errMsg("

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const/16 p1, 0x29

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/auth/a;->f(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :cond_2
    :goto_2
    return-void
.end method

.method public d(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/auth/AuthReason;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "otp"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "reason"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->g()Landroid/app/Activity;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_3

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "authWithPhone "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->m(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->c:Lja/j;

    .line 38
    .line 39
    if-nez v1, :cond_2

    .line 40
    .line 41
    sget-object p1, Lcom/startshorts/androidplayer/manager/auth/a$b;->$EnumSwitchMapping$0:[I

    .line 42
    .line 43
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    aget p1, p1, p2

    .line 48
    .line 49
    const/4 p2, 0x1

    .line 50
    const-string v0, "mPhoneAuth is null"

    .line 51
    .line 52
    const/4 v1, 0x3

    .line 53
    if-eq p1, p2, :cond_1

    .line 54
    .line 55
    const/4 p2, 0x2

    .line 56
    if-ne p1, p2, :cond_0

    .line 57
    .line 58
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->h:Lke/a;

    .line 59
    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    sget-object p2, Lcom/hades/aar/auth/base/AuthType;->PHONE_VERIFY:Lcom/hades/aar/auth/base/AuthType;

    .line 63
    .line 64
    invoke-interface {p1, p2, v1, v0}, Lke/a;->b(Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 69
    .line 70
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 71
    .line 72
    .line 73
    throw p1

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->g:Lke/b;

    .line 75
    .line 76
    if-eqz p1, :cond_3

    .line 77
    .line 78
    sget-object p2, Lcom/hades/aar/auth/base/AuthType;->PHONE_VERIFY:Lcom/hades/aar/auth/base/AuthType;

    .line 79
    .line 80
    invoke-interface {p1, p2, v1, v0}, Lke/b;->b(Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    if-eqz v1, :cond_3

    .line 85
    .line 86
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/auth/a;->f:Lka/j;

    .line 87
    .line 88
    invoke-virtual {v1, v0, p1, p2}, Lja/j;->j(Landroid/app/Activity;Ljava/lang/String;Lka/j;)V

    .line 89
    .line 90
    .line 91
    :cond_3
    :goto_0
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->i()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public final g()Landroid/app/Activity;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->i:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/app/Activity;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public final h()Lke/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->h:Lke/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public final j()Lke/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->g:Lke/b;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final k()Lcom/startshorts/androidplayer/bean/auth/AuthReason;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->e:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Intent;
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "handleActivityResult -> mGoogleAuth("

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->a:Lja/f;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ") mFacebookAuth("

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->b:Lja/b;

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ") requestCode("

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, ") resultCode("

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ") data("

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const/16 v1, 0x29

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/auth/a;->m(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->a:Lja/f;

    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/auth/a;->f:Lka/j;

    .line 75
    .line 76
    move-object v2, p1

    .line 77
    move v3, p2

    .line 78
    move v4, p3

    .line 79
    move-object v5, p4

    .line 80
    invoke-virtual/range {v1 .. v6}, Lja/f;->x(Landroid/app/Activity;IILandroid/content/Intent;Lka/j;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->b:Lja/b;

    .line 86
    .line 87
    if-eqz v1, :cond_1

    .line 88
    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/auth/a;->f:Lka/j;

    .line 92
    .line 93
    move-object v2, p1

    .line 94
    move v3, p2

    .line 95
    move v4, p3

    .line 96
    move-object v5, p4

    .line 97
    invoke-virtual/range {v1 .. v6}, Lja/b;->w(Landroid/app/Activity;IILandroid/content/Intent;Lka/j;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    goto :goto_0

    .line 102
    :cond_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->d:Lja/i;

    .line 103
    .line 104
    if-eqz v1, :cond_2

    .line 105
    .line 106
    if-eqz v1, :cond_2

    .line 107
    .line 108
    iget-object v6, p0, Lcom/startshorts/androidplayer/manager/auth/a;->f:Lka/j;

    .line 109
    .line 110
    move-object v2, p1

    .line 111
    move v3, p2

    .line 112
    move v4, p3

    .line 113
    move-object v5, p4

    .line 114
    invoke-virtual/range {v1 .. v6}, Lja/i;->v(Landroid/app/Activity;IILandroid/content/Intent;Lka/j;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    :cond_2
    :goto_0
    return v0
.end method

.method public final m(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->i()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public n()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "BaseAuthManager"

    .line 4
    .line 5
    const-string v2, "release"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->e()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->f:Lka/j;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->g:Lke/b;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->h:Lke/a;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->i:Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->clear()V

    .line 25
    .line 26
    .line 27
    :cond_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->i:Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    return-void
.end method

.method public o(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/bean/auth/AuthReason;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "areaCode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "phoneNumber"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "reason"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "sendWithPhone"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/auth/a;->m(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->e()V

    .line 22
    .line 23
    .line 24
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/auth/a;->e:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 25
    .line 26
    :try_start_0
    new-instance p3, Lja/j;

    .line 27
    .line 28
    invoke-direct {p3}, Lja/j;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/auth/a;->c:Lja/j;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->g()Landroid/app/Activity;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    if-eqz p3, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->c:Lja/j;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    new-instance v1, Lii/j;

    .line 44
    .line 45
    invoke-direct {v1, p3}, Lii/j;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/auth/a;->g()Landroid/app/Activity;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_waiting:I

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    goto :goto_0

    .line 61
    :catch_0
    move-exception p1

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    const/4 v2, 0x0

    .line 64
    :goto_0
    invoke-virtual {v1, v2}, Lhi/b;->y(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lka/i;->p(Lka/b;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/auth/a;->c:Lja/j;

    .line 71
    .line 72
    if-eqz v0, :cond_2

    .line 73
    .line 74
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->f:Lka/j;

    .line 75
    .line 76
    invoke-virtual {v0, p3, p1, p2, v1}, Lja/j;->r(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lka/j;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string p3, "authType("

    .line 86
    .line 87
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    sget-object p3, Lcom/hades/aar/auth/base/AuthType;->PHONE_SEND:Lcom/hades/aar/auth/base/AuthType;

    .line 91
    .line 92
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v0, ") errMsg("

    .line 96
    .line 97
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    const/16 v0, 0x29

    .line 108
    .line 109
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/manager/auth/a;->f(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/auth/a;->f:Lka/j;

    .line 120
    .line 121
    if-eqz p2, :cond_2

    .line 122
    .line 123
    const/4 v0, -0x1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    const/4 v1, 0x1

    .line 129
    invoke-interface {p2, p3, v1, v0, p1}, Lka/j;->b(Lcom/hades/aar/auth/base/AuthType;ZILjava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_2
    :goto_2
    return-void
.end method

.method public final p(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .param p1    # Ljava/lang/ref/WeakReference;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->i:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-void
.end method

.method protected final q(Lka/j;)V
    .locals 0
    .param p1    # Lka/j;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->f:Lka/j;

    .line 2
    .line 3
    return-void
.end method

.method public final r(Lke/a;)V
    .locals 0
    .param p1    # Lke/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->h:Lke/a;

    .line 2
    .line 3
    return-void
.end method

.method public final s(Lke/b;)V
    .locals 0
    .param p1    # Lke/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/auth/a;->g:Lke/b;

    .line 2
    .line 3
    return-void
.end method
