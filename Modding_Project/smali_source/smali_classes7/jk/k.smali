.class public final Ljk/k;
.super Ljava/lang/Object;
.source "GPProductDetailsExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lzc/e;)Ljava/lang/String;
    .locals 1
    .param p0    # Lzc/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lzc/e;->b()Lzc/e$a;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lzc/e$a;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    :cond_0
    const-string p0, ""

    .line 19
    .line 20
    :cond_1
    return-object p0
.end method

.method public static final b(Lzc/e$a;)Ljava/lang/String;
    .locals 1
    .param p0    # Lzc/e$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lzc/e$a;->a()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static final c(Lzc/e;)Ljava/lang/String;
    .locals 1
    .param p0    # Lzc/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lzc/e;->b()Lzc/e$a;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-static {p0}, Ljk/k;->b(Lzc/e$a;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-nez p0, :cond_1

    .line 17
    .line 18
    :cond_0
    const-string p0, ""

    .line 19
    .line 20
    :cond_1
    return-object p0
.end method

.method public static final d(Lzc/e;)Ljava/lang/String;
    .locals 2
    .param p0    # Lzc/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lzc/e;->b()Lzc/e$a;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lzc/e$a;->b()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    long-to-float p0, v0

    .line 17
    const v0, 0x49742400    # 1000000.0f

    .line 18
    .line 19
    .line 20
    div-float/2addr p0, v0

    .line 21
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    return-object p0

    .line 26
    :cond_0
    const-string p0, ""

    .line 27
    .line 28
    return-object p0
.end method

.method public static final e(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;
    .locals 4
    .param p0    # Lzc/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lzc/e;->e()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, Ljava/util/Collection;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lzc/e$b;

    .line 28
    .line 29
    new-instance v1, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;

    .line 30
    .line 31
    invoke-virtual {p0}, Lzc/e$b;->c()Lzc/e$b$a;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2}, Lzc/e$b$a;->a()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lzc/e$b$a$a;

    .line 44
    .line 45
    invoke-virtual {v2}, Lzc/e$b$a$a;->c()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p0}, Lzc/e$b;->c()Lzc/e$b$a;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Lzc/e$b$a;->a()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    check-cast v3, Lzc/e$b$a$a;

    .line 62
    .line 63
    invoke-virtual {v3}, Lzc/e$b$a$a;->b()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {p0}, Lzc/e$b;->c()Lzc/e$b$a;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lzc/e$b$a;->a()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    check-cast p0, Lzc/e$b$a$a;

    .line 80
    .line 81
    invoke-virtual {p0}, Lzc/e$b$a$a;->f()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-direct {v1, v2, v3, p0}, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    return-object v1

    .line 89
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 90
    return-object p0
.end method

.method public static final f(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;
    .locals 5
    .param p0    # Lzc/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lzc/e;->e()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, Ljava/util/Collection;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_a

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_4

    .line 23
    .line 24
    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    move-object v3, v2

    .line 41
    check-cast v3, Lzc/e$b;

    .line 42
    .line 43
    invoke-virtual {v3}, Lzc/e$b;->a()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-object v2, v1

    .line 51
    :goto_0
    check-cast v2, Lzc/e$b;

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    move-object v3, v0

    .line 68
    check-cast v3, Lzc/e$b;

    .line 69
    .line 70
    invoke-virtual {v3}, Lzc/e$b;->a()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    if-eqz v3, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    move-object v0, v1

    .line 78
    :goto_1
    check-cast v0, Lzc/e$b;

    .line 79
    .line 80
    const-string p0, "ProductDetails"

    .line 81
    .line 82
    const/4 v3, 0x0

    .line 83
    if-eqz v2, :cond_5

    .line 84
    .line 85
    invoke-virtual {v2}, Lzc/e$b;->c()Lzc/e$b$a;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-virtual {v4}, Lzc/e$b$a;->a()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    check-cast v4, Lzc/e$b$a$a;

    .line 98
    .line 99
    invoke-virtual {v4}, Lzc/e$b$a$a;->b()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v2}, Lzc/e$b;->c()Lzc/e$b$a;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lzc/e$b$a;->a()Ljava/util/List;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    check-cast v2, Lzc/e$b$a$a;

    .line 116
    .line 117
    invoke-virtual {v2}, Lzc/e$b$a$a;->f()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    goto :goto_2

    .line 122
    :cond_5
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 123
    .line 124
    const-string v4, "getSubsFormattedPrice originPrice failed -> enableOfferPlan(true) noOfferPlanDetail(null)"

    .line 125
    .line 126
    invoke-virtual {v2, p0, v4}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    move-object v2, v1

    .line 130
    move-object v4, v2

    .line 131
    :goto_2
    if-eqz v0, :cond_6

    .line 132
    .line 133
    invoke-virtual {v0}, Lzc/e$b;->c()Lzc/e$b$a;

    .line 134
    .line 135
    .line 136
    move-result-object p0

    .line 137
    invoke-virtual {p0}, Lzc/e$b$a;->a()Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    check-cast p0, Lzc/e$b$a$a;

    .line 146
    .line 147
    invoke-virtual {p0}, Lzc/e$b$a$a;->b()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    goto :goto_3

    .line 152
    :cond_6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 153
    .line 154
    const-string v3, "getSubsFormattedPrice discountPrice failed -> enableOfferPlan(true) offerPlanDetail(null)"

    .line 155
    .line 156
    invoke-virtual {v0, p0, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :goto_3
    new-instance p0, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;

    .line 160
    .line 161
    const-string v0, ""

    .line 162
    .line 163
    if-nez v4, :cond_7

    .line 164
    .line 165
    move-object v4, v0

    .line 166
    :cond_7
    if-nez v1, :cond_8

    .line 167
    .line 168
    move-object v1, v0

    .line 169
    :cond_8
    if-nez v2, :cond_9

    .line 170
    .line 171
    move-object v2, v0

    .line 172
    :cond_9
    invoke-direct {p0, v4, v1, v2}, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    return-object p0

    .line 176
    :cond_a
    :goto_4
    return-object v1
.end method

.method public static final g(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;
    .locals 3
    .param p0    # Lzc/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lzc/e;->e()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, Ljava/util/Collection;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_4

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    move-object v2, v0

    .line 40
    check-cast v2, Lzc/e$b;

    .line 41
    .line 42
    invoke-virtual {v2}, Lzc/e$b;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object v0, v1

    .line 50
    :goto_0
    check-cast v0, Lzc/e$b;

    .line 51
    .line 52
    if-nez v0, :cond_3

    .line 53
    .line 54
    return-object v1

    .line 55
    :cond_3
    new-instance p0, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;

    .line 56
    .line 57
    invoke-virtual {v0}, Lzc/e$b;->c()Lzc/e$b$a;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Lzc/e$b$a;->a()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const/4 v2, 0x0

    .line 66
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lzc/e$b$a$a;

    .line 71
    .line 72
    invoke-virtual {v1}, Lzc/e$b$a$a;->b()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v0}, Lzc/e$b;->c()Lzc/e$b$a;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lzc/e$b$a;->a()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lzc/e$b$a$a;

    .line 89
    .line 90
    invoke-virtual {v0}, Lzc/e$b$a$a;->f()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    const-string v2, ""

    .line 95
    .line 96
    invoke-direct {p0, v1, v2, v0}, Lcom/startshorts/androidplayer/bean/subs/SubsFormattedPrice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-object p0

    .line 100
    :cond_4
    :goto_1
    return-object v1
.end method

.method public static final h(Lzc/e;)Ljava/lang/String;
    .locals 3
    .param p0    # Lzc/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lzc/e;->e()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, Ljava/util/Collection;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    move-object v2, v0

    .line 40
    check-cast v2, Lzc/e$b;

    .line 41
    .line 42
    invoke-virtual {v2}, Lzc/e$b;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object v0, v1

    .line 50
    :goto_0
    check-cast v0, Lzc/e$b;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0}, Lzc/e$b;->b()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_3
    :goto_1
    return-object v1
.end method

.method public static final i(Lzc/e;)Ljava/lang/String;
    .locals 3
    .param p0    # Lzc/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lzc/e;->e()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, Ljava/util/Collection;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    move-object v2, v0

    .line 40
    check-cast v2, Lzc/e$b;

    .line 41
    .line 42
    invoke-virtual {v2}, Lzc/e$b;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    move-object v0, v1

    .line 50
    :goto_0
    check-cast v0, Lzc/e$b;

    .line 51
    .line 52
    if-eqz v0, :cond_3

    .line 53
    .line 54
    invoke-virtual {v0}, Lzc/e$b;->b()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    :cond_3
    :goto_1
    return-object v1
.end method

.method public static final j(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;
    .locals 14
    .param p0    # Lzc/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lzc/e;->e()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    move-object v1, v0

    .line 11
    check-cast v1, Ljava/util/Collection;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_c

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    goto/16 :goto_9

    .line 23
    .line 24
    :cond_0
    check-cast v0, Ljava/lang/Iterable;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    move-object v4, v3

    .line 41
    check-cast v4, Lzc/e$b;

    .line 42
    .line 43
    invoke-virtual {v4}, Lzc/e$b;->a()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    if-nez v4, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-object v3, v2

    .line 51
    :goto_0
    check-cast v3, Lzc/e$b;

    .line 52
    .line 53
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_4

    .line 62
    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    move-object v4, v1

    .line 68
    check-cast v4, Lzc/e$b;

    .line 69
    .line 70
    invoke-virtual {v4}, Lzc/e$b;->a()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    if-eqz v4, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    move-object v1, v2

    .line 78
    :goto_1
    check-cast v1, Lzc/e$b;

    .line 79
    .line 80
    const-string v0, "ProductDetails"

    .line 81
    .line 82
    const-wide/16 v4, 0x0

    .line 83
    .line 84
    const v6, 0x49742400    # 1000000.0f

    .line 85
    .line 86
    .line 87
    const/4 v7, 0x0

    .line 88
    if-eqz v3, :cond_5

    .line 89
    .line 90
    invoke-virtual {v3}, Lzc/e$b;->c()Lzc/e$b$a;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    invoke-virtual {v3}, Lzc/e$b$a;->a()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    check-cast v3, Lzc/e$b$a$a;

    .line 103
    .line 104
    invoke-virtual {v3}, Lzc/e$b$a$a;->f()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v8

    .line 108
    invoke-virtual {v3}, Lzc/e$b$a$a;->e()J

    .line 109
    .line 110
    .line 111
    move-result-wide v9

    .line 112
    invoke-virtual {v3}, Lzc/e$b$a$a;->e()J

    .line 113
    .line 114
    .line 115
    move-result-wide v11

    .line 116
    long-to-float v11, v11

    .line 117
    div-float/2addr v11, v6

    .line 118
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    invoke-virtual {v3}, Lzc/e$b$a$a;->a()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    goto :goto_2

    .line 127
    :cond_5
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 128
    .line 129
    const-string v8, "getSubsFormattedPrice originPrice failed -> enableOfferPlan(true) noOfferPlanDetail(null)"

    .line 130
    .line 131
    invoke-virtual {v3, v0, v8}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    move-object v8, v2

    .line 135
    move-object v11, v8

    .line 136
    move-wide v9, v4

    .line 137
    move v3, v7

    .line 138
    :goto_2
    if-eqz v1, :cond_7

    .line 139
    .line 140
    invoke-virtual {p0}, Lzc/e;->a()Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 141
    .line 142
    .line 143
    move-result-object v12

    .line 144
    sget-object v13, Lcom/shorttv/aar/billing/bean/ProductDataType;->GOOGLE_SKU:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 145
    .line 146
    if-eq v12, v13, :cond_7

    .line 147
    .line 148
    invoke-virtual {p0}, Lzc/e;->a()Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    sget-object v0, Lcom/shorttv/aar/billing/bean/ProductDataType;->HUAWEI_SKU:Lcom/shorttv/aar/billing/bean/ProductDataType;

    .line 153
    .line 154
    if-ne p0, v0, :cond_6

    .line 155
    .line 156
    invoke-virtual {v1}, Lzc/e$b;->c()Lzc/e$b$a;

    .line 157
    .line 158
    .line 159
    move-result-object p0

    .line 160
    invoke-virtual {p0}, Lzc/e$b$a;->a()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object p0

    .line 164
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p0

    .line 168
    check-cast p0, Lzc/e$b$a$a;

    .line 169
    .line 170
    invoke-virtual {p0}, Lzc/e$b$a$a;->f()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v8

    .line 174
    invoke-virtual {p0}, Lzc/e$b$a$a;->d()J

    .line 175
    .line 176
    .line 177
    move-result-wide v9

    .line 178
    invoke-virtual {p0}, Lzc/e$b$a$a;->d()J

    .line 179
    .line 180
    .line 181
    move-result-wide v0

    .line 182
    long-to-float v0, v0

    .line 183
    div-float/2addr v0, v6

    .line 184
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    invoke-virtual {p0}, Lzc/e$b$a$a;->e()J

    .line 189
    .line 190
    .line 191
    move-result-wide v4

    .line 192
    invoke-virtual {p0}, Lzc/e$b$a$a;->e()J

    .line 193
    .line 194
    .line 195
    move-result-wide v0

    .line 196
    long-to-float v0, v0

    .line 197
    div-float/2addr v0, v6

    .line 198
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lzc/e$b$a$a;->a()I

    .line 203
    .line 204
    .line 205
    move-result v3

    .line 206
    :goto_3
    move v12, v3

    .line 207
    move-wide v6, v9

    .line 208
    move-object p0, v11

    .line 209
    move-wide v10, v4

    .line 210
    goto :goto_4

    .line 211
    :cond_6
    invoke-virtual {v1}, Lzc/e$b;->c()Lzc/e$b$a;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-virtual {p0}, Lzc/e$b$a;->a()Ljava/util/List;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    check-cast p0, Lzc/e$b$a$a;

    .line 224
    .line 225
    invoke-virtual {p0}, Lzc/e$b$a$a;->f()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-virtual {p0}, Lzc/e$b$a$a;->e()J

    .line 230
    .line 231
    .line 232
    move-result-wide v4

    .line 233
    invoke-virtual {p0}, Lzc/e$b$a$a;->e()J

    .line 234
    .line 235
    .line 236
    move-result-wide v0

    .line 237
    long-to-float v0, v0

    .line 238
    div-float/2addr v0, v6

    .line 239
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {p0}, Lzc/e$b$a$a;->a()I

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    goto :goto_3

    .line 248
    :cond_7
    sget-object p0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 249
    .line 250
    const-string v1, "getSubsFormattedPrice discountPrice failed -> enableOfferPlan(true) offerPlanDetail(null)"

    .line 251
    .line 252
    invoke-virtual {p0, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    move-object v0, v2

    .line 256
    goto :goto_3

    .line 257
    :goto_4
    new-instance v1, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 258
    .line 259
    const-string v3, ""

    .line 260
    .line 261
    if-nez v8, :cond_8

    .line 262
    .line 263
    move-object v4, v3

    .line 264
    goto :goto_5

    .line 265
    :cond_8
    move-object v4, v8

    .line 266
    :goto_5
    if-nez p0, :cond_9

    .line 267
    .line 268
    move-object v5, v3

    .line 269
    goto :goto_6

    .line 270
    :cond_9
    move-object v5, p0

    .line 271
    :goto_6
    if-nez v2, :cond_a

    .line 272
    .line 273
    move-object v8, v3

    .line 274
    goto :goto_7

    .line 275
    :cond_a
    move-object v8, v2

    .line 276
    :goto_7
    if-nez v0, :cond_b

    .line 277
    .line 278
    move-object v9, v3

    .line 279
    goto :goto_8

    .line 280
    :cond_b
    move-object v9, v0

    .line 281
    :goto_8
    move-object v3, v1

    .line 282
    invoke-direct/range {v3 .. v12}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JI)V

    .line 283
    .line 284
    .line 285
    return-object v1

    .line 286
    :cond_c
    :goto_9
    return-object v2
.end method

.method public static final k(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;
    .locals 14
    .param p0    # Lzc/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lzc/e;->e()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    move-object v0, p0

    .line 11
    check-cast v0, Ljava/util/Collection;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_8

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto/16 :goto_5

    .line 23
    .line 24
    :cond_0
    check-cast p0, Ljava/lang/Iterable;

    .line 25
    .line 26
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    move-object v2, v0

    .line 41
    check-cast v2, Lzc/e$b;

    .line 42
    .line 43
    invoke-virtual {v2}, Lzc/e$b;->a()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    if-nez v2, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_2
    move-object v0, v1

    .line 51
    :goto_0
    check-cast v0, Lzc/e$b;

    .line 52
    .line 53
    const/4 p0, 0x0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {v0}, Lzc/e$b;->c()Lzc/e$b$a;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lzc/e$b$a;->a()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    check-cast p0, Lzc/e$b$a$a;

    .line 69
    .line 70
    invoke-virtual {p0}, Lzc/e$b$a$a;->f()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lzc/e$b$a$a;->d()J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    invoke-virtual {p0}, Lzc/e$b$a$a;->d()J

    .line 79
    .line 80
    .line 81
    move-result-wide v4

    .line 82
    long-to-float v0, v4

    .line 83
    const v4, 0x49742400    # 1000000.0f

    .line 84
    .line 85
    .line 86
    div-float/2addr v0, v4

    .line 87
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p0}, Lzc/e$b$a$a;->e()J

    .line 92
    .line 93
    .line 94
    move-result-wide v5

    .line 95
    invoke-virtual {p0}, Lzc/e$b$a$a;->e()J

    .line 96
    .line 97
    .line 98
    move-result-wide v7

    .line 99
    long-to-float v7, v7

    .line 100
    div-float/2addr v7, v4

    .line 101
    invoke-static {v7}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {p0}, Lzc/e$b$a$a;->f()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    invoke-virtual {p0}, Lzc/e$b$a$a;->a()I

    .line 110
    .line 111
    .line 112
    move-result p0

    .line 113
    move v13, p0

    .line 114
    move-wide v11, v5

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 117
    .line 118
    const-string v2, "ProductDetails"

    .line 119
    .line 120
    const-string v3, "getSubsFormattedPrice originPrice failed -> enableOfferPlan(true) noOfferPlanDetail(null)"

    .line 121
    .line 122
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const-wide/16 v2, 0x0

    .line 126
    .line 127
    move v13, p0

    .line 128
    move-object v0, v1

    .line 129
    move-object v4, v0

    .line 130
    move-object v7, v4

    .line 131
    move-wide v11, v2

    .line 132
    :goto_1
    new-instance p0, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 133
    .line 134
    const-string v5, ""

    .line 135
    .line 136
    if-nez v1, :cond_4

    .line 137
    .line 138
    move-object v1, v5

    .line 139
    :cond_4
    if-nez v0, :cond_5

    .line 140
    .line 141
    move-object v6, v5

    .line 142
    goto :goto_2

    .line 143
    :cond_5
    move-object v6, v0

    .line 144
    :goto_2
    if-nez v7, :cond_6

    .line 145
    .line 146
    move-object v9, v5

    .line 147
    goto :goto_3

    .line 148
    :cond_6
    move-object v9, v7

    .line 149
    :goto_3
    if-nez v4, :cond_7

    .line 150
    .line 151
    move-object v10, v5

    .line 152
    goto :goto_4

    .line 153
    :cond_7
    move-object v10, v4

    .line 154
    :goto_4
    move-object v4, p0

    .line 155
    move-object v5, v1

    .line 156
    move-wide v7, v2

    .line 157
    invoke-direct/range {v4 .. v13}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;JI)V

    .line 158
    .line 159
    .line 160
    return-object p0

    .line 161
    :cond_8
    :goto_5
    return-object v1
.end method
