.class public final Lgi/f;
.super Lfi/a;
.source "SwitchAccountTipDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgi/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfi/a<",
        "Lcom/startshorts/androidplayer/databinding/DialogSwitchAccountTipBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final e:Lgi/f$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final d:Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgi/f$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgi/f$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgi/f;->e:Lgi/f$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;
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
    const-string v0, "userInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lfi/a;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lgi/f;->d:Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 15
    .line 16
    return-void
.end method

.method private final v()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogSwitchAccountTipBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogSwitchAccountTipBinding;->b:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lgi/f$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lgi/f$b;-><init>(Lgi/f;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final w()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogSwitchAccountTipBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogSwitchAccountTipBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    new-instance v1, Lgi/f$c;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lgi/f$c;-><init>(Lgi/f;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final x()V
    .locals 13

    .line 1
    iget-object v0, p0, Lgi/f;->d:Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;->getNickName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    iget-object v2, p0, Lgi/f;->d:Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;->getProvider()Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    const-string v3, "getString(...)"

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    const/16 v5, 0xa

    .line 28
    .line 29
    if-ne v4, v5, :cond_2

    .line 30
    .line 31
    const-string v1, "Google"

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    :goto_0
    if-nez v2, :cond_3

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    const/16 v5, 0x14

    .line 42
    .line 43
    if-ne v4, v5, :cond_4

    .line 44
    .line 45
    const-string v1, "Facebook"

    .line 46
    .line 47
    goto :goto_2

    .line 48
    :cond_4
    :goto_1
    if-nez v2, :cond_5

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    const/16 v4, 0x3c

    .line 56
    .line 57
    if-ne v2, v4, :cond_6

    .line 58
    .line 59
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    sget v2, Lcom/startshorts/androidplayer/R$string;->bind_info_fragment_phone:I

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    sget v4, Lcom/startshorts/androidplayer/R$string;->switch_account_tip_content:I

    .line 77
    .line 78
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    new-instance v10, Landroid/text/SpannableString;

    .line 90
    .line 91
    invoke-direct {v10, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    const/4 v6, 0x6

    .line 95
    const/4 v7, 0x0

    .line 96
    const/4 v4, 0x0

    .line 97
    const/4 v5, 0x0

    .line 98
    move-object v2, v8

    .line 99
    move-object v3, v0

    .line 100
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    add-int/2addr v0, v2

    .line 109
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 110
    .line 111
    const/high16 v11, -0x10000

    .line 112
    .line 113
    invoke-direct {v3, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 114
    .line 115
    .line 116
    const/16 v12, 0x21

    .line 117
    .line 118
    invoke-virtual {v10, v3, v2, v0, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 119
    .line 120
    .line 121
    const/4 v0, 0x6

    .line 122
    const/4 v9, 0x0

    .line 123
    const/4 v6, 0x0

    .line 124
    const/4 v7, 0x0

    .line 125
    move-object v4, v8

    .line 126
    move-object v5, v1

    .line 127
    move v8, v0

    .line 128
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->q0(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    add-int/2addr v1, v0

    .line 137
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    .line 138
    .line 139
    invoke-direct {v2, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v10, v2, v0, v1, v12}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Lfi/a;->i()Landroidx/databinding/ViewDataBinding;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogSwitchAccountTipBinding;

    .line 150
    .line 151
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogSwitchAccountTipBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 152
    .line 153
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method


# virtual methods
.method public g()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_switch_account_tip:I

    .line 2
    .line 3
    return v0
.end method

.method public k()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "SwitchAccountTipDialog"

    .line 2
    .line 3
    return-object v0
.end method

.method public n()I
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 8
    .line 9
    invoke-virtual {v1}, Lfk/z;->p()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    mul-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public p()V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lgi/f;->x()V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lgi/f;->v()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lgi/f;->w()V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 15
    .line 16
    const/4 v6, 0x6

    .line 17
    const/4 v7, 0x0

    .line 18
    const-string v2, "account_switch_pop_show"

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    const-wide/16 v4, 0x0

    .line 22
    .line 23
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public final u()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgi/f;->d:Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 2
    .line 3
    return-object v0
.end method
