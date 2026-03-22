.class public final Lgi/f$c;
.super Lyd/d;
.source "SwitchAccountTipDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgi/f;->w()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lgi/f;


# direct methods
.method constructor <init>(Lgi/f;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lgi/f$c;->e:Lgi/f;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 8

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 7
    .line 8
    const/4 v6, 0x6

    .line 9
    const/4 v7, 0x0

    .line 10
    const-string v2, "account_switch_pop_click"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    const-wide/16 v4, 0x0

    .line 14
    .line 15
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lgi/f$c;->e:Lgi/f;

    .line 19
    .line 20
    invoke-virtual {p1}, Lgi/f;->u()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;->getProvider()Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/16 v1, 0xa

    .line 36
    .line 37
    if-ne v0, v1, :cond_1

    .line 38
    .line 39
    const-string p1, "autoLoginGoogle"

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_1
    :goto_0
    if-nez p1, :cond_2

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/16 v1, 0x14

    .line 50
    .line 51
    if-ne v0, v1, :cond_3

    .line 52
    .line 53
    const-string p1, "autoLoginFaceBook"

    .line 54
    .line 55
    goto :goto_3

    .line 56
    :cond_3
    :goto_1
    if-nez p1, :cond_4

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    const/16 v0, 0x3c

    .line 64
    .line 65
    if-ne p1, v0, :cond_5

    .line 66
    .line 67
    const-string p1, "autoLoginPhone"

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_5
    :goto_2
    const-string p1, ""

    .line 71
    .line 72
    :goto_3
    iget-object v0, p0, Lgi/f$c;->e:Lgi/f;

    .line 73
    .line 74
    invoke-virtual {v0}, Lgi/f;->u()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;->getPhone()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    iget-object v1, p0, Lgi/f$c;->e:Lgi/f;

    .line 83
    .line 84
    invoke-virtual {v1}, Lgi/f;->u()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;->getArea_code()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iget-object v2, p0, Lgi/f$c;->e:Lgi/f;

    .line 93
    .line 94
    invoke-virtual {v2}, Lgi/f;->u()Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;->getCountry_code()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    iget-object v3, p0, Lgi/f$c;->e:Lgi/f;

    .line 103
    .line 104
    invoke-virtual {v3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    new-instance v4, Landroid/content/Intent;

    .line 109
    .line 110
    iget-object v5, p0, Lgi/f$c;->e:Lgi/f;

    .line 111
    .line 112
    invoke-virtual {v5}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    const-class v6, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;

    .line 117
    .line 118
    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .line 120
    .line 121
    const-string v5, "from"

    .line 122
    .line 123
    const-string v6, "login_page"

    .line 124
    .line 125
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    const-string v5, "autoLogin"

    .line 129
    .line 130
    invoke-virtual {v4, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    const-string p1, "ex_phone"

    .line 134
    .line 135
    invoke-virtual {v4, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    .line 137
    .line 138
    const-string p1, "ex_area_code"

    .line 139
    .line 140
    invoke-virtual {v4, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    .line 142
    .line 143
    const-string p1, "ex_country_code"

    .line 144
    .line 145
    invoke-virtual {v4, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v3, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lgi/f$c;->e:Lgi/f;

    .line 152
    .line 153
    invoke-virtual {p1}, Lfi/a;->dismiss()V

    .line 154
    .line 155
    .line 156
    return-void
.end method
