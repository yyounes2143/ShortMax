.class final Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "HomeCheckInAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBinding;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic f(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;->k(ILcom/startshorts/androidplayer/bean/checkin/CheckInInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;->g:Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/checkin/CheckInInfo;)V
    .locals 6
    .param p2    # Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->G(Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v2, -0x1

    .line 17
    if-ne v0, v2, :cond_0

    .line 18
    .line 19
    move p1, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;

    .line 22
    .line 23
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->F(Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;I)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->G(Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v3, 0x0

    .line 34
    if-ne v0, v2, :cond_1

    .line 35
    .line 36
    move v0, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->isSign()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :goto_1
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBinding;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBinding;->e:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 49
    .line 50
    const-string v5, "rootView"

    .line 51
    .line 52
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    const v5, 0x3ecccccd    # 0.4f

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    .line 62
    .line 63
    :goto_2
    invoke-static {v2, v4, v5}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->H(Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;Landroid/view/View;F)V

    .line 64
    .line 65
    .line 66
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;

    .line 67
    .line 68
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBinding;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBinding;->a:Landroid/view/View;

    .line 73
    .line 74
    const-string v5, "bgDay"

    .line 75
    .line 76
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    if-ne p1, v1, :cond_3

    .line 80
    .line 81
    const/4 v3, 0x1

    .line 82
    :cond_3
    invoke-static {v2, v4, v3}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->J(Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;Landroid/view/View;Z)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBinding;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBinding;->d:Landroid/widget/ImageView;

    .line 92
    .line 93
    const-string v2, "dayIv"

    .line 94
    .line 95
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getDayIndex()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-static {p1, v1, v0, v2}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->I(Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;Landroid/widget/ImageView;ZI)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBinding;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 110
    .line 111
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getFormatBonus()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;->h:Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter$a;->j()Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBinding;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemHomeCheckInDayBigBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 125
    .line 126
    const-string v1, "checkInDay"

    .line 127
    .line 128
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getDayIndex()I

    .line 132
    .line 133
    .line 134
    move-result p2

    .line 135
    invoke-static {p1, v0, p2}, Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;->K(Lcom/startshorts/androidplayer/adapter/checkin/HomeCheckInAdapter;Landroid/widget/TextView;I)V

    .line 136
    .line 137
    .line 138
    return-void
.end method
