.class public Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;
.super Ljava/lang/Object;
.source "OAuth2Client.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;
    }
.end annotation


# static fields
.field public static final q:Ljava/lang/String; = "OAuth2Client"


# instance fields
.field final a:Lcom/amazonaws/mobile/client/AWSMobileClient;

.field final b:Landroidx/browser/customtabs/CustomTabsServiceConnection;

.field final c:Landroid/content/Context;

.field private final d:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

.field e:Z

.field f:Landroidx/browser/customtabs/CustomTabsClient;

.field g:Landroidx/browser/customtabs/CustomTabsSession;

.field h:Landroidx/browser/customtabs/CustomTabsCallback;

.field i:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

.field j:Lcom/amazonaws/mobile/client/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/mobile/client/Callback<",
            "Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/amazonaws/mobile/client/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazonaws/mobile/client/Callback<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazonaws/mobile/client/AWSMobileClient;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->e:Z

    .line 6
    .line 7
    iput-object p2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->a:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->c:Landroid/content/Context;

    .line 10
    .line 11
    sget-object p2, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;->S256:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->i:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$PKCEMode;

    .line 14
    .line 15
    new-instance p2, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    .line 16
    .line 17
    invoke-direct {p2, p0}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;-><init>(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)V

    .line 18
    .line 19
    .line 20
    iput-object p2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->d:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    .line 21
    .line 22
    new-instance p2, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;-><init>(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)V

    .line 25
    .line 26
    .line 27
    iput-object p2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->h:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 28
    .line 29
    new-instance p2, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$2;

    .line 30
    .line 31
    invoke-direct {p2, p0}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$2;-><init>(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->b:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    .line 35
    .line 36
    const-string v0, "com.android.chrome"

    .line 37
    .line 38
    invoke-static {p1, v0, p2}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    sget-object p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->q:Ljava/lang/String;

    .line 45
    .line 46
    const-string p2, "OAuth2Client: Failed to pre-warm custom tab, first page load may be slower"

    .line 47
    .line 48
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)Lcom/amazonaws/mobile/client/Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->o:Lcom/amazonaws/mobile/client/Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;Lcom/amazonaws/mobile/client/Callback;)Lcom/amazonaws/mobile/client/Callback;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->o:Lcom/amazonaws/mobile/client/Callback;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public d(Landroid/net/Uri;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->d:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    .line 6
    .line 7
    const-string v2, "signInRedirectUri"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->d:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    .line 14
    .line 15
    const-string v3, "signOutRedirectUri"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eqz v1, :cond_6

    .line 24
    .line 25
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_6

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_6

    .line 56
    .line 57
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_6

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-interface {v5, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_6

    .line 84
    .line 85
    const-string v1, "code"

    .line 86
    .line 87
    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v2, "state"

    .line 92
    .line 93
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    iget-object v6, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->d:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    .line 98
    .line 99
    invoke-virtual {v6, v2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-nez v2, :cond_1

    .line 108
    .line 109
    return v0

    .line 110
    :cond_1
    const-string v2, "error"

    .line 111
    .line 112
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iput-object v2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->l:Ljava/lang/String;

    .line 117
    .line 118
    const-string v2, "error_description"

    .line 119
    .line 120
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    iput-object v2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->m:Ljava/lang/String;

    .line 125
    .line 126
    const-string v2, "error_uri"

    .line 127
    .line 128
    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iput-object v2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->n:Ljava/lang/String;

    .line 133
    .line 134
    iput-boolean v4, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->p:Z

    .line 135
    .line 136
    iget-object v2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->l:Ljava/lang/String;

    .line 137
    .line 138
    if-eqz v2, :cond_3

    .line 139
    .line 140
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->j:Lcom/amazonaws/mobile/client/Callback;

    .line 141
    .line 142
    if-eqz p1, :cond_2

    .line 143
    .line 144
    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Exception;

    .line 145
    .line 146
    iget-object v1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->l:Ljava/lang/String;

    .line 147
    .line 148
    iget-object v2, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->m:Ljava/lang/String;

    .line 149
    .line 150
    iget-object v5, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->n:Ljava/lang/String;

    .line 151
    .line 152
    const-string v6, "Authorization call failed with response from authorization server"

    .line 153
    .line 154
    invoke-direct {v0, v6, v1, v2, v5}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Exception;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    invoke-interface {p1, v0}, Lcom/amazonaws/mobile/client/Callback;->onError(Ljava/lang/Exception;)V

    .line 158
    .line 159
    .line 160
    iput-object v3, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->j:Lcom/amazonaws/mobile/client/Callback;

    .line 161
    .line 162
    :cond_2
    return v4

    .line 163
    :cond_3
    if-eqz v1, :cond_5

    .line 164
    .line 165
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->j:Lcom/amazonaws/mobile/client/Callback;

    .line 166
    .line 167
    if-eqz v0, :cond_4

    .line 168
    .line 169
    new-instance v0, Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;

    .line 170
    .line 171
    invoke-direct {v0}, Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;-><init>()V

    .line 172
    .line 173
    .line 174
    iput-object v1, v0, Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;->b:Ljava/lang/String;

    .line 175
    .line 176
    iput-object p1, v0, Lcom/amazonaws/mobile/client/internal/oauth2/AuthorizeResponse;->a:Landroid/net/Uri;

    .line 177
    .line 178
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->j:Lcom/amazonaws/mobile/client/Callback;

    .line 179
    .line 180
    invoke-interface {p1, v0}, Lcom/amazonaws/mobile/client/Callback;->onResult(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    iput-object v3, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->j:Lcom/amazonaws/mobile/client/Callback;

    .line 184
    .line 185
    :cond_4
    return v4

    .line 186
    :cond_5
    return v0

    .line 187
    :cond_6
    if-eqz v2, :cond_8

    .line 188
    .line 189
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    if-eqz v2, :cond_8

    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-eqz v2, :cond_8

    .line 220
    .line 221
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v2

    .line 233
    if-eqz v2, :cond_8

    .line 234
    .line 235
    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-virtual {v1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-interface {p1, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    if-eqz p1, :cond_8

    .line 248
    .line 249
    iput-boolean v4, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->p:Z

    .line 250
    .line 251
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->o:Lcom/amazonaws/mobile/client/Callback;

    .line 252
    .line 253
    if-eqz p1, :cond_7

    .line 254
    .line 255
    invoke-interface {p1, v3}, Lcom/amazonaws/mobile/client/Callback;->onResult(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    iput-object v3, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->o:Lcom/amazonaws/mobile/client/Callback;

    .line 259
    .line 260
    :cond_7
    return v4

    .line 261
    :cond_8
    return v0
.end method

.method public e(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->e:Z

    .line 2
    .line 3
    iget-object v0, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->d:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2ClientStore;->b(Z)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
