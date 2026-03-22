.class public final Lcom/moloco/sdk/internal/publisher/m$e;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/m;->j(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.publisher.BannerViewImpl$listenToAdDisplayState$1$2"
    f = "Banner.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public synthetic i:Z

.field public final synthetic j:Lcom/moloco/sdk/internal/publisher/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moloco/sdk/internal/publisher/m<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic k:Lcom/moloco/sdk/internal/publisher/f0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moloco/sdk/internal/publisher/f0<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/publisher/m;Lcom/moloco/sdk/internal/publisher/f0;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/publisher/m<",
            "T",
            "L;",
            ">;",
            "Lcom/moloco/sdk/internal/publisher/f0<",
            "T",
            "L;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/publisher/m$e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/m$e;->j:Lcom/moloco/sdk/internal/publisher/m;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/m$e;->k:Lcom/moloco/sdk/internal/publisher/f0;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/m$e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/m$e;->j:Lcom/moloco/sdk/internal/publisher/m;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/m$e;->k:Lcom/moloco/sdk/internal/publisher/f0;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/moloco/sdk/internal/publisher/m$e;-><init>(Lcom/moloco/sdk/internal/publisher/m;Lcom/moloco/sdk/internal/publisher/f0;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput-boolean p1, v0, Lcom/moloco/sdk/internal/publisher/m$e;->i:Z

    .line 17
    .line 18
    return-object v0
.end method

.method public final i(ZLrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/m$e;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/moloco/sdk/internal/publisher/m$e;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/publisher/m$e;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    check-cast p2, Lrs/c;

    .line 8
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/publisher/m$e;->i(ZLrs/c;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/internal/publisher/m$e;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_5

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/moloco/sdk/internal/publisher/m$e;->i:Z

    .line 12
    .line 13
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/m$e;->j:Lcom/moloco/sdk/internal/publisher/m;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/m;->b(Lcom/moloco/sdk/internal/publisher/m;)Lcom/moloco/sdk/internal/publisher/f0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/f0;->n()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/m$e;->j:Lcom/moloco/sdk/internal/publisher/m;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/m;->b(Lcom/moloco/sdk/internal/publisher/m;)Lcom/moloco/sdk/internal/publisher/f0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/f0;->m()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/m$e;->j:Lcom/moloco/sdk/internal/publisher/m;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/moloco/sdk/internal/publisher/m;->n(Lcom/moloco/sdk/internal/publisher/m;)Lcom/moloco/sdk/internal/m;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/m;->b()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-static {v2}, Lcom/moloco/sdk/internal/n;->a(I)I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/m$e;->j:Lcom/moloco/sdk/internal/publisher/m;

    .line 54
    .line 55
    invoke-static {v3}, Lcom/moloco/sdk/internal/publisher/m;->n(Lcom/moloco/sdk/internal/publisher/m;)Lcom/moloco/sdk/internal/m;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/m;->a()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-static {v3}, Lcom/moloco/sdk/internal/n;->a(I)I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 68
    .line 69
    .line 70
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/m$e;->j:Lcom/moloco/sdk/internal/publisher/m;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/moloco/sdk/internal/publisher/m;->q(Lcom/moloco/sdk/internal/publisher/m;)I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .line 80
    .line 81
    :cond_0
    const/4 v0, 0x2

    .line 82
    const/4 v1, 0x0

    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/m$e;->j:Lcom/moloco/sdk/internal/publisher/m;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/moloco/sdk/internal/publisher/m;->s(Lcom/moloco/sdk/internal/publisher/m;)Lcom/moloco/sdk/acm/e;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_1

    .line 92
    .line 93
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/m$e;->j:Lcom/moloco/sdk/internal/publisher/m;

    .line 94
    .line 95
    invoke-static {v2}, Lcom/moloco/sdk/internal/publisher/m;->t(Lcom/moloco/sdk/internal/publisher/m;)Lcom/moloco/sdk/acm/recorder/a;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    sget-object v3, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 100
    .line 101
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 106
    .line 107
    const-string v5, "BANNER"

    .line 108
    .line 109
    invoke-virtual {v5, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    const-string/jumbo v5, "toLowerCase(...)"

    .line 114
    .line 115
    .line 116
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v3, v4}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-interface {v2, p1}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 124
    .line 125
    .line 126
    :cond_1
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/m$e;->j:Lcom/moloco/sdk/internal/publisher/m;

    .line 127
    .line 128
    invoke-static {p1}, Lcom/moloco/sdk/internal/publisher/m;->r(Lcom/moloco/sdk/internal/publisher/m;)Lcom/moloco/sdk/internal/publisher/c;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    if-eqz p1, :cond_4

    .line 133
    .line 134
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/m$e;->j:Lcom/moloco/sdk/internal/publisher/m;

    .line 135
    .line 136
    invoke-static {v2}, Lcom/moloco/sdk/internal/publisher/m;->m(Lcom/moloco/sdk/internal/publisher/m;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-static {v2, v1, v0, v1}, Lcom/moloco/sdk/publisher/MolocoAdKt;->createAdInfo$default(Ljava/lang/String;Ljava/lang/Float;ILjava/lang/Object;)Lcom/moloco/sdk/publisher/MolocoAd;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p1, v0}, Lcom/moloco/sdk/internal/publisher/c;->onAdShowSuccess(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_2
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/m$e;->j:Lcom/moloco/sdk/internal/publisher/m;

    .line 149
    .line 150
    invoke-static {p1}, Lcom/moloco/sdk/internal/publisher/m;->r(Lcom/moloco/sdk/internal/publisher/m;)Lcom/moloco/sdk/internal/publisher/c;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    if-eqz p1, :cond_3

    .line 155
    .line 156
    iget-object v2, p0, Lcom/moloco/sdk/internal/publisher/m$e;->j:Lcom/moloco/sdk/internal/publisher/m;

    .line 157
    .line 158
    invoke-static {v2}, Lcom/moloco/sdk/internal/publisher/m;->m(Lcom/moloco/sdk/internal/publisher/m;)Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-static {v2, v1, v0, v1}, Lcom/moloco/sdk/publisher/MolocoAdKt;->createAdInfo$default(Ljava/lang/String;Ljava/lang/Float;ILjava/lang/Object;)Lcom/moloco/sdk/publisher/MolocoAd;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p1, v0}, Lcom/moloco/sdk/internal/publisher/c;->onAdHidden(Lcom/moloco/sdk/publisher/MolocoAd;)V

    .line 167
    .line 168
    .line 169
    :cond_3
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/m$e;->k:Lcom/moloco/sdk/internal/publisher/f0;

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/publisher/f0;->a()Lkotlinx/coroutines/r;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    if-eqz p1, :cond_4

    .line 176
    .line 177
    const/4 v0, 0x1

    .line 178
    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    :cond_4
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 182
    .line 183
    return-object p1

    .line 184
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 185
    .line 186
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 187
    .line 188
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1
.end method
