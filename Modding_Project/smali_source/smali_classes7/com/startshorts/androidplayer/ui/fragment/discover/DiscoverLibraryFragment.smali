.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;
.source "DiscoverLibraryFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment<",
        "Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverLibraryFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverLibraryFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 4 LongSparseArray.kt\nandroidx/core/util/LongSparseArrayKt\n+ 5 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,792:1\n1863#2,2:793\n360#2,7:795\n1863#2,2:804\n1863#2,2:806\n360#2,7:808\n1863#2,2:817\n1863#2:821\n1864#2:824\n184#3,2:802\n184#3,2:815\n184#3,2:819\n53#3,4:825\n53#3,2:829\n56#3:833\n42#4:822\n42#4:823\n42#4:831\n42#4:832\n77#4,4:834\n42#4:838\n77#4,4:839\n24#4:843\n42#4:844\n82#5:845\n15#5,9:847\n83#5:856\n1#6:846\n*S KotlinDebug\n*F\n+ 1 DiscoverLibraryFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment\n*L\n452#1:793,2\n470#1:795,7\n487#1:804,2\n523#1:806,2\n541#1:808,7\n558#1:817,2\n609#1:821\n609#1:824\n485#1:802,2\n556#1:815,2\n607#1:819,2\n668#1:825,4\n688#1:829,2\n688#1:833\n612#1:822\n613#1:823\n691#1:831\n692#1:832\n699#1:834,4\n715#1:838\n719#1:839,4\n751#1:843\n751#1:844\n756#1:845\n763#1:847,9\n756#1:856\n756#1:846\n*E\n"
    }
.end annotation


# static fields
.field public static final A:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:J

.field private q:J

.field private final r:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/startshorts/androidplayer/bean/library/LibraryCategory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private s:Z

.field private t:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private u:Z

.field private final v:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final w:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private x:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private y:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->A:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x3

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->p:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->q:J

    .line 9
    .line 10
    new-instance v0, Landroid/util/LongSparseArray;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->r:Landroid/util/LongSparseArray;

    .line 16
    .line 17
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/c0;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/c0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->v:Lms/i;

    .line 27
    .line 28
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/d0;

    .line 29
    .line 30
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/d0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->w:Lms/i;

    .line 38
    .line 39
    const-string v0, ""

    .line 40
    .line 41
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->y:Ljava/lang/String;

    .line 42
    .line 43
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_discover_library:I

    .line 44
    .line 45
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->z:I

    .line 46
    .line 47
    return-void
.end method

.method private final A0(Lcom/startshorts/androidplayer/bean/library/LibraryClass;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/library/LibraryClass;->getContentList()Ljava/util/ArrayList;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/library/LibraryClass;->getClassList()Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    new-instance p1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 45
    .line 46
    const/16 v0, 0x8

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_3
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->B0(Ljava/util/ArrayList;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->C0(Ljava/util/ArrayList;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->H0()V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->I0()V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->M0()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private final B0(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/startshorts/androidplayer/bean/library/LibraryCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const-wide/16 v2, 0x3

    .line 10
    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    const-wide/16 v6, 0x2

    .line 24
    .line 25
    cmp-long v6, v4, v6

    .line 26
    .line 27
    if-nez v6, :cond_1

    .line 28
    .line 29
    sget v2, Lcom/startshorts/androidplayer/R$string;->library_activity_label_male:I

    .line 30
    .line 31
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->setName(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-wide/16 v6, 0x1

    .line 40
    .line 41
    cmp-long v6, v4, v6

    .line 42
    .line 43
    if-nez v6, :cond_2

    .line 44
    .line 45
    sget v2, Lcom/startshorts/androidplayer/R$string;->library_activity_label_female:I

    .line 46
    .line 47
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->setName(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    cmp-long v2, v4, v2

    .line 56
    .line 57
    if-nez v2, :cond_0

    .line 58
    .line 59
    sget v2, Lcom/startshorts/androidplayer/R$string;->library_activity_label_all:I

    .line 60
    .line 61
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->setName(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    const/4 v1, 0x0

    .line 74
    if-nez v0, :cond_7

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    move v4, v1

    .line 81
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    const/4 v6, -0x1

    .line 86
    if-eqz v5, :cond_5

    .line 87
    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 93
    .line 94
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 95
    .line 96
    .line 97
    move-result-wide v7

    .line 98
    cmp-long v5, v7, v2

    .line 99
    .line 100
    if-nez v5, :cond_4

    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    move v4, v6

    .line 107
    :goto_2
    if-ne v4, v6, :cond_6

    .line 108
    .line 109
    sget-object v0, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->Companion:Lcom/startshorts/androidplayer/bean/library/LibraryCategory$Companion;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    const-string v3, "requireContext(...)"

    .line 116
    .line 117
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory$Companion;->createChannelAll(Landroid/content/Context;)Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_6
    if-eqz v4, :cond_7

    .line 129
    .line 130
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_7
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const/high16 v2, 0x40c00000    # 6.0f

    .line 146
    .line 147
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    new-instance v3, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 152
    .line 153
    const/high16 v4, 0x41e00000    # 28.0f

    .line 154
    .line 155
    invoke-static {v4}, Ljk/g;->a(F)I

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    const/4 v5, -0x2

    .line 160
    invoke-direct {v3, v5, v4}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(II)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    check-cast v2, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 171
    .line 172
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->b:Lcom/google/android/flexbox/FlexboxLayout;

    .line 173
    .line 174
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 175
    .line 176
    .line 177
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v2

    .line 181
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-eqz v4, :cond_b

    .line 186
    .line 187
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v4

    .line 191
    check-cast v4, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 192
    .line 193
    invoke-static {v0}, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->b(Landroid/view/LayoutInflater;)Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    const-string v6, "inflate(...)"

    .line 198
    .line 199
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 203
    .line 204
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    .line 210
    .line 211
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 212
    .line 213
    iget-wide v7, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->q:J

    .line 214
    .line 215
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 216
    .line 217
    .line 218
    move-result-wide v9

    .line 219
    cmp-long v7, v7, v9

    .line 220
    .line 221
    const/4 v8, 0x1

    .line 222
    if-nez v7, :cond_8

    .line 223
    .line 224
    move v7, v8

    .line 225
    goto :goto_5

    .line 226
    :cond_8
    move v7, v1

    .line 227
    :goto_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    .line 228
    .line 229
    .line 230
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 231
    .line 232
    iget-wide v9, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->q:J

    .line 233
    .line 234
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 235
    .line 236
    .line 237
    move-result-wide v11

    .line 238
    cmp-long v7, v9, v11

    .line 239
    .line 240
    if-nez v7, :cond_9

    .line 241
    .line 242
    goto :goto_6

    .line 243
    :cond_9
    move v8, v1

    .line 244
    :goto_6
    const/4 v7, 0x0

    .line 245
    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 246
    .line 247
    .line 248
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 249
    .line 250
    invoke-virtual {v6, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    sget v7, Lcom/startshorts/androidplayer/R$string;->library_activity_label_all:I

    .line 258
    .line 259
    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v7

    .line 263
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v6

    .line 267
    if-eqz v6, :cond_a

    .line 268
    .line 269
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 270
    .line 271
    new-instance v7, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v8

    .line 280
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    sget v8, Lcom/startshorts/androidplayer/R$string;->library_fragment_interest:I

    .line 284
    .line 285
    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v8

    .line 289
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v7

    .line 296
    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 297
    .line 298
    .line 299
    goto :goto_7

    .line 300
    :cond_a
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 301
    .line 302
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 307
    .line 308
    .line 309
    :goto_7
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 310
    .line 311
    new-instance v7, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$d;

    .line 312
    .line 313
    invoke-direct {v7, p0, v4}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;Lcom/startshorts/androidplayer/bean/library/LibraryCategory;)V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    check-cast v4, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 324
    .line 325
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->b:Lcom/google/android/flexbox/FlexboxLayout;

    .line 326
    .line 327
    invoke-virtual {v5}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 328
    .line 329
    .line 330
    move-result-object v5

    .line 331
    invoke-virtual {v4, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    .line 333
    .line 334
    goto/16 :goto_4

    .line 335
    .line 336
    :cond_b
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 337
    .line 338
    .line 339
    move-result p1

    .line 340
    if-eqz p1, :cond_c

    .line 341
    .line 342
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 347
    .line 348
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->b:Lcom/google/android/flexbox/FlexboxLayout;

    .line 349
    .line 350
    const/16 v0, 0x8

    .line 351
    .line 352
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 353
    .line 354
    .line 355
    goto :goto_8

    .line 356
    :cond_c
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 361
    .line 362
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->b:Lcom/google/android/flexbox/FlexboxLayout;

    .line 363
    .line 364
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    .line 366
    .line 367
    :goto_8
    return-void
.end method

.method private final C0(Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/startshorts/androidplayer/bean/library/LibraryCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->Companion:Lcom/startshorts/androidplayer/bean/library/LibraryCategory$Companion;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "requireContext(...)"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory$Companion;->createClassAll(Landroid/content/Context;)Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    const-wide/16 v5, 0x0

    .line 41
    .line 42
    cmp-long v1, v3, v5

    .line 43
    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 57
    .line 58
    :goto_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->r:Landroid/util/LongSparseArray;

    .line 59
    .line 60
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 61
    .line 62
    invoke-virtual {v1, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/high16 v3, 0x40c00000    # 6.0f

    .line 74
    .line 75
    invoke-static {v3}, Ljk/g;->a(F)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    new-instance v4, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 80
    .line 81
    const/high16 v5, 0x41e00000    # 28.0f

    .line 82
    .line 83
    invoke-static {v5}, Ljk/g;->a(F)I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    const/4 v6, -0x2

    .line 88
    invoke-direct {v4, v6, v5}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(II)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    check-cast v3, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 99
    .line 100
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;

    .line 101
    .line 102
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 103
    .line 104
    .line 105
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    if-eqz v5, :cond_5

    .line 114
    .line 115
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v5

    .line 119
    check-cast v5, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 120
    .line 121
    invoke-static {v1}, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->b(Landroid/view/LayoutInflater;)Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    const-string v7, "inflate(...)"

    .line 126
    .line 127
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 131
    .line 132
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v8

    .line 136
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 140
    .line 141
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->r:Landroid/util/LongSparseArray;

    .line 142
    .line 143
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 144
    .line 145
    .line 146
    move-result-wide v9

    .line 147
    invoke-virtual {v8, v9, v10}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    .line 148
    .line 149
    .line 150
    move-result v8

    .line 151
    const/4 v9, 0x1

    .line 152
    if-ltz v8, :cond_2

    .line 153
    .line 154
    move v8, v9

    .line 155
    goto :goto_2

    .line 156
    :cond_2
    move v8, v2

    .line 157
    :goto_2
    invoke-virtual {v7, v8}, Landroid/view/View;->setSelected(Z)V

    .line 158
    .line 159
    .line 160
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 161
    .line 162
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->r:Landroid/util/LongSparseArray;

    .line 163
    .line 164
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 165
    .line 166
    .line 167
    move-result-wide v10

    .line 168
    invoke-virtual {v8, v10, v11}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    if-ltz v8, :cond_3

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_3
    move v9, v2

    .line 176
    :goto_3
    const/4 v8, 0x0

    .line 177
    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 178
    .line 179
    .line 180
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 181
    .line 182
    invoke-virtual {v7, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v7

    .line 189
    sget v8, Lcom/startshorts/androidplayer/R$string;->library_activity_label_all:I

    .line 190
    .line 191
    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v8

    .line 195
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v7

    .line 199
    if-eqz v7, :cond_4

    .line 200
    .line 201
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 202
    .line 203
    new-instance v8, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    sget v9, Lcom/startshorts/androidplayer/R$string;->library_fragment_type:I

    .line 216
    .line 217
    invoke-virtual {p0, v9}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v9

    .line 221
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v8

    .line 228
    invoke-virtual {v7, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 229
    .line 230
    .line 231
    goto :goto_4

    .line 232
    :cond_4
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 233
    .line 234
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v8

    .line 238
    invoke-virtual {v7, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    :goto_4
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 242
    .line 243
    new-instance v8, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$e;

    .line 244
    .line 245
    invoke-direct {v8, v5, p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$e;-><init>(Lcom/startshorts/androidplayer/bean/library/LibraryCategory;Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 252
    .line 253
    .line 254
    move-result-object v5

    .line 255
    check-cast v5, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 256
    .line 257
    iget-object v5, v5, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;

    .line 258
    .line 259
    invoke-virtual {v6}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 260
    .line 261
    .line 262
    move-result-object v6

    .line 263
    invoke-virtual {v5, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    .line 265
    .line 266
    goto/16 :goto_1

    .line 267
    .line 268
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    if-eqz p1, :cond_6

    .line 273
    .line 274
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 275
    .line 276
    .line 277
    move-result-object p1

    .line 278
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 279
    .line 280
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;

    .line 281
    .line 282
    const/16 v0, 0x8

    .line 283
    .line 284
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 292
    .line 293
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->f:Landroid/widget/ImageView;

    .line 294
    .line 295
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    .line 297
    .line 298
    goto :goto_5

    .line 299
    :cond_6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 304
    .line 305
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;

    .line 306
    .line 307
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 315
    .line 316
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;

    .line 317
    .line 318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    const/high16 v1, 0x42a00000    # 80.0f

    .line 323
    .line 324
    invoke-static {v0, v1}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;->C(I)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 332
    .line 333
    .line 334
    move-result-object p1

    .line 335
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 336
    .line 337
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->f:Landroid/widget/ImageView;

    .line 338
    .line 339
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    .line 341
    .line 342
    :goto_5
    return-void
.end method

.method private final D0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "tab"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const-class v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 16
    .line 17
    invoke-static {v0, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->t:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getDramaStyle()Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    goto :goto_1

    .line 40
    :cond_1
    const/4 v0, 0x2

    .line 41
    :goto_1
    const/4 v1, 0x1

    .line 42
    if-ne v0, v1, :cond_2

    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    const/4 v1, 0x0

    .line 46
    :goto_2
    iput-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->s:Z

    .line 47
    .line 48
    return-void
.end method

.method private final E0(Ljava/lang/String;)V
    .locals 9

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
    iget-wide v3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->q:J

    .line 14
    .line 15
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v1, "library_interest"

    .line 20
    .line 21
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->r:Landroid/util/LongSparseArray;

    .line 25
    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    invoke-virtual {p1, v3, v4}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    const-string v1, "library_type"

    .line 33
    .line 34
    if-ltz p1, :cond_0

    .line 35
    .line 36
    const-string p1, ""

    .line 37
    .line 38
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->r:Landroid/util/LongSparseArray;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const/4 v5, 0x0

    .line 54
    :goto_0
    if-ge v5, v4, :cond_1

    .line 55
    .line 56
    invoke-virtual {v3, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 57
    .line 58
    .line 59
    move-result-wide v6

    .line 60
    invoke-virtual {v3, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    check-cast v8, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 65
    .line 66
    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v6, ","

    .line 70
    .line 71
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    add-int/lit8 v5, v5, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    if-lez v3, :cond_2

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    add-int/lit8 v3, v3, -0x1

    .line 88
    .line 89
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    const-string v4, "deleteCharAt(...)"

    .line 94
    .line 95
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 106
    .line 107
    const/4 v5, 0x4

    .line 108
    const/4 v6, 0x0

    .line 109
    const-string v1, "discover_library_subtag_filter"

    .line 110
    .line 111
    const-wide/16 v3, 0x0

    .line 112
    .line 113
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method private static final F0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "is_show_tab_view"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method private final G0(II)V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->t0()Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->H()Lfk/x;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, p1, v1}, Lfk/x;->a(IZ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    if-nez p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->T()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->c()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->t0()Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    new-instance v12, Lcom/startshorts/androidplayer/viewmodel/library/a$b;

    .line 34
    .line 35
    iget-wide v3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->p:J

    .line 36
    .line 37
    iget-wide v5, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->q:J

    .line 38
    .line 39
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->r:Landroid/util/LongSparseArray;

    .line 40
    .line 41
    const/16 v10, 0x20

    .line 42
    .line 43
    const/4 v11, 0x0

    .line 44
    const/4 v9, 0x0

    .line 45
    move-object v1, v12

    .line 46
    move v2, p1

    .line 47
    move v8, p2

    .line 48
    invoke-direct/range {v1 .. v11}, Lcom/startshorts/androidplayer/viewmodel/library/a$b;-><init>(IJJLandroid/util/LongSparseArray;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v12}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->J(Lcom/startshorts/androidplayer/viewmodel/library/a;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->M0()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private final H0()V
    .locals 0

    .line 1
    return-void
.end method

.method private final I0()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->b:Lcom/google/android/flexbox/FlexboxLayout;

    .line 8
    .line 9
    const-string v1, "channelFlexboxLayout"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    :goto_0
    if-ge v3, v1, :cond_4

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const-string v5, "null cannot be cast to non-null type android.widget.TextView"

    .line 27
    .line 28
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast v4, Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const-string v6, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.library.LibraryCategory"

    .line 38
    .line 39
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    check-cast v5, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 43
    .line 44
    iget-wide v6, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->q:J

    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 47
    .line 48
    .line 49
    move-result-wide v8

    .line 50
    cmp-long v6, v6, v8

    .line 51
    .line 52
    const/4 v7, 0x1

    .line 53
    if-nez v6, :cond_0

    .line 54
    .line 55
    move v6, v7

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    move v6, v2

    .line 58
    :goto_1
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 59
    .line 60
    .line 61
    iget-wide v8, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->q:J

    .line 62
    .line 63
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 64
    .line 65
    .line 66
    move-result-wide v10

    .line 67
    cmp-long v6, v8, v10

    .line 68
    .line 69
    if-nez v6, :cond_1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    move v7, v2

    .line 73
    :goto_2
    const/4 v6, 0x0

    .line 74
    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 75
    .line 76
    .line 77
    iget-wide v6, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->q:J

    .line 78
    .line 79
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 80
    .line 81
    .line 82
    move-result-wide v8

    .line 83
    cmp-long v4, v6, v8

    .line 84
    .line 85
    if-nez v4, :cond_3

    .line 86
    .line 87
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    if-nez v4, :cond_2

    .line 92
    .line 93
    const-string v4, ""

    .line 94
    .line 95
    :cond_2
    iput-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->y:Ljava/lang/String;

    .line 96
    .line 97
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_4
    return-void
.end method

.method private final J0()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;

    .line 8
    .line 9
    const-string v1, "classFlexboxLayout"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    :goto_0
    if-ge v3, v1, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    const-string v5, "null cannot be cast to non-null type android.widget.TextView"

    .line 27
    .line 28
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast v4, Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const-string v6, "null cannot be cast to non-null type com.startshorts.androidplayer.bean.library.LibraryCategory"

    .line 38
    .line 39
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    check-cast v5, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 43
    .line 44
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->r:Landroid/util/LongSparseArray;

    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 47
    .line 48
    .line 49
    move-result-wide v7

    .line 50
    invoke-virtual {v6, v7, v8}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    .line 51
    .line 52
    .line 53
    move-result v6

    .line 54
    const/4 v7, 0x1

    .line 55
    if-ltz v6, :cond_0

    .line 56
    .line 57
    move v6, v7

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    move v6, v2

    .line 60
    :goto_1
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 61
    .line 62
    .line 63
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->r:Landroid/util/LongSparseArray;

    .line 64
    .line 65
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 66
    .line 67
    .line 68
    move-result-wide v8

    .line 69
    invoke-virtual {v6, v8, v9}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    if-ltz v5, :cond_1

    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_1
    move v7, v2

    .line 77
    :goto_2
    const/4 v5, 0x0

    .line 78
    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v3, v3, 0x1

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    return-void
.end method

.method private final K0()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->q:J

    .line 2
    .line 3
    const-wide/16 v2, 0x3

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->r:Landroid/util/LongSparseArray;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->r:Landroid/util/LongSparseArray;

    .line 19
    .line 20
    const-wide/16 v1, 0x0

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-ltz v0, :cond_0

    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/e0;

    .line 40
    .line 41
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/e0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private static final L0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-wide/16 v1, 0x3

    .line 8
    .line 9
    iput-wide v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->q:J

    .line 10
    .line 11
    sget-object v1, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->Companion:Lcom/startshorts/androidplayer/bean/library/LibraryCategory$Companion;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory$Companion;->createClassAll(Landroid/content/Context;)Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->r:Landroid/util/LongSparseArray;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->clear()V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->r:Landroid/util/LongSparseArray;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-virtual {v1, v2, v3, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$f;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$g;

    .line 37
    .line 38
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$g;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method private final M0()V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->y:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " \u00b7 "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->r:Landroid/util/LongSparseArray;

    .line 29
    .line 30
    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/4 v4, 0x0

    .line 35
    move v5, v4

    .line 36
    :goto_0
    if-ge v5, v3, :cond_0

    .line 37
    .line 38
    invoke-virtual {v1, v5}, Landroid/util/LongSparseArray;->keyAt(I)J

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v5}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    check-cast v6, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 46
    .line 47
    new-instance v7, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    .line 68
    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v2, "toString(...)"

    .line 77
    .line 78
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    add-int/lit8 v0, v0, -0x2

    .line 86
    .line 87
    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    const-string v1, "substring(...)"

    .line 92
    .line 93
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 101
    .line 102
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 103
    .line 104
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method private static final N0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;
    .locals 5

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->o()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/discover/f0;

    .line 23
    .line 24
    invoke-direct {v3, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/f0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V

    .line 25
    .line 26
    .line 27
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$h;

    .line 28
    .line 29
    invoke-direct {v4, v3}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/discover/g0;

    .line 44
    .line 45
    invoke-direct {v3, p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/g0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$h;

    .line 49
    .line 50
    invoke-direct {p0, v3}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$h;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method private static final O0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->K()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->U()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->V(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 27
    .line 28
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->k:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    .line 30
    const/16 p1, 0x8

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object p0
.end method

.method private static final P0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Lcom/startshorts/androidplayer/viewmodel/library/b;)Lkotlin/Unit;
    .locals 8

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/viewmodel/library/b$a;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->K()V

    .line 7
    .line 8
    .line 9
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/library/b$a;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$a;->a()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->getLibClass()Lcom/startshorts/androidplayer/bean/library/LibraryClass;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->A0(Lcom/startshorts/androidplayer/bean/library/LibraryClass;)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->c()V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 30
    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$a;->a()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->getList()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Ljava/util/Collection;

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->b(Ljava/util/Collection;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->g()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_2

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->S()V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 60
    .line 61
    if-eqz p1, :cond_4

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->n(Z)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->J()V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 71
    .line 72
    if-eqz p1, :cond_3

    .line 73
    .line 74
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$a;->a()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->isComplete()Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->n(Z)V

    .line 83
    .line 84
    .line 85
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 86
    .line 87
    if-eqz p1, :cond_4

    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$a;->a()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->isComplete()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->k(Z)V

    .line 98
    .line 99
    .line 100
    :cond_4
    :goto_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$a;->a()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->isComplete()Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-eqz p1, :cond_10

    .line 109
    .line 110
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 111
    .line 112
    if-eqz p0, :cond_10

    .line 113
    .line 114
    new-instance p1, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 115
    .line 116
    invoke-direct {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->setItemType(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->a(Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    goto/16 :goto_2

    .line 126
    .line 127
    :cond_5
    instance-of v0, p2, Lcom/startshorts/androidplayer/viewmodel/library/b$c;

    .line 128
    .line 129
    if-eqz v0, :cond_d

    .line 130
    .line 131
    iget-wide v3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->p:J

    .line 132
    .line 133
    iget-wide v5, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->q:J

    .line 134
    .line 135
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->r:Landroid/util/LongSparseArray;

    .line 136
    .line 137
    move-object v2, p1

    .line 138
    invoke-virtual/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->E(JJLandroid/util/LongSparseArray;)Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/library/b$c;

    .line 143
    .line 144
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$c;->a()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_6

    .line 153
    .line 154
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 155
    .line 156
    return-object p0

    .line 157
    :cond_6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->K()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$c;->c()I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_7

    .line 165
    .line 166
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$c;->c()I

    .line 167
    .line 168
    .line 169
    move-result p1

    .line 170
    if-ne p1, v1, :cond_8

    .line 171
    .line 172
    :cond_7
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 173
    .line 174
    if-eqz p1, :cond_8

    .line 175
    .line 176
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->c()V

    .line 177
    .line 178
    .line 179
    :cond_8
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 180
    .line 181
    if-eqz p1, :cond_9

    .line 182
    .line 183
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$c;->b()Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    check-cast v0, Ljava/util/Collection;

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->b(Ljava/util/Collection;)V

    .line 190
    .line 191
    .line 192
    :cond_9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 193
    .line 194
    if-eqz p1, :cond_a

    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->g()I

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-nez p1, :cond_a

    .line 201
    .line 202
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->S()V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 206
    .line 207
    if-eqz p1, :cond_c

    .line 208
    .line 209
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->n(Z)V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_a
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->J()V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 217
    .line 218
    if-eqz p1, :cond_b

    .line 219
    .line 220
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$c;->d()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->n(Z)V

    .line 225
    .line 226
    .line 227
    :cond_b
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 228
    .line 229
    if-eqz p1, :cond_c

    .line 230
    .line 231
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$c;->d()Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->k(Z)V

    .line 236
    .line 237
    .line 238
    :cond_c
    :goto_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$c;->d()Z

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    if-eqz p1, :cond_10

    .line 243
    .line 244
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 245
    .line 246
    if-eqz p0, :cond_10

    .line 247
    .line 248
    new-instance p1, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 249
    .line 250
    invoke-direct {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->setItemType(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->a(Ljava/lang/Object;)V

    .line 257
    .line 258
    .line 259
    goto :goto_2

    .line 260
    :cond_d
    instance-of v0, p2, Lcom/startshorts/androidplayer/viewmodel/library/b$b;

    .line 261
    .line 262
    if-eqz v0, :cond_11

    .line 263
    .line 264
    iget-wide v3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->p:J

    .line 265
    .line 266
    iget-wide v5, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->q:J

    .line 267
    .line 268
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->r:Landroid/util/LongSparseArray;

    .line 269
    .line 270
    move-object v2, p1

    .line 271
    invoke-virtual/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->E(JJLandroid/util/LongSparseArray;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/library/b$b;

    .line 276
    .line 277
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$b;->b()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result p1

    .line 285
    if-nez p1, :cond_e

    .line 286
    .line 287
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 288
    .line 289
    return-object p0

    .line 290
    :cond_e
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$b;->c()I

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-nez p1, :cond_10

    .line 295
    .line 296
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->K()V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$b;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    if-ne p1, v1, :cond_f

    .line 308
    .line 309
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->U()V

    .line 310
    .line 311
    .line 312
    goto :goto_2

    .line 313
    :cond_f
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$b;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->V(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    :cond_10
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 325
    .line 326
    return-object p0

    .line 327
    :cond_11
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 328
    .line 329
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 330
    .line 331
    .line 332
    throw p0
.end method

.method public static synthetic W(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->y0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic X(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->N0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Y(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->O0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Z(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->L0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->F0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic b0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;Landroid/view/View;ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->x0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;Landroid/view/View;ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;ILcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->z0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;ILcom/google/android/material/appbar/AppBarLayout;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Lcom/startshorts/androidplayer/viewmodel/library/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->P0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Lcom/startshorts/androidplayer/viewmodel/library/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic e0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic f0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)Landroid/util/LongSparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->r:Landroid/util/LongSparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic g0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->q:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic h0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->x:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic i0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->p:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic j0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->u:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic k0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->t0()Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->E0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic m0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->G0(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic n0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->H0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic o0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->I0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->J0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->q:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic r0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->u:Z

    .line 2
    .line 3
    return-void
.end method

.method private final s0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->w:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final t0()Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->v:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final u0()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->R()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 5
    .line 6
    const/4 v5, 0x6

    .line 7
    const/4 v6, 0x0

    .line 8
    const-string v1, "discover_library_show"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const-wide/16 v3, 0x0

    .line 12
    .line 13
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private final v0()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->s0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->u()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int/2addr v1, v2

    .line 18
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->t()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    add-int/2addr v1, v0

    .line 23
    move v4, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->t()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 41
    .line 42
    iget-object v2, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->l:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 43
    .line 44
    const-string v0, "toolbarLayout"

    .line 45
    .line 46
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/16 v7, 0xd

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v3, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    invoke-static/range {v2 .. v8}, Ljk/b0;->i(Landroid/view/View;IIIIILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private final w0()V
    .locals 5

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->f:Landroid/widget/ImageView;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->g:Landroid/widget/ImageView;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->s:Z

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    new-instance v0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter;

    .line 33
    .line 34
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 46
    .line 47
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;

    .line 62
    .line 63
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;-><init>()V

    .line 64
    .line 65
    .line 66
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 67
    .line 68
    const-string v1, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.library.LibraryHomeGridAdapter"

    .line 69
    .line 70
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$b;

    .line 74
    .line 75
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;->s(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const/4 v2, 0x3

    .line 88
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 89
    .line 90
    .line 91
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$initView$2;

    .line 92
    .line 93
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$initView$2;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 104
    .line 105
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 106
    .line 107
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 115
    .line 116
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    const-string v1, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    .line 123
    .line 124
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 128
    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const/high16 v3, 0x41400000    # 12.0f

    .line 134
    .line 135
    invoke-static {v1, v3}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v1, v3}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 147
    .line 148
    .line 149
    move-result v1

    .line 150
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 158
    .line 159
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 160
    .line 161
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 169
    .line 170
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 171
    .line 172
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/discover/GridSpacingItemDecoration;

    .line 173
    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    const/high16 v4, 0x41000000    # 8.0f

    .line 179
    .line 180
    invoke-static {v3, v4}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 181
    .line 182
    .line 183
    move-result v3

    .line 184
    const/4 v4, 0x1

    .line 185
    invoke-direct {v1, v2, v3, v4}, Lcom/startshorts/androidplayer/ui/view/discover/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 189
    .line 190
    .line 191
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 192
    .line 193
    if-eqz v0, :cond_1

    .line 194
    .line 195
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/z;

    .line 196
    .line 197
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/z;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->f(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$c;)V

    .line 201
    .line 202
    .line 203
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 208
    .line 209
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 210
    .line 211
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/a0;

    .line 212
    .line 213
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/a0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;->setLoadMoreListener(Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView$b;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 224
    .line 225
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 226
    .line 227
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 228
    .line 229
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    const/high16 v1, 0x41e00000    # 28.0f

    .line 237
    .line 238
    invoke-static {v0, v1}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 247
    .line 248
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->a:Lcom/google/android/material/appbar/AppBarLayout;

    .line 249
    .line 250
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/discover/b0;

    .line 251
    .line 252
    invoke-direct {v2, p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/b0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v2}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 263
    .line 264
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 265
    .line 266
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$initView$6;

    .line 267
    .line 268
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$initView$6;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V

    .line 269
    .line 270
    .line 271
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 272
    .line 273
    .line 274
    return-void
.end method

.method private static final x0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;Landroid/view/View;ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;)V
    .locals 17

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 5
    .line 6
    new-instance v2, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-string v1, "upack"

    .line 22
    .line 23
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    const-string v1, "reel_id"

    .line 31
    .line 32
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    const/4 v5, 0x4

    .line 42
    const/4 v6, 0x0

    .line 43
    const-string v1, "reel_library_click"

    .line 44
    .line 45
    const-wide/16 v3, 0x0

    .line 46
    .line 47
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 51
    .line 52
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v2, "requireContext(...)"

    .line 57
    .line 58
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    new-instance v2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 62
    .line 63
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v3, "discover_library"

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_2

    .line 76
    .line 77
    const/4 v3, 0x1

    .line 78
    goto :goto_0

    .line 79
    :cond_2
    const/4 v3, 0x3

    .line 80
    :goto_0
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_3

    .line 88
    .line 89
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeNum(I)V

    .line 94
    .line 95
    .line 96
    :cond_3
    new-instance v3, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 97
    .line 98
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v4

    .line 119
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v4

    .line 133
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 137
    .line 138
    .line 139
    sget-object v5, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;->Companion:Lcom/startshorts/androidplayer/bean/discover/ModuleInfo$Companion;

    .line 140
    .line 141
    move-object/from16 v3, p0

    .line 142
    .line 143
    iget-object v11, v3, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->t:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 144
    .line 145
    invoke-virtual/range {p3 .. p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v12

    .line 149
    const/16 v15, 0x188

    .line 150
    .line 151
    const/16 v16, 0x0

    .line 152
    .line 153
    const/4 v6, 0x0

    .line 154
    const/4 v7, 0x0

    .line 155
    const/4 v8, 0x0

    .line 156
    const/4 v9, 0x0

    .line 157
    const/4 v10, 0x0

    .line 158
    const/4 v13, 0x0

    .line 159
    const/4 v14, 0x0

    .line 160
    invoke-static/range {v5 .. v16}, Lcom/startshorts/androidplayer/bean/discover/ModuleInfo$Companion;->create$default(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setModuleInfo(Lcom/startshorts/androidplayer/bean/discover/ModuleInfo;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method private static final y0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->t0()Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->H()Lfk/x;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lfk/x;->b()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-direct {p0, v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->G0(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final z0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;ILcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    int-to-float p3, p3

    .line 10
    int-to-float p2, p2

    .line 11
    div-float/2addr p3, p2

    .line 12
    const p2, 0x3f19999a    # 0.6f

    .line 13
    .line 14
    .line 15
    cmpg-float v0, p3, p2

    .line 16
    .line 17
    if-gez v0, :cond_0

    .line 18
    .line 19
    const/4 p2, 0x0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 22
    .line 23
    cmpl-float v1, p3, v0

    .line 24
    .line 25
    if-ltz v1, :cond_1

    .line 26
    .line 27
    move p2, v0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sub-float/2addr p3, p2

    .line 30
    const p2, 0x3ecccccc    # 0.39999998f

    .line 31
    .line 32
    .line 33
    div-float p2, p3, p2

    .line 34
    .line 35
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    check-cast p3, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 40
    .line 41
    iget-object p3, p3, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 42
    .line 43
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    int-to-float p1, p1

    .line 48
    mul-float/2addr p1, p2

    .line 49
    float-to-int p1, p1

    .line 50
    iget v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 51
    .line 52
    if-eq v0, p1, :cond_2

    .line 53
    .line 54
    iput p1, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 61
    .line 62
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 63
    .line 64
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;

    .line 72
    .line 73
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverLibraryBinding;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 74
    .line 75
    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    .line 76
    .line 77
    .line 78
    return-void
.end method


# virtual methods
.method public G()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_empty_lib:I

    .line 2
    .line 3
    return v0
.end method

.method public H()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$string;->library_activity_empty_text:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "getString(...)"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public R()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->t0()Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->F()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->loadComplete()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, v2, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->G0(II)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->T()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->t0()Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/library/a$a;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-direct {v3, v2, v1, v4}, Lcom/startshorts/androidplayer/viewmodel/library/a$a;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->J(Lcom/startshorts/androidplayer/viewmodel/library/a;)V

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
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
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    instance-of p1, p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object p1, v1

    .line 30
    :goto_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->C0()Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_1
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->x:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->x:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-interface {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;->b(FZ)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final receiveRefreshContinuePlayLayoutEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshContinuePlayLayoutEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshContinuePlayLayoutEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->K0()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final refreshEpisodeNumEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->o:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 7
    .line 8
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.library.LibraryHomeAdapter"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;->getShortsId()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;->getEpisodeNum()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeAdapter;->r(II)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public t()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->t()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->v0()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->D0()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->w0()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->u0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "show DiscoverLibraryFragment failed -> "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, "DiscoverLibraryFragment"

    .line 42
    .line 43
    invoke-virtual {v1, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method
