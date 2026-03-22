.class public final Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;
.source "LibraryLabelFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLibraryLabelFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryLabelFragment.kt\ncom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 LongSparseArray.kt\nandroidx/core/util/LongSparseArrayKt\n+ 4 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n*L\n1#1,282:1\n1863#2,2:283\n1863#2,2:285\n1863#2:287\n1864#2:290\n42#3:288\n42#3:289\n42#3:297\n42#3:298\n53#4,4:291\n53#4,2:295\n56#4:299\n*S KotlinDebug\n*F\n+ 1 LibraryLabelFragment.kt\ncom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment\n*L\n98#1:283,2\n145#1:285,2\n190#1:287\n190#1:290\n193#1:288\n194#1:289\n261#1:297\n262#1:298\n249#1:291,4\n258#1:295,2\n258#1:299\n*E\n"
    }
.end annotation


# instance fields
.field private final m:I

.field private n:J

.field private o:J

.field private final p:Landroid/util/LongSparseArray;
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

.field private q:Lcom/startshorts/androidplayer/bean/library/LibraryClass;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Landroid/util/LongSparseArray<",
            "Lcom/startshorts/androidplayer/bean/library/LibraryCategory;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_library_label:I

    .line 5
    .line 6
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->m:I

    .line 7
    .line 8
    const-wide/16 v0, 0x3

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->n:J

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->o:J

    .line 13
    .line 14
    new-instance v0, Landroid/util/LongSparseArray;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->p:Landroid/util/LongSparseArray;

    .line 20
    .line 21
    return-void
.end method

.method public static final synthetic B(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)Lat/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->r:Lat/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic C(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)Landroid/util/LongSparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->p:Landroid/util/LongSparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic D(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->o:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->M()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->N()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->o:J

    .line 2
    .line 3
    return-void
.end method

.method private final J(Lcom/startshorts/androidplayer/bean/library/LibraryClass;)V
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
    return-void

    .line 39
    :cond_3
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->K(Ljava/util/ArrayList;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->L(Ljava/util/ArrayList;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private final K(Ljava/util/ArrayList;)V
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/high16 v1, 0x40c00000    # 6.0f

    .line 10
    .line 11
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    new-instance v2, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 16
    .line 17
    const/high16 v3, 0x41e00000    # 28.0f

    .line 18
    .line 19
    invoke-static {v3}, Ljk/g;->a(F)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, -0x2

    .line 24
    invoke-direct {v2, v4, v3}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(II)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Lfk/v;->a:Lfk/v;

    .line 28
    .line 29
    invoke-virtual {v3}, Lfk/v;->b()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x0

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    mul-int/lit8 v3, v1, 0x2

    .line 37
    .line 38
    invoke-virtual {v2, v3, v1, v4, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    mul-int/lit8 v3, v1, 0x2

    .line 43
    .line 44
    invoke-virtual {v2, v4, v1, v3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;

    .line 52
    .line 53
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;->a:Lcom/google/android/flexbox/FlexboxLayout;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 56
    .line 57
    .line 58
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_4

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->b(Landroid/view/LayoutInflater;)Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    const-string v6, "inflate(...)"

    .line 79
    .line 80
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 84
    .line 85
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 93
    .line 94
    iget-wide v7, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->o:J

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 97
    .line 98
    .line 99
    move-result-wide v9

    .line 100
    cmp-long v7, v7, v9

    .line 101
    .line 102
    const/4 v8, 0x1

    .line 103
    if-nez v7, :cond_1

    .line 104
    .line 105
    move v7, v8

    .line 106
    goto :goto_2

    .line 107
    :cond_1
    move v7, v4

    .line 108
    :goto_2
    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    .line 109
    .line 110
    .line 111
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 112
    .line 113
    iget-wide v9, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->o:J

    .line 114
    .line 115
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 116
    .line 117
    .line 118
    move-result-wide v11

    .line 119
    cmp-long v7, v9, v11

    .line 120
    .line 121
    if-nez v7, :cond_2

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_2
    move v8, v4

    .line 125
    :goto_3
    const/4 v7, 0x0

    .line 126
    invoke-virtual {v6, v7, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 127
    .line 128
    .line 129
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 130
    .line 131
    invoke-virtual {v6, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 132
    .line 133
    .line 134
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 135
    .line 136
    new-instance v7, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$a;

    .line 137
    .line 138
    invoke-direct {v7, p0, v3}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;Lcom/startshorts/androidplayer/bean/library/LibraryCategory;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    check-cast v6, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;

    .line 149
    .line 150
    iget-object v6, v6, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;->a:Lcom/google/android/flexbox/FlexboxLayout;

    .line 151
    .line 152
    invoke-virtual {v5}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    invoke-virtual {v6, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    sget v7, Lcom/startshorts/androidplayer/R$string;->library_activity_label_all:I

    .line 164
    .line 165
    invoke-virtual {p0, v7}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    if-eqz v6, :cond_3

    .line 174
    .line 175
    iget-object v5, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 176
    .line 177
    new-instance v6, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    sget v3, Lcom/startshorts/androidplayer/R$string;->library_fragment_interest:I

    .line 190
    .line 191
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v5, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    goto/16 :goto_1

    .line 206
    .line 207
    :cond_3
    iget-object v5, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 208
    .line 209
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    invoke-virtual {v5, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_1

    .line 217
    .line 218
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 219
    .line 220
    .line 221
    move-result p1

    .line 222
    if-eqz p1, :cond_5

    .line 223
    .line 224
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;

    .line 229
    .line 230
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 231
    .line 232
    const/16 v0, 0x8

    .line 233
    .line 234
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;

    .line 242
    .line 243
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;->a:Lcom/google/android/flexbox/FlexboxLayout;

    .line 244
    .line 245
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;

    .line 254
    .line 255
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 256
    .line 257
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;

    .line 265
    .line 266
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;->a:Lcom/google/android/flexbox/FlexboxLayout;

    .line 267
    .line 268
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 269
    .line 270
    .line 271
    :goto_4
    return-void
.end method

.method private final L(Ljava/util/ArrayList;)V
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
    sget-object v0, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->Companion:Lcom/startshorts/androidplayer/bean/library/LibraryCategory$Companion;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "requireContext(...)"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory$Companion;->createClassAll(Landroid/content/Context;)Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/high16 v2, 0x40c00000    # 6.0f

    .line 25
    .line 26
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    new-instance v3, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 31
    .line 32
    const/high16 v4, 0x41e00000    # 28.0f

    .line 33
    .line 34
    invoke-static {v4}, Ljk/g;->a(F)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    const/4 v5, -0x2

    .line 39
    invoke-direct {v3, v5, v4}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(II)V

    .line 40
    .line 41
    .line 42
    sget-object v4, Lfk/v;->a:Lfk/v;

    .line 43
    .line 44
    invoke-virtual {v4}, Lfk/v;->b()Z

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    const/4 v5, 0x0

    .line 49
    if-eqz v4, :cond_0

    .line 50
    .line 51
    mul-int/lit8 v4, v2, 0x2

    .line 52
    .line 53
    invoke-virtual {v3, v4, v2, v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    mul-int/lit8 v4, v2, 0x2

    .line 58
    .line 59
    invoke-virtual {v3, v5, v2, v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 60
    .line 61
    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;

    .line 67
    .line 68
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;->c:Lcom/google/android/flexbox/FlexboxLayout;

    .line 69
    .line 70
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-eqz v4, :cond_4

    .line 82
    .line 83
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 88
    .line 89
    invoke-static {v1}, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->b(Landroid/view/LayoutInflater;)Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    const-string v7, "inflate(...)"

    .line 94
    .line 95
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 99
    .line 100
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v8

    .line 104
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 108
    .line 109
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->p:Landroid/util/LongSparseArray;

    .line 110
    .line 111
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 112
    .line 113
    .line 114
    move-result-wide v9

    .line 115
    invoke-virtual {v8, v9, v10}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    const/4 v9, 0x1

    .line 120
    if-ltz v8, :cond_1

    .line 121
    .line 122
    move v8, v9

    .line 123
    goto :goto_2

    .line 124
    :cond_1
    move v8, v5

    .line 125
    :goto_2
    invoke-virtual {v7, v8}, Landroid/view/View;->setSelected(Z)V

    .line 126
    .line 127
    .line 128
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 129
    .line 130
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->p:Landroid/util/LongSparseArray;

    .line 131
    .line 132
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 133
    .line 134
    .line 135
    move-result-wide v10

    .line 136
    invoke-virtual {v8, v10, v11}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    .line 137
    .line 138
    .line 139
    move-result v8

    .line 140
    if-ltz v8, :cond_2

    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_2
    move v9, v5

    .line 144
    :goto_3
    const/4 v8, 0x0

    .line 145
    invoke-virtual {v7, v8, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 146
    .line 147
    .line 148
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 149
    .line 150
    invoke-virtual {v7, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 154
    .line 155
    new-instance v8, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;

    .line 156
    .line 157
    invoke-direct {v8, v4, p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;-><init>(Lcom/startshorts/androidplayer/bean/library/LibraryCategory;Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;Lcom/startshorts/androidplayer/bean/library/LibraryCategory;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    check-cast v7, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;

    .line 168
    .line 169
    iget-object v7, v7, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;->c:Lcom/google/android/flexbox/FlexboxLayout;

    .line 170
    .line 171
    invoke-virtual {v6}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v8

    .line 175
    invoke-virtual {v7, v8, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    sget v8, Lcom/startshorts/androidplayer/R$string;->library_activity_label_all:I

    .line 183
    .line 184
    invoke-virtual {p0, v8}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v8

    .line 188
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result v7

    .line 192
    if-eqz v7, :cond_3

    .line 193
    .line 194
    iget-object v6, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 195
    .line 196
    new-instance v7, Ljava/lang/StringBuilder;

    .line 197
    .line 198
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    sget v4, Lcom/startshorts/androidplayer/R$string;->library_fragment_type:I

    .line 209
    .line 210
    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {v6, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    goto/16 :goto_1

    .line 225
    .line 226
    :cond_3
    iget-object v6, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 227
    .line 228
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v4

    .line 232
    invoke-virtual {v6, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 233
    .line 234
    .line 235
    goto/16 :goto_1

    .line 236
    .line 237
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    if-eqz p1, :cond_5

    .line 242
    .line 243
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;

    .line 248
    .line 249
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 250
    .line 251
    const/16 v0, 0x8

    .line 252
    .line 253
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;

    .line 261
    .line 262
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;->c:Lcom/google/android/flexbox/FlexboxLayout;

    .line 263
    .line 264
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 265
    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;

    .line 273
    .line 274
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 275
    .line 276
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;

    .line 284
    .line 285
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;->c:Lcom/google/android/flexbox/FlexboxLayout;

    .line 286
    .line 287
    invoke-virtual {p1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 288
    .line 289
    .line 290
    :goto_4
    return-void
.end method

.method private final M()V
    .locals 0

    .line 1
    return-void
.end method

.method private final N()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;->a:Lcom/google/android/flexbox/FlexboxLayout;

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
    iget-wide v6, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->o:J

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
    iget-wide v8, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->o:J

    .line 62
    .line 63
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 64
    .line 65
    .line 66
    move-result-wide v5

    .line 67
    cmp-long v5, v8, v5

    .line 68
    .line 69
    if-nez v5, :cond_1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    move v7, v2

    .line 73
    :goto_2
    const/4 v5, 0x0

    .line 74
    invoke-virtual {v4, v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 75
    .line 76
    .line 77
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    return-void
.end method

.method private final O()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;->c:Lcom/google/android/flexbox/FlexboxLayout;

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
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->p:Landroid/util/LongSparseArray;

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
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->p:Landroid/util/LongSparseArray;

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


# virtual methods
.method public final P(Landroidx/fragment/app/FragmentManager;Lcom/startshorts/androidplayer/bean/library/LibraryClass;JJLandroid/util/LongSparseArray;Lat/n;)V
    .locals 1
    .param p1    # Landroidx/fragment/app/FragmentManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/library/LibraryClass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroid/util/LongSparseArray;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentManager;",
            "Lcom/startshorts/androidplayer/bean/library/LibraryClass;",
            "JJ",
            "Landroid/util/LongSparseArray<",
            "Lcom/startshorts/androidplayer/bean/library/LibraryCategory;",
            ">;",
            "Lat/n<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Landroid/util/LongSparseArray<",
            "Lcom/startshorts/androidplayer/bean/library/LibraryCategory;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "manager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "libClass"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "classIdMap"

    .line 12
    .line 13
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "block"

    .line 17
    .line 18
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->q:Lcom/startshorts/androidplayer/bean/library/LibraryClass;

    .line 22
    .line 23
    iput-wide p3, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->n:J

    .line 24
    .line 25
    iput-wide p5, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->o:J

    .line 26
    .line 27
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->p:Landroid/util/LongSparseArray;

    .line 28
    .line 29
    invoke-static {p2, p7}, Landroidx/core/util/LongSparseArrayKt;->putAll(Landroid/util/LongSparseArray;Landroid/util/LongSparseArray;)V

    .line 30
    .line 31
    .line 32
    iput-object p8, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->r:Lat/n;

    .line 33
    .line 34
    const-string p2, "LibraryLabelFragment"

    .line 35
    .line 36
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string p2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 22
    .line 23
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 27
    .line 28
    const/high16 p2, 0x43dc0000    # 440.0f

    .line 29
    .line 30
    invoke-static {p2}, Ljk/g;->a(F)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 43
    .line 44
    new-instance p2, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$c;

    .line 45
    .line 46
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;

    .line 57
    .line 58
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentLibraryLabelBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 59
    .line 60
    new-instance p2, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$d;

    .line 61
    .line 62
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->q:Lcom/startshorts/androidplayer/bean/library/LibraryClass;

    .line 69
    .line 70
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->J(Lcom/startshorts/androidplayer/bean/library/LibraryClass;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
