.class public final Lfk/e;
.super Ljava/lang/Object;
.source "BillingStateHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfk/e$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroidx/lifecycle/LifecycleOwner;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lfk/e$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Lhi/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/LifecycleOwner;Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lfk/e$a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lfk/e$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "lifecycleOwner"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "viewModel"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "callback"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lfk/e;->a:Landroid/content/Context;

    .line 25
    .line 26
    iput-object p2, p0, Lfk/e;->b:Landroidx/lifecycle/LifecycleOwner;

    .line 27
    .line 28
    iput-object p3, p0, Lfk/e;->c:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 29
    .line 30
    iput-object p4, p0, Lfk/e;->d:Lfk/e$a;

    .line 31
    .line 32
    return-void
.end method

.method public static synthetic a(Lfk/e;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lfk/e;->e(Lfk/e;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lfk/e;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lfk/e;->h(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfk/e;->e:Lhi/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lfk/e;->e:Lhi/b;

    .line 10
    .line 11
    return-void
.end method

.method private static final e(Lfk/e;Lcom/startshorts/androidplayer/viewmodel/billing/b;)Lkotlin/Unit;
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lfk/e;->d:Lfk/e$a;

    .line 6
    .line 7
    invoke-interface {p0}, Lfk/e$a;->f()V

    .line 8
    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lfk/e;->d:Lfk/e$a;

    .line 17
    .line 18
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;->a()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p0, p1}, Lfk/e$a;->e(Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_0

    .line 28
    .line 29
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$u;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    const/4 v2, 0x0

    .line 33
    const/4 v3, 0x2

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    sget-object p0, Lfk/u;->a:Lfk/u;

    .line 37
    .line 38
    sget p1, Lcom/startshorts/androidplayer/R$string;->common_user_canceled:I

    .line 39
    .line 40
    invoke-static {p0, p1, v2, v3, v1}, Lfk/u;->j(Lfk/u;IIILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$l;

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 50
    .line 51
    iget-object p0, p0, Lfk/e;->a:Landroid/content/Context;

    .line 52
    .line 53
    sget v0, Lcom/startshorts/androidplayer/R$string;->common_google_pay_not_support:I

    .line 54
    .line 55
    sget-object v4, Lae/a;->a:Lae/a;

    .line 56
    .line 57
    invoke-virtual {v4}, Lae/a;->a()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p1, p0, v2, v3, v1}, Lfk/u;->k(Lfk/u;Ljava/lang/String;IILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    goto/16 :goto_0

    .line 73
    .line 74
    :cond_3
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;

    .line 75
    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    iget-object p0, p0, Lfk/e;->d:Lfk/e$a;

    .line 79
    .line 80
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;->a()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;->b()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;->c()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-interface {p0, v3, v0, v1, p1}, Lfk/e$a;->d(ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_0

    .line 98
    .line 99
    :cond_4
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$d;

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    invoke-direct {p0}, Lfk/e;->f()V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :cond_5
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;

    .line 109
    .line 110
    if-eqz v0, :cond_6

    .line 111
    .line 112
    iget-object p0, p0, Lfk/e;->d:Lfk/e$a;

    .line 113
    .line 114
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->a()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->b()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;->c()Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-interface {p0, v0, v1, p1}, Lfk/e$a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_6
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$b;

    .line 133
    .line 134
    if-eqz v0, :cond_7

    .line 135
    .line 136
    invoke-direct {p0}, Lfk/e;->f()V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_7
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$h;

    .line 141
    .line 142
    if-eqz v0, :cond_8

    .line 143
    .line 144
    invoke-direct {p0}, Lfk/e;->c()V

    .line 145
    .line 146
    .line 147
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$h;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$h;->a()Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->hasAcknowledged()Z

    .line 154
    .line 155
    .line 156
    move-result p0

    .line 157
    if-eqz p0, :cond_c

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$h;->a()Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->showTip()V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_8
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$g;

    .line 168
    .line 169
    if-eqz v0, :cond_9

    .line 170
    .line 171
    invoke-direct {p0}, Lfk/e;->c()V

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_9
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$j;

    .line 176
    .line 177
    if-eqz v0, :cond_a

    .line 178
    .line 179
    invoke-direct {p0}, Lfk/e;->c()V

    .line 180
    .line 181
    .line 182
    sget-object p0, Lfk/u;->a:Lfk/u;

    .line 183
    .line 184
    sget p1, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_not_find_lost_order_tip:I

    .line 185
    .line 186
    invoke-static {p0, p1, v2, v3, v1}, Lfk/u;->j(Lfk/u;IIILjava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_a
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 191
    .line 192
    if-eqz v0, :cond_b

    .line 193
    .line 194
    new-instance v0, Lgi/f;

    .line 195
    .line 196
    iget-object p0, p0, Lfk/e;->a:Landroid/content/Context;

    .line 197
    .line 198
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;->a()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-direct {v0, p0, p1}, Lgi/f;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 208
    .line 209
    .line 210
    goto :goto_0

    .line 211
    :cond_b
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$o;

    .line 212
    .line 213
    if-eqz v0, :cond_c

    .line 214
    .line 215
    iget-object p0, p0, Lfk/e;->d:Lfk/e$a;

    .line 216
    .line 217
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$o;

    .line 218
    .line 219
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$o;->a()Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-interface {p0, p1}, Lfk/e$a;->c(Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;)V

    .line 224
    .line 225
    .line 226
    :cond_c
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 227
    .line 228
    return-object p0
.end method

.method private final f()V
    .locals 2

    .line 1
    new-instance v0, Lgi/d;

    .line 2
    .line 3
    iget-object v1, p0, Lfk/e;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lgi/d;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lfk/e$c;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lfk/e$c;-><init>(Lfk/e;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lgi/d;->x(Lgi/d$b;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final g()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lfk/e;->c()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhi/b;

    .line 5
    .line 6
    iget-object v1, p0, Lfk/e;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lhi/b;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-virtual {v0, v1}, Lhi/b;->setCancelable(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lfi/a;->show()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lfk/e;->e:Lhi/b;

    .line 19
    .line 20
    return-void
.end method

.method private final h(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "scene"

    .line 9
    .line 10
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 14
    .line 15
    const/4 v5, 0x4

    .line 16
    const/4 v6, 0x0

    .line 17
    const-string v1, "restore_click"

    .line 18
    .line 19
    const-wide/16 v3, 0x0

    .line 20
    .line 21
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lfk/e;->g()V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lfk/e;->d:Lfk/e$a;

    .line 28
    .line 29
    invoke-interface {v0, p1}, Lfk/e$a;->b(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lfk/e;->c:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lfk/e;->b:Landroidx/lifecycle/LifecycleOwner;

    .line 8
    .line 9
    new-instance v2, Lfk/d;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lfk/d;-><init>(Lfk/e;)V

    .line 12
    .line 13
    .line 14
    new-instance v3, Lfk/e$b;

    .line 15
    .line 16
    invoke-direct {v3, v2}, Lfk/e$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
