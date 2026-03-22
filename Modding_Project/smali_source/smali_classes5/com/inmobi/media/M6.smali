.class public final Lcom/inmobi/media/M6;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic i:I


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/inmobi/media/N6;

.field public final c:Lcom/inmobi/media/e2;

.field public final d:Lcom/inmobi/media/Ub;

.field public final e:Lcom/inmobi/media/X1;

.field public final f:Lcom/inmobi/media/S6;

.field public final g:Lcom/inmobi/media/z5;

.field public h:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/media/N6;Lcom/inmobi/media/e2;Lcom/inmobi/media/Ub;Lcom/inmobi/media/yb;Lcom/inmobi/media/S6;Lcom/inmobi/media/z5;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "landingPageState"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "redirectionValidator"

    .line 12
    .line 13
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/inmobi/media/M6;->a:Landroid/content/Context;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/inmobi/media/M6;->b:Lcom/inmobi/media/N6;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/inmobi/media/M6;->c:Lcom/inmobi/media/e2;

    .line 24
    .line 25
    iput-object p4, p0, Lcom/inmobi/media/M6;->d:Lcom/inmobi/media/Ub;

    .line 26
    .line 27
    check-cast p5, Lcom/inmobi/media/X1;

    .line 28
    .line 29
    iput-object p5, p0, Lcom/inmobi/media/M6;->e:Lcom/inmobi/media/X1;

    .line 30
    .line 31
    iput-object p6, p0, Lcom/inmobi/media/M6;->f:Lcom/inmobi/media/S6;

    .line 32
    .line 33
    iput-object p7, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    .line 34
    .line 35
    return-void
.end method

.method public static a(Lcom/inmobi/media/M6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;ZI)Lcom/inmobi/media/K6;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    and-int/lit8 v4, p6, 0x8

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    move-object v4, v5

    goto :goto_0

    :cond_0
    move-object/from16 v4, p4

    :goto_0
    and-int/lit8 v6, p6, 0x10

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    move v6, v7

    goto :goto_1

    :cond_1
    move/from16 v6, p5

    .line 1
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string v8, "api"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v8, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    const-string v9, "TAG"

    const-string v10, "M6"

    if-eqz v8, :cond_2

    .line 4
    const-string v11, "processing URL - "

    invoke-static {v10, v9, v11, v3}, Lcom/inmobi/media/I6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 5
    check-cast v8, Lcom/inmobi/media/A5;

    invoke-virtual {v8, v10, v11}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v8, 0x1

    if-nez v4, :cond_4

    .line 6
    iget-object v4, v0, Lcom/inmobi/media/M6;->f:Lcom/inmobi/media/S6;

    if-eqz v4, :cond_3

    .line 7
    iget-object v11, v0, Lcom/inmobi/media/M6;->b:Lcom/inmobi/media/N6;

    .line 8
    iget-boolean v11, v11, Lcom/inmobi/media/N6;->a:Z

    if-nez v11, :cond_3

    if-nez v6, :cond_3

    .line 9
    new-instance v6, Lcom/inmobi/media/R6;

    invoke-static/range {p3 .. p3}, Lcom/inmobi/media/J6;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iget v12, v0, Lcom/inmobi/media/M6;->h:I

    add-int/2addr v12, v8

    iput v12, v0, Lcom/inmobi/media/M6;->h:I

    const/16 v13, 0x8

    invoke-direct {v6, v4, v11, v12, v13}, Lcom/inmobi/media/R6;-><init>(Lcom/inmobi/media/S6;Ljava/lang/String;II)V

    move-object v4, v6

    goto :goto_2

    :cond_3
    move-object v4, v5

    .line 10
    :cond_4
    :goto_2
    sget-object v6, Lcom/inmobi/media/F6;->d:Lcom/inmobi/media/F6;

    .line 11
    const-string v11, "funnelState"

    invoke-static {v6, v11, v0}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v12

    .line 12
    invoke-static {v6, v4, v5, v12}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    const/4 v6, 0x3

    if-eqz v3, :cond_2d

    .line 13
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_5

    goto/16 :goto_d

    .line 14
    :cond_5
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 15
    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_2b

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_6

    goto/16 :goto_c

    .line 16
    :cond_6
    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v14, "inmobinativebrowser"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 17
    iget-object v5, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v5, :cond_7

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/inmobi/media/A5;

    const-string v6, "inmobi native browser scheme"

    invoke-virtual {v5, v10, v6}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_7
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inmobi/media/M6;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)Lcom/inmobi/media/K6;

    move-result-object v0

    goto/16 :goto_e

    .line 19
    :cond_8
    invoke-virtual {v13}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    const-string v14, "inmobideeplink"

    invoke-static {v6, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 20
    iget-object v5, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v5, :cond_9

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/inmobi/media/A5;

    const-string v6, "inmobi deeplink scheme"

    invoke-virtual {v5, v10, v6}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_9
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inmobi/media/M6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)Lcom/inmobi/media/K6;

    move-result-object v0

    goto/16 :goto_e

    .line 22
    :cond_a
    iget-object v6, v0, Lcom/inmobi/media/M6;->a:Landroid/content/Context;

    iget-object v14, v0, Lcom/inmobi/media/M6;->e:Lcom/inmobi/media/X1;

    iget-object v15, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    invoke-static {v6, v3, v14, v1, v15}, Lcom/inmobi/media/l1;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/yb;Ljava/lang/String;Lcom/inmobi/media/z5;)Z

    move-result v6

    .line 23
    iget-object v14, v0, Lcom/inmobi/media/M6;->a:Landroid/content/Context;

    iget-object v15, v0, Lcom/inmobi/media/M6;->e:Lcom/inmobi/media/X1;

    iget-object v12, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    invoke-static {v3, v14, v15, v12}, Lcom/inmobi/media/C3;->a(Ljava/lang/String;Landroid/content/Context;Lcom/inmobi/media/yb;Lcom/inmobi/media/z5;)Z

    move-result v12

    or-int/2addr v6, v12

    const-string v12, "EX_NATIVE"

    if-eqz v6, :cond_d

    .line 24
    iget-object v6, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v6, :cond_b

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/inmobi/media/A5;

    const-string v7, "appstore link"

    invoke-virtual {v6, v10, v7}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_b
    invoke-virtual/range {p0 .. p3}, Lcom/inmobi/media/M6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_c

    goto :goto_3

    .line 26
    :cond_c
    iput-object v12, v4, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 27
    :goto_3
    sget-object v1, Lcom/inmobi/media/F6;->f:Lcom/inmobi/media/F6;

    .line 28
    invoke-static {v1, v11, v0}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v0

    .line 29
    invoke-static {v1, v4, v5, v0}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 30
    new-instance v0, Lcom/inmobi/media/K6;

    invoke-direct {v0, v8}, Lcom/inmobi/media/K6;-><init>(I)V

    goto/16 :goto_e

    .line 31
    :cond_d
    invoke-static {v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v13}, Lcom/inmobi/media/z2;->a(Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_25

    .line 32
    iget-object v6, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v6, :cond_e

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/inmobi/media/A5;

    const-string v13, "http link"

    invoke-virtual {v6, v10, v13}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_e
    iget-object v6, v0, Lcom/inmobi/media/M6;->b:Lcom/inmobi/media/N6;

    .line 34
    iget-boolean v13, v6, Lcom/inmobi/media/N6;->a:Z

    if-eqz v13, :cond_f

    .line 35
    new-instance v0, Lcom/inmobi/media/K6;

    invoke-direct {v0, v7}, Lcom/inmobi/media/K6;-><init>(I)V

    goto/16 :goto_e

    .line 36
    :cond_f
    iget-object v6, v6, Lcom/inmobi/media/N6;->b:Ljava/lang/String;

    .line 37
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v13

    const v14, -0x79209ddf

    if-eq v13, v14, :cond_1d

    const v14, -0x29e166dd

    if-eq v13, v14, :cond_16

    const v5, 0x6b8cfcb

    if-eq v13, v5, :cond_11

    const v5, 0x18649471

    if-eq v13, v5, :cond_10

    goto/16 :goto_6

    :cond_10
    const-string v5, "IN_NATIVE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    goto/16 :goto_6

    :cond_11
    const-string v5, "IN_CUSTOM"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_12

    goto/16 :goto_6

    .line 38
    :cond_12
    iget-object v2, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_13

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/A5;

    const-string v5, "open internal custom"

    invoke-virtual {v2, v10, v5}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_13
    iget-object v2, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_14

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/inmobi/media/A5;

    const-string v5, "In processOpenInternalCustomRequest"

    invoke-virtual {v2, v10, v5}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_14
    invoke-virtual {v0, v3, v1, v4}, Lcom/inmobi/media/M6;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)I

    move-result v7

    if-eqz v7, :cond_15

    if-ne v7, v8, :cond_21

    .line 41
    :cond_15
    iget-object v1, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_21

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v2, "Internal Custom handled successfully"

    invoke-virtual {v1, v10, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 42
    :cond_16
    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_17

    goto :goto_6

    .line 43
    :cond_17
    iget-object v6, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v6, :cond_18

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/inmobi/media/A5;

    const-string v13, "open external native"

    invoke-virtual {v6, v10, v13}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    :cond_18
    iget-object v6, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v6, :cond_19

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/inmobi/media/A5;

    const-string v13, "In processOpenExternalNativeRequest"

    invoke-virtual {v6, v10, v13}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_19
    iget-object v6, v0, Lcom/inmobi/media/M6;->a:Landroid/content/Context;

    iget-object v13, v0, Lcom/inmobi/media/M6;->e:Lcom/inmobi/media/X1;

    iget-object v14, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    invoke-static {v6, v3, v13, v1, v14}, Lcom/inmobi/media/C3;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/yb;Ljava/lang/String;Lcom/inmobi/media/z5;)I

    move-result v6

    if-eqz v6, :cond_1b

    if-ne v6, v8, :cond_1a

    goto :goto_4

    .line 46
    :cond_1a
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inmobi/media/M6;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)I

    move-result v7

    goto :goto_7

    :cond_1b
    :goto_4
    if-nez v4, :cond_1c

    goto :goto_5

    .line 47
    :cond_1c
    iput-object v12, v4, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 48
    :goto_5
    sget-object v6, Lcom/inmobi/media/F6;->f:Lcom/inmobi/media/F6;

    .line 49
    invoke-static {v6, v11, v0}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v12

    .line 50
    invoke-static {v6, v4, v5, v12}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 51
    invoke-virtual/range {p0 .. p3}, Lcom/inmobi/media/M6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v1, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_21

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v2, "External Native handled successfully"

    invoke-virtual {v1, v10, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 53
    :cond_1d
    const-string v5, "DEFAULT"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 54
    :goto_6
    iget-object v5, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v5, :cond_1e

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/inmobi/media/A5;

    const-string v6, "invalid scheme - open internal native"

    invoke-virtual {v5, v10, v6}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_1e
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inmobi/media/M6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)I

    move-result v7

    goto :goto_7

    .line 56
    :cond_1f
    iget-object v5, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v5, :cond_20

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/inmobi/media/A5;

    const-string v6, "default - internal native"

    invoke-virtual {v5, v10, v6}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_20
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/inmobi/media/M6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)I

    move-result v7

    :cond_21
    :goto_7
    if-eqz v7, :cond_24

    if-ne v7, v8, :cond_22

    goto :goto_9

    :cond_22
    if-nez v4, :cond_23

    goto :goto_8

    .line 58
    :cond_23
    iget-object v1, v0, Lcom/inmobi/media/M6;->b:Lcom/inmobi/media/N6;

    .line 59
    iget-object v1, v1, Lcom/inmobi/media/N6;->b:Ljava/lang/String;

    .line 60
    iput-object v1, v4, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 61
    :goto_8
    sget-object v1, Lcom/inmobi/media/F6;->g:Lcom/inmobi/media/F6;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 62
    invoke-static {v1, v11, v0}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v0

    .line 63
    invoke-static {v1, v4, v2, v0}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 64
    new-instance v0, Lcom/inmobi/media/K6;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/inmobi/media/K6;-><init>(ILjava/lang/Integer;)V

    goto/16 :goto_e

    .line 65
    :cond_24
    :goto_9
    new-instance v0, Lcom/inmobi/media/K6;

    invoke-direct {v0, v8}, Lcom/inmobi/media/K6;-><init>(I)V

    goto/16 :goto_e

    .line 66
    :cond_25
    iget-object v6, v0, Lcom/inmobi/media/M6;->a:Landroid/content/Context;

    iget-object v7, v0, Lcom/inmobi/media/M6;->e:Lcom/inmobi/media/X1;

    iget-object v13, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    invoke-static {v6, v3, v7, v1, v13}, Lcom/inmobi/media/C3;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/yb;Ljava/lang/String;Lcom/inmobi/media/z5;)I

    move-result v6

    if-nez v4, :cond_26

    goto :goto_a

    .line 67
    :cond_26
    iput-object v12, v4, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    :goto_a
    if-eqz v6, :cond_29

    if-ne v6, v8, :cond_27

    goto :goto_b

    .line 68
    :cond_27
    iget-object v5, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v5, :cond_28

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/inmobi/media/A5;

    const-string v7, "In processOpenRequest else"

    invoke-virtual {v5, v10, v7}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_28
    invoke-virtual/range {p0 .. p3}, Lcom/inmobi/media/M6;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    sget-object v1, Lcom/inmobi/media/F6;->g:Lcom/inmobi/media/F6;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 71
    invoke-static {v1, v11, v0}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v0

    .line 72
    invoke-static {v1, v4, v2, v0}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 73
    new-instance v0, Lcom/inmobi/media/K6;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/inmobi/media/K6;-><init>(ILjava/lang/Integer;)V

    goto :goto_e

    .line 74
    :cond_29
    :goto_b
    sget-object v6, Lcom/inmobi/media/F6;->f:Lcom/inmobi/media/F6;

    .line 75
    invoke-static {v6, v11, v0}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v7

    .line 76
    invoke-static {v6, v4, v5, v7}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 77
    invoke-virtual/range {p0 .. p3}, Lcom/inmobi/media/M6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    iget-object v0, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_2a

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "Deeplink url handled successfully"

    invoke-virtual {v0, v10, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_2a
    new-instance v0, Lcom/inmobi/media/K6;

    invoke-direct {v0, v8}, Lcom/inmobi/media/K6;-><init>(I)V

    goto :goto_e

    .line 80
    :cond_2b
    :goto_c
    iget-object v5, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v5, :cond_2c

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/inmobi/media/A5;

    const-string v7, "url scheme is empty"

    invoke-virtual {v5, v10, v7}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_2c
    sget-object v5, Lcom/inmobi/media/F6;->e:Lcom/inmobi/media/F6;

    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 82
    invoke-static {v5, v11, v0}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v9

    .line 83
    invoke-static {v5, v4, v8, v9}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 84
    invoke-virtual/range {p0 .. p3}, Lcom/inmobi/media/M6;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/inmobi/media/K6;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lcom/inmobi/media/K6;-><init>(ILjava/lang/Integer;)V

    goto :goto_e

    .line 86
    :cond_2d
    :goto_d
    iget-object v5, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v5, :cond_2e

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcom/inmobi/media/A5;

    const-string v7, "url is empty"

    invoke-virtual {v5, v10, v7}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    :cond_2e
    sget-object v5, Lcom/inmobi/media/F6;->e:Lcom/inmobi/media/F6;

    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 88
    invoke-static {v5, v11, v0}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v9

    .line 89
    invoke-static {v5, v4, v8, v9}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 90
    invoke-virtual/range {p0 .. p3}, Lcom/inmobi/media/M6;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    new-instance v0, Lcom/inmobi/media/K6;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v6, v1}, Lcom/inmobi/media/K6;-><init>(ILjava/lang/Integer;)V

    :goto_e
    return-object v0
.end method

.method public static final a(Lcom/inmobi/media/M6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;Ljava/lang/Exception;)V
    .locals 4

    .line 226
    iget-object v0, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 227
    const-string v1, "TAG"

    const-string v2, "Error message in processing openExternal: "

    const-string v3, "M6"

    invoke-static {v3, v1, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p5, v1}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p5

    .line 228
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v3, p5}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    iget-object p5, p0, Lcom/inmobi/media/M6;->d:Lcom/inmobi/media/Ub;

    if-eqz p5, :cond_1

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot resolve URI ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 231
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, v1

    .line 233
    :catch_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 234
    const-string v0, "message"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 235
    iget-object p5, p5, Lcom/inmobi/media/Ub;->a:Lcom/inmobi/media/ec;

    const-string v0, "openExternal"

    invoke-virtual {p5, p1, p2, v0}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p3, :cond_2

    const/4 p2, 0x0

    .line 236
    invoke-virtual {p0, p1, p3, p2, p4}, Lcom/inmobi/media/M6;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)I
    .locals 12

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p3, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    const-string p2, "IN_CUSTOM"

    .line 190
    iput-object p2, p3, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 191
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v0, 0x2

    const-string v1, "funnelState"

    const-string v2, "TAG"

    const-string v3, "M6"

    const/4 v4, 0x0

    if-nez p2, :cond_2

    .line 192
    iget-object p1, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_1

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string p2, "processOpenEmbeddedRequest failed due to empty URL"

    invoke-virtual {p1, v3, p2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1
    sget-object p1, Lcom/inmobi/media/F6;->e:Lcom/inmobi/media/F6;

    .line 194
    invoke-static {p1, v1, p0}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object p2

    .line 195
    invoke-static {p1, p3, v4, p2}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    return v0

    .line 196
    :cond_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v5, "Uri.parse(this)"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    invoke-static {p2}, Lcom/inmobi/media/z2;->a(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 198
    new-instance p2, Landroid/content/Intent;

    iget-object v2, p0, Lcom/inmobi/media/M6;->a:Landroid/content/Context;

    const-class v3, Lcom/inmobi/ads/rendering/InMobiAdActivity;

    invoke-direct {p2, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    const-string v2, "com.inmobi.ads.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v3, 0x64

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 200
    const-string v2, "com.inmobi.ads.rendering.InMobiAdActivity.IN_APP_BROWSER_URL"

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    iget-object v2, p0, Lcom/inmobi/media/M6;->e:Lcom/inmobi/media/X1;

    invoke-interface {v2}, Lcom/inmobi/media/yb;->getViewTouchTimestamp()J

    move-result-wide v2

    const-string v5, "viewTouchTimestamp"

    invoke-virtual {p2, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p3, :cond_3

    .line 202
    iget-object v7, p3, Lcom/inmobi/media/R6;->a:Lcom/inmobi/media/S6;

    iget-object v8, p3, Lcom/inmobi/media/R6;->b:Ljava/lang/String;

    iget v9, p3, Lcom/inmobi/media/R6;->c:I

    iget-wide v10, p3, Lcom/inmobi/media/R6;->d:J

    .line 203
    const-string v2, "landingPageTelemetryMetaData"

    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "urlType"

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/inmobi/media/R6;

    move-object v6, v2

    invoke-direct/range {v6 .. v11}, Lcom/inmobi/media/R6;-><init>(Lcom/inmobi/media/S6;Ljava/lang/String;IJ)V

    .line 204
    sget-object v3, Lcom/inmobi/media/F6;->d:Lcom/inmobi/media/F6;

    .line 205
    iput v0, v2, Lcom/inmobi/media/R6;->f:I

    .line 206
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_1

    :cond_3
    move-object v2, v4

    :goto_1
    const-string v0, "lpTelemetryControlInfo"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 207
    iget-object v0, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_4

    .line 208
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    sget-object v3, Lcom/inmobi/media/m5;->a:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "key"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "obj"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    sget-object v5, Lcom/inmobi/media/m5;->a:Ljava/util/HashMap;

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "loggerCacheKey"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    :cond_4
    iget-object v0, p0, Lcom/inmobi/media/M6;->d:Lcom/inmobi/media/Ub;

    if-eqz v0, :cond_5

    .line 213
    const-string v2, "intent"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    iget-object v2, v0, Lcom/inmobi/media/Ub;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v2}, Lcom/inmobi/media/ec;->getCreativeId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "creativeId"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    iget-object v2, v0, Lcom/inmobi/media/Ub;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v2}, Lcom/inmobi/media/ec;->getImpressionId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "impressionId"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 216
    iget-object v2, v0, Lcom/inmobi/media/Ub;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v2}, Lcom/inmobi/media/ec;->getPlacementId()J

    move-result-wide v2

    const-string v5, "placementId"

    invoke-virtual {p2, v5, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 217
    sget-object v2, Lcom/inmobi/ads/rendering/InMobiAdActivity;->k:Landroid/util/SparseArray;

    iget-object v0, v0, Lcom/inmobi/media/Ub;->a:Lcom/inmobi/media/ec;

    .line 218
    sput-object v0, Lcom/inmobi/ads/rendering/InMobiAdActivity;->l:Lcom/inmobi/media/ec;

    .line 219
    sget-object v2, Lcom/inmobi/media/Uc;->a:Lcom/inmobi/media/Uc;

    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getContainerContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0, p2}, Lcom/inmobi/media/Uc;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 220
    :cond_5
    sget-object p2, Lcom/inmobi/media/F6;->f:Lcom/inmobi/media/F6;

    .line 221
    invoke-static {p2, v1, p0}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v0

    .line 222
    invoke-static {p2, p3, v4, v0}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 223
    iget-object p2, p0, Lcom/inmobi/media/M6;->d:Lcom/inmobi/media/Ub;

    if-eqz p2, :cond_6

    .line 224
    iget-object p2, p2, Lcom/inmobi/media/Ub;->a:Lcom/inmobi/media/ec;

    invoke-static {p2, v4, v4, p1}, Lcom/inmobi/media/ec;->a(Lcom/inmobi/media/ec;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const/4 p1, 0x1

    goto :goto_2

    .line 225
    :cond_7
    iget-object p2, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz p2, :cond_8

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "Embedded request unable to handle "

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    check-cast p2, Lcom/inmobi/media/A5;

    invoke-virtual {p2, v3, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    const/16 p1, 0xa

    :goto_2
    return p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    .line 175
    iget-object v0, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    const-string v2, "M6"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "inMobiDeepLinkSchemeUrlHandled - url - "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " trackingUrl "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_c

    .line 176
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_4

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/M6;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/inmobi/media/M6;->e:Lcom/inmobi/media/X1;

    iget-object v4, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    invoke-static {p2, v0, v3, v4}, Lcom/inmobi/media/C3;->a(Ljava/lang/String;Landroid/content/Context;Lcom/inmobi/media/yb;Lcom/inmobi/media/z5;)Z

    move-result v0

    const/4 v3, 0x0

    const-string v4, "InMobiDeepLinkScheme scheme applink/http url handled successfully"

    const-string v5, "InMobiDeepLinkScheme scheme tracking url handling is invalid "

    const/4 v6, 0x1

    if-eqz v0, :cond_5

    .line 178
    invoke-static {p3}, Lcom/inmobi/media/B2;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 179
    sget-object p1, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/x2;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    invoke-virtual {p1, p3, v6, p2}, Lcom/inmobi/media/x2;->a(Ljava/lang/String;ZLcom/inmobi/media/z5;)V

    goto :goto_0

    .line 180
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_3

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v2, v5}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_4

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v2, v4}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v3

    .line 182
    :cond_5
    iget-object v0, p0, Lcom/inmobi/media/M6;->a:Landroid/content/Context;

    iget-object v7, p0, Lcom/inmobi/media/M6;->e:Lcom/inmobi/media/X1;

    iget-object v8, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    invoke-static {v0, p2, v7, p1, v8}, Lcom/inmobi/media/C3;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/yb;Ljava/lang/String;Lcom/inmobi/media/z5;)I

    move-result p1

    if-eqz p1, :cond_8

    if-ne p1, v6, :cond_6

    goto :goto_1

    .line 183
    :cond_6
    iget-object p2, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz p2, :cond_7

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/inmobi/media/A5;

    const-string p3, "InMobiDeepLinkScheme scheme applink/http url handling failed"

    invoke-virtual {p2, v2, p3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    move v3, p1

    goto :goto_3

    .line 184
    :cond_8
    :goto_1
    invoke-static {p3}, Lcom/inmobi/media/B2;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 185
    sget-object p1, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/x2;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    invoke-virtual {p1, p3, v6, p2}, Lcom/inmobi/media/x2;->a(Ljava/lang/String;ZLcom/inmobi/media/z5;)V

    goto :goto_2

    .line 186
    :cond_9
    iget-object p1, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_a

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v2, v5}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_a
    :goto_2
    iget-object p1, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_b

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v2, v4}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_3
    return v3

    .line 188
    :cond_c
    :goto_4
    iget-object p1, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_d

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string p2, "InMobiDeepLinkScheme url is Empty or null"

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const/4 p1, 0x2

    return p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;Lcom/inmobi/media/i2;)I
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    const-string v0, "api"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v14, 0x1

    const-string v15, "funnelState"

    if-eqz v11, :cond_0

    .line 92
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v3, v14

    move-object v2, v15

    goto/16 :goto_9

    .line 93
    :cond_1
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 94
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const/16 v17, 0x4

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move-object v2, v15

    goto/16 :goto_8

    .line 95
    :cond_3
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "inmobinativebrowser"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    invoke-virtual/range {p0 .. p4}, Lcom/inmobi/media/M6;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)Lcom/inmobi/media/K6;

    :cond_4
    :goto_0
    const/4 v13, 0x2

    goto/16 :goto_7

    .line 97
    :cond_5
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "inmobideeplink"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 98
    invoke-virtual/range {p0 .. p4}, Lcom/inmobi/media/M6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)Lcom/inmobi/media/K6;

    move-result-object v0

    .line 99
    iget v0, v0, Lcom/inmobi/media/K6;->a:I

    if-ne v0, v14, :cond_12

    goto :goto_0

    .line 100
    :cond_6
    iget-object v0, v1, Lcom/inmobi/media/M6;->a:Landroid/content/Context;

    iget-object v2, v1, Lcom/inmobi/media/M6;->e:Lcom/inmobi/media/X1;

    iget-object v3, v1, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    invoke-static {v0, v11, v2, v10, v3}, Lcom/inmobi/media/l1;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/yb;Ljava/lang/String;Lcom/inmobi/media/z5;)Z

    move-result v0

    .line 101
    iget-object v2, v1, Lcom/inmobi/media/M6;->a:Landroid/content/Context;

    iget-object v3, v1, Lcom/inmobi/media/M6;->e:Lcom/inmobi/media/X1;

    iget-object v4, v1, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    invoke-static {v11, v2, v3, v4}, Lcom/inmobi/media/C3;->a(Ljava/lang/String;Landroid/content/Context;Lcom/inmobi/media/yb;Lcom/inmobi/media/z5;)Z

    move-result v2

    or-int/2addr v0, v2

    const-string v9, "EX_NATIVE"

    const/4 v8, 0x0

    if-eqz v0, :cond_8

    .line 102
    invoke-virtual/range {p0 .. p3}, Lcom/inmobi/media/M6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v12, :cond_7

    goto :goto_1

    .line 103
    :cond_7
    iput-object v9, v12, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 104
    :goto_1
    sget-object v0, Lcom/inmobi/media/F6;->f:Lcom/inmobi/media/F6;

    .line 105
    invoke-static {v0, v15, v1}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v2

    .line 106
    invoke-static {v0, v12, v8, v2}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    goto :goto_0

    .line 107
    :cond_8
    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {v16 .. v16}, Lcom/inmobi/media/z2;->a(Landroid/net/Uri;)Z

    move-result v0

    const-string v7, "TAG"

    const-string v6, "M6"

    if-eqz v0, :cond_b

    .line 108
    const-string v0, "Partial tabs not supported: packageName - "

    .line 109
    :try_start_0
    iget-object v2, v1, Lcom/inmobi/media/M6;->b:Lcom/inmobi/media/N6;

    .line 110
    iget-boolean v2, v2, Lcom/inmobi/media/N6;->d:Z

    if-eqz v2, :cond_b

    if-eqz p5, :cond_b

    .line 111
    iget-object v2, v1, Lcom/inmobi/media/M6;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/inmobi/media/x3;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_a

    .line 112
    :try_start_1
    invoke-static {}, Lcom/inmobi/media/U3;->g()B

    move-result v3

    invoke-static {v3}, Lcom/inmobi/media/qa;->a(B)Lcom/inmobi/media/pa;

    move-result-object v3

    invoke-static {v3}, Lcom/inmobi/media/qa;->b(Lcom/inmobi/media/pa;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_2

    const-class v4, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    if-eqz v3, :cond_9

    .line 113
    :try_start_2
    const-string v3, "setInitialActivityWidthPx"

    .line 114
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    .line 115
    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    goto :goto_2

    .line 116
    :cond_9
    const-string v3, "setInitialActivityHeightPx"

    .line 117
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    .line 118
    invoke-virtual {v4, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_2

    .line 119
    :goto_2
    :try_start_3
    new-instance v0, Lcom/inmobi/media/k2;

    iget-object v5, v1, Lcom/inmobi/media/M6;->a:Landroid/content/Context;

    iget-object v4, v1, Lcom/inmobi/media/M6;->c:Lcom/inmobi/media/e2;

    iget-object v3, v1, Lcom/inmobi/media/M6;->e:Lcom/inmobi/media/X1;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-object v2, v0

    move-object/from16 v18, v3

    move-object/from16 v3, p3

    move-object/from16 v19, v4

    move-object/from16 v4, p5

    move-object v13, v6

    move-object/from16 v6, v19

    move-object v14, v7

    move-object/from16 v7, v18

    move-object/from16 v8, p4

    move-object/from16 v18, v15

    move-object v15, v9

    move-object/from16 v9, p1

    :try_start_4
    invoke-direct/range {v2 .. v9}, Lcom/inmobi/media/k2;-><init>(Ljava/lang/String;Lcom/inmobi/media/i2;Landroid/content/Context;Lcom/inmobi/media/e2;Lcom/inmobi/media/yb;Lcom/inmobi/media/R6;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/inmobi/media/k2;->a()V

    const/4 v13, 0x5

    goto/16 :goto_7

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v13, v6

    move-object v14, v7

    move-object/from16 v18, v15

    move-object v15, v9

    goto :goto_3

    :catch_2
    :cond_a
    move-object v13, v6

    move-object v14, v7

    move-object/from16 v18, v15

    move-object v15, v9

    .line 120
    iget-object v3, v1, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_c

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v13, v0}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :cond_b
    move-object v13, v6

    move-object v14, v7

    move-object/from16 v18, v15

    move-object v15, v9

    goto :goto_4

    .line 121
    :goto_3
    iget-object v2, v1, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_c

    .line 122
    const-string v3, "Error while opening partial tab: "

    invoke-static {v13, v14, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 123
    invoke-static {v0, v3}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 124
    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v13, v0}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :cond_c
    :goto_4
    invoke-static/range {v16 .. v16}, Lcom/inmobi/media/z2;->a(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v13, 0x3

    goto :goto_7

    .line 126
    :cond_d
    iget-object v0, v1, Lcom/inmobi/media/M6;->a:Landroid/content/Context;

    iget-object v2, v1, Lcom/inmobi/media/M6;->e:Lcom/inmobi/media/X1;

    iget-object v3, v1, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    invoke-static {v0, v11, v2, v10, v3}, Lcom/inmobi/media/C3;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/yb;Ljava/lang/String;Lcom/inmobi/media/z5;)I

    move-result v0

    if-nez v12, :cond_e

    goto :goto_5

    .line 127
    :cond_e
    iput-object v15, v12, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    :goto_5
    if-eqz v0, :cond_f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_10

    :cond_f
    move-object/from16 v2, v18

    const/4 v3, 0x0

    goto :goto_6

    .line 128
    :cond_10
    iget-object v0, v1, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_11

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "CustomExpand handling failed"

    invoke-virtual {v0, v13, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    :cond_11
    sget-object v0, Lcom/inmobi/media/F6;->j:Lcom/inmobi/media/F6;

    move-object/from16 v2, v18

    .line 130
    invoke-static {v0, v2, v1}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v2

    const/4 v3, 0x0

    .line 131
    invoke-static {v0, v12, v3, v2}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    :cond_12
    move/from16 v13, v17

    goto :goto_7

    .line 132
    :goto_6
    invoke-virtual/range {p0 .. p3}, Lcom/inmobi/media/M6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/inmobi/media/F6;->f:Lcom/inmobi/media/F6;

    .line 134
    invoke-static {v0, v2, v1}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v2

    .line 135
    invoke-static {v0, v12, v3, v2}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 136
    iget-object v0, v1, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_4

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "Deeplink url handled successfully"

    invoke-virtual {v0, v13, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :goto_7
    return v13

    .line 137
    :goto_8
    invoke-virtual/range {p0 .. p3}, Lcom/inmobi/media/M6;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/inmobi/media/F6;->e:Lcom/inmobi/media/F6;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 139
    invoke-static {v0, v2, v1}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v2

    .line 140
    invoke-static {v0, v12, v3, v2}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    const/4 v3, 0x1

    return v3

    .line 141
    :goto_9
    invoke-virtual/range {p0 .. p3}, Lcom/inmobi/media/M6;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lcom/inmobi/media/F6;->e:Lcom/inmobi/media/F6;

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 143
    invoke-static {v0, v2, v1}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v2

    .line 144
    invoke-static {v0, v12, v4, v2}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    return v3
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)Lcom/inmobi/media/K6;
    .locals 9

    .line 145
    iget-object v0, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    const-string v2, "M6"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "In processInMobiDeepLinkScheme"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    :cond_0
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 147
    const-string v3, "primaryUrl"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    const-string v4, "primaryTrackingUrl"

    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 149
    invoke-virtual {p0, p1, v3, v4}, Lcom/inmobi/media/M6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v4, "EX_NATIVE"

    const-string v5, "funnelState"

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_8

    if-ne v3, v6, :cond_1

    goto/16 :goto_2

    .line 150
    :cond_1
    const-string v3, "fallbackUrl"

    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 151
    const-string v8, "fallbackTrackingUrl"

    invoke-virtual {v0, v8}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    invoke-virtual {p0, p1, v3, v0}, Lcom/inmobi/media/M6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez p4, :cond_2

    goto :goto_0

    .line 153
    :cond_2
    iput-object v4, p4, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_6

    if-ne v0, v6, :cond_3

    goto :goto_1

    .line 154
    :cond_3
    iget-object p3, p0, Lcom/inmobi/media/M6;->d:Lcom/inmobi/media/Ub;

    if-eqz p3, :cond_4

    .line 155
    const-string v3, "message"

    const-string v4, "Invalid URL"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 156
    iget-object p3, p3, Lcom/inmobi/media/Ub;->a:Lcom/inmobi/media/ec;

    invoke-virtual {p3, p2, v4, p1}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_5

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string p2, "InMobiDeepLinkScheme Fallback Url handling failed"

    invoke-virtual {p1, v2, p2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :cond_5
    sget-object p1, Lcom/inmobi/media/F6;->g:Lcom/inmobi/media/F6;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 159
    invoke-static {p1, v5, p0}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object p3

    .line 160
    invoke-static {p1, p4, p2, p3}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 161
    new-instance p1, Lcom/inmobi/media/K6;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    invoke-direct {p1, p3, p2}, Lcom/inmobi/media/K6;-><init>(ILjava/lang/Integer;)V

    goto :goto_4

    .line 162
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_7

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "InMobiDeepLinkScheme Fallback Url handled successfully"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_7
    sget-object v0, Lcom/inmobi/media/F6;->f:Lcom/inmobi/media/F6;

    .line 164
    invoke-static {v0, v5, p0}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v1

    .line 165
    invoke-static {v0, p4, v7, v1}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 166
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/media/M6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance p1, Lcom/inmobi/media/K6;

    invoke-direct {p1, v6}, Lcom/inmobi/media/K6;-><init>(I)V

    goto :goto_4

    .line 168
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_9

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "InMobiDeepLinkScheme Primary Url handled successfully"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    if-nez p4, :cond_a

    goto :goto_3

    .line 169
    :cond_a
    iput-object v4, p4, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 170
    :goto_3
    sget-object v0, Lcom/inmobi/media/F6;->f:Lcom/inmobi/media/F6;

    .line 171
    invoke-static {v0, v5, p0}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v1

    .line 172
    invoke-static {v0, p4, v7, v1}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 173
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/media/M6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    new-instance p1, Lcom/inmobi/media/K6;

    invoke-direct {p1, v6}, Lcom/inmobi/media/K6;-><init>(I)V

    :goto_4
    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)Lcom/inmobi/media/K6;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 1
    iget-object v4, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    const-string v5, "TAG"

    const-string v6, "M6"

    if-eqz v4, :cond_0

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/inmobi/media/A5;

    const-string v7, "In processInMobiNativeBrowserScheme"

    invoke-virtual {v4, v6, v7}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 3
    const-string v7, "url"

    invoke-virtual {v4, v7}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "message"

    const-string v8, "Invalid URL"

    const-string v9, "funnelState"

    if-eqz v4, :cond_a

    .line 4
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_1

    goto/16 :goto_2

    :cond_1
    if-nez v3, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    const-string v10, "EX_NATIVE"

    .line 6
    iput-object v10, v3, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 7
    :goto_0
    iget-object v10, v0, Lcom/inmobi/media/M6;->a:Landroid/content/Context;

    iget-object v11, v0, Lcom/inmobi/media/M6;->e:Lcom/inmobi/media/X1;

    iget-object v12, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    move-object/from16 v13, p3

    invoke-static {v13, v10, v11, v12}, Lcom/inmobi/media/C3;->a(Ljava/lang/String;Landroid/content/Context;Lcom/inmobi/media/yb;Lcom/inmobi/media/z5;)Z

    move-result v10

    const-string v11, "InmobiNativeBrowser scheme url handled successfully"

    const/4 v12, 0x0

    const/4 v14, 0x1

    if-eqz v10, :cond_4

    .line 8
    sget-object v4, Lcom/inmobi/media/F6;->f:Lcom/inmobi/media/F6;

    .line 9
    invoke-static {v4, v9, v0}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v7

    .line 10
    invoke-static {v4, v3, v12, v7}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 11
    invoke-virtual/range {p0 .. p3}, Lcom/inmobi/media/M6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v1, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_3

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v6, v11}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_3
    new-instance v1, Lcom/inmobi/media/K6;

    invoke-direct {v1, v14}, Lcom/inmobi/media/K6;-><init>(I)V

    return-object v1

    .line 14
    :cond_4
    iget-object v10, v0, Lcom/inmobi/media/M6;->a:Landroid/content/Context;

    iget-object v15, v0, Lcom/inmobi/media/M6;->e:Lcom/inmobi/media/X1;

    iget-object v12, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    invoke-static {v10, v4, v15, v1, v12}, Lcom/inmobi/media/C3;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/yb;Ljava/lang/String;Lcom/inmobi/media/z5;)I

    move-result v4

    if-eqz v4, :cond_8

    if-ne v4, v14, :cond_5

    goto :goto_1

    .line 15
    :cond_5
    iget-object v10, v0, Lcom/inmobi/media/M6;->d:Lcom/inmobi/media/Ub;

    if-eqz v10, :cond_6

    .line 16
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v7, v10, Lcom/inmobi/media/Ub;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v7, v2, v8, v1}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_6
    iget-object v1, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_7

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v2, "InmobiNativeBrowser scheme url handling failed"

    invoke-virtual {v1, v6, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :cond_7
    sget-object v1, Lcom/inmobi/media/F6;->g:Lcom/inmobi/media/F6;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 20
    invoke-static {v1, v9, v0}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v5

    .line 21
    invoke-static {v1, v3, v2, v5}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 22
    new-instance v1, Lcom/inmobi/media/K6;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v3, v2}, Lcom/inmobi/media/K6;-><init>(ILjava/lang/Integer;)V

    return-object v1

    .line 23
    :cond_8
    :goto_1
    sget-object v4, Lcom/inmobi/media/F6;->f:Lcom/inmobi/media/F6;

    .line 24
    invoke-static {v4, v9, v0}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v7

    const/4 v8, 0x0

    .line 25
    invoke-static {v4, v3, v8, v7}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 26
    invoke-virtual/range {p0 .. p3}, Lcom/inmobi/media/M6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v1, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_9

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v6, v11}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_9
    new-instance v1, Lcom/inmobi/media/K6;

    invoke-direct {v1, v14}, Lcom/inmobi/media/K6;-><init>(I)V

    return-object v1

    .line 29
    :cond_a
    :goto_2
    iget-object v4, v0, Lcom/inmobi/media/M6;->d:Lcom/inmobi/media/Ub;

    if-eqz v4, :cond_b

    .line 30
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v4, v4, Lcom/inmobi/media/Ub;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v4, v2, v8, v1}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :cond_b
    iget-object v1, v0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_c

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/inmobi/media/A5;

    const-string v2, "InMobiNativeBrowserScheme url is Empty or null"

    invoke-virtual {v1, v6, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    :cond_c
    sget-object v1, Lcom/inmobi/media/F6;->e:Lcom/inmobi/media/F6;

    const/16 v2, 0x1f41

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 34
    invoke-static {v1, v9, v0}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    move-result-object v5

    .line 35
    invoke-static {v1, v3, v4, v5}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 36
    new-instance v1, Lcom/inmobi/media/K6;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Lcom/inmobi/media/K6;-><init>(ILjava/lang/Integer;)V

    return-object v1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 37
    iget-object v0, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    const-string v1, "TAG"

    const-string v2, "M6"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " called with invalid url ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x29

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, p3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    iget-object p3, p0, Lcom/inmobi/media/M6;->d:Lcom/inmobi/media/Ub;

    if-eqz p3, :cond_1

    .line 39
    const-string v0, "message"

    const-string v1, "Invalid URL"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p3, p3, Lcom/inmobi/media/Ub;->a:Lcom/inmobi/media/ec;

    invoke-virtual {p3, p2, v1, p1}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    const-string v2, "M6"

    if-eqz v0, :cond_0

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v3, "In processInternalNativeRequest"

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/inmobi/media/M6;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    iget-object p3, p0, Lcom/inmobi/media/M6;->d:Lcom/inmobi/media/Ub;

    if-eqz p3, :cond_1

    .line 4
    const-string p4, "message"

    const-string v0, "Unexpected error"

    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object p3, p3, Lcom/inmobi/media/Ub;->a:Lcom/inmobi/media/ec;

    const-string p4, "open"

    invoke-virtual {p3, p2, v0, p4}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    const-string p2, "InMobi"

    const-string p3, "Failed to open URL SDK encountered unexpected error"

    const/4 p4, 0x1

    invoke-static {p4, p2, p3}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    if-eqz p2, :cond_2

    .line 8
    const-string p3, "SDK encountered unexpected error in handling open() request from creative "

    invoke-static {v2, v1, p3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 9
    invoke-static {p1, p3}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    .line 10
    check-cast p2, Lcom/inmobi/media/A5;

    invoke-virtual {p2, v2, p1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/16 p1, 0x9

    :goto_0
    return p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/inmobi/media/M6;->d:Lcom/inmobi/media/Ub;

    if-eqz v0, :cond_0

    .line 12
    iget-object v0, v0, Lcom/inmobi/media/Ub;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getListener()Lcom/inmobi/media/gc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/media/gc;->a()V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/M6;->d:Lcom/inmobi/media/Ub;

    if-eqz v0, :cond_1

    .line 14
    iget-object v0, v0, Lcom/inmobi/media/Ub;->a:Lcom/inmobi/media/ec;

    invoke-static {v0, p1, p2, p3}, Lcom/inmobi/media/ec;->a(Lcom/inmobi/media/ec;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)I
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-object/from16 v10, p3

    .line 6
    .line 7
    move-object/from16 v11, p4

    .line 8
    .line 9
    const-string v2, "api"

    .line 10
    .line 11
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, v1, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    .line 15
    .line 16
    const-string v12, "TAG"

    .line 17
    .line 18
    const-string v13, "M6"

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const-string v3, "processOpenCCTRequest - url - "

    .line 23
    .line 24
    invoke-static {v13, v12, v3, v10}, Lcom/inmobi/media/I6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v2, Lcom/inmobi/media/A5;

    .line 29
    .line 30
    invoke-virtual {v2, v13, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    if-nez v11, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const-string v2, "IN_NATIVE"

    .line 37
    .line 38
    iput-object v2, v11, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 39
    .line 40
    :goto_0
    const-string v14, "funnelState"

    .line 41
    .line 42
    if-eqz v10, :cond_c

    .line 43
    .line 44
    const-string v2, "http"

    .line 45
    .line 46
    const/4 v3, 0x2

    .line 47
    const/4 v15, 0x0

    .line 48
    const/4 v9, 0x0

    .line 49
    invoke-static {v10, v2, v15, v3, v9}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    invoke-static/range {p3 .. p3}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-nez v2, :cond_2

    .line 60
    .line 61
    goto/16 :goto_7

    .line 62
    .line 63
    :cond_2
    iget-object v2, v1, Lcom/inmobi/media/M6;->a:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/inmobi/media/x3;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    :try_start_0
    iget-object v3, v1, Lcom/inmobi/media/M6;->b:Lcom/inmobi/media/N6;

    .line 70
    .line 71
    iget-boolean v3, v3, Lcom/inmobi/media/N6;->c:Z

    .line 72
    .line 73
    if-eqz v2, :cond_3

    .line 74
    .line 75
    if-nez v3, :cond_4

    .line 76
    .line 77
    :cond_3
    move-object v15, v9

    .line 78
    goto :goto_1

    .line 79
    :cond_4
    new-instance v16, Lcom/inmobi/media/k2;

    .line 80
    .line 81
    iget-object v5, v1, Lcom/inmobi/media/M6;->a:Landroid/content/Context;

    .line 82
    .line 83
    iget-object v6, v1, Lcom/inmobi/media/M6;->c:Lcom/inmobi/media/e2;

    .line 84
    .line 85
    iget-object v7, v1, Lcom/inmobi/media/M6;->e:Lcom/inmobi/media/X1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    move-object/from16 v2, v16

    .line 89
    .line 90
    move-object/from16 v3, p3

    .line 91
    .line 92
    move-object/from16 v8, p4

    .line 93
    .line 94
    move-object v15, v9

    .line 95
    move-object/from16 v9, p1

    .line 96
    .line 97
    :try_start_1
    invoke-direct/range {v2 .. v9}, Lcom/inmobi/media/k2;-><init>(Ljava/lang/String;Lcom/inmobi/media/i2;Landroid/content/Context;Lcom/inmobi/media/e2;Lcom/inmobi/media/yb;Lcom/inmobi/media/R6;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual/range {v16 .. v16}, Lcom/inmobi/media/k2;->a()V

    .line 101
    .line 102
    .line 103
    iget-object v2, v1, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    .line 104
    .line 105
    if-eqz v2, :cond_5

    .line 106
    .line 107
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v3, "Default and Internal Native handled successfully"

    .line 111
    .line 112
    check-cast v2, Lcom/inmobi/media/A5;

    .line 113
    .line 114
    invoke-virtual {v2, v13, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    const/4 v15, 0x0

    .line 118
    goto :goto_3

    .line 119
    :catch_0
    move-object v15, v9

    .line 120
    goto :goto_4

    .line 121
    :goto_1
    iget-object v2, v1, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    .line 122
    .line 123
    if-eqz v2, :cond_6

    .line 124
    .line 125
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    const-string v3, "ChromeCustomTab fallback to Embedded"

    .line 129
    .line 130
    check-cast v2, Lcom/inmobi/media/A5;

    .line 131
    .line 132
    invoke-virtual {v2, v13, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    :cond_6
    if-nez v11, :cond_7

    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_7
    const-string v2, "IN_CUSTOM"

    .line 139
    .line 140
    iput-object v2, v11, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 141
    .line 142
    :goto_2
    invoke-virtual {v1, v10, v0, v11}, Lcom/inmobi/media/M6;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)I

    .line 143
    .line 144
    .line 145
    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 146
    :goto_3
    return v15

    .line 147
    :catch_1
    :goto_4
    :try_start_2
    iget-object v2, v1, Lcom/inmobi/media/M6;->a:Landroid/content/Context;

    .line 148
    .line 149
    iget-object v3, v1, Lcom/inmobi/media/M6;->e:Lcom/inmobi/media/X1;

    .line 150
    .line 151
    invoke-static {v2, v10, v3, v0}, Lcom/inmobi/media/z2;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/yb;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    if-eqz v2, :cond_8

    .line 156
    .line 157
    const/4 v3, 0x1

    .line 158
    if-ne v2, v3, :cond_b

    .line 159
    .line 160
    :cond_8
    invoke-virtual/range {p0 .. p3}, Lcom/inmobi/media/M6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    if-nez v11, :cond_9

    .line 164
    .line 165
    goto :goto_5

    .line 166
    :cond_9
    const-string v0, "EX_NATIVE"

    .line 167
    .line 168
    iput-object v0, v11, Lcom/inmobi/media/R6;->g:Ljava/lang/String;

    .line 169
    .line 170
    :goto_5
    sget-object v0, Lcom/inmobi/media/F6;->f:Lcom/inmobi/media/F6;

    .line 171
    .line 172
    invoke-static {v0, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    new-instance v3, Lcom/inmobi/media/L6;

    .line 176
    .line 177
    invoke-direct {v3, v1}, Lcom/inmobi/media/L6;-><init>(Lcom/inmobi/media/M6;)V

    .line 178
    .line 179
    .line 180
    invoke-static {v0, v11, v15, v3}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 181
    .line 182
    .line 183
    goto :goto_6

    .line 184
    :catch_2
    move-exception v0

    .line 185
    iget-object v2, v1, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    .line 186
    .line 187
    if-eqz v2, :cond_a

    .line 188
    .line 189
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    check-cast v2, Lcom/inmobi/media/A5;

    .line 193
    .line 194
    const-string v3, "Exception occurred while opening External "

    .line 195
    .line 196
    invoke-virtual {v2, v13, v3, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 197
    .line 198
    .line 199
    :cond_a
    const/16 v2, 0x9

    .line 200
    .line 201
    :cond_b
    :goto_6
    return v2

    .line 202
    :cond_c
    :goto_7
    iget-object v2, v1, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    .line 203
    .line 204
    if-eqz v2, :cond_d

    .line 205
    .line 206
    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    .line 210
    .line 211
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v4, " called with invalid url ("

    .line 218
    .line 219
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const/16 v4, 0x29

    .line 226
    .line 227
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v3

    .line 234
    check-cast v2, Lcom/inmobi/media/A5;

    .line 235
    .line 236
    invoke-virtual {v2, v13, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    :cond_d
    iget-object v2, v1, Lcom/inmobi/media/M6;->d:Lcom/inmobi/media/Ub;

    .line 240
    .line 241
    if-eqz v2, :cond_e

    .line 242
    .line 243
    const-string v3, "message"

    .line 244
    .line 245
    const-string v4, "Invalid URL"

    .line 246
    .line 247
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    iget-object v2, v2, Lcom/inmobi/media/Ub;->a:Lcom/inmobi/media/ec;

    .line 251
    .line 252
    move-object/from16 v3, p2

    .line 253
    .line 254
    invoke-virtual {v2, v3, v4, v0}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    :cond_e
    sget-object v0, Lcom/inmobi/media/F6;->e:Lcom/inmobi/media/F6;

    .line 258
    .line 259
    const/4 v2, 0x3

    .line 260
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 261
    .line 262
    .line 263
    move-result-object v3

    .line 264
    invoke-static {v0, v14, v1}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    invoke-static {v0, v11, v3, v4}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 269
    .line 270
    .line 271
    return v2
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)V
    .locals 7

    .line 1
    const-string v0, "funnelState"

    .line 2
    .line 3
    const-string v1, "openExternal"

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/media/M6;->a:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/inmobi/media/M6;->e:Lcom/inmobi/media/X1;

    .line 8
    .line 9
    invoke-static {v2, p2, v3, v1}, Lcom/inmobi/media/z2;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/yb;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    sget-object v2, Lcom/inmobi/media/F6;->f:Lcom/inmobi/media/F6;

    .line 13
    .line 14
    invoke-static {v2, v0, p0}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    const/4 v4, 0x0

    .line 19
    invoke-static {v2, p4, v4, v3}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v1, p1, p2}, Lcom/inmobi/media/M6;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto/16 :goto_4

    .line 26
    .line 27
    :catch_0
    move-exception p2

    .line 28
    goto :goto_0

    .line 29
    :catch_1
    move-exception v0

    .line 30
    move-object v6, v0

    .line 31
    goto :goto_1

    .line 32
    :catch_2
    move-exception v0

    .line 33
    move-object v6, v0

    .line 34
    goto :goto_2

    .line 35
    :catch_3
    move-exception v0

    .line 36
    move-object v6, v0

    .line 37
    goto :goto_3

    .line 38
    :goto_0
    sget-object p3, Lcom/inmobi/media/F6;->g:Lcom/inmobi/media/F6;

    .line 39
    .line 40
    const/16 v2, 0x9

    .line 41
    .line 42
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {p3, v0, p0}, Lcom/inmobi/media/G6;->a(Lcom/inmobi/media/F6;Ljava/lang/String;Lcom/inmobi/media/M6;)Lcom/inmobi/media/L6;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {p3, p4, v2, v0}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    .line 51
    .line 52
    .line 53
    iget-object p3, p0, Lcom/inmobi/media/M6;->d:Lcom/inmobi/media/Ub;

    .line 54
    .line 55
    if-eqz p3, :cond_0

    .line 56
    .line 57
    const-string p4, "message"

    .line 58
    .line 59
    const-string v0, "Unexpected error"

    .line 60
    .line 61
    invoke-static {v0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget-object p3, p3, Lcom/inmobi/media/Ub;->a:Lcom/inmobi/media/ec;

    .line 65
    .line 66
    invoke-virtual {p3, p1, v0, v1}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    const-string p1, "M6"

    .line 70
    .line 71
    const-string p3, "TAG"

    .line 72
    .line 73
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const/4 p4, 0x1

    .line 77
    const-string v0, "Could not open URL SDK encountered an unexpected error"

    .line 78
    .line 79
    invoke-static {p4, p1, v0}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    iget-object p4, p0, Lcom/inmobi/media/M6;->g:Lcom/inmobi/media/z5;

    .line 83
    .line 84
    if-eqz p4, :cond_1

    .line 85
    .line 86
    const-string v0, "SDK encountered unexpected error in handling openExternal() request from creative "

    .line 87
    .line 88
    invoke-static {p1, p3, v0}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    invoke-static {p2, p3}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    check-cast p4, Lcom/inmobi/media/A5;

    .line 97
    .line 98
    invoke-virtual {p4, p1, p2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :goto_1
    move-object v1, p0

    .line 103
    move-object v2, p1

    .line 104
    move-object v3, p2

    .line 105
    move-object v4, p3

    .line 106
    move-object v5, p4

    .line 107
    invoke-static/range {v1 .. v6}, Lcom/inmobi/media/M6;->a(Lcom/inmobi/media/M6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;Ljava/lang/Exception;)V

    .line 108
    .line 109
    .line 110
    goto :goto_4

    .line 111
    :goto_2
    move-object v1, p0

    .line 112
    move-object v2, p1

    .line 113
    move-object v3, p2

    .line 114
    move-object v4, p3

    .line 115
    move-object v5, p4

    .line 116
    invoke-static/range {v1 .. v6}, Lcom/inmobi/media/M6;->a(Lcom/inmobi/media/M6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;Ljava/lang/Exception;)V

    .line 117
    .line 118
    .line 119
    goto :goto_4

    .line 120
    :goto_3
    move-object v1, p0

    .line 121
    move-object v2, p1

    .line 122
    move-object v3, p2

    .line 123
    move-object v4, p3

    .line 124
    move-object v5, p4

    .line 125
    invoke-static/range {v1 .. v6}, Lcom/inmobi/media/M6;->a(Lcom/inmobi/media/M6;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;Ljava/lang/Exception;)V

    .line 126
    .line 127
    .line 128
    :cond_1
    :goto_4
    return-void
.end method
