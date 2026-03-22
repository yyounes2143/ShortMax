.class public final Lcom/inmobi/media/m6;
.super Lcom/inmobi/media/S0;
.source "SourceFile"


# instance fields
.field public N:I

.field public O:Z

.field public P:Lcom/inmobi/media/Nd;

.field public Q:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/media/Z;Lcom/inmobi/media/F0;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/media/Z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/media/F0;
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
    const-string v0, "adPlacement"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/media/S0;-><init>(Landroid/content/Context;Lcom/inmobi/media/Z;Lcom/inmobi/media/F0;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/inmobi/media/Nd;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/inmobi/media/Nd;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/inmobi/media/m6;->P:Lcom/inmobi/media/Nd;

    .line 20
    .line 21
    const-string v0, "m6"

    .line 22
    .line 23
    const-string v1, "TAG"

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/inmobi/media/Z;->l()J

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/media/S0;->a(Landroid/content/Context;Lcom/inmobi/media/Z;Lcom/inmobi/media/F0;)V

    .line 32
    .line 33
    .line 34
    const-string p1, "activity"

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/inmobi/media/m6;->c(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public static final synthetic a(Lcom/inmobi/media/m6;)V
    .locals 0

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/m6;->I0()V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/m6;I)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/inmobi/media/S0;->a(IZ)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/m6;Lcom/inmobi/media/F0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0, p1}, Lcom/inmobi/media/m6;->i(Lcom/inmobi/media/F0;)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/m6;Lcom/inmobi/media/ec;Landroid/content/Context;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 10
    iget-object v0, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 11
    const-string v1, "list"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ltz p1, :cond_2

    .line 12
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 13
    invoke-virtual {p0, p2}, Lcom/inmobi/media/m6;->b(Landroid/content/Context;)S

    move-result p2

    if-eqz p2, :cond_0

    .line 14
    invoke-virtual {p0, p1}, Lcom/inmobi/media/S0;->g(I)V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 15
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/S0;->b(IZ)V

    .line 16
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->D()Landroid/os/Handler;

    move-result-object p2

    if-eqz p2, :cond_2

    new-instance v0, Lub/g5;

    invoke-direct {v0, p0, p1}, Lub/g5;-><init>(Lcom/inmobi/media/m6;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public static final synthetic a(Lcom/inmobi/media/m6;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/inmobi/media/m6;->Q:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final b(Lcom/inmobi/media/m6;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 52
    const-string v1, "TAG"

    const-string v2, "S0"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "clearAdPods "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/media/S0;->A:Z

    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->h()V

    .line 55
    iget-object v0, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/inmobi/media/S0;->w:I

    .line 57
    iput v0, p0, Lcom/inmobi/media/S0;->x:I

    .line 58
    iget-object v0, p0, Lcom/inmobi/media/S0;->z:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    const-string v1, "InMobiInterstitial"

    if-eqz v0, :cond_2

    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interstitial ad dismissed for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 63
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/inmobi/media/F0;->b()V

    goto :goto_0

    .line 64
    :cond_3
    iget-object p0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p0, :cond_4

    .line 65
    check-cast p0, Lcom/inmobi/media/A5;

    const-string v0, "Listener was garbage collected. Unable to give callback"

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static final c(Lcom/inmobi/media/m6;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/media/m6;->a(Lcom/inmobi/media/F0;)V

    return-void
.end method

.method public static final d(Lcom/inmobi/media/m6;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/media/m6;->b(Lcom/inmobi/media/F0;)V

    return-void
.end method

.method public static final synthetic e()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "m6"

    return-object v0
.end method

.method public static final e(Lcom/inmobi/media/m6;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->s0()V

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->b0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->y()Lcom/inmobi/media/y0;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/media/y0;->f()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    if-ge v2, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->z()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0, v3}, Lcom/inmobi/media/S0;->h(I)V

    .line 6
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->s0()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public final D0()Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->f0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "TAG"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const-string v3, "m6"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    check-cast v0, Lcom/inmobi/media/A5;

    .line 21
    .line 22
    const-string v1, "Some of the dependency libraries for Interstitial not found"

    .line 23
    .line 24
    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 28
    .line 29
    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->MISSING_REQUIRED_DEPENDENCIES:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x7d7

    .line 35
    .line 36
    invoke-virtual {p0, v0, v2, v1}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    .line 37
    .line 38
    .line 39
    return v4

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-nez v0, :cond_2

    .line 45
    .line 46
    return v4

    .line 47
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const-string v6, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad for placement id: "

    .line 52
    .line 53
    const-string v7, "InMobiInterstitial"

    .line 54
    .line 55
    if-ne v5, v2, :cond_4

    .line 56
    .line 57
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 58
    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v0, Lcom/inmobi/media/A5;

    .line 78
    .line 79
    invoke-virtual {v0, v7, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 83
    .line 84
    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REPETITIVE_LOAD:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 85
    .line 86
    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 87
    .line 88
    .line 89
    const/16 v1, 0x7d8

    .line 90
    .line 91
    invoke-virtual {p0, v0, v4, v1}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    .line 92
    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :cond_4
    const/4 v8, 0x7

    .line 97
    if-ne v5, v8, :cond_5

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_5
    const/4 v8, 0x6

    .line 101
    if-ne v5, v8, :cond_7

    .line 102
    .line 103
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 104
    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    const-string v2, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: "

    .line 110
    .line 111
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v0, Lcom/inmobi/media/A5;

    .line 126
    .line 127
    invoke-virtual {v0, v7, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    :cond_6
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 131
    .line 132
    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 133
    .line 134
    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 135
    .line 136
    .line 137
    const/16 v1, 0x7da

    .line 138
    .line 139
    invoke-virtual {p0, v0, v4, v1}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    .line 140
    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_7
    const/4 v8, 0x2

    .line 144
    if-ne v5, v8, :cond_b

    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->E()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const-string v2, "html"

    .line 151
    .line 152
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-nez v1, :cond_9

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->E()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    const-string v2, "htmlUrl"

    .line 163
    .line 164
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v1

    .line 168
    if-eqz v1, :cond_8

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_8
    invoke-virtual {p0, v0}, Lcom/inmobi/media/S0;->e(Lcom/inmobi/media/F0;)V

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 176
    .line 177
    if-eqz v0, :cond_a

    .line 178
    .line 179
    new-instance v1, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    check-cast v0, Lcom/inmobi/media/A5;

    .line 196
    .line 197
    invoke-virtual {v0, v7, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_a
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 201
    .line 202
    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REPETITIVE_LOAD:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 203
    .line 204
    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 205
    .line 206
    .line 207
    const/16 v1, 0x7db

    .line 208
    .line 209
    invoke-virtual {p0, v0, v4, v1}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    .line 210
    .line 211
    .line 212
    :goto_2
    return v4

    .line 213
    :cond_b
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    const/4 v5, 0x4

    .line 218
    if-ne v5, v0, :cond_10

    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->W()Z

    .line 221
    .line 222
    .line 223
    move-result v0

    .line 224
    if-eqz v0, :cond_c

    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/inmobi/media/m6;->g()V

    .line 227
    .line 228
    .line 229
    goto :goto_4

    .line 230
    :cond_c
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 231
    .line 232
    if-eqz v0, :cond_d

    .line 233
    .line 234
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    check-cast v0, Lcom/inmobi/media/A5;

    .line 238
    .line 239
    const-string v1, "An ad is ready with the ad unit. Signaling ad load success ..."

    .line 240
    .line 241
    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :cond_d
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    if-nez v0, :cond_e

    .line 249
    .line 250
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 251
    .line 252
    if-eqz v0, :cond_f

    .line 253
    .line 254
    check-cast v0, Lcom/inmobi/media/A5;

    .line 255
    .line 256
    const-string v1, "Listener was garbage collected. Unable to give callback"

    .line 257
    .line 258
    invoke-virtual {v0, v7, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    goto :goto_3

    .line 262
    :cond_e
    invoke-virtual {p0, v0}, Lcom/inmobi/media/S0;->e(Lcom/inmobi/media/F0;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, v0}, Lcom/inmobi/media/S0;->f(Lcom/inmobi/media/F0;)V

    .line 266
    .line 267
    .line 268
    :cond_f
    :goto_3
    return v4

    .line 269
    :cond_10
    :goto_4
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->e0()V

    .line 270
    .line 271
    .line 272
    return v2
.end method

.method public final E0()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->m()Lcom/inmobi/media/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->j()Lcom/inmobi/commons/core/configs/AdConfig;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/inmobi/media/m6;->q()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/configs/AdConfig;->getCacheConfig(Ljava/lang/String;)Lcom/inmobi/commons/core/configs/AdConfig$CacheConfig;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$CacheConfig;->getTimeToLive()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/h;->a(J)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object v1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const-string v2, "TAG"

    .line 39
    .line 40
    const-string v3, "m6"

    .line 41
    .line 42
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    check-cast v1, Lcom/inmobi/media/A5;

    .line 46
    .line 47
    const-string v2, "Top ad has expired, failing show of ad."

    .line 48
    .line 49
    invoke-virtual {v1, v3, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    xor-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    return v0
.end method

.method public F()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->j()Lcom/inmobi/commons/core/configs/AdConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getMinimumRefreshInterval()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0
.end method

.method public final F0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lcom/inmobi/media/m6;->O:Z

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/inmobi/media/x;->e()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final G0()Lcom/inmobi/media/Nd;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/m6;->P:Lcom/inmobi/media/Nd;

    .line 2
    .line 3
    return-object v0
.end method

.method public final H0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final I0()V
    .locals 6

    .line 1
    const-string v0, "Cannot handle markupType: "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 4
    .line 5
    const-string v2, "TAG"

    .line 6
    .line 7
    const-string v3, "m6"

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v1, Lcom/inmobi/media/A5;

    .line 15
    .line 16
    const-string v4, "renderAdPostInternetCheck"

    .line 17
    .line 18
    invoke-virtual {v1, v3, v4}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/m6;->k0()V

    .line 22
    .line 23
    .line 24
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->o0()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->s()Lcom/inmobi/media/U0;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 39
    .line 40
    .line 41
    move-result-wide v4

    .line 42
    iput-wide v4, v1, Lcom/inmobi/media/U0;->g:J

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->d0()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->E()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const v5, -0x409f29ea

    .line 56
    .line 57
    .line 58
    if-eq v4, v5, :cond_5

    .line 59
    .line 60
    const v5, 0x3107ab

    .line 61
    .line 62
    .line 63
    if-eq v4, v5, :cond_3

    .line 64
    .line 65
    const v5, 0x49aca1c4    # 1414200.5f

    .line 66
    .line 67
    .line 68
    if-eq v4, v5, :cond_2

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    const-string v4, "htmlUrl"

    .line 72
    .line 73
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_4

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    goto :goto_1

    .line 82
    :cond_3
    const-string v4, "html"

    .line 83
    .line 84
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-eqz v1, :cond_6

    .line 89
    .line 90
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->D()Landroid/os/Handler;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    if-eqz v0, :cond_9

    .line 95
    .line 96
    new-instance v1, Lub/f5;

    .line 97
    .line 98
    invoke-direct {v1, p0}, Lub/f5;-><init>(Lcom/inmobi/media/m6;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    const-string v4, "inmobiJson"

    .line 106
    .line 107
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_7

    .line 112
    .line 113
    :cond_6
    :goto_0
    iget-object v1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 114
    .line 115
    if-eqz v1, :cond_9

    .line 116
    .line 117
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->E()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v1, Lcom/inmobi/media/A5;

    .line 137
    .line 138
    invoke-virtual {v1, v3, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_7
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 143
    .line 144
    if-eqz v0, :cond_9

    .line 145
    .line 146
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v1, "Waiting for Vast Processing"

    .line 150
    .line 151
    check-cast v0, Lcom/inmobi/media/A5;

    .line 152
    .line 153
    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :goto_1
    iget-object v1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 158
    .line 159
    if-eqz v1, :cond_8

    .line 160
    .line 161
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    check-cast v1, Lcom/inmobi/media/A5;

    .line 165
    .line 166
    const-string v2, "Exception while loading ad."

    .line 167
    .line 168
    invoke-virtual {v1, v3, v2, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 169
    .line 170
    .line 171
    :cond_8
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 172
    .line 173
    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 174
    .line 175
    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 176
    .line 177
    .line 178
    const/4 v1, 0x1

    .line 179
    const/16 v2, 0x856

    .line 180
    .line 181
    invoke-virtual {p0, v0, v1, v2}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    .line 182
    .line 183
    .line 184
    :cond_9
    :goto_2
    return-void
.end method

.method public final J()B
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public J0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v1, v0, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final K0()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "<get-TAG>(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v3, "submitAdNotReady "

    .line 17
    .line 18
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v0, Lcom/inmobi/media/A5;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/m6;->P:Lcom/inmobi/media/Nd;

    .line 34
    .line 35
    new-instance v7, Lcom/inmobi/media/W;

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->s()Lcom/inmobi/media/U0;

    .line 38
    .line 39
    .line 40
    move-result-object v8

    .line 41
    iget-boolean v1, p0, Lcom/inmobi/media/S0;->A:Z

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    iget v1, p0, Lcom/inmobi/media/S0;->x:I

    .line 46
    .line 47
    invoke-virtual {p0, v1}, Lcom/inmobi/media/S0;->b(I)Lcom/inmobi/media/h;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->m()Lcom/inmobi/media/h;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    :goto_0
    const/4 v2, 0x0

    .line 57
    if-eqz v1, :cond_2

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/inmobi/media/h;->p()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    move-object v9, v1

    .line 64
    goto :goto_1

    .line 65
    :cond_2
    move-object v9, v2

    .line 66
    :goto_1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->y()Lcom/inmobi/media/y0;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/inmobi/media/y0;->o()Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    :cond_3
    move-object v10, v2

    .line 77
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->E()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v11

    .line 81
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 82
    .line 83
    .line 84
    move-result v12

    .line 85
    move-object v1, v7

    .line 86
    move-object v2, v8

    .line 87
    move-object v3, v9

    .line 88
    move-object v4, v10

    .line 89
    move-object v5, v11

    .line 90
    move v6, v12

    .line 91
    invoke-direct/range {v1 .. v6}, Lcom/inmobi/media/W;-><init>(Lcom/inmobi/media/U0;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;B)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    const-string v1, "adNotReadyMetadata"

    .line 98
    .line 99
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v1, Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 105
    .line 106
    .line 107
    iget-wide v2, v8, Lcom/inmobi/media/U0;->c:J

    .line 108
    .line 109
    sget-object v4, Lcom/inmobi/media/Ie;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 110
    .line 111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 112
    .line 113
    .line 114
    move-result-wide v4

    .line 115
    sub-long/2addr v4, v2

    .line 116
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    const-string v3, "latency"

    .line 121
    .line 122
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    if-nez v12, :cond_4

    .line 126
    .line 127
    const/16 v2, 0x89c

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_4
    const/4 v2, 0x1

    .line 131
    if-ne v12, v2, :cond_5

    .line 132
    .line 133
    const/16 v2, 0x89d

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_5
    const/4 v2, 0x2

    .line 137
    if-ne v12, v2, :cond_6

    .line 138
    .line 139
    const/16 v2, 0x89e

    .line 140
    .line 141
    goto :goto_2

    .line 142
    :cond_6
    const/4 v2, 0x3

    .line 143
    if-ne v12, v2, :cond_7

    .line 144
    .line 145
    const/16 v2, 0x89f

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_7
    const/4 v2, 0x6

    .line 149
    if-ne v12, v2, :cond_8

    .line 150
    .line 151
    const/16 v2, 0x8a0

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_8
    const/4 v2, 0x7

    .line 155
    if-ne v12, v2, :cond_9

    .line 156
    .line 157
    const/16 v2, 0x8a1

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_9
    const/16 v2, 0x8

    .line 161
    .line 162
    if-ne v12, v2, :cond_a

    .line 163
    .line 164
    const/16 v2, 0x8c2

    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_a
    const/16 v2, 0x8a2

    .line 168
    .line 169
    :goto_2
    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    const-string v3, "errorCode"

    .line 174
    .line 175
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    if-eqz v11, :cond_b

    .line 179
    .line 180
    const-string v2, "markupType"

    .line 181
    .line 182
    invoke-virtual {v1, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    :cond_b
    if-eqz v9, :cond_c

    .line 186
    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    const-string v3, "\""

    .line 190
    .line 191
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const/16 v3, 0x22

    .line 198
    .line 199
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    const-string v3, "creativeType"

    .line 207
    .line 208
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    :cond_c
    if-eqz v10, :cond_d

    .line 212
    .line 213
    const-string v2, "isRewarded"

    .line 214
    .line 215
    invoke-virtual {v1, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    :cond_d
    invoke-virtual {v8}, Lcom/inmobi/media/U0;->a()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-lez v3, :cond_e

    .line 227
    .line 228
    const-string v3, "metadataBlob"

    .line 229
    .line 230
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    :cond_e
    iget-object v2, v8, Lcom/inmobi/media/U0;->a:Lcom/inmobi/media/S0;

    .line 234
    .line 235
    invoke-virtual {v2}, Lcom/inmobi/media/S0;->q()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    const-string v3, "adType"

    .line 240
    .line 241
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v2

    .line 248
    const-string v3, "networkType"

    .line 249
    .line 250
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    iget-object v2, v8, Lcom/inmobi/media/U0;->a:Lcom/inmobi/media/S0;

    .line 254
    .line 255
    invoke-virtual {v2}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    .line 256
    .line 257
    .line 258
    move-result-object v2

    .line 259
    invoke-virtual {v2}, Lcom/inmobi/media/Z;->l()J

    .line 260
    .line 261
    .line 262
    move-result-wide v2

    .line 263
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    const-string v3, "plId"

    .line 268
    .line 269
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    iget-boolean v0, v0, Lcom/inmobi/media/Nd;->a:Z

    .line 273
    .line 274
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    const-string v2, "isAdLoaded"

    .line 279
    .line 280
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    iget-object v0, v8, Lcom/inmobi/media/U0;->a:Lcom/inmobi/media/S0;

    .line 284
    .line 285
    invoke-virtual {v0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    invoke-virtual {v0}, Lcom/inmobi/media/Z;->m()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    if-eqz v0, :cond_f

    .line 294
    .line 295
    const-string v2, "plType"

    .line 296
    .line 297
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    :cond_f
    sget-object v0, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 301
    .line 302
    sget-object v0, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 303
    .line 304
    const-string v2, "AdNotReady"

    .line 305
    .line 306
    invoke-static {v2, v1, v0}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 307
    .line 308
    .line 309
    return-void
.end method

.method public final L0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v2, "Successfully loaded Interstitial ad markup in the WebView for placement id: "

    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v0, Lcom/inmobi/media/A5;

    .line 24
    .line 25
    const-string v2, "InMobiInterstitial"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->i()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/inmobi/media/m6;->r0()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public a(B)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 155
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->b0()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 156
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 157
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->B()Ljava/util/TreeSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p1

    const-string v2, "TAG"

    const-string v3, "m6"

    if-eqz p1, :cond_1

    .line 158
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_0

    .line 159
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "RenderView time out, none of the ad provided success"

    invoke-virtual {p1, v3, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->h()V

    .line 161
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 v1, 0x85b

    .line 162
    invoke-virtual {p0, p1, v0, v1}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    goto :goto_1

    .line 163
    :cond_1
    invoke-virtual {p0, v0}, Lcom/inmobi/media/S0;->b(B)V

    .line 164
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_2

    .line 165
    const-string v0, "RenderView time out, providing success based on "

    invoke-static {v3, v2, v0}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->B()Ljava/util/TreeSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v3, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->B()Ljava/util/TreeSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "first(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/inmobi/media/S0;->i(I)V

    .line 169
    invoke-virtual {p0}, Lcom/inmobi/media/m6;->L0()V

    .line 170
    iget-object p1, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 171
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, p1, :cond_7

    .line 172
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->B()Ljava/util/TreeSet;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x0

    .line 173
    invoke-static {p0, v2, v0, v1, v3}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/S0;IZILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->h()V

    goto :goto_1

    .line 175
    :cond_5
    invoke-super {p0, p1}, Lcom/inmobi/media/S0;->a(B)V

    goto :goto_1

    .line 176
    :cond_6
    invoke-super {p0, p1}, Lcom/inmobi/media/S0;->a(B)V

    :cond_7
    :goto_1
    return-void
.end method

.method public a(ILcom/inmobi/media/ec;)V
    .locals 0
    .param p2    # Lcom/inmobi/media/ec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "renderView"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(ILcom/inmobi/media/ec;Landroid/content/Context;)V
    .locals 4
    .param p2    # Lcom/inmobi/media/ec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "renderView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->b0()Z

    move-result v0

    const-string v1, "TAG"

    const-string v2, "m6"

    if-nez v0, :cond_1

    .line 130
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_0

    .line 131
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string p2, "Cannot show an pod ad as isPod is not set."

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->B()Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    iget-object v0, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 134
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-le p1, v0, :cond_5

    .line 135
    iget-object v0, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 136
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 137
    iget-object v0, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 138
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 139
    iget-object v0, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 140
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/ec;

    if-eqz v0, :cond_2

    .line 141
    iget-boolean v0, v0, Lcom/inmobi/media/ec;->x0:Z

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    .line 142
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->t()Landroid/content/Context;

    move-result-object p3

    .line 143
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/media/S0;->a(ILcom/inmobi/media/ec;Landroid/content/Context;)V

    .line 144
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->D()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_4

    new-instance v0, Lub/i5;

    invoke-direct {v0, p0, p2, p3}, Lub/i5;-><init>(Lcom/inmobi/media/m6;Lcom/inmobi/media/ec;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void

    .line 145
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_6

    .line 146
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string p3, "Cannot show an pod ad with invalid index passed"

    invoke-virtual {p1, v2, p3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    :cond_6
    iget-object p1, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 148
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 p2, 0x0

    .line 149
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/S0;->b(IZ)V

    return-void
.end method

.method public a(Lcom/inmobi/media/F0;)V
    .locals 5
    .param p1    # Lcom/inmobi/media/F0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    const-string v2, "m6"

    if-eqz v0, :cond_0

    .line 27
    const-string v3, "handleAdScreenDismissed "

    invoke-static {v2, v1, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 28
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result v0

    const/4 v3, 0x7

    const/4 v4, 0x6

    if-ne v0, v3, :cond_1

    .line 30
    iget p1, p0, Lcom/inmobi/media/m6;->N:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/inmobi/media/m6;->N:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 31
    invoke-virtual {p0, v4}, Lcom/inmobi/media/S0;->d(B)V

    .line 32
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_5

    .line 33
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdUnit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state - RENDERED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v2, v0}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result v0

    if-eq v0, v4, :cond_2

    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_5

    .line 35
    :cond_2
    iget v0, p0, Lcom/inmobi/media/m6;->N:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inmobi/media/m6;->N:I

    .line 36
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    const-string v1, "InMobiInterstitial"

    if-eqz v0, :cond_3

    .line 37
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Interstitial ad dismissed for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 38
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 39
    invoke-virtual {p1}, Lcom/inmobi/media/F0;->b()V

    goto :goto_0

    .line 40
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_5

    .line 41
    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "Listener was garbage collected. Unable to give callback"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final a(Lcom/inmobi/media/Nd;)V
    .locals 1
    .param p1    # Lcom/inmobi/media/Nd;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/inmobi/media/m6;->P:Lcom/inmobi/media/Nd;

    return-void
.end method

.method public a(Lcom/inmobi/media/Z;Z)V
    .locals 3
    .param p1    # Lcom/inmobi/media/Z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "placement"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/Z;Z)V

    const-string v0, "TAG"

    const/4 v1, 0x2

    const-string v2, "m6"

    if-nez p2, :cond_2

    .line 86
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result p1

    if-eq v1, p1, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result p1

    const/4 p2, 0x4

    if-ne p2, p1, :cond_5

    :cond_0
    const/4 p1, 0x0

    .line 87
    invoke-virtual {p0, p1}, Lcom/inmobi/media/S0;->d(B)V

    .line 88
    iget-object p2, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p2, :cond_1

    .line 89
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AdUnit "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " state - CREATED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p2, Lcom/inmobi/media/A5;

    invoke-virtual {p2, v2, v0}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_1
    new-instance p2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_NO_LONGER_AVAILABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p2, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 91
    invoke-virtual {p0, p2, p1, p1}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    goto :goto_0

    .line 92
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object p2

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result p1

    if-ne v1, p1, :cond_5

    .line 93
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_3

    .line 94
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string p2, "Asset are ready now"

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->a0()Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 96
    invoke-virtual {p0, p1}, Lcom/inmobi/media/S0;->c(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->f()V

    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/m6;->r0()V

    :cond_5
    :goto_0
    return-void
.end method

.method public a(Lcom/inmobi/media/ec;Landroid/content/Context;)V
    .locals 4
    .param p1    # Lcom/inmobi/media/ec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 18
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v1

    .line 19
    const-string v2, "<get-TAG>(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "closeCurrentPodAd "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->b0()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->B()Ljava/util/TreeSet;

    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lcom/inmobi/media/m6;->a(ILcom/inmobi/media/ec;Landroid/content/Context;)V

    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/m6;->b()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/inmobi/media/ec;S)V
    .locals 11
    .param p1    # Lcom/inmobi/media/ec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 99
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/ec;S)V

    .line 100
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->b0()Z

    move-result v0

    const-string v1, "InMobiInterstitial"

    const-string v2, "Failed to load the Interstitial markup in the WebView for placement id: "

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 101
    iget-object v0, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 102
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 103
    invoke-static {p0, p1, v5, v3, v0}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/S0;IZILjava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v7, v4

    move v8, v7

    move v6, v5

    :goto_0
    const/4 v9, -0x1

    if-ge v6, v0, :cond_3

    if-ne v6, p1, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    iget-object v10, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 107
    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 108
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->B()Ljava/util/TreeSet;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    move v7, v5

    move v8, v7

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move v5, v7

    move v6, v9

    :goto_2
    if-eq v6, v9, :cond_5

    if-eqz v8, :cond_9

    .line 109
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result p2

    if-ne p2, v3, :cond_9

    .line 110
    invoke-virtual {p0, v4}, Lcom/inmobi/media/S0;->b(B)V

    .line 111
    invoke-virtual {p0, v6}, Lcom/inmobi/media/S0;->i(I)V

    .line 112
    iget-object p2, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p2, :cond_4

    .line 113
    const-string v0, "TAG"

    const-string v1, "Providing success based on currIndex "

    const-string v2, "m6"

    invoke-static {v2, v0, v1}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->A()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 115
    check-cast p2, Lcom/inmobi/media/A5;

    invoke-virtual {p2, v2, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/m6;->L0()V

    goto :goto_3

    :cond_5
    if-eqz v5, :cond_9

    .line 117
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result p1

    if-ne p1, v3, :cond_9

    .line 118
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_6

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 120
    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_6
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 122
    invoke-virtual {p0, p1, v4, p2}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    goto :goto_3

    .line 123
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result p1

    if-ne p1, v3, :cond_9

    .line 124
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_8

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_8
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 128
    invoke-virtual {p0, p1, v4, p2}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    :cond_9
    :goto_3
    return-void
.end method

.method public a(Lcom/inmobi/media/ec;Z)V
    .locals 8
    .param p1    # Lcom/inmobi/media/ec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/ec;Z)V

    .line 178
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    const/16 p1, 0x8ac

    goto :goto_0

    :cond_0
    const/16 p1, 0x8ab

    .line 179
    :goto_0
    new-instance p2, Lcom/inmobi/media/j6;

    invoke-direct {p2, p0, p1}, Lcom/inmobi/media/j6;-><init>(Lcom/inmobi/media/m6;S)V

    iput-object p2, p0, Lcom/inmobi/media/m6;->Q:Lkotlin/jvm/functions/Function0;

    goto/16 :goto_3

    :cond_1
    const/4 v1, 0x6

    const-string v2, "fullScreenActivity is not null and finishing"

    const-string v3, "InMobiInterstitial"

    const/4 v4, 0x2

    const-string v5, "TAG"

    const-string v6, "m6"

    const-string v7, "RenderProcess of the WebView has crashed. Please create another adUnit"

    if-ne v0, v1, :cond_7

    if-eqz p2, :cond_2

    const/16 v0, 0x8ae

    goto :goto_1

    :cond_2
    const/16 v0, 0x8ad

    .line 180
    :goto_1
    invoke-static {v4, v3, v7}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_3

    .line 182
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v6, v7}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_3
    invoke-virtual {p1}, Lcom/inmobi/media/ec;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 184
    iget-object v3, p1, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_4

    sget-object v4, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v4, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_4
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 186
    :cond_5
    iget v1, p0, Lcom/inmobi/media/m6;->N:I

    if-nez v1, :cond_6

    const/4 p1, 0x1

    .line 187
    invoke-virtual {p0, p1, v0}, Lcom/inmobi/media/S0;->a(ZS)V

    goto :goto_3

    .line 188
    :cond_6
    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/ec;->a(ZS)V

    .line 189
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/inmobi/media/m6;->a(Lcom/inmobi/media/F0;)V

    goto :goto_3

    :cond_7
    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    if-eqz p2, :cond_8

    const/16 v0, 0x8b0

    goto :goto_2

    :cond_8
    const/16 v0, 0x8af

    .line 190
    :goto_2
    invoke-static {v4, v3, v7}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object v1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_9

    .line 192
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v6, v7}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_9
    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/ec;->a(ZS)V

    .line 194
    invoke-virtual {p1}, Lcom/inmobi/media/ec;->getFullScreenActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 195
    iget-object p1, p1, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_a

    sget-object v0, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v0, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    :cond_a
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 197
    :cond_b
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/inmobi/media/m6;->a(Lcom/inmobi/media/F0;)V

    :cond_c
    :goto_3
    return-void
.end method

.method public a(Lcom/inmobi/media/h;ZS)V
    .locals 3
    .param p1    # Lcom/inmobi/media/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "ad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 72
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object p2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 73
    invoke-virtual {p0, p1, v0, p3}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    goto :goto_1

    .line 74
    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/h;ZS)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 75
    iget-object p2, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p2, :cond_1

    .line 76
    const-string p3, "TAG"

    const-string v1, "Exception while onVastProcessCompleted : "

    const-string v2, "m6"

    invoke-static {v2, p3, v1}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/inmobi/media/A5;

    invoke-virtual {p2, v2, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->m()Lcom/inmobi/media/h;

    move-result-object p1

    if-nez p1, :cond_2

    .line 79
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object p2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/16 p2, 0x37

    .line 80
    invoke-virtual {p0, p1, v0, p2}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    return-void

    .line 81
    :cond_2
    invoke-virtual {p1}, Lcom/inmobi/media/h;->G()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 82
    invoke-virtual {p0, v0}, Lcom/inmobi/media/S0;->b(Z)V

    .line 83
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->V()V

    goto :goto_1

    .line 84
    :cond_3
    invoke-virtual {p0, p1}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/h;)V

    :goto_1
    return-void
.end method

.method public a(ZLcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 4
    .param p2    # Lcom/inmobi/ads/InMobiAdRequestStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 43
    const-string v1, "TAG"

    const-string v2, "m6"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onDidParseAfterFetch - parsingResult - "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/S0;->a(ZLcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 45
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_4

    .line 46
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_1

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Interstitial ad successfully fetched for placement id: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 48
    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "InMobiInterstitial"

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->E()Ljava/lang/String;

    move-result-object p1

    const-string p2, "inmobiJson"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 50
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inmobi/media/Z;->m()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 51
    sget-object p2, Lcom/inmobi/media/Cb;->a:Lcom/inmobi/media/a7;

    .line 52
    iget-object p2, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 53
    const-string v0, "logType"

    const-string v1, "intNative"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placementType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v0, Lcom/inmobi/media/Cb;->d:Lcom/inmobi/commons/core/configs/TelemetryConfig;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/TelemetryConfig;->getLoggingConfig()Lcom/inmobi/commons/core/configs/TelemetryConfig$LoggingConfig;

    move-result-object v0

    if-eqz p2, :cond_3

    .line 55
    new-instance v2, Lcom/inmobi/media/y5;

    .line 56
    invoke-static {v1, p1, v0}, Lcom/inmobi/media/Cb;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/commons/core/configs/TelemetryConfig$LoggingConfig;)Lcom/inmobi/media/a7;

    move-result-object v3

    .line 57
    invoke-static {v1, p1, v0}, Lcom/inmobi/media/Cb;->b(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/commons/core/configs/TelemetryConfig$LoggingConfig;)D

    move-result-wide v0

    .line 58
    invoke-direct {v2, v3, v0, v1}, Lcom/inmobi/media/y5;-><init>(Lcom/inmobi/media/a7;D)V

    .line 59
    check-cast p2, Lcom/inmobi/media/A5;

    .line 60
    const-string p1, "config"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    iget-object p2, p2, Lcom/inmobi/media/A5;->a:Lcom/inmobi/media/Ab;

    if-eqz p2, :cond_3

    .line 63
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object p1, p2, Lcom/inmobi/media/Ab;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    iget-object p1, p2, Lcom/inmobi/media/Ab;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 66
    :cond_2
    iget-object p1, p2, Lcom/inmobi/media/Ab;->e:Lcom/inmobi/media/c7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 67
    const-string v2, "logLevel"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iput-object v3, p1, Lcom/inmobi/media/c7;->a:Lcom/inmobi/media/a7;

    .line 69
    iget-object p1, p2, Lcom/inmobi/media/Ab;->f:Lcom/inmobi/media/Pc;

    .line 70
    iput-wide v0, p1, Lcom/inmobi/media/Pc;->a:D

    .line 71
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/m6;->q0()V

    :cond_4
    return-void
.end method

.method public a([B)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/m6;->D0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-super {p0, p1}, Lcom/inmobi/media/S0;->a([B)V

    :cond_0
    return-void
.end method

.method public a(Lcom/inmobi/media/ec;)Z
    .locals 2
    .param p1    # Lcom/inmobi/media/ec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->b0()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 153
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 154
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->B()Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final b(Landroid/content/Context;)S
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 2
    const-string v1, "m6"

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, ">>> Starting InMobiAdActivity to display interstitial ad ..."

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 3
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    move-result-object v0

    if-nez v0, :cond_1

    const/16 p1, 0x86b

    return p1

    .line 4
    :cond_1
    const-string v1, "unknown"

    invoke-interface {v0}, Lcom/inmobi/media/x;->getMarkupType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 p1, 0x86c

    return p1

    .line 5
    :cond_2
    sget-object v1, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 6
    const-string v1, "container"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 8
    sget-object v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    .line 9
    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 11
    iget-object v2, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_3

    .line 12
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v4, Lcom/inmobi/media/m5;->a:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "obj"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    sget-object v5, Lcom/inmobi/media/m5;->a:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v2, "loggerCacheKey"

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    :cond_3
    const-string v2, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 17
    const-string v1, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    const-string v1, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE"

    .line 19
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->E()Ljava/lang/String;

    move-result-object v2

    .line 20
    const-string v3, "html"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v2, 0xc8

    goto :goto_1

    .line 21
    :cond_4
    const-string v3, "htmlUrl"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0xca

    goto :goto_1

    :cond_5
    const/16 v2, 0xc9

    .line 22
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    const-string v1, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez p1, :cond_6

    const/16 p1, 0x86d

    return p1

    .line 24
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->b0()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 25
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->C()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_7

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/media/S0;->a(J)V

    .line 27
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->z()I

    move-result v1

    if-lez v1, :cond_8

    const/high16 v1, 0x24000000

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 29
    :cond_8
    sget-object v1, Lcom/inmobi/media/Uc;->a:Lcom/inmobi/media/Uc;

    invoke-virtual {v1, p1, v0}, Lcom/inmobi/media/Uc;->a(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    goto :goto_3

    .line 30
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_9

    .line 31
    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "InMobiInterstitial"

    const-string v2, "Cannot show ad; SDK encountered an unexpected error"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_9
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 33
    const-string v0, "event"

    invoke-static {p1, v0}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p1

    .line 34
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    const/16 p1, 0x86a

    :goto_3
    return p1
.end method

.method public b()V
    .locals 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .line 47
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->b0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 49
    const-string v1, "TAG"

    const-string v2, "m6"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "Closing the ad as closeAll is called"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->D()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lub/j5;

    invoke-direct {v1, p0}, Lub/j5;-><init>(Lcom/inmobi/media/m6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public b(Lcom/inmobi/media/F0;)V
    .locals 4
    .param p1    # Lcom/inmobi/media/F0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/4 v3, 0x1

    if-ne v0, v1, :cond_2

    .line 36
    iget v0, p0, Lcom/inmobi/media/m6;->N:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/inmobi/media/m6;->N:I

    if-ne v0, v3, :cond_1

    .line 37
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Successfully displayed Interstitial for placement id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "InMobiInterstitial"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_3

    const/4 v0, 0x4

    .line 40
    invoke-virtual {p0, v0}, Lcom/inmobi/media/S0;->b(B)V

    .line 41
    invoke-virtual {p0, p1}, Lcom/inmobi/media/S0;->d(Lcom/inmobi/media/F0;)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p0, v2}, Lcom/inmobi/media/S0;->d(B)V

    goto :goto_0

    .line 43
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result p1

    if-ne p1, v2, :cond_3

    .line 44
    iget p1, p0, Lcom/inmobi/media/m6;->N:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/inmobi/media/m6;->N:I

    :cond_3
    :goto_0
    return-void
.end method

.method public final b(Lcom/inmobi/media/F0;S)V
    .locals 0
    .param p1    # Lcom/inmobi/media/F0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/media/S0;->a(ZS)V

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p1}, Lcom/inmobi/media/S0;->d(B)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "monetizationContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string p1, "activity"

    invoke-super {p0, p1}, Lcom/inmobi/media/S0;->c(Ljava/lang/String;)V

    return-void
.end method

.method public c0()V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/m6;->D0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-super {p0}, Lcom/inmobi/media/S0;->c0()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public declared-synchronized d(Lcom/inmobi/media/ec;)V
    .locals 1
    .param p1    # Lcom/inmobi/media/ec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/inmobi/media/gc;->d(Lcom/inmobi/media/ec;)V

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->D()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lub/k5;

    invoke-direct {v0, p0}, Lub/k5;-><init>(Lcom/inmobi/media/m6;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized e(Lcom/inmobi/media/ec;)V
    .locals 1
    .param p1    # Lcom/inmobi/media/ec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-super {p0, p1}, Lcom/inmobi/media/gc;->e(Lcom/inmobi/media/ec;)V

    .line 8
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->D()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lub/l5;

    invoke-direct {v0, p0}, Lub/l5;-><init>(Lcom/inmobi/media/m6;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public g()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/S0;->g()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/inmobi/media/m6;->Q:Lkotlin/jvm/functions/Function0;

    .line 6
    .line 7
    return-void
.end method

.method public final h(Lcom/inmobi/media/F0;)V
    .locals 2
    .param p1    # Lcom/inmobi/media/F0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->t()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0}, Lcom/inmobi/media/m6;->b(Landroid/content/Context;)S

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 12
    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    check-cast p1, Lcom/inmobi/media/A5;

    .line 16
    .line 17
    const-string v0, "InMobiInterstitial"

    .line 18
    .line 19
    const-string v1, "Listener was garbage collected.Unable to give callback"

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/inmobi/media/S0;->a(ZS)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/media/F0;->e()V

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    return-void
.end method

.method public final i(Lcom/inmobi/media/F0;)V
    .locals 7

    .line 1
    const-string v0, "InMobiInterstitial"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/inmobi/media/A5;

    .line 11
    .line 12
    const-string v2, "Listener was garbage collected. Unable to give callback"

    .line 13
    .line 14
    invoke-virtual {p1, v0, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    const/16 p1, 0x867

    .line 18
    .line 19
    invoke-virtual {p0, v1, p1}, Lcom/inmobi/media/S0;->a(ZS)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    iget-object v2, p0, Lcom/inmobi/media/m6;->Q:Lkotlin/jvm/functions/Function0;

    .line 24
    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-interface {v2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    const/16 v3, 0x8

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    const-string v5, "TAG"

    .line 39
    .line 40
    const-string v6, "m6"

    .line 41
    .line 42
    if-ne v2, v3, :cond_4

    .line 43
    .line 44
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 45
    .line 46
    if-eqz p1, :cond_3

    .line 47
    .line 48
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    check-cast p1, Lcom/inmobi/media/A5;

    .line 52
    .line 53
    const-string v0, "unload has been called on this ad. Dont show. "

    .line 54
    .line 55
    invoke-virtual {p1, v6, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string p1, "Failed to show Ad as creative has called unload() on the Ad"

    .line 62
    .line 63
    invoke-static {v4, v6, p1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/16 p1, 0x8bf

    .line 67
    .line 68
    invoke-virtual {p0, v1, p1}, Lcom/inmobi/media/S0;->a(ZS)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/m6;->H0()Z

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    if-nez v2, :cond_6

    .line 77
    .line 78
    const-string p1, "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show."

    .line 79
    .line 80
    invoke-static {v4, v0, p1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 84
    .line 85
    if-eqz v0, :cond_5

    .line 86
    .line 87
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    check-cast v0, Lcom/inmobi/media/A5;

    .line 91
    .line 92
    invoke-virtual {v0, v6, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    invoke-static {v1, v6, p1}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const/16 p1, 0x868

    .line 102
    .line 103
    invoke-virtual {p0, v1, p1}, Lcom/inmobi/media/S0;->a(ZS)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_6
    invoke-virtual {p0, p1}, Lcom/inmobi/media/S0;->g(Lcom/inmobi/media/F0;)V

    .line 108
    .line 109
    .line 110
    const/4 v0, 0x6

    .line 111
    invoke-virtual {p0, v0}, Lcom/inmobi/media/S0;->d(B)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->E()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    const-string v1, "html"

    .line 119
    .line 120
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_8

    .line 125
    .line 126
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->E()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    const-string v1, "htmlUrl"

    .line 131
    .line 132
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_7

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_7
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->v()Lcom/inmobi/media/A;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    new-instance v2, Lcom/inmobi/media/f6;

    .line 148
    .line 149
    invoke-direct {v2, p0, p1}, Lcom/inmobi/media/f6;-><init>(Lcom/inmobi/media/m6;Lcom/inmobi/media/F0;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    invoke-static {v1, v2}, Lcom/inmobi/media/A;->a(ILcom/inmobi/media/G1;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->W()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    if-eqz v0, :cond_9

    .line 164
    .line 165
    const/16 v0, 0x869

    .line 166
    .line 167
    invoke-virtual {p0, p1, v0}, Lcom/inmobi/media/m6;->b(Lcom/inmobi/media/F0;S)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    if-eqz p1, :cond_a

    .line 175
    .line 176
    invoke-interface {p1}, Lcom/inmobi/media/x;->b()V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_9
    invoke-virtual {p0, p1}, Lcom/inmobi/media/m6;->h(Lcom/inmobi/media/F0;)V

    .line 181
    .line 182
    .line 183
    :cond_a
    :goto_1
    return-void
.end method

.method public final j(Lcom/inmobi/media/F0;)V
    .locals 2
    .param p1    # Lcom/inmobi/media/F0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/inmobi/media/m6;->i(Lcom/inmobi/media/F0;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lcom/inmobi/media/z4;->d:Lms/i;

    .line 20
    .line 21
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/inmobi/media/o7;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/inmobi/media/o7;->a:Landroid/os/Handler;

    .line 28
    .line 29
    new-instance v1, Lub/h5;

    .line 30
    .line 31
    invoke-direct {v1, p0, p1}, Lub/h5;-><init>(Lcom/inmobi/media/m6;Lcom/inmobi/media/F0;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public j0()V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->p0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "TAG"

    .line 6
    .line 7
    const-string v2, "m6"

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Lcom/inmobi/media/A5;

    .line 19
    .line 20
    const-string v1, "renderAd without internet check"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/m6;->I0()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast v0, Lcom/inmobi/media/A5;

    .line 37
    .line 38
    const-string v1, "renderAd"

    .line 39
    .line 40
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    new-instance v0, Lcom/inmobi/media/k6;

    .line 44
    .line 45
    invoke-direct {v0, p0}, Lcom/inmobi/media/k6;-><init>(Lcom/inmobi/media/m6;)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Lcom/inmobi/media/l6;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lcom/inmobi/media/l6;-><init>(Lcom/inmobi/media/m6;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/S0;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    return-void
.end method

.method public k0()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/S0;->k0()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/inmobi/media/m6;->N:I

    .line 6
    .line 7
    return-void
.end method

.method public m(Lcom/inmobi/media/ec;)V
    .locals 6
    .param p1    # Lcom/inmobi/media/ec;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/inmobi/media/S0;->m(Lcom/inmobi/media/ec;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->b0()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_5

    .line 11
    .line 12
    iget-object v0, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->A()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const-string v3, "TAG"

    .line 23
    .line 24
    const-string v4, "m6"

    .line 25
    .line 26
    if-ge p1, v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    const-string v2, "Ignoring loaded ad with index "

    .line 38
    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string p1, " as current rendering index is "

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->A()I

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast v0, Lcom/inmobi/media/A5;

    .line 62
    .line 63
    invoke-virtual {v0, v4, p1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void

    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->B()Ljava/util/TreeSet;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    :goto_0
    if-ge v0, p1, :cond_3

    .line 80
    .line 81
    iget-object v5, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 82
    .line 83
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    if-eqz v5, :cond_2

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-ne v0, v1, :cond_6

    .line 98
    .line 99
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 100
    .line 101
    if-eqz v0, :cond_4

    .line 102
    .line 103
    const-string v1, "Providing success based on index "

    .line 104
    .line 105
    invoke-static {v4, v3, v1, p1}, Lcom/inmobi/media/X8;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v0, Lcom/inmobi/media/A5;

    .line 110
    .line 111
    invoke-virtual {v0, v4, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_4
    invoke-virtual {p0, v2}, Lcom/inmobi/media/S0;->b(B)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0, p1}, Lcom/inmobi/media/S0;->i(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/inmobi/media/m6;->L0()V

    .line 121
    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-ne p1, v1, :cond_6

    .line 129
    .line 130
    invoke-virtual {p0, v2}, Lcom/inmobi/media/S0;->b(B)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0}, Lcom/inmobi/media/m6;->L0()V

    .line 134
    .line 135
    .line 136
    :cond_6
    :goto_1
    return-void
.end method

.method public o(Lcom/inmobi/media/ec;)V
    .locals 1
    .param p1    # Lcom/inmobi/media/ec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "renderView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->b0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/inmobi/media/m6;->a(Lcom/inmobi/media/ec;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->C0()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->C0()V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/inmobi/media/S0;->o(Lcom/inmobi/media/ec;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "int"

    .line 2
    .line 3
    return-object v0
.end method

.method public q0()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "TAG"

    .line 6
    .line 7
    const-string v2, "m6"

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v3, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v3, Lcom/inmobi/media/A5;

    .line 19
    .line 20
    const-string v1, "callback - onFetchSuccess"

    .line 21
    .line 22
    invoke-virtual {v3, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0, v0}, Lcom/inmobi/media/S0;->e(Lcom/inmobi/media/F0;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/16 v0, 0x88c

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/inmobi/media/S0;->b(S)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    check-cast v0, Lcom/inmobi/media/A5;

    .line 42
    .line 43
    const-string v1, "listener is null"

    .line 44
    .line 45
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public r0()V
    .locals 5
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    const-string v1, "TAG"

    .line 4
    .line 5
    const-string v2, "m6"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v3, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    const-string v4, "AdUnit "

    .line 15
    .line 16
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v4, " state - READY"

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v0, Lcom/inmobi/media/A5;

    .line 32
    .line 33
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    const/4 v0, 0x4

    .line 37
    invoke-virtual {p0, v0}, Lcom/inmobi/media/S0;->d(B)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->s()Lcom/inmobi/media/U0;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 48
    .line 49
    .line 50
    move-result-wide v3

    .line 51
    iput-wide v3, v0, Lcom/inmobi/media/U0;->i:J

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->u0()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->z0()V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/inmobi/media/m6;->P:Lcom/inmobi/media/Nd;

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    iput-boolean v3, v0, Lcom/inmobi/media/Nd;->a:Z

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/inmobi/media/F0;->a()Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-ne v4, v3, :cond_2

    .line 75
    .line 76
    iget-object v3, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 77
    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    check-cast v3, Lcom/inmobi/media/A5;

    .line 84
    .line 85
    const-string v1, "signaling Success"

    .line 86
    .line 87
    invoke-virtual {v3, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    invoke-virtual {p0, v0}, Lcom/inmobi/media/S0;->f(Lcom/inmobi/media/F0;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    return-void
.end method

.method public w()Lcom/inmobi/media/ec;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/S0;->w()Lcom/inmobi/media/ec;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lcom/inmobi/media/m6;->O:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->e()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-object v0
.end method
