.class public Lio/bidmachine/iab/vast/processor/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lio/bidmachine/iab/vast/a;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lio/bidmachine/iab/vast/processor/VastMediaPicker;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/iab/vast/processor/VastMediaPicker<",
            "Lio/bidmachine/iab/vast/tags/MediaFileTag;",
            ">;"
        }
    .end annotation
.end field

.field final c:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field final d:Ljava/util/Stack;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lio/bidmachine/iab/vast/tags/AdContentTag;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>(Lio/bidmachine/iab/vast/a;Lio/bidmachine/iab/vast/processor/VastMediaPicker;)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/vast/processor/VastMediaPicker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/iab/vast/a;",
            "Lio/bidmachine/iab/vast/processor/VastMediaPicker<",
            "Lio/bidmachine/iab/vast/tags/MediaFileTag;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x5

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/iab/vast/processor/a;-><init>(Lio/bidmachine/iab/vast/a;Lio/bidmachine/iab/vast/processor/VastMediaPicker;I)V

    return-void
.end method

.method constructor <init>(Lio/bidmachine/iab/vast/a;Lio/bidmachine/iab/vast/processor/VastMediaPicker;I)V
    .locals 1
    .param p1    # Lio/bidmachine/iab/vast/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/vast/processor/VastMediaPicker;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/iab/vast/a;",
            "Lio/bidmachine/iab/vast/processor/VastMediaPicker<",
            "Lio/bidmachine/iab/vast/tags/MediaFileTag;",
            ">;I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lio/bidmachine/iab/vast/processor/a;->e:I

    .line 4
    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/a;->a:Lio/bidmachine/iab/vast/a;

    .line 5
    iput-object p2, p0, Lio/bidmachine/iab/vast/processor/a;->b:Lio/bidmachine/iab/vast/processor/VastMediaPicker;

    .line 6
    iput p3, p0, Lio/bidmachine/iab/vast/processor/a;->c:I

    .line 7
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lio/bidmachine/iab/vast/processor/a;->d:Ljava/util/Stack;

    return-void
.end method

.method private a(Lio/bidmachine/iab/vast/tags/InLineAdTag;)Landroid/util/Pair;
    .locals 6
    .param p1    # Lio/bidmachine/iab/vast/tags/InLineAdTag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/iab/vast/tags/InLineAdTag;",
            ")",
            "Landroid/util/Pair<",
            "Lio/bidmachine/iab/vast/tags/LinearCreativeTag;",
            "Lio/bidmachine/iab/vast/tags/MediaFileTag;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/AdContentTag;->q0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_3

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lio/bidmachine/iab/vast/tags/CreativeTag;

    .line 29
    .line 30
    if-nez v2, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {v2}, Lio/bidmachine/iab/vast/tags/CreativeTag;->Z()Lio/bidmachine/iab/vast/tags/CreativeContentTag;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    instance-of v3, v2, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    .line 38
    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    check-cast v2, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    .line 42
    .line 43
    invoke-virtual {v2}, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->q0()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    if-nez v4, :cond_1

    .line 54
    .line 55
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    check-cast v4, Lio/bidmachine/iab/vast/tags/MediaFileTag;

    .line 70
    .line 71
    new-instance v5, Landroid/util/Pair;

    .line 72
    .line 73
    invoke-direct {v5, v2, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    return-object v0

    .line 87
    :cond_4
    iget-object p1, p0, Lio/bidmachine/iab/vast/processor/a;->b:Lio/bidmachine/iab/vast/processor/VastMediaPicker;

    .line 88
    .line 89
    invoke-virtual {p1, v1}, Lio/bidmachine/iab/vast/processor/VastMediaPicker;->b(Ljava/util/List;)Landroid/util/Pair;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    if-eqz p1, :cond_5

    .line 94
    .line 95
    return-object p1

    .line 96
    :cond_5
    new-instance p1, Landroid/util/Pair;

    .line 97
    .line 98
    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-object p1
.end method

.method private b(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/tags/VastTag;Lio/bidmachine/iab/vast/processor/c;)Lio/bidmachine/iab/vast/processor/b;
    .locals 5
    .param p1    # Lio/bidmachine/iab/vast/tags/AdContentTag;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/vast/tags/VastTag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/iab/vast/processor/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/iab/vast/processor/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/iab/vast/processor/b;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/tags/VastTag;->Z()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-ge v1, v2, :cond_a

    .line 16
    .line 17
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/tags/VastTag;->Z()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lio/bidmachine/iab/vast/tags/AdTag;

    .line 26
    .line 27
    if-eqz v2, :cond_9

    .line 28
    .line 29
    invoke-virtual {v2}, Lio/bidmachine/iab/vast/tags/AdTag;->Z()Lio/bidmachine/iab/vast/tags/AdContentTag;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-eqz v3, :cond_9

    .line 34
    .line 35
    invoke-virtual {v2}, Lio/bidmachine/iab/vast/tags/AdTag;->Z()Lio/bidmachine/iab/vast/tags/AdContentTag;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    instance-of v3, v2, Lio/bidmachine/iab/vast/tags/InLineAdTag;

    .line 40
    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    move-object v3, v2

    .line 44
    check-cast v3, Lio/bidmachine/iab/vast/tags/InLineAdTag;

    .line 45
    .line 46
    invoke-direct {p0, v3}, Lio/bidmachine/iab/vast/processor/a;->i(Lio/bidmachine/iab/vast/tags/InLineAdTag;)Lio/bidmachine/iab/vast/processor/b;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/processor/b;->i()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_0

    .line 55
    .line 56
    return-object v3

    .line 57
    :cond_0
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/processor/b;->a()Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {p0, v4}, Lio/bidmachine/iab/vast/processor/a;->f(Ljava/util/List;)V

    .line 62
    .line 63
    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/processor/b;->f()Z

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    if-eqz v4, :cond_8

    .line 71
    .line 72
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/processor/b;->h()Ltm/g;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-eqz v3, :cond_1

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    sget-object v3, Ltm/g;->n:Ltm/g;

    .line 80
    .line 81
    :goto_1
    invoke-virtual {v0, p1, v3}, Lio/bidmachine/iab/vast/processor/b;->c(Lio/bidmachine/iab/vast/tags/AdContentTag;Ltm/g;)V

    .line 82
    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_2
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/processor/b;->h()Ltm/g;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/vast/processor/b;->d(Ltm/g;)V

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_3
    instance-of v3, v2, Lio/bidmachine/iab/vast/tags/WrapperAdTag;

    .line 94
    .line 95
    if-eqz v3, :cond_8

    .line 96
    .line 97
    invoke-virtual {p3}, Lio/bidmachine/iab/vast/processor/c;->c()Z

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-eqz v3, :cond_8

    .line 102
    .line 103
    move-object v3, v2

    .line 104
    check-cast v3, Lio/bidmachine/iab/vast/tags/WrapperAdTag;

    .line 105
    .line 106
    invoke-virtual {p0, v3}, Lio/bidmachine/iab/vast/processor/a;->c(Lio/bidmachine/iab/vast/tags/WrapperAdTag;)Lio/bidmachine/iab/vast/processor/b;

    .line 107
    .line 108
    .line 109
    move-result-object v3

    .line 110
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/processor/b;->i()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_4

    .line 115
    .line 116
    return-object v3

    .line 117
    :cond_4
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/processor/b;->a()Ljava/util/List;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {p0, v4}, Lio/bidmachine/iab/vast/processor/a;->f(Ljava/util/List;)V

    .line 122
    .line 123
    .line 124
    if-eqz p1, :cond_7

    .line 125
    .line 126
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/processor/b;->f()Z

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    if-eqz v4, :cond_6

    .line 131
    .line 132
    invoke-virtual {v3}, Lio/bidmachine/iab/vast/processor/b;->h()Ltm/g;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    if-eqz v3, :cond_5

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_5
    sget-object v3, Ltm/g;->n:Ltm/g;

    .line 140
    .line 141
    :goto_2
    invoke-virtual {v0, p1, v3}, Lio/bidmachine/iab/vast/processor/b;->c(Lio/bidmachine/iab/vast/tags/AdContentTag;Ltm/g;)V

    .line 142
    .line 143
    .line 144
    goto :goto_3

    .line 145
    :cond_6
    sget-object v3, Ltm/g;->h:Ltm/g;

    .line 146
    .line 147
    invoke-virtual {v0, p1, v3}, Lio/bidmachine/iab/vast/processor/b;->c(Lio/bidmachine/iab/vast/tags/AdContentTag;Ltm/g;)V

    .line 148
    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_7
    sget-object v3, Ltm/g;->h:Ltm/g;

    .line 152
    .line 153
    invoke-virtual {v0, v3}, Lio/bidmachine/iab/vast/processor/b;->d(Ltm/g;)V

    .line 154
    .line 155
    .line 156
    :goto_3
    if-nez v1, :cond_8

    .line 157
    .line 158
    invoke-virtual {p3}, Lio/bidmachine/iab/vast/processor/c;->b()Z

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    if-nez v3, :cond_8

    .line 163
    .line 164
    return-object v0

    .line 165
    :cond_8
    :goto_4
    invoke-virtual {p0, v2}, Lio/bidmachine/iab/vast/processor/a;->j(Lio/bidmachine/iab/vast/tags/AdContentTag;)V

    .line 166
    .line 167
    .line 168
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :cond_a
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/processor/b;->h()Ltm/g;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    if-nez p2, :cond_b

    .line 177
    .line 178
    if-eqz p1, :cond_b

    .line 179
    .line 180
    sget-object p2, Ltm/g;->h:Ltm/g;

    .line 181
    .line 182
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/iab/vast/processor/b;->c(Lio/bidmachine/iab/vast/tags/AdContentTag;Ltm/g;)V

    .line 183
    .line 184
    .line 185
    :cond_b
    return-object v0
.end method

.method private d()Ljava/util/ArrayList;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/bidmachine/iab/vast/processor/a;->d:Ljava/util/Stack;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_0
    iget-object v1, p0, Lio/bidmachine/iab/vast/processor/a;->d:Ljava/util/Stack;

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lio/bidmachine/iab/vast/tags/AdContentTag;

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    invoke-virtual {v2}, Lio/bidmachine/iab/vast/tags/AdContentTag;->r0()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    if-eqz v3, :cond_1

    .line 40
    .line 41
    invoke-virtual {v2}, Lio/bidmachine/iab/vast/tags/AdContentTag;->r0()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    return-object v0
.end method

.method private e(Lio/bidmachine/iab/vast/tags/AdContentTag;)Ljava/util/ArrayList;
    .locals 3
    .param p1    # Lio/bidmachine/iab/vast/tags/AdContentTag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/iab/vast/tags/AdContentTag;",
            ")",
            "Ljava/util/ArrayList<",
            "Lio/bidmachine/iab/vast/tags/CompanionTag;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/AdContentTag;->q0()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lio/bidmachine/iab/vast/tags/CreativeTag;

    .line 28
    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/tags/CreativeTag;->Z()Lio/bidmachine/iab/vast/tags/CreativeContentTag;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    instance-of v2, v1, Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;

    .line 37
    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    check-cast v1, Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;

    .line 41
    .line 42
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;->Z()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_3
    return-object v0
.end method

.method private g(Ljava/util/List;Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;->Z()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lio/bidmachine/iab/vast/tags/CompanionTag;

    .line 20
    .line 21
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/CompanionTag;->s0()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v0}, Lio/bidmachine/iab/vast/tags/CompanionTag;->k0()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return-void
.end method

.method private h(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/bidmachine/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map<",
            "Lio/bidmachine/iab/vast/TrackingEvent;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lio/bidmachine/iab/vast/TrackingEvent;

    .line 35
    .line 36
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Ljava/util/List;

    .line 41
    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    new-instance v2, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    check-cast v0, Ljava/util/Collection;

    .line 57
    .line 58
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    :goto_1
    return-void
.end method

.method private i(Lio/bidmachine/iab/vast/tags/InLineAdTag;)Lio/bidmachine/iab/vast/processor/b;
    .locals 14
    .param p1    # Lio/bidmachine/iab/vast/tags/InLineAdTag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/a;->d:Ljava/util/Stack;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/bidmachine/iab/vast/processor/b;

    .line 7
    .line 8
    invoke-direct {v0}, Lio/bidmachine/iab/vast/processor/b;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/processor/a;->a(Lio/bidmachine/iab/vast/tags/InLineAdTag;)Landroid/util/Pair;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    sget-object v1, Ltm/g;->c:Ltm/g;

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/b;->c(Lio/bidmachine/iab/vast/tags/AdContentTag;Ltm/g;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_3

    .line 23
    .line 24
    :cond_0
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 25
    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    iget-object v2, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 29
    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    sget-object v1, Ltm/g;->k:Ltm/g;

    .line 33
    .line 34
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/b;->c(Lio/bidmachine/iab/vast/tags/AdContentTag;Ltm/g;)V

    .line 35
    .line 36
    .line 37
    goto/16 :goto_3

    .line 38
    .line 39
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 40
    .line 41
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v3, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    new-instance v4, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v5, Ljava/util/EnumMap;

    .line 55
    .line 56
    const-class v6, Lio/bidmachine/iab/vast/TrackingEvent;

    .line 57
    .line 58
    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 59
    .line 60
    .line 61
    new-instance v6, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    iget-object v7, p0, Lio/bidmachine/iab/vast/processor/a;->d:Ljava/util/Stack;

    .line 67
    .line 68
    invoke-virtual {v7}, Ljava/util/Stack;->empty()Z

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    const/4 v8, 0x0

    .line 73
    if-nez v7, :cond_c

    .line 74
    .line 75
    iget-object v7, p0, Lio/bidmachine/iab/vast/processor/a;->d:Ljava/util/Stack;

    .line 76
    .line 77
    invoke-virtual {v7}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    :cond_2
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v9

    .line 85
    if-eqz v9, :cond_c

    .line 86
    .line 87
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    check-cast v9, Lio/bidmachine/iab/vast/tags/AdContentTag;

    .line 92
    .line 93
    if-nez v9, :cond_3

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_3
    invoke-virtual {v9}, Lio/bidmachine/iab/vast/tags/AdContentTag;->u0()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v10

    .line 100
    if-eqz v10, :cond_4

    .line 101
    .line 102
    invoke-virtual {v9}, Lio/bidmachine/iab/vast/tags/AdContentTag;->u0()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v10

    .line 106
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    .line 108
    .line 109
    :cond_4
    invoke-virtual {v9}, Lio/bidmachine/iab/vast/tags/AdContentTag;->q0()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v10

    .line 113
    if-eqz v10, :cond_9

    .line 114
    .line 115
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    :cond_5
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v11

    .line 123
    if-eqz v11, :cond_9

    .line 124
    .line 125
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v11

    .line 129
    check-cast v11, Lio/bidmachine/iab/vast/tags/CreativeTag;

    .line 130
    .line 131
    if-nez v11, :cond_6

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_6
    invoke-virtual {v11}, Lio/bidmachine/iab/vast/tags/CreativeTag;->Z()Lio/bidmachine/iab/vast/tags/CreativeContentTag;

    .line 135
    .line 136
    .line 137
    move-result-object v11

    .line 138
    instance-of v12, v11, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    .line 139
    .line 140
    if-eqz v12, :cond_8

    .line 141
    .line 142
    check-cast v11, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    .line 143
    .line 144
    invoke-virtual {v11}, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->s0()Lio/bidmachine/iab/vast/tags/VideoClicksTag;

    .line 145
    .line 146
    .line 147
    move-result-object v12

    .line 148
    if-eqz v12, :cond_7

    .line 149
    .line 150
    invoke-virtual {v12}, Lio/bidmachine/iab/vast/tags/VideoClicksTag;->a0()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v13

    .line 154
    if-eqz v13, :cond_7

    .line 155
    .line 156
    invoke-virtual {v12}, Lio/bidmachine/iab/vast/tags/VideoClicksTag;->a0()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v12

    .line 160
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    .line 162
    .line 163
    :cond_7
    invoke-virtual {v11}, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;->r0()Ljava/util/Map;

    .line 164
    .line 165
    .line 166
    move-result-object v11

    .line 167
    invoke-direct {p0, v5, v11}, Lio/bidmachine/iab/vast/processor/a;->h(Ljava/util/Map;Ljava/util/Map;)V

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_8
    instance-of v12, v11, Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;

    .line 172
    .line 173
    if-eqz v12, :cond_5

    .line 174
    .line 175
    check-cast v11, Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;

    .line 176
    .line 177
    invoke-direct {p0, v4, v11}, Lio/bidmachine/iab/vast/processor/a;->g(Ljava/util/List;Lio/bidmachine/iab/vast/tags/CompanionAdsCreativeTag;)V

    .line 178
    .line 179
    .line 180
    goto :goto_1

    .line 181
    :cond_9
    invoke-virtual {v9}, Lio/bidmachine/iab/vast/tags/AdContentTag;->s0()Ljava/util/List;

    .line 182
    .line 183
    .line 184
    move-result-object v9

    .line 185
    if-eqz v9, :cond_2

    .line 186
    .line 187
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    :cond_a
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    if-eqz v10, :cond_2

    .line 196
    .line 197
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    check-cast v10, Lio/bidmachine/iab/vast/tags/ExtensionTag;

    .line 202
    .line 203
    instance-of v11, v10, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    .line 204
    .line 205
    if-eqz v11, :cond_b

    .line 206
    .line 207
    if-nez v8, :cond_a

    .line 208
    .line 209
    move-object v8, v10

    .line 210
    check-cast v8, Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_b
    instance-of v11, v10, Lio/bidmachine/iab/vast/tags/AdVerificationsExtensionTag;

    .line 214
    .line 215
    if-eqz v11, :cond_a

    .line 216
    .line 217
    check-cast v10, Lio/bidmachine/iab/vast/tags/AdVerificationsExtensionTag;

    .line 218
    .line 219
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_c
    new-instance v7, Lio/bidmachine/iab/vast/processor/VastAd;

    .line 224
    .line 225
    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 226
    .line 227
    check-cast v9, Lio/bidmachine/iab/vast/tags/LinearCreativeTag;

    .line 228
    .line 229
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v1, Lio/bidmachine/iab/vast/tags/MediaFileTag;

    .line 232
    .line 233
    invoke-direct {v7, v9, v1}, Lio/bidmachine/iab/vast/processor/VastAd;-><init>(Lio/bidmachine/iab/vast/tags/LinearCreativeTag;Lio/bidmachine/iab/vast/tags/MediaFileTag;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7, v2}, Lio/bidmachine/iab/vast/processor/VastAd;->g(Ljava/util/ArrayList;)V

    .line 237
    .line 238
    .line 239
    invoke-direct {p0}, Lio/bidmachine/iab/vast/processor/a;->d()Ljava/util/ArrayList;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v7, v1}, Lio/bidmachine/iab/vast/processor/VastAd;->f(Ljava/util/ArrayList;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v7, v3}, Lio/bidmachine/iab/vast/processor/VastAd;->b(Ljava/util/ArrayList;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v7, v4}, Lio/bidmachine/iab/vast/processor/VastAd;->C(Ljava/util/ArrayList;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v7, v5}, Lio/bidmachine/iab/vast/processor/VastAd;->c(Ljava/util/EnumMap;)V

    .line 253
    .line 254
    .line 255
    invoke-direct {p0, p1}, Lio/bidmachine/iab/vast/processor/a;->e(Lio/bidmachine/iab/vast/tags/AdContentTag;)Ljava/util/ArrayList;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-virtual {v7, p1}, Lio/bidmachine/iab/vast/processor/VastAd;->e(Ljava/util/ArrayList;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v7, v8}, Lio/bidmachine/iab/vast/processor/VastAd;->a(Lio/bidmachine/iab/vast/tags/AppodealExtensionTag;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v7, v6}, Lio/bidmachine/iab/vast/processor/VastAd;->A(Ljava/util/List;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {v0, v7}, Lio/bidmachine/iab/vast/processor/b;->b(Lio/bidmachine/iab/vast/processor/VastAd;)V

    .line 269
    .line 270
    .line 271
    :goto_3
    return-object v0
.end method

.method private k()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/iab/vast/processor/a;->e:I

    .line 2
    .line 3
    iget v1, p0, Lio/bidmachine/iab/vast/processor/a;->c:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method


# virtual methods
.method c(Lio/bidmachine/iab/vast/tags/WrapperAdTag;)Lio/bidmachine/iab/vast/processor/b;
    .locals 9
    .param p1    # Lio/bidmachine/iab/vast/tags/WrapperAdTag;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/iab/vast/processor/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/iab/vast/processor/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lio/bidmachine/iab/vast/processor/a;->k()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const-string v2, "VastProcessor"

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget v1, p0, Lio/bidmachine/iab/vast/processor/a;->c:I

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v3, "VAST wrapping exceeded max limit of %d"

    .line 25
    .line 26
    invoke-static {v2, v3, v1}, Ltm/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Ltm/g;->g:Ltm/g;

    .line 30
    .line 31
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/b;->c(Lio/bidmachine/iab/vast/tags/AdContentTag;Ltm/g;)V

    .line 32
    .line 33
    .line 34
    return-object v0

    .line 35
    :cond_0
    iget v1, p0, Lio/bidmachine/iab/vast/processor/a;->e:I

    .line 36
    .line 37
    const/4 v3, 0x1

    .line 38
    add-int/2addr v1, v3

    .line 39
    iput v1, p0, Lio/bidmachine/iab/vast/processor/a;->e:I

    .line 40
    .line 41
    iget-object v1, p0, Lio/bidmachine/iab/vast/processor/a;->d:Ljava/util/Stack;

    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/WrapperAdTag;->y0()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v4, 0x0

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    new-array v1, v4, [Ljava/lang/Object;

    .line 58
    .line 59
    const-string v3, "VASTAdTagURI is null or empty"

    .line 60
    .line 61
    invoke-static {v2, v3, v1}, Ltm/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget-object v1, Ltm/g;->f:Ltm/g;

    .line 65
    .line 66
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/b;->c(Lio/bidmachine/iab/vast/tags/AdContentTag;Ltm/g;)V

    .line 67
    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_1
    new-instance v1, Lio/bidmachine/iab/vast/processor/c;

    .line 71
    .line 72
    invoke-direct {v1, p1}, Lio/bidmachine/iab/vast/processor/c;-><init>(Lio/bidmachine/iab/vast/tags/VastXmlTag;)V

    .line 73
    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    :try_start_0
    new-instance v6, Ljava/net/URL;

    .line 77
    .line 78
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/WrapperAdTag;->y0()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-direct {v6, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    move-object v7, v6

    .line 90
    check-cast v7, Ljava/net/HttpURLConnection;

    .line 91
    .line 92
    invoke-virtual {v7}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 93
    .line 94
    .line 95
    move-result v7

    .line 96
    const/16 v8, 0xc8

    .line 97
    .line 98
    if-eq v7, v8, :cond_3

    .line 99
    .line 100
    const/16 v1, 0xcc

    .line 101
    .line 102
    if-eq v7, v1, :cond_2

    .line 103
    .line 104
    sget-object v1, Ltm/g;->f:Ltm/g;

    .line 105
    .line 106
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/b;->c(Lio/bidmachine/iab/vast/tags/AdContentTag;Ltm/g;)V

    .line 107
    .line 108
    .line 109
    return-object v0

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    goto/16 :goto_c

    .line 112
    .line 113
    :catch_0
    move-exception v1

    .line 114
    goto/16 :goto_4

    .line 115
    .line 116
    :catch_1
    move-exception v1

    .line 117
    goto/16 :goto_6

    .line 118
    .line 119
    :catch_2
    move-exception v1

    .line 120
    goto/16 :goto_8

    .line 121
    .line 122
    :catch_3
    move-exception v1

    .line 123
    goto/16 :goto_8

    .line 124
    .line 125
    :catch_4
    move-exception v1

    .line 126
    goto/16 :goto_8

    .line 127
    .line 128
    :catch_5
    move-exception v1

    .line 129
    goto/16 :goto_8

    .line 130
    .line 131
    :catch_6
    move-exception v1

    .line 132
    goto/16 :goto_a

    .line 133
    .line 134
    :cond_2
    const-string v1, "Wrapper response code: 204"

    .line 135
    .line 136
    new-array v3, v4, [Ljava/lang/Object;

    .line 137
    .line 138
    invoke-static {v2, v1, v3}, Ltm/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    sget-object v1, Ltm/g;->h:Ltm/g;

    .line 142
    .line 143
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/b;->c(Lio/bidmachine/iab/vast/tags/AdContentTag;Ltm/g;)V

    .line 144
    .line 145
    .line 146
    return-object v0

    .line 147
    :cond_3
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    invoke-static {v5}, Lio/bidmachine/iab/vast/tags/a;->a(Ljava/io/InputStream;)Lio/bidmachine/iab/vast/tags/VastTag;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    if-nez v6, :cond_5

    .line 156
    .line 157
    const-string v1, "Invalid Vast"

    .line 158
    .line 159
    new-array v3, v4, [Ljava/lang/Object;

    .line 160
    .line 161
    invoke-static {v2, v1, v3}, Ltm/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    sget-object v1, Ltm/g;->c:Ltm/g;

    .line 165
    .line 166
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/b;->c(Lio/bidmachine/iab/vast/tags/AdContentTag;Ltm/g;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .line 168
    .line 169
    if-eqz v5, :cond_4

    .line 170
    .line 171
    :try_start_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :catch_7
    move-exception p1

    .line 176
    invoke-static {v2, p1}, Ltm/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    :cond_4
    :goto_0
    return-object v0

    .line 180
    :cond_5
    :try_start_2
    invoke-virtual {v6}, Lio/bidmachine/iab/vast/tags/VastTag;->a0()Z

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    if-nez v7, :cond_7

    .line 185
    .line 186
    const-string v1, "Vast has no ad"

    .line 187
    .line 188
    new-array v3, v4, [Ljava/lang/Object;

    .line 189
    .line 190
    invoke-static {v2, v1, v3}, Ltm/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 191
    .line 192
    .line 193
    sget-object v1, Ltm/g;->h:Ltm/g;

    .line 194
    .line 195
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/b;->c(Lio/bidmachine/iab/vast/tags/AdContentTag;Ltm/g;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    .line 197
    .line 198
    if-eqz v5, :cond_6

    .line 199
    .line 200
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    .line 201
    .line 202
    .line 203
    goto :goto_1

    .line 204
    :catch_8
    move-exception p1

    .line 205
    invoke-static {v2, p1}, Ltm/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    .line 207
    .line 208
    :cond_6
    :goto_1
    return-object v0

    .line 209
    :cond_7
    :try_start_4
    invoke-virtual {v6}, Lio/bidmachine/iab/vast/tags/VastTag;->Z()Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 214
    .line 215
    .line 216
    move-result v7

    .line 217
    if-le v7, v3, :cond_9

    .line 218
    .line 219
    invoke-virtual {v1}, Lio/bidmachine/iab/vast/processor/c;->a()Z

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-nez v3, :cond_9

    .line 224
    .line 225
    sget-object v1, Ltm/g;->e:Ltm/g;

    .line 226
    .line 227
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/b;->c(Lio/bidmachine/iab/vast/tags/AdContentTag;Ltm/g;)V
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 228
    .line 229
    .line 230
    if-eqz v5, :cond_8

    .line 231
    .line 232
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .line 233
    .line 234
    .line 235
    goto :goto_2

    .line 236
    :catch_9
    move-exception p1

    .line 237
    invoke-static {v2, p1}, Ltm/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    .line 239
    .line 240
    :cond_8
    :goto_2
    return-object v0

    .line 241
    :cond_9
    :try_start_6
    invoke-direct {p0, p1, v6, v1}, Lio/bidmachine/iab/vast/processor/a;->b(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/tags/VastTag;Lio/bidmachine/iab/vast/processor/c;)Lio/bidmachine/iab/vast/processor/b;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    invoke-virtual {v1, v4}, Lio/bidmachine/iab/vast/processor/b;->e(Z)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/net/SocketTimeoutException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljavax/net/ssl/SSLException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 246
    .line 247
    .line 248
    if-eqz v5, :cond_a

    .line 249
    .line 250
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_a

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :catch_a
    move-exception p1

    .line 255
    invoke-static {v2, p1}, Ltm/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 256
    .line 257
    .line 258
    :cond_a
    :goto_3
    return-object v1

    .line 259
    :goto_4
    :try_start_8
    invoke-static {v2, v1}, Ltm/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    .line 261
    .line 262
    sget-object v1, Ltm/g;->b:Ltm/g;

    .line 263
    .line 264
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/b;->c(Lio/bidmachine/iab/vast/tags/AdContentTag;Ltm/g;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 265
    .line 266
    .line 267
    if-eqz v5, :cond_b

    .line 268
    .line 269
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_b

    .line 270
    .line 271
    .line 272
    goto :goto_5

    .line 273
    :catch_b
    move-exception p1

    .line 274
    invoke-static {v2, p1}, Ltm/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 275
    .line 276
    .line 277
    :cond_b
    :goto_5
    return-object v0

    .line 278
    :goto_6
    :try_start_a
    invoke-static {v2, v1}, Ltm/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 279
    .line 280
    .line 281
    sget-object v1, Ltm/g;->f:Ltm/g;

    .line 282
    .line 283
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/b;->c(Lio/bidmachine/iab/vast/tags/AdContentTag;Ltm/g;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 284
    .line 285
    .line 286
    if-eqz v5, :cond_c

    .line 287
    .line 288
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_c

    .line 289
    .line 290
    .line 291
    goto :goto_7

    .line 292
    :catch_c
    move-exception p1

    .line 293
    invoke-static {v2, p1}, Ltm/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    .line 295
    .line 296
    :cond_c
    :goto_7
    return-object v0

    .line 297
    :goto_8
    :try_start_c
    invoke-static {v2, v1}, Ltm/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 298
    .line 299
    .line 300
    sget-object v1, Ltm/g;->f:Ltm/g;

    .line 301
    .line 302
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/b;->c(Lio/bidmachine/iab/vast/tags/AdContentTag;Ltm/g;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 303
    .line 304
    .line 305
    if-eqz v5, :cond_d

    .line 306
    .line 307
    :try_start_d
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_d

    .line 308
    .line 309
    .line 310
    goto :goto_9

    .line 311
    :catch_d
    move-exception p1

    .line 312
    invoke-static {v2, p1}, Ltm/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 313
    .line 314
    .line 315
    :cond_d
    :goto_9
    return-object v0

    .line 316
    :goto_a
    :try_start_e
    invoke-static {v2, v1}, Ltm/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    .line 318
    .line 319
    sget-object v1, Ltm/g;->f:Ltm/g;

    .line 320
    .line 321
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/processor/b;->c(Lio/bidmachine/iab/vast/tags/AdContentTag;Ltm/g;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 322
    .line 323
    .line 324
    if-eqz v5, :cond_e

    .line 325
    .line 326
    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_e

    .line 327
    .line 328
    .line 329
    goto :goto_b

    .line 330
    :catch_e
    move-exception p1

    .line 331
    invoke-static {v2, p1}, Ltm/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 332
    .line 333
    .line 334
    :cond_e
    :goto_b
    return-object v0

    .line 335
    :goto_c
    if-eqz v5, :cond_f

    .line 336
    .line 337
    :try_start_10
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    .line 338
    .line 339
    .line 340
    goto :goto_d

    .line 341
    :catch_f
    move-exception v0

    .line 342
    invoke-static {v2, v0}, Ltm/d;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 343
    .line 344
    .line 345
    :cond_f
    :goto_d
    throw p1
.end method

.method f(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/a;->a:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/iab/vast/a;->A(Ljava/util/List;Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method j(Lio/bidmachine/iab/vast/tags/AdContentTag;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/a;->d:Ljava/util/Stack;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/vast/processor/a;->d:Ljava/util/Stack;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Ljava/util/Stack;->search(Ljava/lang/Object;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-ge v0, p1, :cond_1

    .line 18
    .line 19
    iget-object v1, p0, Lio/bidmachine/iab/vast/processor/a;->d:Ljava/util/Stack;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    return-void
.end method

.method public l(Ljava/lang/String;)Lio/bidmachine/iab/vast/processor/b;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "VastProcessor"

    .line 5
    .line 6
    const-string v2, "process"

    .line 7
    .line 8
    invoke-static {v1, v2, v0}, Ltm/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lio/bidmachine/iab/vast/processor/b;

    .line 12
    .line 13
    invoke-direct {v0}, Lio/bidmachine/iab/vast/processor/b;-><init>()V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {p1}, Lio/bidmachine/iab/vast/tags/a;->b(Ljava/lang/String;)Lio/bidmachine/iab/vast/tags/VastTag;

    .line 17
    .line 18
    .line 19
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lio/bidmachine/iab/vast/tags/VastTag;->a0()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v0, Lio/bidmachine/iab/vast/processor/c;

    .line 30
    .line 31
    invoke-direct {v0}, Lio/bidmachine/iab/vast/processor/c;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, v1, p1, v0}, Lio/bidmachine/iab/vast/processor/a;->b(Lio/bidmachine/iab/vast/tags/AdContentTag;Lio/bidmachine/iab/vast/tags/VastTag;Lio/bidmachine/iab/vast/processor/c;)Lio/bidmachine/iab/vast/processor/b;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_1
    :goto_0
    sget-object p1, Ltm/g;->c:Ltm/g;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/vast/processor/b;->d(Ltm/g;)V

    .line 43
    .line 44
    .line 45
    return-object v0

    .line 46
    :catch_0
    sget-object p1, Ltm/g;->b:Ltm/g;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lio/bidmachine/iab/vast/processor/b;->d(Ltm/g;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method
