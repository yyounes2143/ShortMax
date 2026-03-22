.class Lio/bidmachine/w1;
.super Ljava/lang/Object;
.source "BidMachineAnalyticsInitializer.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static b(Landroid/content/Context;)V
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {p0}, Lio/bidmachine/analytics/BidMachineAnalytics;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    :catchall_0
    return-void
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/Monitor$Configuration;",
            ">;)",
            "Ljava/util/List<",
            "Lio/bidmachine/analytics/MonitorConfig;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;

    .line 21
    .line 22
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;->hasShouldReport()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;->getShouldReport()Lcom/explorestack/protobuf/BoolValue;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/explorestack/protobuf/BoolValue;->f()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    :goto_1
    move v9, v2

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    const/4 v2, 0x0

    .line 39
    goto :goto_1

    .line 40
    :goto_2
    new-instance v2, Lio/bidmachine/analytics/MonitorConfig;

    .line 41
    .line 42
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;->getName()Lcom/explorestack/protobuf/StringValue;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;->getUrl()Lcom/explorestack/protobuf/StringValue;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;->getBatchSize()Lcom/explorestack/protobuf/UInt32Value;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Lcom/explorestack/protobuf/UInt32Value;->getValue()I

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/Monitor$Configuration;->getInterval()Lcom/explorestack/protobuf/UInt32Value;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lcom/explorestack/protobuf/UInt32Value;->getValue()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    int-to-long v7, v1

    .line 75
    move-object v3, v2

    .line 76
    invoke-direct/range {v3 .. v9}, Lio/bidmachine/analytics/MonitorConfig;-><init>(Ljava/lang/String;Ljava/lang/String;IJZ)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    return-object v0
.end method

.method private d(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/Reader$Configuration;",
            ">;)",
            "Ljava/util/List<",
            "Lio/bidmachine/analytics/ReaderConfig;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lio/bidmachine/protobuf/sdk/Reader$Configuration;

    .line 21
    .line 22
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->hasUniqueOnly()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUniqueOnly()Lcom/explorestack/protobuf/BoolValue;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/explorestack/protobuf/BoolValue;->f()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    :goto_1
    move v8, v2

    .line 37
    goto :goto_2

    .line 38
    :cond_0
    const/4 v2, 0x1

    .line 39
    goto :goto_1

    .line 40
    :goto_2
    new-instance v2, Lio/bidmachine/analytics/ReaderConfig;

    .line 41
    .line 42
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getName()Lcom/explorestack/protobuf/StringValue;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUrl()Lcom/explorestack/protobuf/StringValue;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getUpdateInterval()Lcom/explorestack/protobuf/UInt32Value;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3}, Lcom/explorestack/protobuf/UInt32Value;->getValue()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    int-to-long v6, v3

    .line 67
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/Reader$Configuration;->getRulesList()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-direct {p0, v1}, Lio/bidmachine/w1;->e(Ljava/util/List;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    move-object v3, v2

    .line 76
    invoke-direct/range {v3 .. v9}, Lio/bidmachine/analytics/ReaderConfig;-><init>(Ljava/lang/String;Ljava/lang/String;JZLjava/util/List;)V

    .line 77
    .line 78
    .line 79
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    return-object v0
.end method

.method private e(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/sdk/Reader$Rule;",
            ">;)",
            "Ljava/util/List<",
            "Lio/bidmachine/analytics/ReaderConfig$Rule;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lio/bidmachine/protobuf/sdk/Reader$Rule;

    .line 21
    .line 22
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->hasGeneralRule()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule;->getGeneralRule()Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Lio/bidmachine/analytics/ReaderConfig$Rule;

    .line 33
    .line 34
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getTag()Lcom/explorestack/protobuf/StringValue;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/Reader$Rule$GeneralRule;->getPath()Lcom/explorestack/protobuf/StringValue;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v2, v3, v1}, Lio/bidmachine/analytics/ReaderConfig$Rule;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    return-object v0
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/protobuf/InitResponse;Ljava/lang/String;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/protobuf/InitResponse;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-virtual {p3}, Lio/bidmachine/protobuf/InitResponse;->hasSdkAnalyticConfigV2()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p3}, Lio/bidmachine/protobuf/InitResponse;->getSdkAnalyticConfigV2()Lio/bidmachine/protobuf/sdk/Configuration;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Configuration;->getMonitorsList()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {p0, v1}, Lio/bidmachine/w1;->c(Ljava/util/List;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Configuration;->getReadersList()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {p0, v2}, Lio/bidmachine/w1;->d(Ljava/util/List;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    invoke-virtual {p3}, Lio/bidmachine/protobuf/InitResponse;->getExtras()Lio/bidmachine/protobuf/Extras;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    invoke-virtual {p3}, Lio/bidmachine/protobuf/Extras;->getPrivate()Lcom/explorestack/protobuf/Struct;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Configuration;->getBpk()Lcom/explorestack/protobuf/StringValue;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/explorestack/protobuf/StringValue;->getValue()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    new-instance v9, Lio/bidmachine/analytics/AnalyticsConfig;

    .line 45
    .line 46
    move-object v2, v9

    .line 47
    move-object v3, p4

    .line 48
    move-object v4, v1

    .line 49
    move-object v5, v8

    .line 50
    move-object v6, v0

    .line 51
    move-object v7, p3

    .line 52
    invoke-direct/range {v2 .. v7}, Lio/bidmachine/analytics/AnalyticsConfig;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v9}, Lio/bidmachine/analytics/BidMachineAnalytics;->configure(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p4

    .line 62
    if-nez p4, :cond_1

    .line 63
    .line 64
    new-instance p4, Lio/bidmachine/analytics/AnalyticsConfig;

    .line 65
    .line 66
    move-object v2, p4

    .line 67
    move-object v3, p2

    .line 68
    move-object v4, v1

    .line 69
    move-object v5, v8

    .line 70
    move-object v6, v0

    .line 71
    move-object v7, p3

    .line 72
    invoke-direct/range {v2 .. v7}, Lio/bidmachine/analytics/AnalyticsConfig;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;)V

    .line 73
    .line 74
    .line 75
    invoke-static {p1, p4}, Lio/bidmachine/analytics/BidMachineAnalytics;->configure(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    .line 78
    :catchall_0
    :cond_1
    return-void
.end method
