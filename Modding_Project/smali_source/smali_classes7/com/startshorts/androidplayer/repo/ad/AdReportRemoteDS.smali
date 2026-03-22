.class public final Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS;
.super Ljava/lang/Object;
.source "AdReportRemoteDS.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p8

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$1;->j:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$1;->j:I

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$1;

    .line 24
    .line 25
    move-object v2, p0

    .line 26
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$1;-><init>(Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$1;->h:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v1, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$1;->j:I

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    if-ne v4, v5, :cond_1

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    check-cast v0, Lkotlin/Result;

    .line 46
    .line 47
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    invoke-static {v0, v4, v5, v6}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v4, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;

    .line 79
    .line 80
    const/4 v14, 0x0

    .line 81
    move-object v6, v4

    .line 82
    move-object/from16 v7, p1

    .line 83
    .line 84
    move-object/from16 v8, p2

    .line 85
    .line 86
    move-object/from16 v9, p3

    .line 87
    .line 88
    move-object/from16 v10, p4

    .line 89
    .line 90
    move/from16 v11, p5

    .line 91
    .line 92
    move/from16 v12, p6

    .line 93
    .line 94
    move-object/from16 v13, p7

    .line 95
    .line 96
    invoke-direct/range {v6 .. v14}, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Lrs/c;)V

    .line 97
    .line 98
    .line 99
    iput v5, v1, Lcom/startshorts/androidplayer/repo/ad/AdReportRemoteDS$adReport$1;->j:I

    .line 100
    .line 101
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-ne v0, v3, :cond_3

    .line 106
    .line 107
    return-object v3

    .line 108
    :cond_3
    :goto_1
    return-object v0
.end method
