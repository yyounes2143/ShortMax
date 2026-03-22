.class public final Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;
.super Ljava/lang/Object;
.source "AccountListMergeManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAccountListMergeManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccountListMergeManager.kt\ncom/startshorts/androidplayer/manager/account/AccountListMergeManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,161:1\n1#2:162\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/startshorts/androidplayer/manager/account/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Lii/g;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;

    .line 7
    .line 8
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Landroidx/lifecycle/MutableLiveData;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->b:Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    new-instance v0, Lbe/a;

    .line 17
    .line 18
    invoke-direct {v0}, Lbe/a;-><init>()V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->c:Lkotlin/jvm/functions/Function1;

    .line 22
    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$BooleanRef;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->m(Lkotlin/jvm/internal/Ref$BooleanRef;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;Lcom/startshorts/androidplayer/manager/account/a;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->k(Landroid/content/Context;Lcom/startshorts/androidplayer/manager/account/a;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->l(Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->h(Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/DialogInterface;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->n(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/DialogInterface;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f()Landroidx/lifecycle/MutableLiveData;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->b:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final h(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method private final i()V
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager$mergeTourist$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager$mergeTourist$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "mergeTourist"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final j(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->b:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    const-string v1, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    move-object v1, p1

    .line 9
    check-cast v1, Landroidx/lifecycle/LifecycleOwner;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lbe/b;

    .line 15
    .line 16
    invoke-direct {v2, p1}, Lbe/b;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager$a;

    .line 20
    .line 21
    invoke-direct {p1, v2}, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private static final k(Landroid/content/Context;Lcom/startshorts/androidplayer/manager/account/a;)Lkotlin/Unit;
    .locals 12

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "observeMergeState "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    sget-object v2, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->b:Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v3, "AccountListMergeManager"

    .line 27
    .line 28
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->d:Lii/g;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {v0}, Lfi/a;->dismiss()V

    .line 36
    .line 37
    .line 38
    :cond_0
    const/4 v0, 0x0

    .line 39
    sput-object v0, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->d:Lii/g;

    .line 40
    .line 41
    instance-of v1, p1, Lcom/startshorts/androidplayer/manager/account/a$a;

    .line 42
    .line 43
    const-string v3, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner"

    .line 44
    .line 45
    const-string/jumbo v4, "setting"

    .line 46
    .line 47
    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 51
    .line 52
    invoke-virtual {p1, v4}, Lcom/startshorts/androidplayer/manager/event/EventManager;->P(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object p1, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->c:Lkotlin/jvm/functions/Function1;

    .line 56
    .line 57
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 58
    .line 59
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    sput-object v0, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->d:Lii/g;

    .line 66
    .line 67
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    .line 71
    .line 72
    invoke-virtual {v2, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_1
    instance-of v1, p1, Lcom/startshorts/androidplayer/manager/account/a$b;

    .line 78
    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    sget-object p1, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->c:Lkotlin/jvm/functions/Function1;

    .line 82
    .line 83
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v2, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    sput-object v0, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->d:Lii/g;

    .line 92
    .line 93
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    check-cast p0, Landroidx/lifecycle/LifecycleOwner;

    .line 97
    .line 98
    invoke-virtual {v2, p0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    .line 99
    .line 100
    .line 101
    goto/16 :goto_2

    .line 102
    .line 103
    :cond_2
    instance-of v1, p1, Lcom/startshorts/androidplayer/manager/account/a$d;

    .line 104
    .line 105
    if-eqz v1, :cond_3

    .line 106
    .line 107
    new-instance p1, Lii/d;

    .line 108
    .line 109
    invoke-direct {p1, p0}, Lii/d;-><init>(Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    sget-object p0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 113
    .line 114
    invoke-virtual {p0, v4}, Lcom/startshorts/androidplayer/manager/event/EventManager;->Q(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    new-instance p0, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 118
    .line 119
    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 120
    .line 121
    .line 122
    new-instance v0, Lbe/c;

    .line 123
    .line 124
    invoke-direct {v0, p0}, Lbe/c;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v0}, Lii/d;->x(Lkotlin/jvm/functions/Function0;)V

    .line 128
    .line 129
    .line 130
    new-instance v0, Lbe/d;

    .line 131
    .line 132
    invoke-direct {v0, p0}, Lbe/d;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1}, Lfi/a;->show()V

    .line 139
    .line 140
    .line 141
    goto/16 :goto_2

    .line 142
    .line 143
    :cond_3
    instance-of v1, p1, Lcom/startshorts/androidplayer/manager/account/a$e;

    .line 144
    .line 145
    if-eqz v1, :cond_4

    .line 146
    .line 147
    sget-object p1, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;

    .line 148
    .line 149
    invoke-direct {p1}, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->i()V

    .line 150
    .line 151
    .line 152
    new-instance p1, Lii/g;

    .line 153
    .line 154
    invoke-direct {p1, p0}, Lii/g;-><init>(Landroid/content/Context;)V

    .line 155
    .line 156
    .line 157
    sput-object p1, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->d:Lii/g;

    .line 158
    .line 159
    invoke-virtual {p1}, Lfi/a;->show()V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_2

    .line 163
    .line 164
    :cond_4
    instance-of v1, p1, Lcom/startshorts/androidplayer/manager/account/a$c;

    .line 165
    .line 166
    const/4 v2, 0x2

    .line 167
    const-string/jumbo v3, "status"

    .line 168
    .line 169
    .line 170
    const/4 v4, 0x0

    .line 171
    if-eqz v1, :cond_5

    .line 172
    .line 173
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 174
    .line 175
    new-instance v7, Landroid/os/Bundle;

    .line 176
    .line 177
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 178
    .line 179
    .line 180
    const-string p0, "0"

    .line 181
    .line 182
    invoke-virtual {v7, v3, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 186
    .line 187
    const/4 v10, 0x4

    .line 188
    const/4 v11, 0x0

    .line 189
    const-string v6, "account_recovery_result"

    .line 190
    .line 191
    const-wide/16 v8, 0x0

    .line 192
    .line 193
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    sget-object p0, Lfk/u;->a:Lfk/u;

    .line 197
    .line 198
    check-cast p1, Lcom/startshorts/androidplayer/manager/account/a$c;

    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/account/a$c;->a()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-static {p0, p1, v4, v2, v0}, Lfk/u;->k(Lfk/u;Ljava/lang/String;IILjava/lang/Object;)V

    .line 205
    .line 206
    .line 207
    goto/16 :goto_2

    .line 208
    .line 209
    :cond_5
    instance-of v1, p1, Lcom/startshorts/androidplayer/manager/account/a$f;

    .line 210
    .line 211
    if-eqz v1, :cond_a

    .line 212
    .line 213
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 214
    .line 215
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->s0()Lcom/startshorts/androidplayer/bean/account/Account;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    if-eqz v1, :cond_9

    .line 220
    .line 221
    check-cast p1, Lcom/startshorts/androidplayer/manager/account/a$f;

    .line 222
    .line 223
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/account/a$f;->a()Lcom/startshorts/androidplayer/bean/account/MergeUserInfo;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    if-eqz p1, :cond_8

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/account/MergeUserInfo;->getMergeUserList()Ljava/util/List;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    if-eqz p1, :cond_8

    .line 234
    .line 235
    check-cast p1, Ljava/lang/Iterable;

    .line 236
    .line 237
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    .line 243
    .line 244
    move-result v5

    .line 245
    if-eqz v5, :cond_7

    .line 246
    .line 247
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v5

    .line 251
    move-object v6, v5

    .line 252
    check-cast v6, Ljava/lang/String;

    .line 253
    .line 254
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/account/Account;->getUserCode()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v7

    .line 258
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 259
    .line 260
    .line 261
    move-result v6

    .line 262
    if-eqz v6, :cond_6

    .line 263
    .line 264
    goto :goto_0

    .line 265
    :cond_7
    move-object v5, v0

    .line 266
    :goto_0
    check-cast v5, Ljava/lang/String;

    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_8
    move-object v5, v0

    .line 270
    :goto_1
    if-eqz v5, :cond_9

    .line 271
    .line 272
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->V()V

    .line 275
    .line 276
    .line 277
    :cond_9
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 278
    .line 279
    new-instance v7, Landroid/os/Bundle;

    .line 280
    .line 281
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 282
    .line 283
    .line 284
    const-string p1, "1"

    .line 285
    .line 286
    invoke-virtual {v7, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 290
    .line 291
    const/4 v10, 0x4

    .line 292
    const/4 v11, 0x0

    .line 293
    const-string v6, "account_recovery_result"

    .line 294
    .line 295
    const-wide/16 v8, 0x0

    .line 296
    .line 297
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    new-instance p1, Lii/h;

    .line 301
    .line 302
    invoke-direct {p1, p0}, Lii/h;-><init>(Landroid/content/Context;)V

    .line 303
    .line 304
    .line 305
    new-instance p0, Lbe/e;

    .line 306
    .line 307
    invoke-direct {p0}, Lbe/e;-><init>()V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1}, Lfi/a;->show()V

    .line 314
    .line 315
    .line 316
    sget-object p0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 317
    .line 318
    invoke-static {p0, v4, v4, v2, v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->u1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZZILjava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    const/4 p1, 0x3

    .line 322
    invoke-static {p0, v4, v0, p1, v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    :cond_a
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 326
    .line 327
    return-object p0
.end method

.method private static final l(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1
    sget-object p0, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->b:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/a$b;->a:Lcom/startshorts/androidplayer/manager/account/a$b;

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;

    .line 13
    .line 14
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lau/c;->l(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static final m(Lkotlin/jvm/internal/Ref$BooleanRef;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final n(Lkotlin/jvm/internal/Ref$BooleanRef;Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    iget-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "confirm"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "cancel"

    .line 11
    .line 12
    :goto_0
    const-string/jumbo v1, "setting"

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->O(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 19
    .line 20
    if-eqz p0, :cond_1

    .line 21
    .line 22
    sget-object p0, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->b:Landroidx/lifecycle/MutableLiveData;

    .line 23
    .line 24
    sget-object p1, Lcom/startshorts/androidplayer/manager/account/a$e;->a:Lcom/startshorts/androidplayer/manager/account/a$e;

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    sget-object p0, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->b:Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    sget-object p1, Lcom/startshorts/androidplayer/manager/account/a$a;->a:Lcom/startshorts/androidplayer/manager/account/a$a;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :goto_1
    return-void
.end method


# virtual methods
.method public final g()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->b:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x0

    .line 8
    const-string v3, "AccountListMergeManager"

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    new-instance v4, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v5, "displayAble -> false, mergeState="

    .line 20
    .line 21
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v3, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return v2

    .line 39
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Q()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    .line 47
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 48
    .line 49
    const-string v1, "displayAble -> false, canMerge=false"

    .line 50
    .line 51
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    return v2

    .line 55
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 56
    .line 57
    const-string v1, "displayAble -> true"

    .line 58
    .line 59
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 v0, 0x1

    .line 63
    return v0
.end method

.method public final o(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onDismiss"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->b:Landroidx/lifecycle/MutableLiveData;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "AccountListMergeManager"

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 22
    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "displayAble -> false, mergeState="

    .line 29
    .line 30
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1, v2, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 49
    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string/jumbo v4, "show -> canMerge="

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    sget-object v4, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->Q()Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sput-object p2, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->c:Lkotlin/jvm/functions/Function1;

    .line 78
    .line 79
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->j(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    sget-object p1, Lcom/startshorts/androidplayer/manager/account/a$d;->a:Lcom/startshorts/androidplayer/manager/account/a$d;

    .line 83
    .line 84
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method
