.class public final Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;
.super Lyd/d;
.source "LibraryLabelFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->L(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLibraryLabelFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryLabelFragment.kt\ncom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$loadLabelClass$1$1\n+ 2 LongSparseArray.kt\nandroidx/core/util/LongSparseArrayKt\n*L\n1#1,282:1\n42#2:283\n*S KotlinDebug\n*F\n+ 1 LibraryLabelFragment.kt\ncom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$loadLabelClass$1$1\n*L\n203#1:283\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

.field final synthetic f:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

.field final synthetic g:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/library/LibraryCategory;Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;Lcom/startshorts/androidplayer/bean/library/LibraryCategory;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->e:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->f:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->g:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    const/4 p2, 0x0

    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    invoke-direct {p0, v0, v1, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->e:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    cmp-long p1, v0, v2

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->f:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->C(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)Landroid/util/LongSparseArray;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->clear()V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->f:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->C(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)Landroid/util/LongSparseArray;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->g:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->g:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->f:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->C(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)Landroid/util/LongSparseArray;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->e:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-ltz p1, :cond_1

    .line 62
    .line 63
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->f:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->C(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)Landroid/util/LongSparseArray;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->e:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 72
    .line 73
    .line 74
    move-result-wide v0

    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->f:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->C(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)Landroid/util/LongSparseArray;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-nez p1, :cond_3

    .line 89
    .line 90
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->f:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->C(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)Landroid/util/LongSparseArray;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->g:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->g:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 103
    .line 104
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->f:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->C(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)Landroid/util/LongSparseArray;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    const/4 v0, 0x3

    .line 119
    if-lt p1, v0, :cond_2

    .line 120
    .line 121
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->f:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 122
    .line 123
    sget v0, Lcom/startshorts/androidplayer/R$string;->library_activity_label_limit:I

    .line 124
    .line 125
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->w(I)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->f:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 130
    .line 131
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->C(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)Landroid/util/LongSparseArray;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->e:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 138
    .line 139
    .line 140
    move-result-wide v0

    .line 141
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->e:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 142
    .line 143
    invoke-virtual {p1, v0, v1, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->f:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 147
    .line 148
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->C(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)Landroid/util/LongSparseArray;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->g:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 153
    .line 154
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 155
    .line 156
    .line 157
    move-result-wide v0

    .line 158
    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 159
    .line 160
    .line 161
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment$b;->f:Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;

    .line 162
    .line 163
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;->H(Lcom/startshorts/androidplayer/ui/fragment/library/LibraryLabelFragment;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method
