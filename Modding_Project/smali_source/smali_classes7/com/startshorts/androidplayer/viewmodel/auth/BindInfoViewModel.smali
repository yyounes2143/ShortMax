.class public final Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;
.super Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;
.source "BindViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final g:Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->g:Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lpk/a;

    .line 5
    .line 6
    invoke-direct {v0}, Lpk/a;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->e:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lpk/b;

    .line 16
    .line 17
    invoke-direct {v0}, Lpk/b;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->f:Lms/i;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic A()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->F()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic B()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final C(I)V
    .locals 11

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    const-string v1, "type"

    .line 4
    .line 5
    const-string v2, "account_info"

    .line 6
    .line 7
    const-string v3, "scene"

    .line 8
    .line 9
    if-eq p1, v0, :cond_6

    .line 10
    .line 11
    const/16 v0, 0x14

    .line 12
    .line 13
    if-eq p1, v0, :cond_4

    .line 14
    .line 15
    const/16 v0, 0x32

    .line 16
    .line 17
    if-eq p1, v0, :cond_3

    .line 18
    .line 19
    const/16 v0, 0x3c

    .line 20
    .line 21
    if-eq p1, v0, :cond_2

    .line 22
    .line 23
    const/16 v0, 0x64

    .line 24
    .line 25
    if-eq p1, v0, :cond_0

    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_0
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 30
    .line 31
    new-instance v6, Landroid/os/Bundle;

    .line 32
    .line 33
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v6, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string p1, "huawei"

    .line 40
    .line 41
    invoke-virtual {v6, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    const/4 v9, 0x4

    .line 47
    const/4 v10, 0x0

    .line 48
    const-string v5, "login_click"

    .line 49
    .line 50
    const-wide/16 v7, 0x0

    .line 51
    .line 52
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 56
    .line 57
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->J0()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->f:Lms/i;

    .line 64
    .line 65
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 70
    .line 71
    sget-object v0, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->BIND:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/auth/a;->c(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 74
    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->f:Lms/i;

    .line 79
    .line 80
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 85
    .line 86
    sget-object v0, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/auth/a;->c(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_0

    .line 92
    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/auth/b$b;->a:Lcom/startshorts/androidplayer/viewmodel/auth/b$b;

    .line 98
    .line 99
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/auth/b$a;->a:Lcom/startshorts/androidplayer/viewmodel/auth/b$a;

    .line 109
    .line 110
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :cond_4
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 116
    .line 117
    new-instance v0, Landroid/os/Bundle;

    .line 118
    .line 119
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-string v2, "facebook"

    .line 126
    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 131
    .line 132
    const/4 v6, 0x4

    .line 133
    const/4 v7, 0x0

    .line 134
    const-string v2, "login_click"

    .line 135
    .line 136
    const-wide/16 v4, 0x0

    .line 137
    .line 138
    move-object v1, p1

    .line 139
    move-object v3, v0

    .line 140
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->J0()Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_5

    .line 150
    .line 151
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->f:Lms/i;

    .line 152
    .line 153
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 158
    .line 159
    sget-object v0, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->BIND:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 160
    .line 161
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/auth/a;->a(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 162
    .line 163
    .line 164
    goto :goto_0

    .line 165
    :cond_5
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->f:Lms/i;

    .line 166
    .line 167
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    check-cast p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 172
    .line 173
    sget-object v0, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/auth/a;->a(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 176
    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_6
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 180
    .line 181
    new-instance v0, Landroid/os/Bundle;

    .line 182
    .line 183
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    const-string v2, "google"

    .line 190
    .line 191
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 195
    .line 196
    const/4 v6, 0x4

    .line 197
    const/4 v7, 0x0

    .line 198
    const-string v2, "login_click"

    .line 199
    .line 200
    const-wide/16 v4, 0x0

    .line 201
    .line 202
    move-object v1, p1

    .line 203
    move-object v3, v0

    .line 204
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 208
    .line 209
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->J0()Z

    .line 210
    .line 211
    .line 212
    move-result p1

    .line 213
    if-eqz p1, :cond_7

    .line 214
    .line 215
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->f:Lms/i;

    .line 216
    .line 217
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    check-cast p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 222
    .line 223
    sget-object v0, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->BIND:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 224
    .line 225
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/auth/a;->b(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 226
    .line 227
    .line 228
    goto :goto_0

    .line 229
    :cond_7
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->f:Lms/i;

    .line 230
    .line 231
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    check-cast p1, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 236
    .line 237
    sget-object v0, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 238
    .line 239
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/auth/a;->b(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 240
    .line 241
    .line 242
    :goto_0
    return-void
.end method

.method private final E(Landroid/app/Activity;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->f:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "initAuthManager"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->f:Lms/i;

    .line 16
    .line 17
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->p(Ljava/lang/ref/WeakReference;)V

    .line 29
    .line 30
    .line 31
    const-string p1, "account_info"

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->F(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->J0()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel$b;

    .line 45
    .line 46
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel$b;-><init>(Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/auth/a;->r(Lke/a;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel$c;

    .line 54
    .line 55
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel$c;-><init>(Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/auth/a;->s(Lke/b;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method

.method private static final F()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final G()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final I()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel$queryBindInfoList$1;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {v3, p0, v0}, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel$queryBindInfoList$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;Lrs/c;)V

    .line 5
    .line 6
    .line 7
    const/4 v4, 0x2

    .line 8
    const/4 v5, 0x0

    .line 9
    const-string v1, "queryBindInfoList"

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v0, p0

    .line 13
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->i(Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method


# virtual methods
.method public final D()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/viewmodel/auth/b;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    return-object v0
.end method

.method public final H(Lcom/startshorts/androidplayer/viewmodel/auth/a;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/viewmodel/auth/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "intent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/auth/a$d;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->I()Lkotlinx/coroutines/r;

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/auth/a$c;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/auth/a$c;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/a$c;->a()Landroid/app/Activity;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->E(Landroid/app/Activity;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/auth/a$a;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/auth/a$a;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/a$a;->a()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->C(I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/auth/a$b;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/auth/BindInfoViewModel;->f:Lms/i;

    .line 47
    .line 48
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 53
    .line 54
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/auth/a$b;

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/a$b;->a()Landroid/app/Activity;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/a$b;->c()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/a$b;->d()I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/a$b;->b()Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/startshorts/androidplayer/manager/auth/a;->l(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void

    .line 76
    :cond_3
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 77
    .line 78
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 79
    .line 80
    .line 81
    throw p1
.end method

.method public t()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "BindInfoViewModel"

    .line 2
    .line 3
    return-object v0
.end method
