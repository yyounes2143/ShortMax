.class final Lcom/facebook/internal/WebDialog$c;
.super Landroid/webkit/WebViewClient;
.source "WebDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/WebDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/internal/WebDialog;


# direct methods
.method public constructor <init>(Lcom/facebook/internal/WebDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/internal/WebDialog$c;->a:Lcom/facebook/internal/WebDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$c;->a:Lcom/facebook/internal/WebDialog;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/facebook/internal/WebDialog;->j(Lcom/facebook/internal/WebDialog;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$c;->a:Lcom/facebook/internal/WebDialog;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/facebook/internal/WebDialog;->h(Lcom/facebook/internal/WebDialog;)Landroid/app/ProgressDialog;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$c;->a:Lcom/facebook/internal/WebDialog;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/facebook/internal/WebDialog;->d(Lcom/facebook/internal/WebDialog;)Landroid/widget/FrameLayout;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 p2, 0x0

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$c;->a:Lcom/facebook/internal/WebDialog;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/facebook/internal/WebDialog;->r()Landroid/webkit/WebView;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$c;->a:Lcom/facebook/internal/WebDialog;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/facebook/internal/WebDialog;->e(Lcom/facebook/internal/WebDialog;)Landroid/widget/ImageView;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    :goto_1
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$c;->a:Lcom/facebook/internal/WebDialog;

    .line 70
    .line 71
    const/4 p2, 0x1

    .line 72
    invoke-static {p1, p2}, Lcom/facebook/internal/WebDialog;->k(Lcom/facebook/internal/WebDialog;Z)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "Webview loading URL: "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "FacebookSDK.WebDialog"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/facebook/internal/u0;->k0(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$c;->a:Lcom/facebook/internal/WebDialog;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/facebook/internal/WebDialog;->j(Lcom/facebook/internal/WebDialog;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_0

    .line 43
    .line 44
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$c;->a:Lcom/facebook/internal/WebDialog;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/facebook/internal/WebDialog;->h(Lcom/facebook/internal/WebDialog;)Landroid/app/ProgressDialog;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 53
    .line 54
    .line 55
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "description"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "failingUrl"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$c;->a:Lcom/facebook/internal/WebDialog;

    .line 20
    .line 21
    new-instance v0, Lcom/facebook/FacebookDialogException;

    .line 22
    .line 23
    invoke-direct {v0, p3, p2, p4}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/facebook/internal/WebDialog;->y(Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/SslErrorHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/http/SslError;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "handler"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "error"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$c;->a:Lcom/facebook/internal/WebDialog;

    .line 23
    .line 24
    new-instance p2, Lcom/facebook/FacebookDialogException;

    .line 25
    .line 26
    const/4 p3, 0x0

    .line 27
    const/16 v0, -0xb

    .line 28
    .line 29
    invoke-direct {p2, p3, v0, p3}, Lcom/facebook/FacebookDialogException;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/facebook/internal/WebDialog;->y(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "url"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v0, "Redirect URL: "

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "FacebookSDK.WebDialog"

    .line 29
    .line 30
    invoke-static {v0, p1}, Lcom/facebook/internal/u0;->k0(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x1

    .line 42
    const/4 v2, 0x0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    const-string v0, "^/(v\\d+\\.\\d+/)??dialog/.*"

    .line 46
    .line 47
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_0

    .line 56
    .line 57
    move p1, v1

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    move p1, v2

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/facebook/internal/WebDialog$c;->a:Lcom/facebook/internal/WebDialog;

    .line 61
    .line 62
    invoke-static {v0}, Lcom/facebook/internal/WebDialog;->g(Lcom/facebook/internal/WebDialog;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v3, 0x2

    .line 67
    const/4 v4, 0x0

    .line 68
    invoke-static {p2, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_9

    .line 73
    .line 74
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$c;->a:Lcom/facebook/internal/WebDialog;

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lcom/facebook/internal/WebDialog;->w(Ljava/lang/String;)Landroid/os/Bundle;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    const-string p2, "error"

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p2

    .line 86
    if-nez p2, :cond_1

    .line 87
    .line 88
    const-string p2, "error_type"

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    :cond_1
    const-string v0, "error_msg"

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-nez v0, :cond_2

    .line 101
    .line 102
    const-string v0, "error_message"

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    :cond_2
    if-nez v0, :cond_3

    .line 109
    .line 110
    const-string v0, "error_description"

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    :cond_3
    const-string v2, "error_code"

    .line 117
    .line 118
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    const/4 v3, -0x1

    .line 123
    if-eqz v2, :cond_4

    .line 124
    .line 125
    invoke-static {v2}, Lcom/facebook/internal/u0;->d0(Ljava/lang/String;)Z

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    if-nez v4, :cond_4

    .line 130
    .line 131
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_1

    .line 136
    :catch_0
    :cond_4
    move v2, v3

    .line 137
    :goto_1
    invoke-static {p2}, Lcom/facebook/internal/u0;->d0(Ljava/lang/String;)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_5

    .line 142
    .line 143
    invoke-static {v0}, Lcom/facebook/internal/u0;->d0(Ljava/lang/String;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eqz v4, :cond_5

    .line 148
    .line 149
    if-ne v2, v3, :cond_5

    .line 150
    .line 151
    iget-object p2, p0, Lcom/facebook/internal/WebDialog$c;->a:Lcom/facebook/internal/WebDialog;

    .line 152
    .line 153
    invoke-virtual {p2, p1}, Lcom/facebook/internal/WebDialog;->z(Landroid/os/Bundle;)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_5
    if-eqz p2, :cond_7

    .line 158
    .line 159
    const-string p1, "access_denied"

    .line 160
    .line 161
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-nez p1, :cond_6

    .line 166
    .line 167
    const-string p1, "OAuthAccessDeniedException"

    .line 168
    .line 169
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result p1

    .line 173
    if-eqz p1, :cond_7

    .line 174
    .line 175
    :cond_6
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$c;->a:Lcom/facebook/internal/WebDialog;

    .line 176
    .line 177
    invoke-virtual {p1}, Lcom/facebook/internal/WebDialog;->cancel()V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_7
    const/16 p1, 0x1069

    .line 182
    .line 183
    if-ne v2, p1, :cond_8

    .line 184
    .line 185
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$c;->a:Lcom/facebook/internal/WebDialog;

    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/facebook/internal/WebDialog;->cancel()V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_8
    new-instance p1, Lcom/facebook/FacebookRequestError;

    .line 192
    .line 193
    invoke-direct {p1, v2, p2, v0}, Lcom/facebook/FacebookRequestError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    iget-object p2, p0, Lcom/facebook/internal/WebDialog$c;->a:Lcom/facebook/internal/WebDialog;

    .line 197
    .line 198
    new-instance v2, Lcom/facebook/FacebookServiceException;

    .line 199
    .line 200
    invoke-direct {v2, p1, v0}, Lcom/facebook/FacebookServiceException;-><init>(Lcom/facebook/FacebookRequestError;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p2, v2}, Lcom/facebook/internal/WebDialog;->y(Ljava/lang/Throwable;)V

    .line 204
    .line 205
    .line 206
    :goto_2
    return v1

    .line 207
    :cond_9
    const-string v0, "fbconnect://cancel"

    .line 208
    .line 209
    invoke-static {p2, v0, v2, v3, v4}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    if-eqz v0, :cond_a

    .line 214
    .line 215
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$c;->a:Lcom/facebook/internal/WebDialog;

    .line 216
    .line 217
    invoke-virtual {p1}, Lcom/facebook/internal/WebDialog;->cancel()V

    .line 218
    .line 219
    .line 220
    return v1

    .line 221
    :cond_a
    if-nez p1, :cond_c

    .line 222
    .line 223
    const-string p1, "touch"

    .line 224
    .line 225
    invoke-static {p2, p1, v2, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    if-eqz p1, :cond_b

    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_b
    :try_start_1
    iget-object p1, p0, Lcom/facebook/internal/WebDialog$c;->a:Lcom/facebook/internal/WebDialog;

    .line 233
    .line 234
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 235
    .line 236
    .line 237
    move-result-object p1

    .line 238
    new-instance v0, Landroid/content/Intent;

    .line 239
    .line 240
    const-string v3, "android.intent.action.VIEW"

    .line 241
    .line 242
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    invoke-direct {v0, v3, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    .line 251
    .line 252
    goto :goto_3

    .line 253
    :catch_1
    move v1, v2

    .line 254
    :goto_3
    return v1

    .line 255
    :cond_c
    :goto_4
    return v2
.end method
