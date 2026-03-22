.class public final Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;
.super Lyd/d;
.source "LibraryActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->t0(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLibraryActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryActivity.kt\ncom/startshorts/androidplayer/ui/activity/library/LibraryActivity$loadLabelClass$1$1\n+ 2 LongSparseArray.kt\nandroidx/core/util/LongSparseArrayKt\n*L\n1#1,499:1\n42#2:500\n42#2:501\n*S KotlinDebug\n*F\n+ 1 LibraryActivity.kt\ncom/startshorts/androidplayer/ui/activity/library/LibraryActivity$loadLabelClass$1$1\n*L\n412#1:500\n419#1:501\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

.field final synthetic f:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

.field final synthetic g:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/startshorts/androidplayer/bean/library/LibraryCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/library/LibraryCategory;Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/library/LibraryCategory;",
            "Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/startshorts/androidplayer/bean/library/LibraryCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->e:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->f:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

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
    .locals 8

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->e:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

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
    const-string v0, "library_top"

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    const/4 v4, 0x0

    .line 20
    if-nez p1, :cond_1

    .line 21
    .line 22
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->f:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->c0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Landroid/util/LongSparseArray;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1, v2, v3}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-ltz p1, :cond_0

    .line 33
    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->f:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->c0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Landroid/util/LongSparseArray;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->clear()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->f:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->c0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Landroid/util/LongSparseArray;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 52
    .line 53
    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-virtual {p1, v2, v3, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->f:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 59
    .line 60
    invoke-static {p1, v4, v1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->i0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;II)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->f:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 64
    .line 65
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->h0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->f:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->c0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Landroid/util/LongSparseArray;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->e:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 76
    .line 77
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 78
    .line 79
    .line 80
    move-result-wide v5

    .line 81
    invoke-virtual {p1, v5, v6}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-ltz p1, :cond_2

    .line 86
    .line 87
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->f:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->c0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Landroid/util/LongSparseArray;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->e:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 94
    .line 95
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 96
    .line 97
    .line 98
    move-result-wide v5

    .line 99
    invoke-virtual {p1, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->f:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 103
    .line 104
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->c0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Landroid/util/LongSparseArray;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-nez p1, :cond_4

    .line 113
    .line 114
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->f:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->c0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Landroid/util/LongSparseArray;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->g:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 121
    .line 122
    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 123
    .line 124
    invoke-virtual {p1, v2, v3, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->f:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 129
    .line 130
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->c0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Landroid/util/LongSparseArray;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    const/4 v5, 0x3

    .line 139
    if-lt p1, v5, :cond_3

    .line 140
    .line 141
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->f:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 142
    .line 143
    sget v0, Lcom/startshorts/androidplayer/R$string;->library_activity_label_limit:I

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 146
    .line 147
    .line 148
    return-void

    .line 149
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->f:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 150
    .line 151
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->c0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Landroid/util/LongSparseArray;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->e:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 156
    .line 157
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/library/LibraryCategory;->getId()J

    .line 158
    .line 159
    .line 160
    move-result-wide v5

    .line 161
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->e:Lcom/startshorts/androidplayer/bean/library/LibraryCategory;

    .line 162
    .line 163
    invoke-virtual {p1, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->f:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 167
    .line 168
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->c0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)Landroid/util/LongSparseArray;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p1, v2, v3}, Landroid/util/LongSparseArray;->remove(J)V

    .line 173
    .line 174
    .line 175
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->f:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 176
    .line 177
    invoke-static {p1, v4, v1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->i0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;II)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->f:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 181
    .line 182
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->h0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    :goto_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity$f;->f:Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;

    .line 186
    .line 187
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;->k0(Lcom/startshorts/androidplayer/ui/activity/library/LibraryActivity;)V

    .line 188
    .line 189
    .line 190
    return-void
.end method
