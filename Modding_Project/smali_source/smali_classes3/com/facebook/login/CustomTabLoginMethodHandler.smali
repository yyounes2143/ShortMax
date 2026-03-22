.class public final Lcom/facebook/login/CustomTabLoginMethodHandler;
.super Lcom/facebook/login/WebLoginMethodHandler;
.source "CustomTabLoginMethodHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/CustomTabLoginMethodHandler$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/CustomTabLoginMethodHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final k:Lcom/facebook/login/CustomTabLoginMethodHandler$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static l:Z


# instance fields
.field private f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Lcom/facebook/AccessTokenSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/login/CustomTabLoginMethodHandler$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/login/CustomTabLoginMethodHandler$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/login/CustomTabLoginMethodHandler;->k:Lcom/facebook/login/CustomTabLoginMethodHandler$b;

    .line 8
    .line 9
    new-instance v0, Lcom/facebook/login/CustomTabLoginMethodHandler$a;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/facebook/login/CustomTabLoginMethodHandler$a;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/facebook/login/CustomTabLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 8
    const-string v0, "custom_tab"

    iput-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->i:Ljava/lang/String;

    .line 9
    sget-object v0, Lcom/facebook/AccessTokenSource;->CHROME_CUSTOM_TAB:Lcom/facebook/AccessTokenSource;

    iput-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->j:Lcom/facebook/AccessTokenSource;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->g:Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->G()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/internal/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 1
    .param p1    # Lcom/facebook/login/LoginClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "loginClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 2
    const-string p1, "custom_tab"

    iput-object p1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->i:Ljava/lang/String;

    .line 3
    sget-object p1, Lcom/facebook/AccessTokenSource;->CHROME_CUSTOM_TAB:Lcom/facebook/AccessTokenSource;

    iput-object p1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->j:Lcom/facebook/AccessTokenSource;

    const/16 p1, 0x14

    .line 4
    invoke-static {p1}, Lcom/facebook/internal/u0;->t(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->g:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    sput-boolean p1, Lcom/facebook/login/CustomTabLoginMethodHandler;->l:Z

    .line 6
    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->G()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/internal/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->h:Ljava/lang/String;

    return-void
.end method

.method public static synthetic D(Lcom/facebook/login/CustomTabLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/facebook/login/CustomTabLoginMethodHandler;->I(Lcom/facebook/login/CustomTabLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final E()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->f:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/facebook/internal/e;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->f:Ljava/lang/String;

    .line 11
    .line 12
    return-object v0
.end method

.method private final G()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/facebook/login/LoginMethodHandler;->g()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final H(Ljava/lang/String;Lcom/facebook/login/LoginClient$Request;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_b

    .line 2
    .line 3
    const-string v0, "fbconnect://cct."

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-super {p0}, Lcom/facebook/login/LoginMethodHandler;->g()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_b

    .line 23
    .line 24
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/facebook/internal/u0;->p0(Ljava/lang/String;)Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1}, Landroid/net/Uri;->getFragment()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p1}, Lcom/facebook/internal/u0;->p0(Ljava/lang/String;)Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0, v0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->J(Landroid/os/Bundle;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    new-instance p1, Lcom/facebook/FacebookException;

    .line 54
    .line 55
    const-string v0, "Invalid state parameter"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-super {p0, p2, v3, p1}, Lcom/facebook/login/WebLoginMethodHandler;->B(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    const-string p1, "error"

    .line 65
    .line 66
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    const-string p1, "error_type"

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    :cond_2
    const-string v1, "error_msg"

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-nez v1, :cond_3

    .line 85
    .line 86
    const-string v1, "error_message"

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :cond_3
    if-nez v1, :cond_4

    .line 93
    .line 94
    const-string v1, "error_description"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    :cond_4
    const-string v2, "error_code"

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const/4 v4, -0x1

    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 114
    :catch_0
    :cond_5
    move v2, v4

    .line 115
    :goto_0
    invoke-static {p1}, Lcom/facebook/internal/u0;->d0(Ljava/lang/String;)Z

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-eqz v5, :cond_7

    .line 120
    .line 121
    invoke-static {v1}, Lcom/facebook/internal/u0;->d0(Ljava/lang/String;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_7

    .line 126
    .line 127
    if-ne v2, v4, :cond_7

    .line 128
    .line 129
    const-string p1, "access_token"

    .line 130
    .line 131
    invoke-virtual {v0, p1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    if-eqz p1, :cond_6

    .line 136
    .line 137
    invoke-super {p0, p2, v0, v3}, Lcom/facebook/login/WebLoginMethodHandler;->B(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_6
    invoke-static {}, Lcom/facebook/v;->u()Ljava/util/concurrent/Executor;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    new-instance v1, Lcom/facebook/login/a;

    .line 146
    .line 147
    invoke-direct {v1, p0, p2, v0}, Lcom/facebook/login/a;-><init>(Lcom/facebook/login/CustomTabLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V

    .line 148
    .line 149
    .line 150
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 151
    .line 152
    .line 153
    goto :goto_1

    .line 154
    :cond_7
    if-eqz p1, :cond_9

    .line 155
    .line 156
    const-string v0, "access_denied"

    .line 157
    .line 158
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    if-nez v0, :cond_8

    .line 163
    .line 164
    const-string v0, "OAuthAccessDeniedException"

    .line 165
    .line 166
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-eqz v0, :cond_9

    .line 171
    .line 172
    :cond_8
    new-instance p1, Lcom/facebook/FacebookOperationCanceledException;

    .line 173
    .line 174
    invoke-direct {p1}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-super {p0, p2, v3, p1}, Lcom/facebook/login/WebLoginMethodHandler;->B(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_9
    const/16 v0, 0x1069

    .line 182
    .line 183
    if-ne v2, v0, :cond_a

    .line 184
    .line 185
    new-instance p1, Lcom/facebook/FacebookOperationCanceledException;

    .line 186
    .line 187
    invoke-direct {p1}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    .line 188
    .line 189
    .line 190
    invoke-super {p0, p2, v3, p1}, Lcom/facebook/login/WebLoginMethodHandler;->B(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 191
    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_a
    new-instance v0, Lcom/facebook/FacebookRequestError;

    .line 195
    .line 196
    invoke-direct {v0, v2, p1, v1}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    new-instance p1, Lcom/facebook/FacebookServiceException;

    .line 200
    .line 201
    invoke-direct {p1, v0, v1}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-super {p0, p2, v3, p1}, Lcom/facebook/login/WebLoginMethodHandler;->B(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 205
    .line 206
    .line 207
    :cond_b
    :goto_1
    return-void
.end method

.method private static final I(Lcom/facebook/login/CustomTabLoginMethodHandler;Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "$request"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "$values"

    .line 12
    .line 13
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->l(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/login/WebLoginMethodHandler;->B(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p2

    .line 26
    invoke-virtual {p0, p1, v0, p2}, Lcom/facebook/login/WebLoginMethodHandler;->B(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method private final J(Landroid/os/Bundle;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "state"

    .line 3
    .line 4
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return v0

    .line 11
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p1, "7_challenge"

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object v1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->g:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected g()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(IILandroid/content/Intent;)Z
    .locals 4
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p3, :cond_0

    .line 3
    .line 4
    sget-object v1, Lcom/facebook/CustomTabMainActivity;->j:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/login/LoginMethodHandler;->k(IILandroid/content/Intent;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1

    .line 17
    :cond_0
    const/4 v1, 0x1

    .line 18
    if-eq p1, v1, :cond_1

    .line 19
    .line 20
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/login/LoginMethodHandler;->k(IILandroid/content/Intent;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    return p1

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->d()Lcom/facebook/login/LoginClient;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient;->p()Lcom/facebook/login/LoginClient$Request;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    if-nez p1, :cond_2

    .line 34
    .line 35
    return v0

    .line 36
    :cond_2
    const/4 v2, -0x1

    .line 37
    const/4 v3, 0x0

    .line 38
    if-ne p2, v2, :cond_4

    .line 39
    .line 40
    if-eqz p3, :cond_3

    .line 41
    .line 42
    sget-object p2, Lcom/facebook/CustomTabMainActivity;->g:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    :cond_3
    invoke-direct {p0, v3, p1}, Lcom/facebook/login/CustomTabLoginMethodHandler;->H(Ljava/lang/String;Lcom/facebook/login/LoginClient$Request;)V

    .line 49
    .line 50
    .line 51
    return v1

    .line 52
    :cond_4
    new-instance p2, Lcom/facebook/FacebookOperationCanceledException;

    .line 53
    .line 54
    invoke-direct {p2}, Lcom/facebook/FacebookOperationCanceledException;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-super {p0, p1, v3, p2}, Lcom/facebook/login/WebLoginMethodHandler;->B(Lcom/facebook/login/LoginClient$Request;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 58
    .line 59
    .line 60
    return v0
.end method

.method public m(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    const-string v0, "param"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "7_challenge"

    .line 7
    .line 8
    iget-object v1, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->g:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public p(Lcom/facebook/login/LoginClient$Request;)I
    .locals 6
    .param p1    # Lcom/facebook/login/LoginClient$Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/facebook/login/LoginMethodHandler;->d()Lcom/facebook/login/LoginClient;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->g()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return v2

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/login/WebLoginMethodHandler;->x(Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p0, v1, p1}, Lcom/facebook/login/WebLoginMethodHandler;->w(Landroid/os/Bundle;Lcom/facebook/login/LoginClient$Request;)Landroid/os/Bundle;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-boolean v3, Lcom/facebook/login/CustomTabLoginMethodHandler;->l:Z

    .line 31
    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const-string v3, "cct_over_app_switch"

    .line 35
    .line 36
    const-string v4, "1"

    .line 37
    .line 38
    invoke-virtual {v1, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    sget-boolean v3, Lcom/facebook/v;->q:Z

    .line 42
    .line 43
    const-string v4, "oauth"

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->y()Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_2

    .line 52
    .line 53
    sget-object v3, Lcom/facebook/login/CustomTabPrefetchHelper;->b:Lcom/facebook/login/CustomTabPrefetchHelper$a;

    .line 54
    .line 55
    sget-object v5, Lcom/facebook/internal/d0;->c:Lcom/facebook/internal/d0$a;

    .line 56
    .line 57
    invoke-virtual {v5, v4, v1}, Lcom/facebook/internal/d0$a;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v3, v5}, Lcom/facebook/login/CustomTabPrefetchHelper$a;->c(Landroid/net/Uri;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    sget-object v3, Lcom/facebook/login/CustomTabPrefetchHelper;->b:Lcom/facebook/login/CustomTabPrefetchHelper$a;

    .line 66
    .line 67
    sget-object v5, Lcom/facebook/internal/d;->b:Lcom/facebook/internal/d$a;

    .line 68
    .line 69
    invoke-virtual {v5, v4, v1}, Lcom/facebook/internal/d$a;->a(Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v3, v5}, Lcom/facebook/login/CustomTabPrefetchHelper$a;->c(Landroid/net/Uri;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->j()Landroidx/fragment/app/FragmentActivity;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    if-eqz v3, :cond_5

    .line 81
    .line 82
    new-instance v2, Landroid/content/Intent;

    .line 83
    .line 84
    const-class v5, Lcom/facebook/CustomTabMainActivity;

    .line 85
    .line 86
    invoke-direct {v2, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .line 88
    .line 89
    sget-object v3, Lcom/facebook/CustomTabMainActivity;->d:Ljava/lang/String;

    .line 90
    .line 91
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    .line 93
    .line 94
    sget-object v3, Lcom/facebook/CustomTabMainActivity;->e:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    sget-object v1, Lcom/facebook/CustomTabMainActivity;->f:Ljava/lang/String;

    .line 100
    .line 101
    invoke-direct {p0}, Lcom/facebook/login/CustomTabLoginMethodHandler;->E()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    .line 107
    .line 108
    sget-object v1, Lcom/facebook/CustomTabMainActivity;->h:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/facebook/login/LoginClient$Request;->l()Lcom/facebook/login/LoginTargetApp;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Lcom/facebook/login/LoginTargetApp;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/facebook/login/LoginClient;->l()Landroidx/fragment/app/Fragment;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    const/4 v0, 0x1

    .line 126
    if-eqz p1, :cond_4

    .line 127
    .line 128
    invoke-virtual {p1, v2, v0}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 129
    .line 130
    .line 131
    :cond_4
    return v0

    .line 132
    :cond_5
    return v2
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/facebook/login/LoginMethodHandler;->writeToParcel(Landroid/os/Parcel;I)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->g:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method protected y()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "chrome_custom_tab"

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Lcom/facebook/AccessTokenSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/CustomTabLoginMethodHandler;->j:Lcom/facebook/AccessTokenSource;

    .line 2
    .line 3
    return-object v0
.end method
