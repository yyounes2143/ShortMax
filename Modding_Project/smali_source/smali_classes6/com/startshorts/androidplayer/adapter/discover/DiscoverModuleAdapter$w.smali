.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DiscoverModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverModuleAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$TimeCountTitleMoreViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,2303:1\n1863#2,2:2304\n*S KotlinDebug\n*F\n+ 1 DiscoverModuleAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$TimeCountTitleMoreViewHolder\n*L\n851#1:2304,2\n*E\n"
    }
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTimeCountTitleMoreBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:Landroid/os/CountDownTimer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTimeCountTitleMoreBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTimeCountTitleMoreBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTimeCountTitleMoreBinding;

    .line 12
    .line 13
    return-void
.end method

.method public static final synthetic j(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->n(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;Landroid/os/CountDownTimer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->h:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic l(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->r()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final n(J)V
    .locals 8

    .line 1
    const/16 v0, 0x3e8

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    div-long/2addr p1, v0

    .line 5
    const/16 v0, 0xe10

    .line 6
    .line 7
    int-to-long v0, v0

    .line 8
    div-long v2, p1, v0

    .line 9
    .line 10
    rem-long/2addr p1, v0

    .line 11
    const/16 v0, 0x3c

    .line 12
    .line 13
    int-to-long v0, v0

    .line 14
    div-long v4, p1, v0

    .line 15
    .line 16
    rem-long/2addr p1, v0

    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTimeCountTitleMoreBinding;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sget v1, Lcom/startshorts/androidplayer/R$id;->hour_tv:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/TextView;

    .line 32
    .line 33
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 34
    .line 35
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 36
    .line 37
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const/4 v3, 0x1

    .line 46
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v6, "%02d"

    .line 51
    .line 52
    invoke-static {v1, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const-string v7, "format(...)"

    .line 57
    .line 58
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTimeCountTitleMoreBinding;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sget v2, Lcom/startshorts/androidplayer/R$id;->minute_tv:I

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Landroid/widget/TextView;

    .line 79
    .line 80
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    invoke-static {v1, v6, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTimeCountTitleMoreBinding;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    sget v2, Lcom/startshorts/androidplayer/R$id;->second_tv:I

    .line 111
    .line 112
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    check-cast v0, Landroid/widget/TextView;

    .line 117
    .line 118
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {v1, v6, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    return-void
.end method

.method private final r()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->T(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;)Lms/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "<get-value>(...)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v0, Ljava/lang/Iterable;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItemCount()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const-string/jumbo v3, "update_discount_tag"

    .line 39
    .line 40
    .line 41
    const/4 v4, 0x0

    .line 42
    invoke-virtual {v1, v4, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTimeCountTitleMoreBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->o(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTimeCountTitleMoreBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTimeCountTitleMoreBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public o(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 7
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
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
    instance-of v0, p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTimeCountTitleMoreBinding;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v3, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTimeCountTitleMoreBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 18
    .line 19
    const-string/jumbo v0, "titleTv"

    .line 20
    .line 21
    .line 22
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTimeCountTitleMoreBinding;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v4, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTimeCountTitleMoreBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 30
    .line 31
    const-string/jumbo v0, "titleMoreContainer"

    .line 32
    .line 33
    .line 34
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->m()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTimeCountTitleMoreBinding;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v5, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTimeCountTitleMoreBinding;->c:Landroid/widget/ImageView;

    .line 42
    .line 43
    const-string v0, "moreIv"

    .line 44
    .line 45
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    move-object v6, p2

    .line 49
    check-cast v6, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 50
    .line 51
    move v2, p1

    .line 52
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->d0(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILandroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->p()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public final p()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 6
    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getValidStartTime()Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 18
    .line 19
    .line 20
    move-result-wide v3

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-wide v3, v1

    .line 23
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getValidEndTime()Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v5

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    move-wide v5, v1

    .line 43
    :goto_1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 46
    .line 47
    .line 48
    move-result-wide v7

    .line 49
    cmp-long v3, v7, v3

    .line 50
    .line 51
    if-ltz v3, :cond_5

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    cmp-long v3, v3, v5

    .line 58
    .line 59
    if-lez v3, :cond_2

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_2
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    sub-long/2addr v5, v3

    .line 67
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->h:Landroid/os/CountDownTimer;

    .line 68
    .line 69
    if-eqz v0, :cond_3

    .line 70
    .line 71
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 72
    .line 73
    .line 74
    :cond_3
    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->h:Landroid/os/CountDownTimer;

    .line 76
    .line 77
    const-wide/16 v3, 0x3e8

    .line 78
    .line 79
    cmp-long v0, v5, v3

    .line 80
    .line 81
    if-lez v0, :cond_4

    .line 82
    .line 83
    invoke-direct {p0, v5, v6}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->n(J)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w$a;

    .line 87
    .line 88
    invoke-direct {v0, v5, v6, p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w$a;-><init>(JLcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->h:Landroid/os/CountDownTimer;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->n(J)V

    .line 98
    .line 99
    .line 100
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->r()V

    .line 101
    .line 102
    .line 103
    :goto_2
    return-void

    .line 104
    :cond_5
    :goto_3
    invoke-direct {p0, v1, v2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->n(J)V

    .line 105
    .line 106
    .line 107
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->r()V

    .line 108
    .line 109
    .line 110
    return-void
.end method

.method public final q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->h:Landroid/os/CountDownTimer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$w;->h:Landroid/os/CountDownTimer;

    .line 10
    .line 11
    return-void
.end method
