.class public final Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "AccumulatedDailyTaskView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$a;,
        Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAccumulatedDailyTaskView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccumulatedDailyTaskView.kt\ncom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,308:1\n2632#2,3:309\n1872#2,3:312\n774#2:315\n865#2,2:316\n1#3:318\n*S KotlinDebug\n*F\n+ 1 AccumulatedDailyTaskView.kt\ncom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView\n*L\n202#1:309,3\n209#1:312,3\n250#1:315\n250#1:316,2\n*E\n"
    }
.end annotation


# static fields
.field public static final r:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView;

.field private e:Landroid/widget/HorizontalScrollView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/ImageView;

.field private h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

.field private i:Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:I

.field private m:I

.field private n:I

.field private o:Z

.field private p:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->r:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$a;

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
    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->m:I

    .line 11
    .line 12
    return-void
.end method

.method private final A()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->i:Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "dailyWatchTask"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->getList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->D0(Ljava/util/List;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v0, v2

    .line 31
    :goto_0
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->d:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView;

    .line 32
    .line 33
    const-string v4, "mAccumulatedTaskProgressView"

    .line 34
    .line 35
    if-nez v3, :cond_2

    .line 36
    .line 37
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    move-object v3, v1

    .line 41
    :cond_2
    invoke-virtual {v3, v0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView;->setProgressBarMax(I)V

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->j:Ljava/util/List;

    .line 45
    .line 46
    const-string v5, "taskList"

    .line 47
    .line 48
    if-nez v3, :cond_3

    .line 49
    .line 50
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    move-object v3, v1

    .line 54
    :cond_3
    check-cast v3, Ljava/lang/Iterable;

    .line 55
    .line 56
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->N0(Ljava/lang/Iterable;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Ljava/lang/Iterable;

    .line 61
    .line 62
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    move v6, v2

    .line 67
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    if-eqz v7, :cond_6

    .line 72
    .line 73
    add-int/lit8 v7, v6, 0x1

    .line 74
    .line 75
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    check-cast v8, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 80
    .line 81
    iget v9, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->n:I

    .line 82
    .line 83
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-lt v9, v8, :cond_5

    .line 88
    .line 89
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->j:Ljava/util/List;

    .line 90
    .line 91
    if-nez v3, :cond_4

    .line 92
    .line 93
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    move-object v3, v1

    .line 97
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    add-int/lit8 v3, v3, -0x1

    .line 102
    .line 103
    sub-int/2addr v3, v6

    .line 104
    iput v3, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->m:I

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    move v6, v7

    .line 108
    goto :goto_1

    .line 109
    :cond_6
    :goto_2
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->j:Ljava/util/List;

    .line 110
    .line 111
    if-nez v3, :cond_7

    .line 112
    .line 113
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    move-object v3, v1

    .line 117
    :cond_7
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    div-int v6, v0, v3

    .line 122
    .line 123
    mul-int/lit8 v7, v3, 0x2

    .line 124
    .line 125
    div-int v7, v0, v7

    .line 126
    .line 127
    iget v8, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->m:I

    .line 128
    .line 129
    add-int/lit8 v3, v3, -0x1

    .line 130
    .line 131
    if-ne v8, v3, :cond_8

    .line 132
    .line 133
    move v3, v0

    .line 134
    goto :goto_6

    .line 135
    :cond_8
    if-ltz v8, :cond_9

    .line 136
    .line 137
    add-int/lit8 v3, v8, 0x1

    .line 138
    .line 139
    mul-int/2addr v3, v6

    .line 140
    goto :goto_3

    .line 141
    :cond_9
    move v3, v2

    .line 142
    :goto_3
    if-ltz v8, :cond_b

    .line 143
    .line 144
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->j:Ljava/util/List;

    .line 145
    .line 146
    if-nez v6, :cond_a

    .line 147
    .line 148
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    move-object v6, v1

    .line 152
    :cond_a
    iget v8, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->m:I

    .line 153
    .line 154
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v6

    .line 158
    check-cast v6, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 159
    .line 160
    goto :goto_4

    .line 161
    :cond_b
    move-object v6, v1

    .line 162
    :goto_4
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->j:Ljava/util/List;

    .line 163
    .line 164
    if-nez v8, :cond_c

    .line 165
    .line 166
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    move-object v8, v1

    .line 170
    :cond_c
    iget v9, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->m:I

    .line 171
    .line 172
    add-int/lit8 v9, v9, 0x1

    .line 173
    .line 174
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    check-cast v8, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 179
    .line 180
    iget v9, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->n:I

    .line 181
    .line 182
    if-eqz v6, :cond_d

    .line 183
    .line 184
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 185
    .line 186
    .line 187
    move-result v10

    .line 188
    goto :goto_5

    .line 189
    :cond_d
    move v10, v2

    .line 190
    :goto_5
    sub-int/2addr v9, v10

    .line 191
    int-to-double v9, v9

    .line 192
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 193
    .line 194
    .line 195
    move-result v8

    .line 196
    if-eqz v6, :cond_e

    .line 197
    .line 198
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 199
    .line 200
    .line 201
    move-result v2

    .line 202
    :cond_e
    sub-int/2addr v8, v2

    .line 203
    int-to-double v11, v8

    .line 204
    div-double/2addr v9, v11

    .line 205
    int-to-double v6, v7

    .line 206
    mul-double/2addr v9, v6

    .line 207
    double-to-int v2, v9

    .line 208
    add-int/2addr v3, v2

    .line 209
    :goto_6
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->d:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView;

    .line 210
    .line 211
    if-nez v2, :cond_f

    .line 212
    .line 213
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    move-object v2, v1

    .line 217
    :cond_f
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->m:I

    .line 218
    .line 219
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->j:Ljava/util/List;

    .line 220
    .line 221
    if-nez v6, :cond_10

    .line 222
    .line 223
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    move-object v6, v1

    .line 227
    :cond_10
    iget v5, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->n:I

    .line 228
    .line 229
    invoke-virtual {v2, v3, v4, v6, v5}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView;->w(IILjava/util/List;I)V

    .line 230
    .line 231
    .line 232
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->e:Landroid/widget/HorizontalScrollView;

    .line 233
    .line 234
    if-nez v2, :cond_11

    .line 235
    .line 236
    const-string v2, "mAccumulatedTaskScrollView"

    .line 237
    .line 238
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    goto :goto_7

    .line 242
    :cond_11
    move-object v1, v2

    .line 243
    :goto_7
    new-instance v2, Ldk/a;

    .line 244
    .line 245
    invoke-direct {v2, v1, v3, v0}, Ldk/a;-><init>(Landroid/widget/HorizontalScrollView;II)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 249
    .line 250
    .line 251
    return-void
.end method

.method private static final B(Landroid/widget/HorizontalScrollView;II)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-double v0, v0

    .line 6
    int-to-double v2, p1

    .line 7
    int-to-double p1, p2

    .line 8
    div-double/2addr v2, p1

    .line 9
    mul-double/2addr v0, v2

    .line 10
    double-to-int p1, v0

    .line 11
    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final C()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->j:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "taskList"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 13
    .line 14
    instance-of v3, v0, Ljava/util/Collection;

    .line 15
    .line 16
    if-eqz v3, :cond_1

    .line 17
    .line 18
    move-object v3, v0

    .line 19
    check-cast v3, Ljava/util/Collection;

    .line 20
    .line 21
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    goto :goto_2

    .line 28
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_8

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->isReceive()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-nez v3, :cond_2

    .line 49
    .line 50
    new-instance v0, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->j:Ljava/util/List;

    .line 56
    .line 57
    if-nez v3, :cond_3

    .line 58
    .line 59
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    move-object v1, v3

    .line 64
    :goto_0
    check-cast v1, Ljava/lang/Iterable;

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/4 v2, 0x0

    .line 71
    move v3, v2

    .line 72
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_6

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    add-int/lit8 v5, v2, 0x1

    .line 83
    .line 84
    if-gez v2, :cond_4

    .line 85
    .line 86
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 87
    .line 88
    .line 89
    :cond_4
    check-cast v4, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 90
    .line 91
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->isReceive()Z

    .line 92
    .line 93
    .line 94
    move-result v6

    .line 95
    if-nez v6, :cond_5

    .line 96
    .line 97
    iget v6, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->n:I

    .line 98
    .line 99
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 100
    .line 101
    .line 102
    move-result v7

    .line 103
    if-lt v6, v7, :cond_5

    .line 104
    .line 105
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move v3, v2

    .line 109
    :cond_5
    move v2, v5

    .line 110
    goto :goto_1

    .line 111
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-eqz v1, :cond_7

    .line 116
    .line 117
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->E()V

    .line 118
    .line 119
    .line 120
    goto :goto_3

    .line 121
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 122
    .line 123
    invoke-direct {p0, v0, v3}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->I(Ljava/util/List;I)V

    .line 124
    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->D()V

    .line 128
    .line 129
    .line 130
    :goto_3
    return-void
.end method

.method private final D()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->g:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "mButtonIconView"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->task_botton_true_icon:I

    .line 16
    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string v0, "mButtonTV"

    .line 25
    .line 26
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v0, v1

    .line 30
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sget v3, Lcom/startshorts/androidplayer/R$color;->v_light:I

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const/16 v3, 0x2b

    .line 49
    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->l:I

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->f:Landroid/view/View;

    .line 66
    .line 67
    if-nez v0, :cond_2

    .line 68
    .line 69
    const-string v0, "mButtonView"

    .line 70
    .line 71
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    move-object v1, v0

    .line 76
    :goto_0
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->bg_task_button:I

    .line 77
    .line 78
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 79
    .line 80
    .line 81
    const v0, 0x3ecccccd    # 0.4f

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 85
    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method private final E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->g:Landroid/widget/ImageView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "mButtonIconView"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->f:Landroid/view/View;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string v0, "mButtonView"

    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    move-object v0, v1

    .line 25
    :cond_1
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 27
    .line 28
    .line 29
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->bg_task_button:I

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 32
    .line 33
    .line 34
    new-instance v2, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$c;

    .line 35
    .line 36
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$c;-><init>(Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 43
    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    const-string v0, "mButtonTV"

    .line 47
    .line 48
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    move-object v1, v0

    .line 53
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sget v2, Lcom/startshorts/androidplayer/R$color;->v_light:I

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Landroid/content/Context;->getColor(I)I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    sget v2, Lcom/startshorts/androidplayer/R$string;->rewards_activity_go:I

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private final F()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->i:Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "dailyWatchTask"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->getCountDownEnd()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    sub-long/2addr v0, v2

    .line 22
    const/16 v2, 0x3e8

    .line 23
    .line 24
    int-to-long v2, v2

    .line 25
    div-long/2addr v0, v2

    .line 26
    long-to-int v0, v0

    .line 27
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->q:I

    .line 28
    .line 29
    if-gtz v0, :cond_1

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->o:Z

    .line 33
    .line 34
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->c:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->o:Z

    .line 42
    .line 43
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->J()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->c:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method private final G()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->j:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "taskList"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->D0(Ljava/util/List;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 17
    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getCumsumBonus()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->l:I

    .line 25
    .line 26
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->o:Z

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget v2, Lcom/startshorts/androidplayer/R$string;->total_bonus:I

    .line 35
    .line 36
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->l:I

    .line 37
    .line 38
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    move-object v3, v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget v2, Lcom/startshorts/androidplayer/R$string;->rewards_activity_watch_drama_sub_title:I

    .line 57
    .line 58
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->l:I

    .line 59
    .line 60
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    goto :goto_0

    .line 73
    :goto_1
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->b:Landroid/widget/TextView;

    .line 77
    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    const-string v0, "mSubTitleTv"

    .line 81
    .line 82
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    move-object v2, v1

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    move-object v2, v0

    .line 88
    :goto_2
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->l:I

    .line 89
    .line 90
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    filled-new-array {v0}, [Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    sget v1, Lcom/startshorts/androidplayer/R$color;->v_light:I

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    sget-object v0, Lyf/a;->a:Lyf/a;

    .line 109
    .line 110
    invoke-virtual {v0}, Lyf/a;->g()Landroid/graphics/Typeface;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    const/high16 v0, 0x41400000    # 12.0f

    .line 115
    .line 116
    invoke-static {v0}, Ljk/g;->b(F)F

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    const/16 v10, 0x60

    .line 121
    .line 122
    const/4 v11, 0x0

    .line 123
    const/4 v8, 0x0

    .line 124
    const/4 v9, 0x0

    .line 125
    invoke-static/range {v2 .. v11}, Ljk/y;->l(Landroid/widget/TextView;Ljava/lang/String;[Ljava/lang/String;ILandroid/graphics/Typeface;FZLjava/util/List;ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_3
    return-void
.end method

.method private final I(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;",
            ">;I)V"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Iterable;

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    move-object v2, v1

    .line 23
    check-cast v2, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->isReceive()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->n:I

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-lt v3, v2, :cond_0

    .line 38
    .line 39
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/4 v1, 0x0

    .line 48
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getBonus()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    add-int/2addr v1, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->g:Landroid/widget/ImageView;

    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    if-nez p1, :cond_3

    .line 70
    .line 71
    const-string p1, "mButtonIconView"

    .line 72
    .line 73
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    move-object p1, v2

    .line 77
    :cond_3
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->task_botton_coin_icon:I

    .line 81
    .line 82
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->f:Landroid/view/View;

    .line 86
    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    const-string p1, "mButtonView"

    .line 90
    .line 91
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    move-object p1, v2

    .line 95
    :cond_4
    const/4 v3, 0x1

    .line 96
    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 97
    .line 98
    .line 99
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->bg_unity_task_button:I

    .line 100
    .line 101
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 102
    .line 103
    .line 104
    new-instance v3, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$d;

    .line 105
    .line 106
    invoke-direct {v3, p0, v0, p2}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$d;-><init>(Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;Ljava/util/List;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    .line 111
    .line 112
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 113
    .line 114
    if-nez p1, :cond_5

    .line 115
    .line 116
    const-string p1, "mButtonTV"

    .line 117
    .line 118
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_2

    .line 122
    :cond_5
    move-object v2, p1

    .line 123
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    sget p2, Lcom/startshorts/androidplayer/R$color;->color_rewards_fragment_unity_task_btn:I

    .line 128
    .line 129
    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 134
    .line 135
    .line 136
    new-instance p1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const/16 p2, 0x2b

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method

.method private final J()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->z()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 5
    .line 6
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->q:I

    .line 7
    .line 8
    new-instance v2, Ldk/b;

    .line 9
    .line 10
    invoke-direct {v2, p0}, Ldk/b;-><init>(Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;)V

    .line 11
    .line 12
    .line 13
    new-instance v3, Ldk/c;

    .line 14
    .line 15
    invoke-direct {v3, p0}, Ldk/c;-><init>(Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->p:Lkotlinx/coroutines/r;

    .line 23
    .line 24
    return-void
.end method

.method private static final K(Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;I)Lkotlin/Unit;
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->i:Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, "dailyWatchTask"

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->getCountDownEnd()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    sub-long/2addr v0, v2

    .line 22
    const/16 p1, 0x3e8

    .line 23
    .line 24
    int-to-long v2, p1

    .line 25
    div-long/2addr v0, v2

    .line 26
    const-wide/16 v2, 0x0

    .line 27
    .line 28
    cmp-long p1, v0, v2

    .line 29
    .line 30
    if-ltz p1, :cond_1

    .line 31
    .line 32
    sget-object p1, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    invoke-virtual {p1, v0, v1, v2}, Lcom/startshorts/androidplayer/utils/TimeUtil;->c(JZ)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->M(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    return-object p0
.end method

.method private static final L(Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;)Lkotlin/Unit;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->f:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "mButtonView"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lud/b;->a:Lud/b;

    .line 17
    .line 18
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    invoke-virtual {v0, v2, v3}, Lud/b;->k5(J)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lud/b;->w3(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->c:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->z()V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->k:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$b;

    .line 35
    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    invoke-interface {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$b;->b()V

    .line 39
    .line 40
    .line 41
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p0
.end method

.method private final M(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->c:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget v2, Lcom/startshorts/androidplayer/R$string;->task_coin_view_limited:I

    .line 10
    .line 11
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public static synthetic v(Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->L(Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic w(Landroid/widget/HorizontalScrollView;II)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->B(Landroid/widget/HorizontalScrollView;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic x(Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->K(Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic y(Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;)Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->k:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final H(Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$b;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "newbieWatchTask"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->i:Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    const-string p1, "dailyWatchTask"

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    move-object p1, v0

    .line 22
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchTask;->getList()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->j:Ljava/util/List;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-string p1, "taskList"

    .line 31
    .line 32
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move-object v0, p1

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->k:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView$b;

    .line 45
    .line 46
    sget-object p1, Lud/b;->a:Lud/b;

    .line 47
    .line 48
    invoke-virtual {p1}, Lud/b;->X1()J

    .line 49
    .line 50
    .line 51
    move-result-wide p1

    .line 52
    const/16 v0, 0x3e8

    .line 53
    .line 54
    int-to-long v0, v0

    .line 55
    div-long/2addr p1, v0

    .line 56
    long-to-int p1, p1

    .line 57
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->n:I

    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->F()V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->G()V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->A()V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->C()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_accumulated_daily_task:I

    .line 2
    .line 3
    return v0
.end method

.method public final release()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->z()V

    .line 2
    .line 3
    .line 4
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
    sget p1, Lcom/startshorts/androidplayer/R$id;->accumulated_task_limited_time_tv:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroid/widget/TextView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->c:Landroid/widget/TextView;

    .line 15
    .line 16
    sget p1, Lcom/startshorts/androidplayer/R$id;->accumulated_task_sub_title_tv:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/TextView;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->b:Landroid/widget/TextView;

    .line 25
    .line 26
    sget p1, Lcom/startshorts/androidplayer/R$id;->accumulated_task_progress_view:I

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->d:Lcom/startshorts/androidplayer/ui/view/task/AccumulatedTaskProgressView;

    .line 35
    .line 36
    sget p1, Lcom/startshorts/androidplayer/R$id;->accumulated_task_scroll_view:I

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Landroid/widget/HorizontalScrollView;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->e:Landroid/widget/HorizontalScrollView;

    .line 45
    .line 46
    sget p1, Lcom/startshorts/androidplayer/R$id;->button_view:I

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->f:Landroid/view/View;

    .line 53
    .line 54
    sget p1, Lcom/startshorts/androidplayer/R$id;->button_iv:I

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Landroid/widget/ImageView;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->g:Landroid/widget/ImageView;

    .line 63
    .line 64
    sget p1, Lcom/startshorts/androidplayer/R$id;->button_tv:I

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 73
    .line 74
    return-void
.end method

.method public final z()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->p:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    const-string v2, "AccumulatedTaskView"

    .line 15
    .line 16
    const-string v3, "cancelCountDownJob"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/task/AccumulatedDailyTaskView;->p:Lkotlinx/coroutines/r;

    .line 22
    .line 23
    return-void
.end method
