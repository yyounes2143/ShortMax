.class public final Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$mOnPageChangeCallback$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "MyWalletFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$mOnPageChangeCallback$1;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$mOnPageChangeCallback$1;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "onPageSelected -> position("

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v4, 0x29

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$mOnPageChangeCallback$1;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;

    .line 33
    .line 34
    invoke-static {v2, v1}, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->L(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;I)V

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$mOnPageChangeCallback$1;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;

    .line 38
    .line 39
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->I(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;)Lcom/startshorts/androidplayer/databinding/FragmentMyWalletBinding;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/FragmentMyWalletBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 44
    .line 45
    invoke-virtual {v2, v1}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->setSelectedIndex(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$mOnPageChangeCallback$1;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->J(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    if-eq v1, v2, :cond_1

    .line 58
    .line 59
    const/4 v2, 0x2

    .line 60
    if-eq v1, v2, :cond_0

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 64
    .line 65
    const/4 v8, 0x6

    .line 66
    const/4 v9, 0x0

    .line 67
    const-string v4, "bonus_record_show"

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    const-wide/16 v6, 0x0

    .line 71
    .line 72
    move-object v3, v1

    .line 73
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$mOnPageChangeCallback$1;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;

    .line 77
    .line 78
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->K(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-nez v2, :cond_3

    .line 83
    .line 84
    const/4 v8, 0x6

    .line 85
    const/4 v9, 0x0

    .line 86
    const-string v4, "bonus_record_click"

    .line 87
    .line 88
    const/4 v5, 0x0

    .line 89
    const-wide/16 v6, 0x0

    .line 90
    .line 91
    move-object v3, v1

    .line 92
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 97
    .line 98
    const/4 v15, 0x6

    .line 99
    const/16 v16, 0x0

    .line 100
    .line 101
    const-string v11, "coin_record_show"

    .line 102
    .line 103
    const/4 v12, 0x0

    .line 104
    const-wide/16 v13, 0x0

    .line 105
    .line 106
    move-object v10, v1

    .line 107
    invoke-static/range {v10 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$mOnPageChangeCallback$1;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;

    .line 111
    .line 112
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->K(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_3

    .line 117
    .line 118
    const/4 v15, 0x6

    .line 119
    const/16 v16, 0x0

    .line 120
    .line 121
    const-string v11, "coin_record_click"

    .line 122
    .line 123
    const/4 v12, 0x0

    .line 124
    const-wide/16 v13, 0x0

    .line 125
    .line 126
    move-object v10, v1

    .line 127
    invoke-static/range {v10 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_2
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 132
    .line 133
    const/4 v7, 0x6

    .line 134
    const/4 v8, 0x0

    .line 135
    const-string v3, "discount_show"

    .line 136
    .line 137
    const/4 v4, 0x0

    .line 138
    const-wide/16 v5, 0x0

    .line 139
    .line 140
    move-object v2, v1

    .line 141
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$mOnPageChangeCallback$1;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;

    .line 145
    .line 146
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->K(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-nez v2, :cond_3

    .line 151
    .line 152
    const/4 v7, 0x6

    .line 153
    const/4 v8, 0x0

    .line 154
    const-string v3, "discount_click"

    .line 155
    .line 156
    const/4 v4, 0x0

    .line 157
    const-wide/16 v5, 0x0

    .line 158
    .line 159
    move-object v2, v1

    .line 160
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    :cond_3
    :goto_0
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment$mOnPageChangeCallback$1;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;

    .line 164
    .line 165
    const/4 v2, 0x0

    .line 166
    invoke-static {v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;->M(Lcom/startshorts/androidplayer/ui/fragment/wallet/MyWalletFragment;Z)V

    .line 167
    .line 168
    .line 169
    return-void
.end method
