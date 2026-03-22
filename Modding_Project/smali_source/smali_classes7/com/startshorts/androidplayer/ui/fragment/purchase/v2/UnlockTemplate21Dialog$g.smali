.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;
.super Lyd/d;
.source "UnlockTemplate21Dialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->A1(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nUnlockTemplate21Dialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockTemplate21Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$renderSubsAndCoinsView$3$2\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,1523:1\n53#2,4:1524\n*S KotlinDebug\n*F\n+ 1 UnlockTemplate21Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$renderSubsAndCoinsView$3$2\n*L\n1174#1:1524,4\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

.field final synthetic f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    const/4 p2, 0x0

    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    invoke-direct {p0, v0, v1, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "v"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->s0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->y0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->t0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 33
    .line 34
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 35
    .line 36
    invoke-static {v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->y0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->C0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->h0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)Lcom/startshorts/androidplayer/databinding/DialogFragmentUnlockTemplate21Binding;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentUnlockTemplate21Binding;->h:Lcom/google/android/flexbox/FlexboxLayout;

    .line 51
    .line 52
    const-string v2, "flexboxLayout"

    .line 53
    .line 54
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    const/4 v4, 0x0

    .line 64
    :goto_0
    if-ge v4, v3, :cond_2

    .line 65
    .line 66
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    instance-of v6, v5, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuRenewTipView;

    .line 71
    .line 72
    if-eqz v6, :cond_1

    .line 73
    .line 74
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->h0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)Lcom/startshorts/androidplayer/databinding/DialogFragmentUnlockTemplate21Binding;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    iget-object v6, v6, Lcom/startshorts/androidplayer/databinding/DialogFragmentUnlockTemplate21Binding;->h:Lcom/google/android/flexbox/FlexboxLayout;

    .line 79
    .line 80
    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 81
    .line 82
    .line 83
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    :goto_1
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 87
    .line 88
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 89
    .line 90
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->p0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    iget-object v7, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 95
    .line 96
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 97
    .line 98
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->i0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 103
    .line 104
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->o0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v10

    .line 112
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 113
    .line 114
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->j0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-nez v1, :cond_3

    .line 119
    .line 120
    const-string v1, ""

    .line 121
    .line 122
    :cond_3
    move-object v12, v1

    .line 123
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 124
    .line 125
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->g0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v13

    .line 129
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 130
    .line 131
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->m0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v14

    .line 135
    const/16 v15, 0x28

    .line 136
    .line 137
    const/16 v16, 0x0

    .line 138
    .line 139
    const/4 v9, 0x0

    .line 140
    const/4 v11, 0x0

    .line 141
    invoke-static/range {v5 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 145
    .line 146
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$g;->f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 147
    .line 148
    invoke-static {v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->x0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V

    .line 149
    .line 150
    .line 151
    return-void
.end method
