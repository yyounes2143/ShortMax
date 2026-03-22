.class public abstract Lcom/inmobi/media/Y4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Ljava/util/HashMap;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "mk-version"

    .line 7
    .line 8
    invoke-static {}, Lcom/inmobi/media/Vc;->a()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/inmobi/media/te;->a:Lcom/inmobi/media/te;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/inmobi/media/te;->c()Ljava/lang/Boolean;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    const-string v2, "u-id-adt"

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const-string v1, "1"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const-string v1, "0"

    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_1
    const-string v1, "ts"

    .line 40
    .line 41
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    const-string v1, "tz"

    .line 57
    .line 58
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    const/16 v3, 0xf

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    const/16 v4, 0x10

    .line 69
    .line 70
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    add-int/2addr v2, v3

    .line 75
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    sget-object v1, Lcom/inmobi/media/Zc;->a:Lcom/inmobi/media/Zc;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    .line 86
    .line 87
    new-instance v1, Ljava/util/HashMap;

    .line 88
    .line 89
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 90
    .line 91
    .line 92
    sget-boolean v2, Lcom/inmobi/media/Zc;->e:Z

    .line 93
    .line 94
    if-eqz v2, :cond_2

    .line 95
    .line 96
    sget-object v2, Lcom/inmobi/media/Zc;->d:Ljava/lang/String;

    .line 97
    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    const-string v3, "u-s-id"

    .line 101
    .line 102
    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :catch_0
    const-string v1, "Y4"

    .line 110
    .line 111
    const-string v2, "TAG"

    .line 112
    .line 113
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :goto_1
    return-object v0
.end method
