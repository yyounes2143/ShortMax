.class public final Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;
.super Ljava/lang/Object;
.source "ShortsRemoteDS.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "Feed_Check_New_Test"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;->a:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic a(Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final b(IIZLjava/lang/Integer;Ljava/lang/Integer;Lrs/c;)Ljava/lang/Object;
    .locals 14
    .param p4    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIZ",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsListResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p6

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$1;->j:I

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
    iput v2, v1, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$1;->j:I

    .line 20
    .line 21
    move-object v10, p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$1;

    .line 24
    .line 25
    move-object v10, p0

    .line 26
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$1;-><init>(Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$1;->h:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v11

    .line 35
    iget v2, v1, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$1;->j:I

    .line 36
    .line 37
    const/4 v12, 0x1

    .line 38
    if-eqz v2, :cond_2

    .line 39
    .line 40
    if-ne v2, v12, :cond_1

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
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    new-instance v13, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;

    .line 73
    .line 74
    const/4 v9, 0x0

    .line 75
    move-object v2, v13

    .line 76
    move-object v3, p0

    .line 77
    move v4, p1

    .line 78
    move/from16 v5, p2

    .line 79
    .line 80
    move/from16 v6, p3

    .line 81
    .line 82
    move-object/from16 v7, p4

    .line 83
    .line 84
    move-object/from16 v8, p5

    .line 85
    .line 86
    invoke-direct/range {v2 .. v9}, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$2;-><init>(Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS;IIZLjava/lang/Integer;Ljava/lang/Integer;Lrs/c;)V

    .line 87
    .line 88
    .line 89
    iput v12, v1, Lcom/startshorts/androidplayer/repo/shorts/ShortsRemoteDS$fetch$1;->j:I

    .line 90
    .line 91
    invoke-virtual {v0, v13, v1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-ne v0, v11, :cond_3

    .line 96
    .line 97
    return-object v11

    .line 98
    :cond_3
    :goto_1
    return-object v0
.end method
