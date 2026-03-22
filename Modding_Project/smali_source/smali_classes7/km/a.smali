.class public Lkm/a;
.super Lim/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Llr/a;

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Llr/a;-><init>(III)V

    .line 7
    .line 8
    .line 9
    const/16 v1, 0x13

    .line 10
    .line 11
    invoke-direct {p0, v1, v0}, Lim/a;-><init>(ILlr/a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private f()Z
    .locals 1

    .line 1
    :try_start_0
    sget v0, Lcom/google/android/gms/ads/admanager/AdManagerAdView;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    return v0

    .line 5
    :catch_0
    const/4 v0, 0x0

    .line 6
    return v0
.end method

.method private g(Landroid/content/Context;)Z
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/16 v2, 0x80

    .line 11
    .line 12
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 17
    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    return v0

    .line 21
    :cond_0
    const-string v1, "com.google.android.gms.ads.APPLICATION_ID"

    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 28
    .line 29
    .line 30
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    xor-int/lit8 p1, p1, 0x1

    .line 32
    .line 33
    return p1

    .line 34
    :catch_0
    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public d(Landroid/content/Context;)Z
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lkm/a;->g(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lkm/a;->f()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method

.method public e(Lhm/s;Lhm/u;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lhm/k;)Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
    .locals 15
    .param p1    # Lhm/s;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lhm/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdsFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lhm/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lkm/a$a;->a:[I

    .line 2
    .line 3
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return-object v0

    .line 14
    :pswitch_0
    new-instance v0, Lkm/k;

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    move-object/from16 v2, p1

    .line 18
    .line 19
    move-object/from16 v3, p2

    .line 20
    .line 21
    move-object/from16 v4, p3

    .line 22
    .line 23
    move-object/from16 v5, p4

    .line 24
    .line 25
    move-object/from16 v6, p5

    .line 26
    .line 27
    invoke-direct/range {v1 .. v6}, Lkm/k;-><init>(Lhm/s;Lhm/u;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lhm/k;)V

    .line 28
    .line 29
    .line 30
    return-object v0

    .line 31
    :pswitch_1
    new-instance v0, Lkm/g;

    .line 32
    .line 33
    move-object v1, v0

    .line 34
    move-object/from16 v2, p1

    .line 35
    .line 36
    move-object/from16 v3, p2

    .line 37
    .line 38
    move-object/from16 v4, p3

    .line 39
    .line 40
    move-object/from16 v5, p4

    .line 41
    .line 42
    move-object/from16 v6, p5

    .line 43
    .line 44
    invoke-direct/range {v1 .. v6}, Lkm/g;-><init>(Lhm/s;Lhm/u;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lhm/k;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :pswitch_2
    new-instance v0, Lkm/b;

    .line 49
    .line 50
    sget-object v7, Lcom/google/android/gms/ads/AdSize;->MEDIUM_RECTANGLE:Lcom/google/android/gms/ads/AdSize;

    .line 51
    .line 52
    move-object v1, v0

    .line 53
    move-object/from16 v2, p1

    .line 54
    .line 55
    move-object/from16 v3, p2

    .line 56
    .line 57
    move-object/from16 v4, p3

    .line 58
    .line 59
    move-object/from16 v5, p4

    .line 60
    .line 61
    move-object/from16 v6, p5

    .line 62
    .line 63
    invoke-direct/range {v1 .. v7}, Lkm/b;-><init>(Lhm/s;Lhm/u;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lhm/k;Lcom/google/android/gms/ads/AdSize;)V

    .line 64
    .line 65
    .line 66
    return-object v0

    .line 67
    :pswitch_3
    new-instance v0, Lkm/b;

    .line 68
    .line 69
    sget-object v14, Lcom/google/android/gms/ads/AdSize;->LEADERBOARD:Lcom/google/android/gms/ads/AdSize;

    .line 70
    .line 71
    move-object v8, v0

    .line 72
    move-object/from16 v9, p1

    .line 73
    .line 74
    move-object/from16 v10, p2

    .line 75
    .line 76
    move-object/from16 v11, p3

    .line 77
    .line 78
    move-object/from16 v12, p4

    .line 79
    .line 80
    move-object/from16 v13, p5

    .line 81
    .line 82
    invoke-direct/range {v8 .. v14}, Lkm/b;-><init>(Lhm/s;Lhm/u;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lhm/k;Lcom/google/android/gms/ads/AdSize;)V

    .line 83
    .line 84
    .line 85
    return-object v0

    .line 86
    :pswitch_4
    new-instance v0, Lkm/b;

    .line 87
    .line 88
    sget-object v7, Lcom/google/android/gms/ads/AdSize;->BANNER:Lcom/google/android/gms/ads/AdSize;

    .line 89
    .line 90
    move-object v1, v0

    .line 91
    move-object/from16 v2, p1

    .line 92
    .line 93
    move-object/from16 v3, p2

    .line 94
    .line 95
    move-object/from16 v4, p3

    .line 96
    .line 97
    move-object/from16 v5, p4

    .line 98
    .line 99
    move-object/from16 v6, p5

    .line 100
    .line 101
    invoke-direct/range {v1 .. v7}, Lkm/b;-><init>(Lhm/s;Lhm/u;Lio/bidmachine/AdsFormat;Lio/bidmachine/protobuf/Waterfall$Configuration$AdUnit;Lhm/k;Lcom/google/android/gms/ads/AdSize;)V

    .line 102
    .line 103
    .line 104
    return-object v0

    .line 105
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getVersion()Llr/a;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/MobileAds;->getVersion()Lcom/google/android/gms/ads/VersionInfo;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Llr/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/ads/VersionInfo;->getMajorVersion()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/ads/VersionInfo;->getMinorVersion()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v0}, Lcom/google/android/gms/ads/VersionInfo;->getMicroVersion()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-direct {v1, v2, v3, v0}, Llr/a;-><init>(III)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method
