.class public final Lcom/moloco/sdk/internal/publisher/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/publisher/o$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/moloco/sdk/internal/publisher/o$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/moloco/sdk/internal/ortb/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/publisher/k0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/o$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/publisher/o$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/publisher/o;->c:Lcom/moloco/sdk/internal/publisher/o$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/ortb/a;Lcom/moloco/sdk/internal/publisher/k0;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/ortb/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/publisher/k0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bidResponseParser"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "bidProcessor"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/o;->a:Lcom/moloco/sdk/internal/ortb/a;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/o;->b:Lcom/moloco/sdk/internal/publisher/k0;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic a(Lcom/moloco/sdk/internal/publisher/o;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/moloco/sdk/internal/publisher/o;->d(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/internal/ortb/model/c;",
            "Lcom/moloco/sdk/internal/c0;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/moloco/sdk/internal/publisher/o$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/moloco/sdk/internal/publisher/o$b;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/internal/publisher/o$b;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/moloco/sdk/internal/publisher/o$b;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/publisher/o$b;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/moloco/sdk/internal/publisher/o$b;-><init>(Lcom/moloco/sdk/internal/publisher/o;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/moloco/sdk/internal/publisher/o$b;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/internal/publisher/o$b;->l:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p1

    .line 53
    :cond_2
    iget-object p1, v0, Lcom/moloco/sdk/internal/publisher/o$b;->i:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Ljava/lang/String;

    .line 56
    .line 57
    iget-object p2, v0, Lcom/moloco/sdk/internal/publisher/o$b;->h:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p2, Lcom/moloco/sdk/internal/publisher/o;

    .line 60
    .line 61
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    sget-object v5, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 69
    .line 70
    new-instance p3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v2, "parse() called with bidResponseJson: "

    .line 76
    .line 77
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    const/4 v9, 0x4

    .line 88
    const/4 v10, 0x0

    .line 89
    const-string v6, "BidLoader"

    .line 90
    .line 91
    const/4 v8, 0x0

    .line 92
    invoke-static/range {v5 .. v10}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iput-object p0, v0, Lcom/moloco/sdk/internal/publisher/o$b;->h:Ljava/lang/Object;

    .line 96
    .line 97
    iput-object p1, v0, Lcom/moloco/sdk/internal/publisher/o$b;->i:Ljava/lang/Object;

    .line 98
    .line 99
    iput v4, v0, Lcom/moloco/sdk/internal/publisher/o$b;->l:I

    .line 100
    .line 101
    invoke-virtual {p0, p2, v0}, Lcom/moloco/sdk/internal/publisher/o;->c(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    if-ne p3, v1, :cond_4

    .line 106
    .line 107
    return-object v1

    .line 108
    :cond_4
    move-object p2, p0

    .line 109
    :goto_1
    check-cast p3, Ljava/lang/String;

    .line 110
    .line 111
    if-nez p3, :cond_5

    .line 112
    .line 113
    sget-object p2, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->AD_BID_PARSE_ERROR:Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    .line 114
    .line 115
    sget-object p3, Lcom/moloco/sdk/internal/o;->b:Lcom/moloco/sdk/internal/o;

    .line 116
    .line 117
    invoke-static {p1, p2, p3}, Lcom/moloco/sdk/internal/d0;->a(Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)Lcom/moloco/sdk/internal/c0;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    new-instance p2, Lcom/moloco/sdk/internal/g0$a;

    .line 122
    .line 123
    invoke-direct {p2, p1}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    return-object p2

    .line 127
    :cond_5
    sget-object v4, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 128
    .line 129
    const/16 v9, 0xc

    .line 130
    .line 131
    const/4 v10, 0x0

    .line 132
    const-string v5, "BidLoader"

    .line 133
    .line 134
    const-string v6, "Processed the bidResponse, proceeding with parsing it."

    .line 135
    .line 136
    const/4 v7, 0x0

    .line 137
    const/4 v8, 0x0

    .line 138
    invoke-static/range {v4 .. v10}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    const/4 v2, 0x0

    .line 142
    iput-object v2, v0, Lcom/moloco/sdk/internal/publisher/o$b;->h:Ljava/lang/Object;

    .line 143
    .line 144
    iput-object v2, v0, Lcom/moloco/sdk/internal/publisher/o$b;->i:Ljava/lang/Object;

    .line 145
    .line 146
    iput v3, v0, Lcom/moloco/sdk/internal/publisher/o$b;->l:I

    .line 147
    .line 148
    invoke-virtual {p2, p3, p1, v0}, Lcom/moloco/sdk/internal/publisher/o;->d(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p3

    .line 152
    if-ne p3, v1, :cond_6

    .line 153
    .line 154
    return-object v1

    .line 155
    :cond_6
    :goto_2
    return-object p3
.end method

.method public final c(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/moloco/sdk/internal/publisher/o$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/moloco/sdk/internal/publisher/o$d;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/internal/publisher/o$d;->k:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/moloco/sdk/internal/publisher/o$d;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/publisher/o$d;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/moloco/sdk/internal/publisher/o$d;-><init>(Lcom/moloco/sdk/internal/publisher/o;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/moloco/sdk/internal/publisher/o$d;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/internal/publisher/o$d;->k:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/moloco/sdk/internal/publisher/o$d;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p0, Lcom/moloco/sdk/internal/publisher/o;->b:Lcom/moloco/sdk/internal/publisher/k0;

    .line 58
    .line 59
    iput-object p1, v0, Lcom/moloco/sdk/internal/publisher/o$d;->h:Ljava/lang/Object;

    .line 60
    .line 61
    iput v3, v0, Lcom/moloco/sdk/internal/publisher/o$d;->k:I

    .line 62
    .line 63
    invoke-interface {p2, p1, v0}, Lcom/moloco/sdk/internal/publisher/k0;->b(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    if-ne p2, v1, :cond_3

    .line 68
    .line 69
    return-object v1

    .line 70
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/String;

    .line 71
    .line 72
    if-eqz p2, :cond_4

    .line 73
    .line 74
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 75
    .line 76
    const/16 v5, 0xc

    .line 77
    .line 78
    const/4 v6, 0x0

    .line 79
    const-string v1, "BidLoader"

    .line 80
    .line 81
    const-string v2, "Found no pre-preprocessor for the current mediation. Returning the original bid response."

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    const/4 v4, 0x0

    .line 85
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    return-object p2

    .line 89
    :cond_4
    return-object p1
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/internal/ortb/model/c;",
            "Lcom/moloco/sdk/internal/c0;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/moloco/sdk/internal/publisher/o$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/moloco/sdk/internal/publisher/o$c;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/internal/publisher/o$c;->k:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/moloco/sdk/internal/publisher/o$c;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/publisher/o$c;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/moloco/sdk/internal/publisher/o$c;-><init>(Lcom/moloco/sdk/internal/publisher/o;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/moloco/sdk/internal/publisher/o$c;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/internal/publisher/o$c;->k:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lcom/moloco/sdk/internal/publisher/o$c;->h:Ljava/lang/Object;

    .line 39
    .line 40
    move-object p2, p1

    .line 41
    check-cast p2, Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object p3, p0, Lcom/moloco/sdk/internal/publisher/o;->a:Lcom/moloco/sdk/internal/ortb/a;

    .line 59
    .line 60
    iput-object p2, v0, Lcom/moloco/sdk/internal/publisher/o$c;->h:Ljava/lang/Object;

    .line 61
    .line 62
    iput v3, v0, Lcom/moloco/sdk/internal/publisher/o$c;->k:I

    .line 63
    .line 64
    invoke-interface {p3, p1, v0}, Lcom/moloco/sdk/internal/ortb/a;->b(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    if-ne p3, v1, :cond_3

    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_3
    :goto_1
    check-cast p3, Lcom/moloco/sdk/internal/g0;

    .line 72
    .line 73
    instance-of p1, p3, Lcom/moloco/sdk/internal/g0$a;

    .line 74
    .line 75
    if-eqz p1, :cond_4

    .line 76
    .line 77
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 78
    .line 79
    check-cast p3, Lcom/moloco/sdk/internal/g0$a;

    .line 80
    .line 81
    invoke-virtual {p3}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    move-object v3, p1

    .line 86
    check-cast v3, Ljava/lang/Throwable;

    .line 87
    .line 88
    const/16 v5, 0x8

    .line 89
    .line 90
    const/4 v6, 0x0

    .line 91
    const-string v1, "BidLoader"

    .line 92
    .line 93
    const-string v2, "parseBidResponse failed to parse BID json string."

    .line 94
    .line 95
    const/4 v4, 0x0

    .line 96
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    sget-object p1, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->AD_BID_PARSE_ERROR:Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    .line 100
    .line 101
    sget-object p3, Lcom/moloco/sdk/internal/o;->c:Lcom/moloco/sdk/internal/o;

    .line 102
    .line 103
    invoke-static {p2, p1, p3}, Lcom/moloco/sdk/internal/d0;->a(Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)Lcom/moloco/sdk/internal/c0;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    new-instance p2, Lcom/moloco/sdk/internal/g0$a;

    .line 108
    .line 109
    invoke-direct {p2, p1}, Lcom/moloco/sdk/internal/g0$a;-><init>(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_4
    instance-of p1, p3, Lcom/moloco/sdk/internal/g0$b;

    .line 114
    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    new-instance p2, Lcom/moloco/sdk/internal/g0$b;

    .line 118
    .line 119
    check-cast p3, Lcom/moloco/sdk/internal/g0$b;

    .line 120
    .line 121
    invoke-virtual {p3}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Lcom/moloco/sdk/internal/ortb/model/e;

    .line 126
    .line 127
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/ortb/model/e;->c()Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    const/4 p3, 0x0

    .line 132
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    check-cast p1, Lcom/moloco/sdk/internal/ortb/model/s;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/ortb/model/s;->c()Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-direct {p2, p1}, Lcom/moloco/sdk/internal/g0$b;-><init>(Ljava/lang/Object;)V

    .line 147
    .line 148
    .line 149
    :goto_2
    return-object p2

    .line 150
    :cond_5
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 151
    .line 152
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 153
    .line 154
    .line 155
    throw p1
.end method
