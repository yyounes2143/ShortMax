.class public Lcom/amazonaws/mobile/auth/userpools/SignUpActivity;
.super Landroid/app/Activity;
.source "SignUpActivity.java"


# static fields
.field private static final c:Ljava/lang/String; = "SignUpActivity"


# instance fields
.field private a:Lcom/amazonaws/mobile/auth/userpools/SignUpView;

.field private b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b(Landroid/app/Activity;I)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/amazonaws/mobile/auth/userpools/SignUpActivity;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/amazonaws/mobile/auth/userpools/R$string;->x:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    sget v2, Lcom/amazonaws/mobile/auth/userpools/R$string;->s:I

    .line 13
    .line 14
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, " "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p0, v0, p1}, Lcom/amazonaws/mobile/auth/core/internal/util/ViewHelper;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lcom/amazonaws/mobile/auth/userpools/R$layout;->d:I

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/amazonaws/mobile/auth/userpools/R$id;->q:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/amazonaws/mobile/auth/userpools/SignUpView;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpActivity;->a:Lcom/amazonaws/mobile/auth/userpools/SignUpView;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 24
    .line 25
    new-instance v1, Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 26
    .line 27
    invoke-direct {v1, p1}, Lcom/amazonaws/mobile/config/AWSConfiguration;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, p1, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;-><init>(Landroid/content/Context;Lcom/amazonaws/mobile/config/AWSConfiguration;)V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpActivity;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 34
    .line 35
    const-string p1, "input_method"

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 42
    .line 43
    const/4 v0, 0x2

    .line 44
    const/4 v1, 0x1

    .line 45
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public signUp(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpActivity;->a:Lcom/amazonaws/mobile/auth/userpools/SignUpView;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->getUserName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpActivity;->a:Lcom/amazonaws/mobile/auth/userpools/SignUpView;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->getPassword()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    iget-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpActivity;->a:Lcom/amazonaws/mobile/auth/userpools/SignUpView;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->getGivenName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpActivity;->a:Lcom/amazonaws/mobile/auth/userpools/SignUpView;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->getEmail()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v3, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpActivity;->a:Lcom/amazonaws/mobile/auth/userpools/SignUpView;

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/amazonaws/mobile/auth/userpools/SignUpView;->getPhone()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sget-object v4, Lcom/amazonaws/mobile/auth/userpools/SignUpActivity;->c:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v6, "username = "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    new-instance v5, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const-string v6, "given_name = "

    .line 60
    .line 61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v5

    .line 71
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    new-instance v5, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v6, "email = "

    .line 80
    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    new-instance v5, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v6, "phone = "

    .line 100
    .line 101
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v5

    .line 111
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    if-eqz v4, :cond_0

    .line 119
    .line 120
    sget p1, Lcom/amazonaws/mobile/auth/userpools/R$string;->u:I

    .line 121
    .line 122
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/auth/userpools/SignUpActivity;->a(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 131
    .line 132
    .line 133
    move-result v4

    .line 134
    const/4 v5, 0x6

    .line 135
    if-ge v4, v5, :cond_1

    .line 136
    .line 137
    sget p1, Lcom/amazonaws/mobile/auth/userpools/R$string;->g:I

    .line 138
    .line 139
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/amazonaws/mobile/auth/userpools/SignUpActivity;->a(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_1
    new-instance v4, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;

    .line 148
    .line 149
    invoke-direct {v4}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v5, "given_name"

    .line 153
    .line 154
    invoke-virtual {v4, v5, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    const-string p1, "email"

    .line 158
    .line 159
    invoke-virtual {v4, p1, v0}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    if-nez p1, :cond_2

    .line 167
    .line 168
    const-string p1, "phone_number"

    .line 169
    .line 170
    invoke-virtual {v4, p1, v3}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    :cond_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 174
    .line 175
    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    .line 177
    .line 178
    sget v0, Lcom/amazonaws/mobile/auth/userpools/R$string;->t:I

    .line 179
    .line 180
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v0

    .line 184
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    sget v0, Lcom/amazonaws/mobile/auth/userpools/R$string;->i:I

    .line 189
    .line 190
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    const v0, 0x104000a

    .line 199
    .line 200
    .line 201
    const/4 v3, 0x0

    .line 202
    invoke-virtual {p1, v0, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/SignUpActivity;->b:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;

    .line 211
    .line 212
    new-instance v5, Lcom/amazonaws/mobile/auth/userpools/SignUpActivity$1;

    .line 213
    .line 214
    invoke-direct {v5, p0, p1, v1, v2}, Lcom/amazonaws/mobile/auth/userpools/SignUpActivity$1;-><init>(Lcom/amazonaws/mobile/auth/userpools/SignUpActivity;Landroid/app/AlertDialog;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    const/4 p1, 0x0

    .line 218
    move-object v3, v4

    .line 219
    move-object v4, p1

    .line 220
    invoke-virtual/range {v0 .. v5}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserPool;->k(Ljava/lang/String;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/CognitoUserAttributes;Ljava/util/Map;Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/handlers/SignUpHandler;)V

    .line 221
    .line 222
    .line 223
    return-void
.end method
