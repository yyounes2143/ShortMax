.class public final Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "SearchHistoryView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSearchHistoryView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchHistoryView.kt\ncom/startshorts/androidplayer/ui/view/search/SearchHistoryView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,137:1\n1#2:138\n1863#3,2:139\n1863#3,2:141\n*S KotlinDebug\n*F\n+ 1 SearchHistoryView.kt\ncom/startshorts/androidplayer/ui/view/search/SearchHistoryView\n*L\n67#1:139,2\n82#1:141,2\n*E\n"
    }
.end annotation


# static fields
.field public static final g:Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:Z

.field private c:Landroid/widget/ImageView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lcom/startshorts/androidplayer/ui/view/base/MaxLinesFlexboxLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->g:Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final A()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getContext(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Ljk/d;->a(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    .line 17
    .line 18
    invoke-direct {v1, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 19
    .line 20
    .line 21
    const-class v2, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->e:Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    if-eqz v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    new-instance v2, Lvj/c;

    .line 47
    .line 48
    invoke-direct {v2, p0}, Lvj/c;-><init>(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;)V

    .line 49
    .line 50
    .line 51
    new-instance v3, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView$b;

    .line 52
    .line 53
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void

    .line 60
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v2, "initView -> activity  =="

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v0, " || searchHistoryViewModel == "

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->e:Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 79
    .line 80
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->r(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private static final B(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;Lcom/startshorts/androidplayer/viewmodel/search/b;)Lkotlin/Unit;
    .locals 9

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/search/b$b;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/search/b$b;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/search/b$b;->a()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/util/Collection;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-wide v2, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->f:J

    .line 24
    .line 25
    sub-long/2addr v0, v2

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    const-wide/16 v2, 0xbb8

    .line 31
    .line 32
    cmp-long v0, v0, v2

    .line 33
    .line 34
    if-ltz v0, :cond_0

    .line 35
    .line 36
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->f:J

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/search/b$b;->a()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Ljava/lang/Iterable;

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/String;

    .line 63
    .line 64
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 65
    .line 66
    new-instance v4, Landroid/os/Bundle;

    .line 67
    .line 68
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v3, "content"

    .line 72
    .line 73
    invoke-virtual {v4, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 77
    .line 78
    const/4 v7, 0x4

    .line 79
    const/4 v8, 0x0

    .line 80
    const-string v3, "search_history_show"

    .line 81
    .line 82
    const-wide/16 v5, 0x0

    .line 83
    .line 84
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->b:Z

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    if-eqz v0, :cond_1

    .line 92
    .line 93
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->b:Z

    .line 94
    .line 95
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->G()V

    .line 96
    .line 97
    .line 98
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->d:Lcom/startshorts/androidplayer/ui/view/base/MaxLinesFlexboxLayout;

    .line 99
    .line 100
    if-eqz v0, :cond_2

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 103
    .line 104
    .line 105
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/search/b$b;->a()Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Ljava/lang/Iterable;

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_4

    .line 120
    .line 121
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Ljava/lang/String;

    .line 126
    .line 127
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->d:Lcom/startshorts/androidplayer/ui/view/base/MaxLinesFlexboxLayout;

    .line 128
    .line 129
    if-eqz v2, :cond_3

    .line 130
    .line 131
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    sget v4, Lcom/startshorts/androidplayer/R$layout;->item_search_history_keyword:I

    .line 140
    .line 141
    const/4 v5, 0x0

    .line 142
    invoke-virtual {v3, v4, v5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    sget v4, Lcom/startshorts/androidplayer/R$id;->title_tv:I

    .line 147
    .line 148
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    check-cast v4, Landroid/widget/TextView;

    .line 153
    .line 154
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    new-instance v5, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    const-string v6, "history key word:"

    .line 163
    .line 164
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v5

    .line 174
    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    new-instance v4, Lvj/d;

    .line 178
    .line 179
    invoke-direct {v4, p0, v0}, Lvj/d;-><init>(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_4
    new-instance p1, Lvj/e;

    .line 190
    .line 191
    invoke-direct {p1, p0}, Lvj/e;-><init>(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 195
    .line 196
    .line 197
    :cond_5
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 198
    .line 199
    return-object p0
.end method

.method private static final C(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->e:Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;->A()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/search/b$d;

    .line 12
    .line 13
    invoke-direct {p2, p1}, Lcom/startshorts/androidplayer/viewmodel/search/b$d;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private static final D(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->d:Lcom/startshorts/androidplayer/ui/view/base/MaxLinesFlexboxLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/base/MaxLinesFlexboxLayout;->C()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->c:Landroid/widget/ImageView;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    const/16 v0, 0x8

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->c:Landroid/widget/ImageView;

    .line 23
    .line 24
    if-eqz p0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method private static final E(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->b:Z

    .line 2
    .line 3
    xor-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->b:Z

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->G()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private static final F(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->e:Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lcom/startshorts/androidplayer/viewmodel/search/a$d;->a:Lcom/startshorts/androidplayer/viewmodel/search/a$d;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchHistoryViewModel;->B(Lcom/startshorts/androidplayer/viewmodel/search/a;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final G()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "invalidateExpand -> mExpand = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->b:Z

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->s(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->b:Z

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->c:Landroid/widget/ImageView;

    .line 28
    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_search_history_shrink:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->d:Lcom/startshorts/androidplayer/ui/view/base/MaxLinesFlexboxLayout;

    .line 37
    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    const v1, 0x7fffffff

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/base/MaxLinesFlexboxLayout;->B(I)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->c:Landroid/widget/ImageView;

    .line 48
    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_search_history_expand:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 54
    .line 55
    .line 56
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->d:Lcom/startshorts/androidplayer/ui/view/base/MaxLinesFlexboxLayout;

    .line 57
    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    const/4 v1, 0x1

    .line 61
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/base/MaxLinesFlexboxLayout;->B(I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic v(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->D(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic w(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;Lcom/startshorts/androidplayer/viewmodel/search/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->B(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;Lcom/startshorts/androidplayer/viewmodel/search/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic x(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->F(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->C(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;Ljava/lang/String;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic z(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->E(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_search_history:I

    .line 2
    .line 3
    return v0
.end method

.method public getSTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "SearchHistoryView"

    .line 2
    .line 3
    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->b:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->b:Z

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->G()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->b:Z

    .line 8
    .line 9
    sget p1, Lcom/startshorts/androidplayer/R$id;->search_history_flexbox_layout:I

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/MaxLinesFlexboxLayout;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->d:Lcom/startshorts/androidplayer/ui/view/base/MaxLinesFlexboxLayout;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    const/4 p2, 0x1

    .line 22
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/MaxLinesFlexboxLayout;->B(I)V

    .line 23
    .line 24
    .line 25
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$id;->search_history_expand_iv:I

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/widget/ImageView;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->c:Landroid/widget/ImageView;

    .line 34
    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    new-instance p2, Lvj/a;

    .line 38
    .line 39
    invoke-direct {p2, p0}, Lvj/a;-><init>(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    sget p1, Lcom/startshorts/androidplayer/R$id;->history_clear_iv:I

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance p2, Lvj/b;

    .line 52
    .line 53
    invoke-direct {p2, p0}, Lvj/b;-><init>(Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/search/SearchHistoryView;->A()V

    .line 60
    .line 61
    .line 62
    return-void
.end method
