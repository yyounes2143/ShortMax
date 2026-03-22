.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;
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
        "SMAP\nUnlockTemplate21Dialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UnlockTemplate21Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$renderSubsAndCoinsView$3$5\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,1523:1\n53#2,4:1524\n*S KotlinDebug\n*F\n+ 1 UnlockTemplate21Dialog.kt\ncom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$renderSubsAndCoinsView$3$5\n*L\n1233#1:1524,4\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

.field final synthetic f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

.field final synthetic g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

.field final synthetic i:Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;",
            "Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->g:Ljava/util/List;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->h:Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->i:Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    const/4 p2, 0x0

    .line 13
    const-wide/16 p3, 0x0

    .line 14
    .line 15
    invoke-direct {p0, p3, p4, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 18

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
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

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
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->y0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 27
    .line 28
    invoke-static {v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->u0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 33
    .line 34
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 35
    .line 36
    invoke-static {v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->y0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->C0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

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
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

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
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isBigCard()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_3

    .line 93
    .line 94
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 95
    .line 96
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->g:Ljava/util/List;

    .line 97
    .line 98
    iget-object v3, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->h:Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 99
    .line 100
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->i:Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;

    .line 101
    .line 102
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/ui/view/purchase/SubSkuCardView;->y()Z

    .line 103
    .line 104
    .line 105
    move-result v4

    .line 106
    invoke-static {v1, v2, v3, v4}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->f0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;Ljava/util/List;Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;Z)V

    .line 107
    .line 108
    .line 109
    :cond_3
    :goto_1
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 110
    .line 111
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 112
    .line 113
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->p0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    iget-object v7, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 118
    .line 119
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 120
    .line 121
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->i0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 126
    .line 127
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->o0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v11

    .line 135
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 136
    .line 137
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->j0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    if-nez v1, :cond_4

    .line 142
    .line 143
    const-string v1, ""

    .line 144
    .line 145
    :cond_4
    move-object v13, v1

    .line 146
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 147
    .line 148
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->g0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v14

    .line 152
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 153
    .line 154
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->m0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v15

    .line 158
    const/16 v16, 0x58

    .line 159
    .line 160
    const/16 v17, 0x0

    .line 161
    .line 162
    const/4 v9, 0x0

    .line 163
    const/4 v10, 0x0

    .line 164
    const/4 v12, 0x0

    .line 165
    invoke-static/range {v5 .. v17}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;

    .line 169
    .line 170
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog$h;->f:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 171
    .line 172
    invoke-static {v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;->x0(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/UnlockTemplate21Dialog;Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method
