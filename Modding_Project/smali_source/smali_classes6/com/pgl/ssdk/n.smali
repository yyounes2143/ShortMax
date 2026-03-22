.class public Lcom/pgl/ssdk/n;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/TreeSet;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    new-instance p0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p0}, Lcom/pgl/ssdk/n;->b(Ljava/util/List;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/16 v1, 0x64

    .line 28
    .line 29
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-interface {p0, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string/jumbo v0, "|"

    .line 39
    .line 40
    .line 41
    invoke-static {v0, p0}, Lcom/applovin/impl/tb;->a(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_0
    const-string p0, ""

    .line 47
    .line 48
    return-object p0
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    const-string v31, "audience_network.dex"

    .line 10
    .line 11
    const-string v32, "-journal"

    .line 12
    .line 13
    const-string v1, "abc_"

    .line 14
    .line 15
    const-string v2, "$avd_hide_"

    .line 16
    .line 17
    const-string v3, "avd_hide_"

    .line 18
    .line 19
    const-string v4, "$avd_show_"

    .line 20
    .line 21
    const-string v5, "avd_show_"

    .line 22
    .line 23
    const-string v6, "m3_avd_"

    .line 24
    .line 25
    const-string v7, "$m3_avd_"

    .line 26
    .line 27
    const-string v8, "ic_mtrl_"

    .line 28
    .line 29
    const-string v9, "$mtrl_"

    .line 30
    .line 31
    const-string v10, "mtrl_"

    .line 32
    .line 33
    const-string v11, "btn_checkbox_"

    .line 34
    .line 35
    const-string v12, "bd_progress_"

    .line 36
    .line 37
    const-string v13, "bd_bg_"

    .line 38
    .line 39
    const-string v14, "btn_radio_"

    .line 40
    .line 41
    const-string v15, "pangle_"

    .line 42
    .line 43
    const-string v16, "anythink_"

    .line 44
    .line 45
    const-string v17, "mbridge_"

    .line 46
    .line 47
    const-string/jumbo v18, "sig_"

    .line 48
    .line 49
    .line 50
    const-string v19, "klevin"

    .line 51
    .line 52
    const-string v20, "$applovin_"

    .line 53
    .line 54
    const-string v21, "applovin_"

    .line 55
    .line 56
    const-string v22, "ad_mob_"

    .line 57
    .line 58
    const-string v23, "admob_"

    .line 59
    .line 60
    const-string v24, "common_google_"

    .line 61
    .line 62
    const-string v25, "bigo_"

    .line 63
    .line 64
    const-string v26, "mobads_"

    .line 65
    .line 66
    const-string/jumbo v27, "tapad_"

    .line 67
    .line 68
    .line 69
    const-string/jumbo v28, "vivo_module_"

    .line 70
    .line 71
    .line 72
    const-string v29, "com_facebook_"

    .line 73
    .line 74
    const-string/jumbo v30, "tt_"

    .line 75
    .line 76
    .line 77
    filled-new-array/range {v1 .. v32}, [Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-eqz v2, :cond_3

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Ljava/lang/String;

    .line 96
    .line 97
    const/4 v3, 0x0

    .line 98
    :goto_1
    const/16 v4, 0x20

    .line 99
    .line 100
    if-ge v3, v4, :cond_0

    .line 101
    .line 102
    aget-object v4, v0, v3

    .line 103
    .line 104
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-nez v5, :cond_2

    .line 109
    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-nez v5, :cond_1

    .line 115
    .line 116
    invoke-virtual {v2, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-eqz v4, :cond_2

    .line 121
    .line 122
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_3
    return-object p0
.end method
