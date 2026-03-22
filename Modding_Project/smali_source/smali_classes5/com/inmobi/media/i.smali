.class public final Lcom/inmobi/media/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public final e:J

.field public final f:J

.field public g:J

.field public h:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Random;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const v1, 0x7fffffff

    .line 14
    .line 15
    .line 16
    and-int/2addr v0, v1

    .line 17
    iput v0, p0, Lcom/inmobi/media/i;->a:I

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iput-wide v0, p0, Lcom/inmobi/media/i;->e:J

    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    iput-wide v0, p0, Lcom/inmobi/media/i;->f:J

    .line 30
    .line 31
    return-void
.end method

.method public static a(Ljava/lang/String;)J
    .locals 3

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v2, "EEE,dd MMM yyyy HH:mm:ss z"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-wide/16 v1, 0x0

    .line 37
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    return-wide v1

    .line 39
    :goto_1
    sget-object v0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v0, Lcom/inmobi/media/f2;

    invoke-direct {v0, p0}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 40
    const-string p0, "event"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object p0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p0, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    return-wide v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/P9;IJ)Lcom/inmobi/media/i;
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "url"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "locationOnDisk"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "response"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, v3, Lcom/inmobi/media/P9;->f:Ljava/util/Map;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz v3, :cond_0

    .line 3
    const-string v7, "Date"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    const/4 v10, 0x0

    if-eqz v7, :cond_1

    .line 4
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 5
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 6
    invoke-static {v7}, Lcom/inmobi/media/i;->a(Ljava/lang/String;)J

    move-result-wide v11

    goto :goto_1

    :cond_1
    const-wide/16 v11, 0x0

    :goto_1
    if-eqz v3, :cond_2

    .line 7
    const-string v7, "Cache-Control"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_10

    .line 8
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_10

    .line 9
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v13, v7

    check-cast v13, Ljava/lang/String;

    .line 10
    const-string v7, ","

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v14

    const/16 v17, 0x6

    const/16 v18, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-static/range {v13 .. v18}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 11
    new-array v13, v10, [Ljava/lang/String;

    invoke-interface {v7, v13}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    .line 12
    check-cast v7, [Ljava/lang/String;

    .line 13
    array-length v13, v7

    move v14, v10

    move/from16 v17, v14

    const-wide/16 v15, 0x0

    const-wide/16 v18, 0x0

    :goto_3
    const/4 v8, 0x1

    if-ge v14, v13, :cond_f

    aget-object v9, v7, v14

    .line 14
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v21, v10

    move/from16 v6, v20

    :goto_4
    if-gt v10, v6, :cond_8

    if-nez v21, :cond_3

    move v8, v10

    goto :goto_5

    :cond_3
    move v8, v6

    .line 15
    :goto_5
    invoke-virtual {v9, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    move-object/from16 v22, v7

    const/16 v7, 0x20

    .line 16
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v7

    if-gtz v7, :cond_4

    const/4 v7, 0x1

    goto :goto_6

    :cond_4
    const/4 v7, 0x0

    :goto_6
    if-nez v21, :cond_6

    if-nez v7, :cond_5

    move-object/from16 v7, v22

    const/4 v8, 0x1

    const/16 v21, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v10, v10, 0x1

    :goto_7
    move-object/from16 v7, v22

    const/4 v8, 0x1

    goto :goto_4

    :cond_6
    if-nez v7, :cond_7

    const/4 v7, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    :cond_8
    move-object/from16 v22, v7

    move v7, v8

    .line 17
    :goto_8
    invoke-static {v6, v7, v9, v10}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 18
    const-string v8, "no-cache"

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    const-string v8, "no-store"

    invoke-static {v8, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    :cond_9
    :goto_9
    move/from16 v23, v13

    move-wide/from16 v24, v15

    const/4 v13, 0x0

    goto :goto_a

    .line 19
    :cond_a
    const-string v8, "max-age="

    const/4 v9, 0x2

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-static {v6, v8, v7, v9, v10}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v8

    const-string v7, "access$getTAG$cp(...)"

    const-string v10, "j"

    const-string v9, "this as java.lang.String).substring(startIndex)"

    if-eqz v8, :cond_b

    const/16 v8, 0x8

    .line 20
    :try_start_0
    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v23, v13

    const/4 v13, 0x0

    goto :goto_b

    .line 21
    :catch_0
    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_9

    .line 22
    :cond_b
    const-string v8, "stale-while-revalidate="

    move/from16 v23, v13

    move-wide/from16 v24, v15

    const/4 v2, 0x2

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static {v6, v8, v15, v2, v13}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x17

    .line 23
    :try_start_1
    invoke-virtual {v6, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_c
    :goto_a
    move-wide/from16 v15, v24

    goto :goto_b

    .line 24
    :catch_1
    invoke-static {v10, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    .line 25
    :cond_d
    const-string v2, "must-revalidate"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    const-string v2, "proxy-revalidate"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    :cond_e
    move-wide/from16 v15, v24

    const/16 v17, 0x1

    :goto_b
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v2, p2

    move-object/from16 v7, v22

    move/from16 v13, v23

    const/4 v10, 0x0

    goto/16 :goto_3

    :cond_f
    move-wide/from16 v24, v15

    const/4 v13, 0x0

    const/4 v8, 0x1

    goto :goto_c

    :cond_10
    const/4 v13, 0x0

    const/4 v8, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    :goto_c
    if-eqz v3, :cond_11

    .line 26
    const-string v2, "Expires"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Ljava/util/List;

    goto :goto_d

    :cond_11
    move-object v6, v13

    :goto_d
    if-eqz v6, :cond_12

    .line 27
    invoke-interface {v6}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_12

    const/4 v2, 0x0

    .line 28
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 29
    invoke-static {v2}, Lcom/inmobi/media/i;->a(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_e

    :cond_12
    const-wide/16 v2, 0x0

    :goto_e
    const/16 v6, 0x3e8

    if-eqz v8, :cond_14

    int-to-long v2, v6

    mul-long/2addr v15, v2

    add-long v8, v15, v4

    if-eqz v17, :cond_13

    :goto_f
    move-wide v2, v8

    goto :goto_10

    :cond_13
    mul-long v18, v18, v2

    add-long v2, v18, v8

    move-wide/from16 v26, v2

    move-wide v2, v8

    move-wide/from16 v8, v26

    goto :goto_10

    :cond_14
    const-wide/16 v7, 0x1

    cmp-long v7, v7, v11

    if-gtz v7, :cond_15

    cmp-long v7, v11, v2

    if-gtz v7, :cond_15

    sub-long/2addr v2, v11

    add-long v8, v2, v4

    goto :goto_f

    :cond_15
    const-wide/16 v2, 0x0

    const-wide/16 v8, 0x0

    .line 30
    :goto_10
    iput-object v1, v0, Lcom/inmobi/media/i;->c:Ljava/lang/String;

    move-object/from16 v1, p2

    .line 31
    iput-object v1, v0, Lcom/inmobi/media/i;->d:Ljava/lang/String;

    move/from16 v1, p4

    .line 32
    iput v1, v0, Lcom/inmobi/media/i;->b:I

    int-to-long v6, v6

    mul-long v6, v6, p5

    add-long/2addr v6, v4

    .line 33
    iput-wide v6, v0, Lcom/inmobi/media/i;->g:J

    .line 34
    iput-wide v2, v0, Lcom/inmobi/media/i;->h:J

    .line 35
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/inmobi/media/i;->g:J

    return-object v0
.end method
