.class public final Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;
.source "LibraryActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity<",
        "Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLibraryActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryActivity.kt\ncom/startshorts/androidplayer/ui/activity/library/LibraryActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 4 LongSparseArray.kt\nandroidx/core/util/LongSparseArrayKt\n*L\n1#1,499:1\n1863#2,2:500\n360#2,7:502\n1863#2,2:511\n1863#2:515\n1864#2:517\n184#3,2:509\n184#3,2:513\n53#3,4:518\n53#3,2:522\n56#3:525\n42#4:516\n42#4:524\n42#4:526\n77#4,4:527\n*S KotlinDebug\n*F\n+ 1 LibraryActivity.kt\ncom/startshorts/androidplayer/ui/activity/library/LibraryActivity\n*L\n311#1:500,2\n329#1:502,7\n346#1:511,2\n396#1:515\n396#1:517\n344#1:509,2\n394#1:513,2\n452#1:518,4\n460#1:522,2\n460#1:525\n399#1:516\n463#1:524\n476#1:526\n480#1:527,4\n*E\n"
    }
.end annotation


# static fields
.field public static final z:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final s:I

.field private t:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;
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

.field private u:J

.field private v:J

.field private final w:Landroid/util/LongSparseArray;
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

.field private final x:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->z:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "LibraryActivity"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->r:Ljava/lang/String;

    .line 7
    .line 8
    sget v0, Lcom/startshorts/androidplayer/R$layout;->activity_library:I

    .line 9
    .line 10
    iput v0, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->s:I

    .line 11
    .line 12
    const-wide/16 v0, 0x3

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->u:J

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->v:J

    .line 17
    .line 18
    new-instance v0, Landroid/util/LongSparseArray;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->w:Landroid/util/LongSparseArray;

    .line 24
    .line 25
    new-instance v0, Lzh/a;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lzh/a;-><init>(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->x:Lms/i;

    .line 35
    .line 36
    return-void
.end method

.method private static final A0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Lcom/startshorts/androidplayer/viewmodel/library/b;)Lkotlin/Unit;
    .locals 9

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/viewmodel/library/b$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->P()V

    .line 8
    .line 9
    .line 10
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/library/b$a;

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$a;->a()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->getLibClass()Lcom/startshorts/androidplayer/bean/library/LibraryClass;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->r0(Lcom/startshorts/androidplayer/bean/library/LibraryClass;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->t:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->c()V

    .line 28
    .line 29
    .line 30
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->t:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 31
    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$a;->a()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->getList()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Ljava/util/Collection;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->b(Ljava/util/Collection;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->t:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->g()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_2

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->T()V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->t:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 61
    .line 62
    if-eqz p1, :cond_4

    .line 63
    .line 64
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->n(Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->O()V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->t:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 72
    .line 73
    if-eqz p1, :cond_3

    .line 74
    .line 75
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$a;->a()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->isComplete()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->n(Z)V

    .line 84
    .line 85
    .line 86
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->t:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 87
    .line 88
    if-eqz p1, :cond_4

    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$a;->a()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->isComplete()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->k(Z)V

    .line 99
    .line 100
    .line 101
    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 106
    .line 107
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->g:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 108
    .line 109
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$a;->a()Lcom/startshorts/androidplayer/bean/library/LoadLibrary;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/library/LoadLibrary;->isComplete()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-eqz p1, :cond_10

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 127
    .line 128
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->g:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 129
    .line 130
    invoke-virtual {p0, v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableLoadmore(Z)V

    .line 131
    .line 132
    .line 133
    goto/16 :goto_2

    .line 134
    .line 135
    :cond_5
    instance-of v0, p2, Lcom/startshorts/androidplayer/viewmodel/library/b$c;

    .line 136
    .line 137
    if-eqz v0, :cond_d

    .line 138
    .line 139
    iget-wide v4, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->u:J

    .line 140
    .line 141
    iget-wide v6, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->v:J

    .line 142
    .line 143
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->w:Landroid/util/LongSparseArray;

    .line 144
    .line 145
    move-object v3, p1

    .line 146
    invoke-virtual/range {v3 .. v8}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->E(JJLandroid/util/LongSparseArray;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/library/b$c;

    .line 151
    .line 152
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$c;->a()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-nez p1, :cond_6

    .line 161
    .line 162
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 163
    .line 164
    return-object p0

    .line 165
    :cond_6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->P()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$c;->c()I

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_7

    .line 173
    .line 174
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$c;->c()I

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-ne p1, v2, :cond_8

    .line 179
    .line 180
    :cond_7
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->t:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 181
    .line 182
    if-eqz p1, :cond_8

    .line 183
    .line 184
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->c()V

    .line 185
    .line 186
    .line 187
    :cond_8
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->t:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 188
    .line 189
    if-eqz p1, :cond_9

    .line 190
    .line 191
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$c;->b()Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    check-cast v0, Ljava/util/Collection;

    .line 196
    .line 197
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->b(Ljava/util/Collection;)V

    .line 198
    .line 199
    .line 200
    :cond_9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->t:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 201
    .line 202
    if-eqz p1, :cond_a

    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->g()I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-nez p1, :cond_a

    .line 209
    .line 210
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->T()V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->t:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 214
    .line 215
    if-eqz p1, :cond_c

    .line 216
    .line 217
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->n(Z)V

    .line 218
    .line 219
    .line 220
    goto :goto_1

    .line 221
    :cond_a
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->O()V

    .line 222
    .line 223
    .line 224
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->t:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 225
    .line 226
    if-eqz p1, :cond_b

    .line 227
    .line 228
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$c;->d()Z

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->n(Z)V

    .line 233
    .line 234
    .line 235
    :cond_b
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->t:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 236
    .line 237
    if-eqz p1, :cond_c

    .line 238
    .line 239
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$c;->d()Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->k(Z)V

    .line 244
    .line 245
    .line 246
    :cond_c
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 251
    .line 252
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->g:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 253
    .line 254
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$c;->d()Z

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    if-eqz p1, :cond_10

    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 264
    .line 265
    .line 266
    move-result-object p0

    .line 267
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 268
    .line 269
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->g:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 270
    .line 271
    invoke-virtual {p0, v2}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableLoadmore(Z)V

    .line 272
    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_d
    instance-of v0, p2, Lcom/startshorts/androidplayer/viewmodel/library/b$b;

    .line 276
    .line 277
    if-eqz v0, :cond_11

    .line 278
    .line 279
    iget-wide v4, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->u:J

    .line 280
    .line 281
    iget-wide v6, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->v:J

    .line 282
    .line 283
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->w:Landroid/util/LongSparseArray;

    .line 284
    .line 285
    move-object v3, p1

    .line 286
    invoke-virtual/range {v3 .. v8}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->E(JJLandroid/util/LongSparseArray;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    check-cast p2, Lcom/startshorts/androidplayer/viewmodel/library/b$b;

    .line 291
    .line 292
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$b;->b()Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-nez p1, :cond_e

    .line 301
    .line 302
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 303
    .line 304
    return-object p0

    .line 305
    :cond_e
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$b;->c()I

    .line 306
    .line 307
    .line 308
    move-result p1

    .line 309
    if-nez p1, :cond_10

    .line 310
    .line 311
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->P()V

    .line 312
    .line 313
    .line 314
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$b;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 319
    .line 320
    .line 321
    move-result p1

    .line 322
    if-ne p1, v2, :cond_f

    .line 323
    .line 324
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->V()V

    .line 325
    .line 326
    .line 327
    goto :goto_2

    .line 328
    :cond_f
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/viewmodel/library/b$b;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->W(Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    :cond_10
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 340
    .line 341
    return-object p0

    .line 342
    :cond_11
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 343
    .line 344
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 345
    .line 346
    .line 347
    throw p0
.end method

.method public static synthetic X(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Lcom/startshorts/androidplayer/viewmodel/library/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->A0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;Lcom/startshorts/androidplayer/viewmodel/library/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Y(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;Landroid/view/View;ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->p0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;Landroid/view/View;ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic Z(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->y0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic a0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->q0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->z0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic c0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Landroid/util/LongSparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->w:Landroid/util/LongSparseArray;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final synthetic e0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->v:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic f0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->u:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic g0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->m0()Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->u0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->v0(II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->w0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->x0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic l0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->v:J

    .line 2
    .line 3
    return-void
.end method

.method private final m0()Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->x:Lms/i;

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

.method private final n0()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->S()V

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

.method private final o0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->d:Landroid/widget/ImageView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$b;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$b;-><init>(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->c:Landroid/widget/ImageView;

    .line 24
    .line 25
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$c;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$c;-><init>(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->y:Z

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;

    .line 38
    .line 39
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;-><init>()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/adapter/library/LibraryAdapter;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/library/LibraryAdapter;-><init>()V

    .line 46
    .line 47
    .line 48
    :goto_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->t:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 49
    .line 50
    new-instance v1, Lzh/b;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lzh/b;-><init>(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->f(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder$c;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 63
    .line 64
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 65
    .line 66
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->y:Z

    .line 67
    .line 68
    const/4 v2, 0x3

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 72
    .line 73
    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 83
    .line 84
    .line 85
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->y:Z

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 94
    .line 95
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    const-string v1, "null cannot be cast to non-null type android.widget.RelativeLayout.LayoutParams"

    .line 102
    .line 103
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 107
    .line 108
    const/high16 v1, 0x41400000    # 12.0f

    .line 109
    .line 110
    invoke-static {p0, v1}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 115
    .line 116
    .line 117
    invoke-static {p0, v1}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 129
    .line 130
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 131
    .line 132
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 140
    .line 141
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 142
    .line 143
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/discover/GridSpacingItemDecoration;

    .line 144
    .line 145
    const/high16 v3, 0x41000000    # 8.0f

    .line 146
    .line 147
    invoke-static {p0, v3}, Lfc/a;->a(Landroid/content/Context;F)I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    const/4 v4, 0x1

    .line 152
    invoke-direct {v1, v2, v3, v4}, Lcom/startshorts/androidplayer/ui/view/discover/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 156
    .line 157
    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 163
    .line 164
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 165
    .line 166
    new-instance v1, Lzh/c;

    .line 167
    .line 168
    invoke-direct {v1, p0}, Lzh/c;-><init>(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;->setLoadMoreListener(Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView$b;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 179
    .line 180
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 181
    .line 182
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->t:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 192
    .line 193
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->g:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 194
    .line 195
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$d;

    .line 196
    .line 197
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$d;-><init>(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setOnRefreshListener(Lcc/k;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 208
    .line 209
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->g:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 210
    .line 211
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/library/LoadMoreFinishLayout;

    .line 212
    .line 213
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/view/library/LoadMoreFinishLayout;-><init>(Landroid/content/Context;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setBottomView(Lcc/a;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 224
    .line 225
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->g:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 226
    .line 227
    const/4 v1, 0x0

    .line 228
    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableLoadmore(Z)V

    .line 229
    .line 230
    .line 231
    return-void
.end method

.method private static final p0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;Landroid/view/View;ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;)V
    .locals 7

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
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    const-string p1, "upack"

    .line 22
    .line 23
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    const-string p1, "reel_id"

    .line 31
    .line 32
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

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
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 51
    .line 52
    new-instance p2, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 53
    .line 54
    invoke-direct {p2}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v0, "discover_library"

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setFrom(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    const/4 v0, 0x1

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    const/4 v0, 0x3

    .line 71
    :goto_0
    invoke-virtual {p2, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-virtual {p2, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setEpisodeNum(I)V

    .line 85
    .line 86
    .line 87
    :cond_3
    new-instance v0, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 88
    .line 89
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortPlayCode(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsName(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setCover(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    invoke-virtual {v0, p3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setUpack(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p0, p2}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method

.method private static final q0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->m0()Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

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
    invoke-direct {p0, v1, v0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->v0(II)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final r0(Lcom/startshorts/androidplayer/bean/library/LibraryClass;)V
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

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
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->s0(Ljava/util/ArrayList;)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->t0(Ljava/util/ArrayList;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 63
    .line 64
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private final s0(Ljava/util/ArrayList;)V
    .locals 11
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
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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
    invoke-virtual {v0, p0}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory$Companion;->createChannelAll(Landroid/content/Context;)Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :cond_6
    if-eqz v4, :cond_7

    .line 120
    .line 121
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {p1, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_7
    :goto_3
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const/high16 v2, 0x40c00000    # 6.0f

    .line 133
    .line 134
    invoke-static {v2}, Ljk/g;->a(F)I

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    new-instance v3, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 139
    .line 140
    const/high16 v4, 0x41e00000    # 28.0f

    .line 141
    .line 142
    invoke-static {v4}, Ljk/g;->a(F)I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    const/4 v5, -0x2

    .line 147
    invoke-direct {v3, v5, v4}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(II)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v3, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast v2, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 158
    .line 159
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->a:Lcom/google/android/flexbox/FlexboxLayout;

    .line 160
    .line 161
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 162
    .line 163
    .line 164
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v4

    .line 172
    if-eqz v4, :cond_a

    .line 173
    .line 174
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    check-cast v4, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 179
    .line 180
    invoke-static {v0}, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->b(Landroid/view/LayoutInflater;)Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    const-string v6, "inflate(...)"

    .line 185
    .line 186
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 190
    .line 191
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    .line 197
    .line 198
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 199
    .line 200
    iget-wide v7, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->v:J

    .line 201
    .line 202
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 203
    .line 204
    .line 205
    move-result-wide v9

    .line 206
    cmp-long v7, v7, v9

    .line 207
    .line 208
    if-nez v7, :cond_8

    .line 209
    .line 210
    const/4 v7, 0x1

    .line 211
    goto :goto_5

    .line 212
    :cond_8
    move v7, v1

    .line 213
    :goto_5
    invoke-virtual {v6, v7}, Landroid/view/View;->setSelected(Z)V

    .line 214
    .line 215
    .line 216
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 217
    .line 218
    invoke-virtual {v6, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    sget v7, Lcom/startshorts/androidplayer/R$string;->library_activity_label_all:I

    .line 226
    .line 227
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v7

    .line 231
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v6

    .line 235
    if-eqz v6, :cond_9

    .line 236
    .line 237
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 238
    .line 239
    new-instance v7, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    sget v8, Lcom/startshorts/androidplayer/R$string;->library_fragment_interest:I

    .line 252
    .line 253
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v8

    .line 257
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v7

    .line 264
    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 265
    .line 266
    .line 267
    goto :goto_6

    .line 268
    :cond_9
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 269
    .line 270
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 275
    .line 276
    .line 277
    :goto_6
    iget-object v6, v5, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 278
    .line 279
    new-instance v7, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$e;

    .line 280
    .line 281
    invoke-direct {v7, p0, v4}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$e;-><init>(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;Lcom/startshorts/androidplayer/bean/library/LibraryCategory;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    check-cast v4, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 292
    .line 293
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->a:Lcom/google/android/flexbox/FlexboxLayout;

    .line 294
    .line 295
    invoke-virtual {v5}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object v5

    .line 299
    invoke-virtual {v4, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_4

    .line 303
    .line 304
    :cond_a
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    if-eqz p1, :cond_b

    .line 309
    .line 310
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 315
    .line 316
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->a:Lcom/google/android/flexbox/FlexboxLayout;

    .line 317
    .line 318
    const/16 v0, 0x8

    .line 319
    .line 320
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 321
    .line 322
    .line 323
    goto :goto_7

    .line 324
    :cond_b
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 329
    .line 330
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->a:Lcom/google/android/flexbox/FlexboxLayout;

    .line 331
    .line 332
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    .line 334
    .line 335
    :goto_7
    return-void
.end method

.method private final t0(Ljava/util/ArrayList;)V
    .locals 11
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
    invoke-virtual {v1, p0}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory$Companion;->createClassAll(Landroid/content/Context;)Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    const-wide/16 v5, 0x0

    .line 32
    .line 33
    cmp-long v1, v3, v5

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    iget-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 38
    .line 39
    invoke-virtual {p1, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 48
    .line 49
    :goto_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->w:Landroid/util/LongSparseArray;

    .line 50
    .line 51
    iget-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 52
    .line 53
    invoke-virtual {v1, v5, v6, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/high16 v3, 0x40c00000    # 6.0f

    .line 61
    .line 62
    invoke-static {v3}, Ljk/g;->a(F)I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    new-instance v4, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;

    .line 67
    .line 68
    const/high16 v5, 0x41e00000    # 28.0f

    .line 69
    .line 70
    invoke-static {v5}, Ljk/g;->a(F)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    const/4 v6, -0x2

    .line 75
    invoke-direct {v4, v6, v5}, Lcom/google/android/flexbox/FlexboxLayout$LayoutParams;-><init>(II)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 86
    .line 87
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;

    .line 88
    .line 89
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 90
    .line 91
    .line 92
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-eqz v5, :cond_4

    .line 101
    .line 102
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v5

    .line 106
    check-cast v5, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 107
    .line 108
    invoke-static {v1}, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->b(Landroid/view/LayoutInflater;)Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    const-string v7, "inflate(...)"

    .line 113
    .line 114
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 118
    .line 119
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 127
    .line 128
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->w:Landroid/util/LongSparseArray;

    .line 129
    .line 130
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 131
    .line 132
    .line 133
    move-result-wide v9

    .line 134
    invoke-virtual {v8, v9, v10}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    .line 135
    .line 136
    .line 137
    move-result v8

    .line 138
    if-ltz v8, :cond_2

    .line 139
    .line 140
    const/4 v8, 0x1

    .line 141
    goto :goto_2

    .line 142
    :cond_2
    move v8, v2

    .line 143
    :goto_2
    invoke-virtual {v7, v8}, Landroid/view/View;->setSelected(Z)V

    .line 144
    .line 145
    .line 146
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 147
    .line 148
    invoke-virtual {v7, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    sget v8, Lcom/startshorts/androidplayer/R$string;->library_activity_label_all:I

    .line 156
    .line 157
    invoke-virtual {p0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v8

    .line 161
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v7

    .line 165
    if-eqz v7, :cond_3

    .line 166
    .line 167
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 168
    .line 169
    new-instance v8, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    sget v9, Lcom/startshorts/androidplayer/R$string;->library_fragment_type:I

    .line 182
    .line 183
    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v9

    .line 187
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v8

    .line 194
    invoke-virtual {v7, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 195
    .line 196
    .line 197
    goto :goto_3

    .line 198
    :cond_3
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 199
    .line 200
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getName()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v8

    .line 204
    invoke-virtual {v7, v8}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 205
    .line 206
    .line 207
    :goto_3
    iget-object v7, v6, Lcom/startshorts/androidplayer/databinding/ItemLibraryClassifyBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 208
    .line 209
    new-instance v8, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;

    .line 210
    .line 211
    invoke-direct {v8, v5, p0, v0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;-><init>(Lcom/startshorts/androidplayer/bean/library/LibraryCategory;Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 218
    .line 219
    .line 220
    move-result-object v5

    .line 221
    check-cast v5, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 222
    .line 223
    iget-object v5, v5, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;

    .line 224
    .line 225
    invoke-virtual {v6}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    invoke-virtual {v5, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 230
    .line 231
    .line 232
    goto/16 :goto_1

    .line 233
    .line 234
    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 235
    .line 236
    .line 237
    move-result p1

    .line 238
    if-eqz p1, :cond_5

    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 241
    .line 242
    .line 243
    move-result-object p1

    .line 244
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 245
    .line 246
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;

    .line 247
    .line 248
    const/16 v0, 0x8

    .line 249
    .line 250
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 258
    .line 259
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->c:Landroid/widget/ImageView;

    .line 260
    .line 261
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 262
    .line 263
    .line 264
    goto :goto_4

    .line 265
    :cond_5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 270
    .line 271
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;

    .line 272
    .line 273
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 281
    .line 282
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->c:Landroid/widget/ImageView;

    .line 283
    .line 284
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 285
    .line 286
    .line 287
    :goto_4
    return-void
.end method

.method private final u0(Ljava/lang/String;)V
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
    iget-wide v3, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->v:J

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->w:Landroid/util/LongSparseArray;

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
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->w:Landroid/util/LongSparseArray;

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

.method private final v0(II)V
    .locals 13

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->m0()Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

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
    if-nez p1, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->U()V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->t:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->t:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->n(Z)V

    .line 34
    .line 35
    .line 36
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->g:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-virtual {v0, v1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;->setEnableLoadmore(Z)V

    .line 46
    .line 47
    .line 48
    :cond_3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->m0()Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v12, Lcom/startshorts/androidplayer/viewmodel/library/a$b;

    .line 53
    .line 54
    iget-wide v3, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->u:J

    .line 55
    .line 56
    iget-wide v5, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->v:J

    .line 57
    .line 58
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->w:Landroid/util/LongSparseArray;

    .line 59
    .line 60
    const/16 v10, 0x20

    .line 61
    .line 62
    const/4 v11, 0x0

    .line 63
    const/4 v9, 0x0

    .line 64
    move-object v1, v12

    .line 65
    move v2, p1

    .line 66
    move v8, p2

    .line 67
    invoke-direct/range {v1 .. v11}, Lcom/startshorts/androidplayer/viewmodel/library/a$b;-><init>(IJJLandroid/util/LongSparseArray;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v12}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->J(Lcom/startshorts/androidplayer/viewmodel/library/a;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private final w0()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->a:Lcom/google/android/flexbox/FlexboxLayout;

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
    if-ge v3, v1, :cond_1

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
    iget-wide v6, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->v:J

    .line 45
    .line 46
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 47
    .line 48
    .line 49
    move-result-wide v8

    .line 50
    cmp-long v5, v6, v8

    .line 51
    .line 52
    if-nez v5, :cond_0

    .line 53
    .line 54
    const/4 v5, 0x1

    .line 55
    goto :goto_1

    .line 56
    :cond_0
    move v5, v2

    .line 57
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 58
    .line 59
    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    return-void
.end method

.method private final x0()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/MaxHeightFlexBoxLayout;

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
    if-ge v3, v1, :cond_1

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
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->w:Landroid/util/LongSparseArray;

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
    move-result v5

    .line 54
    if-ltz v5, :cond_0

    .line 55
    .line 56
    const/4 v5, 0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_0
    move v5, v2

    .line 59
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 60
    .line 61
    .line 62
    add-int/lit8 v3, v3, 0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    return-void
.end method

.method private static final y0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;
    .locals 4

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
    new-instance v2, Lzh/d;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lzh/d;-><init>(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$g;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$g;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;->G()Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Lzh/e;

    .line 36
    .line 37
    invoke-direct {v2, p0, v0}, Lzh/e;-><init>(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$g;

    .line 41
    .line 42
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$g;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method private static final z0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->P()V

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->V()V

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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->W(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 29
    .line 30
    const/16 v0, 0x8

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->g:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p0
.end method


# virtual methods
.method public K()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_page_state_empty_lib:I

    .line 2
    .line 3
    return v0
.end method

.method public L()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$string;->library_activity_empty_text:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

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

.method public S()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->m0()Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

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
    invoke-direct {p0, v2, v1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->v0(II)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->U()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->m0()Lcom/startshorts/androidplayer/viewmodel/library/LibraryViewModel;

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

.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->s:I

    .line 2
    .line 3
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Led/a;->a:Led/a;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, p0, v0}, Led/a;->b(Landroid/app/Activity;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;

    .line 15
    .line 16
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityLibraryBinding;->j:Landroid/view/View;

    .line 17
    .line 18
    const-string v0, "toolbarView"

    .line 19
    .line 20
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {p1, v0}, Ljk/b0;->g(Landroid/view/View;I)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->o0()V

    .line 33
    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->n0()V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public q()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->t:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 7
    .line 8
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/library/LibraryAdapter;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "null cannot be cast to non-null type com.startshorts.androidplayer.adapter.library.LibraryAdapter"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Lcom/startshorts/androidplayer/adapter/library/LibraryAdapter;

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
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/adapter/library/LibraryAdapter;->r(II)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
