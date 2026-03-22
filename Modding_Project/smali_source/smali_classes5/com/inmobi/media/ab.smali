.class public abstract Lcom/inmobi/media/ab;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I = -0x80000000

.field public static b:Ljava/lang/Boolean; = null

.field public static c:Ljava/lang/String; = null

.field public static d:Ljava/lang/String; = null

.field public static e:Ljava/lang/String; = null

.field public static f:Ljava/lang/String; = null

.field public static g:Ljava/lang/String; = null

.field public static h:Ljava/lang/String; = null

.field public static i:I = -0x80000000

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Landroid/location/Location;


# direct methods
.method public static a()Ljava/util/HashMap;
    .locals 15

    const/4 v0, 0x1

    .line 6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 7
    sget v2, Lcom/inmobi/media/ab;->a:I

    const-string v3, "key"

    const-string v4, "user_info_store"

    const/high16 v5, -0x80000000

    if-eq v2, v5, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v5

    goto :goto_0

    .line 9
    :cond_1
    sget-object v6, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v4}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v2

    .line 10
    const-string v6, "user_age"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v2, v2, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 12
    :goto_0
    sput v2, Lcom/inmobi/media/ab;->a:I

    :goto_1
    if-lez v2, :cond_2

    .line 13
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v6, "u-age"

    invoke-virtual {v1, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_2
    sget v2, Lcom/inmobi/media/ab;->i:I

    if-eq v2, v5, :cond_3

    goto :goto_3

    .line 15
    :cond_3
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    sget-object v6, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v4}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v2

    .line 17
    const-string v6, "user_yob"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v2, v2, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 19
    :goto_2
    sput v5, Lcom/inmobi/media/ab;->i:I

    move v2, v5

    :goto_3
    if-lez v2, :cond_5

    .line 20
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "u-yearofbirth"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_5
    sget-object v2, Lcom/inmobi/media/ab;->f:Ljava/lang/String;

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    goto :goto_5

    .line 22
    :cond_6
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_7

    move-object v2, v5

    goto :goto_4

    .line 23
    :cond_7
    sget-object v6, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2, v4}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v2

    .line 24
    const-string v6, "user_city_code"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object v2, v2, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 26
    :goto_4
    sput-object v2, Lcom/inmobi/media/ab;->f:Ljava/lang/String;

    .line 27
    :goto_5
    sget-object v6, Lcom/inmobi/media/ab;->g:Ljava/lang/String;

    if-eqz v6, :cond_8

    goto :goto_7

    .line 28
    :cond_8
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v6

    if-nez v6, :cond_9

    move-object v6, v5

    goto :goto_6

    .line 29
    :cond_9
    sget-object v7, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v6, v4}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v6

    .line 30
    const-string v7, "user_state_code"

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v6, v6, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v6, v7, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 32
    :goto_6
    sput-object v6, Lcom/inmobi/media/ab;->g:Ljava/lang/String;

    .line 33
    :goto_7
    sget-object v7, Lcom/inmobi/media/ab;->h:Ljava/lang/String;

    if-eqz v7, :cond_a

    goto :goto_9

    .line 34
    :cond_a
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v7

    if-nez v7, :cond_b

    move-object v7, v5

    goto :goto_8

    .line 35
    :cond_b
    sget-object v8, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v7, v4}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v7

    .line 36
    const-string v8, "user_country_code"

    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v7, v7, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v7, v8, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 38
    :goto_8
    sput-object v7, Lcom/inmobi/media/ab;->h:Ljava/lang/String;

    :goto_9
    const/16 v8, 0x20

    const/4 v9, 0x0

    if-eqz v2, :cond_18

    .line 39
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v0

    move v11, v9

    move v12, v11

    :goto_a
    if-gt v11, v10, :cond_11

    if-nez v12, :cond_c

    move v13, v11

    goto :goto_b

    :cond_c
    move v13, v10

    .line 40
    :goto_b
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 41
    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v13

    if-gtz v13, :cond_d

    move v13, v0

    goto :goto_c

    :cond_d
    move v13, v9

    :goto_c
    if-nez v12, :cond_f

    if-nez v13, :cond_e

    move v12, v0

    goto :goto_a

    :cond_e
    add-int/2addr v11, v0

    goto :goto_a

    :cond_f
    if-nez v13, :cond_10

    goto :goto_d

    :cond_10
    add-int/lit8 v10, v10, -0x1

    goto :goto_a

    :cond_11
    :goto_d
    add-int/2addr v10, v0

    .line 42
    invoke-virtual {v2, v11, v10}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    .line 43
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 44
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_18

    .line 45
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v0

    move v11, v9

    move v12, v11

    :goto_e
    if-gt v11, v10, :cond_17

    if-nez v12, :cond_12

    move v13, v11

    goto :goto_f

    :cond_12
    move v13, v10

    .line 46
    :goto_f
    invoke-virtual {v2, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 47
    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v13

    if-gtz v13, :cond_13

    move v13, v0

    goto :goto_10

    :cond_13
    move v13, v9

    :goto_10
    if-nez v12, :cond_15

    if-nez v13, :cond_14

    move v12, v0

    goto :goto_e

    :cond_14
    add-int/2addr v11, v0

    goto :goto_e

    :cond_15
    if-nez v13, :cond_16

    goto :goto_11

    :cond_16
    add-int/lit8 v10, v10, -0x1

    goto :goto_e

    .line 48
    :cond_17
    :goto_11
    invoke-static {v10, v0, v2, v11}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_18
    const-string v2, ""

    :goto_12
    const/16 v10, 0x2d

    if-eqz v6, :cond_25

    .line 49
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v0

    move v12, v9

    move v13, v12

    :goto_13
    if-gt v12, v11, :cond_1e

    if-nez v13, :cond_19

    move v14, v12

    goto :goto_14

    :cond_19
    move v14, v11

    .line 50
    :goto_14
    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 51
    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-gtz v14, :cond_1a

    move v14, v0

    goto :goto_15

    :cond_1a
    move v14, v9

    :goto_15
    if-nez v13, :cond_1c

    if-nez v14, :cond_1b

    move v13, v0

    goto :goto_13

    :cond_1b
    add-int/2addr v12, v0

    goto :goto_13

    :cond_1c
    if-nez v14, :cond_1d

    goto :goto_16

    :cond_1d
    add-int/lit8 v11, v11, -0x1

    goto :goto_13

    :cond_1e
    :goto_16
    add-int/2addr v11, v0

    .line 52
    invoke-virtual {v6, v12, v11}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v11

    .line 53
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 54
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_25

    .line 55
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    move v12, v9

    move v13, v12

    :goto_17
    if-gt v12, v2, :cond_24

    if-nez v13, :cond_1f

    move v14, v12

    goto :goto_18

    :cond_1f
    move v14, v2

    .line 57
    :goto_18
    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v14

    .line 58
    invoke-static {v14, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v14

    if-gtz v14, :cond_20

    move v14, v0

    goto :goto_19

    :cond_20
    move v14, v9

    :goto_19
    if-nez v13, :cond_22

    if-nez v14, :cond_21

    move v13, v0

    goto :goto_17

    :cond_21
    add-int/2addr v12, v0

    goto :goto_17

    :cond_22
    if-nez v14, :cond_23

    goto :goto_1a

    :cond_23
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    :cond_24
    :goto_1a
    add-int/2addr v2, v0

    .line 59
    invoke-virtual {v6, v12, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_25
    if-eqz v7, :cond_32

    .line 62
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v0

    move v11, v9

    move v12, v11

    :goto_1b
    if-gt v11, v6, :cond_2b

    if-nez v12, :cond_26

    move v13, v11

    goto :goto_1c

    :cond_26
    move v13, v6

    .line 63
    :goto_1c
    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 64
    invoke-static {v13, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v13

    if-gtz v13, :cond_27

    move v13, v0

    goto :goto_1d

    :cond_27
    move v13, v9

    :goto_1d
    if-nez v12, :cond_29

    if-nez v13, :cond_28

    move v12, v0

    goto :goto_1b

    :cond_28
    add-int/2addr v11, v0

    goto :goto_1b

    :cond_29
    if-nez v13, :cond_2a

    goto :goto_1e

    :cond_2a
    add-int/lit8 v6, v6, -0x1

    goto :goto_1b

    :cond_2b
    :goto_1e
    add-int/2addr v6, v0

    .line 65
    invoke-virtual {v7, v11, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 66
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 67
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_32

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v0

    move v10, v9

    move v11, v10

    :goto_1f
    if-gt v10, v2, :cond_31

    if-nez v11, :cond_2c

    move v12, v10

    goto :goto_20

    :cond_2c
    move v12, v2

    .line 70
    :goto_20
    invoke-virtual {v7, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    .line 71
    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v12

    if-gtz v12, :cond_2d

    move v12, v0

    goto :goto_21

    :cond_2d
    move v12, v9

    :goto_21
    if-nez v11, :cond_2f

    if-nez v12, :cond_2e

    move v11, v0

    goto :goto_1f

    :cond_2e
    add-int/2addr v10, v0

    goto :goto_1f

    :cond_2f
    if-nez v12, :cond_30

    goto :goto_22

    :cond_30
    add-int/lit8 v2, v2, -0x1

    goto :goto_1f

    :cond_31
    :goto_22
    add-int/2addr v2, v0

    .line 72
    invoke-virtual {v7, v10, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 74
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    :cond_32
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v0

    move v7, v9

    move v10, v7

    :goto_23
    if-gt v7, v6, :cond_38

    if-nez v10, :cond_33

    move v11, v7

    goto :goto_24

    :cond_33
    move v11, v6

    .line 76
    :goto_24
    invoke-virtual {v2, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 77
    invoke-static {v11, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v11

    if-gtz v11, :cond_34

    move v11, v0

    goto :goto_25

    :cond_34
    move v11, v9

    :goto_25
    if-nez v10, :cond_36

    if-nez v11, :cond_35

    move v10, v0

    goto :goto_23

    :cond_35
    add-int/2addr v7, v0

    goto :goto_23

    :cond_36
    if-nez v11, :cond_37

    goto :goto_26

    :cond_37
    add-int/lit8 v6, v6, -0x1

    goto :goto_23

    :cond_38
    :goto_26
    add-int/2addr v6, v0

    .line 78
    invoke-virtual {v2, v7, v6}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_39

    .line 81
    const-string v0, "u-location"

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    :cond_39
    sget-object v0, Lcom/inmobi/media/ab;->c:Ljava/lang/String;

    if-eqz v0, :cond_3a

    goto :goto_28

    .line 83
    :cond_3a
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3b

    move-object v0, v5

    goto :goto_27

    .line 84
    :cond_3b
    sget-object v2, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v4}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v0

    .line 85
    const-string v2, "user_age_group"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v0, v0, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    :goto_27
    sput-object v0, Lcom/inmobi/media/ab;->c:Ljava/lang/String;

    :goto_28
    if-eqz v0, :cond_3c

    .line 88
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v6, "ENGLISH"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "u-agegroup"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :cond_3c
    sget-object v0, Lcom/inmobi/media/ab;->d:Ljava/lang/String;

    if-eqz v0, :cond_3d

    goto :goto_2a

    .line 90
    :cond_3d
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_3e

    move-object v0, v5

    goto :goto_29

    .line 91
    :cond_3e
    sget-object v2, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v4}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v0

    .line 92
    const-string v2, "user_area_code"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-object v0, v0, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    :goto_29
    sput-object v0, Lcom/inmobi/media/ab;->d:Ljava/lang/String;

    :goto_2a
    if-eqz v0, :cond_3f

    .line 95
    const-string v2, "u-areacode"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    :cond_3f
    sget-object v0, Lcom/inmobi/media/ab;->e:Ljava/lang/String;

    if-eqz v0, :cond_40

    goto :goto_2c

    .line 97
    :cond_40
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_41

    move-object v0, v5

    goto :goto_2b

    .line 98
    :cond_41
    sget-object v2, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v4}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v0

    .line 99
    const-string v2, "user_post_code"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    iget-object v0, v0, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    :goto_2b
    sput-object v0, Lcom/inmobi/media/ab;->e:Ljava/lang/String;

    :goto_2c
    if-eqz v0, :cond_42

    .line 102
    const-string v2, "u-postalcode"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :cond_42
    sget-object v0, Lcom/inmobi/media/ab;->j:Ljava/lang/String;

    if-eqz v0, :cond_43

    goto :goto_2e

    .line 104
    :cond_43
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_44

    move-object v0, v5

    goto :goto_2d

    .line 105
    :cond_44
    sget-object v2, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v4}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v0

    .line 106
    const-string v2, "user_gender"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    iget-object v0, v0, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_2d
    sput-object v0, Lcom/inmobi/media/ab;->j:Ljava/lang/String;

    :goto_2e
    if-eqz v0, :cond_45

    .line 109
    const-string v2, "u-gender"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_45
    sget-object v0, Lcom/inmobi/media/ab;->k:Ljava/lang/String;

    if-eqz v0, :cond_46

    goto :goto_30

    .line 111
    :cond_46
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_47

    move-object v0, v5

    goto :goto_2f

    .line 112
    :cond_47
    sget-object v2, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v4}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v0

    .line 113
    const-string v2, "user_education"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, v0, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_2f
    sput-object v0, Lcom/inmobi/media/ab;->k:Ljava/lang/String;

    :goto_30
    if-eqz v0, :cond_48

    .line 116
    const-string v2, "u-education"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_48
    sget-object v0, Lcom/inmobi/media/ab;->l:Ljava/lang/String;

    if-eqz v0, :cond_49

    goto :goto_32

    .line 118
    :cond_49
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_4a

    move-object v0, v5

    goto :goto_31

    .line 119
    :cond_4a
    sget-object v2, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v4}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v0

    .line 120
    const-string v2, "user_language"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    iget-object v0, v0, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    :goto_31
    sput-object v0, Lcom/inmobi/media/ab;->l:Ljava/lang/String;

    :goto_32
    if-eqz v0, :cond_4b

    .line 123
    const-string v2, "u-language"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :cond_4b
    sget-object v0, Lcom/inmobi/media/ab;->m:Ljava/lang/String;

    if-eqz v0, :cond_4c

    goto :goto_34

    .line 125
    :cond_4c
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_4d

    goto :goto_33

    .line 126
    :cond_4d
    sget-object v2, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0, v4}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v0

    .line 127
    const-string v2, "user_interest"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, v0, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 129
    :goto_33
    sput-object v5, Lcom/inmobi/media/ab;->m:Ljava/lang/String;

    move-object v0, v5

    :goto_34
    if-eqz v0, :cond_4e

    .line 130
    const-string v2, "u-interests"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_4e
    invoke-static {}, Lcom/inmobi/media/ab;->c()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 132
    const-string v0, "1"

    goto :goto_35

    .line 133
    :cond_4f
    const-string v0, "0"

    :goto_35
    const-string v2, "u-age-restricted"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public static final a(Landroid/content/Context;Z)V
    .locals 7

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v0, "user_info_store"

    invoke-static {p0, v0}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v1

    const/4 v5, 0x4

    const/4 v6, 0x0

    .line 5
    const-string v2, "user_age_restricted"

    const/4 v4, 0x0

    move v3, p1

    invoke-static/range {v1 .. v6}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;ZZILjava/lang/Object;)V

    return-void
.end method

.method public static a(Z)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/inmobi/media/ab;->b:Ljava/lang/Boolean;

    .line 2
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Lub/p3;

    invoke-direct {v1, v0, p0}, Lub/p3;-><init>(Landroid/content/Context;Z)V

    invoke-static {v1}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public static b()Landroid/location/Location;
    .locals 5

    .line 1
    sget-object v0, Lcom/inmobi/media/ab;->n:Landroid/location/Location;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    return-object v1

    .line 14
    :cond_1
    sget-object v2, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    .line 16
    const-string v2, "user_info_store"

    .line 17
    .line 18
    invoke-static {v0, v2}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v2, "key"

    .line 23
    .line 24
    const-string v3, "user_location"

    .line 25
    .line 26
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, v0, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    .line 30
    .line 31
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    return-object v1

    .line 38
    :cond_2
    new-instance v2, Landroid/location/Location;

    .line 39
    .line 40
    const-string v3, ""

    .line 41
    .line 42
    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :try_start_0
    new-instance v3, Lkotlin/text/Regex;

    .line 46
    .line 47
    const-string v4, ","

    .line 48
    .line 49
    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    const/4 v4, 0x0

    .line 53
    invoke-virtual {v3, v0, v4}, Lkotlin/text/Regex;->q(Ljava/lang/CharSequence;I)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-array v3, v4, [Ljava/lang/String;

    .line 58
    .line 59
    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, [Ljava/lang/String;

    .line 64
    .line 65
    aget-object v3, v0, v4

    .line 66
    .line 67
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLatitude(D)V

    .line 72
    .line 73
    .line 74
    const/4 v3, 0x1

    .line 75
    aget-object v3, v0, v3

    .line 76
    .line 77
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 78
    .line 79
    .line 80
    move-result-wide v3

    .line 81
    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 82
    .line 83
    .line 84
    const/4 v3, 0x2

    .line 85
    aget-object v3, v0, v3

    .line 86
    .line 87
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    invoke-virtual {v2, v3}, Landroid/location/Location;->setAccuracy(F)V

    .line 92
    .line 93
    .line 94
    const/4 v3, 0x3

    .line 95
    aget-object v0, v0, v3

    .line 96
    .line 97
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 98
    .line 99
    .line 100
    move-result-wide v3

    .line 101
    invoke-virtual {v2, v3, v4}, Landroid/location/Location;->setTime(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    move-object v1, v2

    .line 105
    :catch_0
    sput-object v1, Lcom/inmobi/media/ab;->n:Landroid/location/Location;

    .line 106
    .line 107
    return-object v1
.end method

.method public static c()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/inmobi/media/ab;->b:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    sget-object v2, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    const-string v2, "user_info_store"

    .line 20
    .line 21
    invoke-static {v0, v2}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v2, "key"

    .line 26
    .line 27
    const-string v3, "user_age_restricted"

    .line 28
    .line 29
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, v0, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    .line 33
    .line 34
    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sput-object v0, Lcom/inmobi/media/ab;->b:Ljava/lang/Boolean;

    .line 43
    .line 44
    :cond_1
    sget-object v0, Lcom/inmobi/media/ab;->b:Ljava/lang/Boolean;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    :cond_2
    return v1
.end method
