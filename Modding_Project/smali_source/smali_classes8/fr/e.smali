.class public Lfr/e;
.super Ljava/lang/Object;
.source "ProtoUtils.java"


# direct methods
.method public static a(Ljava/util/Map;Lio/bidmachine/TrackEventType;Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/List;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_1
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public static b(Landroid/content/Context;Landroid/location/Location;Landroid/location/Location;Z)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, p1, p2}, Lio/bidmachine/core/g;->v(Landroid/content/Context;Landroid/location/Location;Landroid/location/Location;)Landroid/location/Location;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-static {v0, p0, p3}, Lfr/e;->d(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;Landroid/location/Location;Z)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static c(Lcom/explorestack/protobuf/MessageLite;)Ljava/lang/String;
    .locals 2
    .param p0    # Lcom/explorestack/protobuf/MessageLite;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    :try_start_0
    invoke-interface {p0}, Lcom/explorestack/protobuf/MessageLite;->toByteArray()[B

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v1, 0x2

    .line 10
    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    return-object p0

    .line 15
    :catch_0
    return-object v0
.end method

.method public static d(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;Landroid/location/Location;Z)V
    .locals 2
    .param p0    # Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lio/bidmachine/core/g;->E()I

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setUtcoffset(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 8
    .line 9
    .line 10
    :cond_0
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-static {p1}, Lfr/e;->g(Landroid/location/Location;)Lcom/explorestack/protobuf/adcom/LocationType;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setType(Lcom/explorestack/protobuf/adcom/LocationType;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    double-to-float p2, v0

    .line 24
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setLat(F)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    double-to-float p2, v0

    .line 32
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setLon(F)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    float-to-int p2, p2

    .line 40
    invoke-virtual {p0, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setAccur(I)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    .line 44
    .line 45
    .line 46
    move-result-wide p1

    .line 47
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setLastfix(J)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 48
    .line 49
    .line 50
    :cond_1
    return-void
.end method

.method public static e(Lcom/explorestack/protobuf/Struct$Builder;Ljava/util/Map;)V
    .locals 5
    .param p0    # Lcom/explorestack/protobuf/Struct$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/util/Map$Entry;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-class v3, Ljava/lang/String;

    .line 39
    .line 40
    if-ne v2, v3, :cond_2

    .line 41
    .line 42
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v1, Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-class v3, Ljava/lang/Boolean;

    .line 65
    .line 66
    if-ne v2, v3, :cond_3

    .line 67
    .line 68
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v1, Ljava/lang/Boolean;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    invoke-virtual {v2, v1}, Lcom/explorestack/protobuf/Value$Builder;->setBoolValue(Z)Lcom/explorestack/protobuf/Value$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_3
    instance-of v2, v1, Ljava/lang/Number;

    .line 91
    .line 92
    if-eqz v2, :cond_0

    .line 93
    .line 94
    check-cast v1, Ljava/lang/Number;

    .line 95
    .line 96
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    .line 101
    .line 102
    .line 103
    move-result-wide v3

    .line 104
    invoke-virtual {v2, v3, v4}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_4
    return-void
.end method

.method public static f(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/protobuf/AdExtension;
    .locals 5
    .param p0    # Lcom/explorestack/protobuf/adcom/Ad;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const-class v0, Lio/bidmachine/protobuf/AdExtension;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad;->getExtProtoCount()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-lez v1, :cond_1

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/explorestack/protobuf/adcom/Ad;->getExtProto(I)Lcom/explorestack/protobuf/Any;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {v3, v0}, Lcom/explorestack/protobuf/Any;->is(Ljava/lang/Class;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v3, v0}, Lcom/explorestack/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    check-cast v3, Lio/bidmachine/protobuf/AdExtension;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    return-object v3

    .line 29
    :catchall_0
    move-exception v3

    .line 30
    invoke-static {v3}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 p0, 0x0

    .line 37
    return-object p0
.end method

.method public static g(Landroid/location/Location;)Lcom/explorestack/protobuf/adcom/LocationType;
    .locals 2
    .param p0    # Landroid/location/Location;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const-string v0, "gps"

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object p0, Lcom/explorestack/protobuf/adcom/LocationType;->LOCATION_TYPE_GPS:Lcom/explorestack/protobuf/adcom/LocationType;

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    const-string v0, "network"

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-string v0, "passive"

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    :cond_1
    sget-object p0, Lcom/explorestack/protobuf/adcom/LocationType;->LOCATION_TYPE_IP:Lcom/explorestack/protobuf/adcom/LocationType;

    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_2
    sget-object p0, Lcom/explorestack/protobuf/adcom/LocationType;->LOCATION_TYPE_INVALID:Lcom/explorestack/protobuf/adcom/LocationType;

    .line 46
    .line 47
    return-object p0
.end method

.method public static h(Lcom/explorestack/protobuf/adcom/Placement;Lio/bidmachine/banner/BannerSize;)Z
    .locals 2
    .param p0    # Lcom/explorestack/protobuf/adcom/Placement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/banner/BannerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getInstl()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget v0, p1, Lio/bidmachine/banner/BannerSize;->width:I

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getW()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget p1, p1, Lio/bidmachine/banner/BannerSize;->height:I

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getH()I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-ne p1, p0, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 p0, 0x0

    .line 30
    :goto_0
    return p0
.end method

.method public static i(Lcom/explorestack/protobuf/ListValue;)Z
    .locals 0
    .param p0    # Lcom/explorestack/protobuf/ListValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue;->getValuesCount()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-gtz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public static j(Lcom/explorestack/protobuf/Struct;)Z
    .locals 0
    .param p0    # Lcom/explorestack/protobuf/Struct;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Struct;->getFieldsCount()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-gtz p0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    goto :goto_1

    .line 12
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 13
    :goto_1
    return p0
.end method

.method public static k(Lcom/explorestack/protobuf/adcom/Placement;)Z
    .locals 2
    .param p0    # Lcom/explorestack/protobuf/adcom/Placement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lfr/e;->m(Lcom/explorestack/protobuf/adcom/Placement;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getInstl()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1
    invoke-static {p0}, Lfr/e;->n(Lcom/explorestack/protobuf/adcom/Placement;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    return p0
.end method

.method public static l(Lcom/explorestack/protobuf/adcom/Placement;)Z
    .locals 0
    .param p0    # Lcom/explorestack/protobuf/adcom/Placement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getDisplay()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement;->getNativefmt()Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$NativeFormat;->getAssetCount()I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-lez p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public static m(Lcom/explorestack/protobuf/adcom/Placement;)Z
    .locals 0
    .param p0    # Lcom/explorestack/protobuf/adcom/Placement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getReward()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static n(Lcom/explorestack/protobuf/adcom/Placement;)Z
    .locals 1
    .param p0    # Lcom/explorestack/protobuf/adcom/Placement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Placement;->getVideo()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public static o(J)Lcom/explorestack/protobuf/Timestamp;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/Timestamp;->newBuilder()Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-wide/16 v1, 0x3e8

    .line 6
    .line 7
    div-long v3, p0, v1

    .line 8
    .line 9
    invoke-virtual {v0, v3, v4}, Lcom/explorestack/protobuf/Timestamp$Builder;->setSeconds(J)Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    rem-long/2addr p0, v1

    .line 14
    long-to-int p0, p0

    .line 15
    const p1, 0xf4240

    .line 16
    .line 17
    .line 18
    mul-int/2addr p0, p1

    .line 19
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Timestamp$Builder;->setNanos(I)Lcom/explorestack/protobuf/Timestamp$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Timestamp$Builder;->build()Lcom/explorestack/protobuf/Timestamp;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static p(Ljava/util/Map;Ljava/util/List;)V
    .locals 3
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lio/bidmachine/TrackEventType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Event;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getType()Lcom/explorestack/protobuf/adcom/EventType;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    sget-object v2, Lcom/explorestack/protobuf/adcom/EventType;->EVENT_TYPE_IMPRESSION:Lcom/explorestack/protobuf/adcom/EventType;

    .line 31
    .line 32
    if-ne v1, v2, :cond_1

    .line 33
    .line 34
    sget-object v1, Lio/bidmachine/TrackEventType;->Show:Lio/bidmachine/TrackEventType;

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getTypeValue()I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-static {v1}, Lio/bidmachine/TrackEventType;->fromNumber(I)Lio/bidmachine/TrackEventType;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :goto_1
    if-nez v1, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getUrl()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {p0, v1, v0}, Lfr/e;->a(Ljava/util/Map;Lio/bidmachine/TrackEventType;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    :goto_2
    return-void
.end method

.method public static q(Lcom/explorestack/protobuf/ListValue;)Ljava/util/List;
    .locals 2
    .param p0    # Lcom/explorestack/protobuf/ListValue;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/ListValue;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lfr/e;->i(Lcom/explorestack/protobuf/ListValue;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/ListValue;->getValuesList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/explorestack/protobuf/Value;

    .line 33
    .line 34
    invoke-static {v1}, Lfr/e;->t(Lcom/explorestack/protobuf/Value;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    return-object v0
.end method

.method public static r(Ljava/util/List;)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)",
            "Lcom/explorestack/protobuf/ListValue$Builder;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->newBuilder()Lcom/explorestack/protobuf/ListValue$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lfr/e;->v(Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-nez v1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/ListValue$Builder;->addValues(Lcom/explorestack/protobuf/Value$Builder;)Lcom/explorestack/protobuf/ListValue$Builder;

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    return-object v0

    .line 40
    :cond_3
    :goto_1
    const/4 p0, 0x0

    .line 41
    return-object p0
.end method

.method public static s(Lcom/explorestack/protobuf/Struct;)Ljava/util/Map;
    .locals 4
    .param p0    # Lcom/explorestack/protobuf/Struct;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Struct;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lfr/e;->j(Lcom/explorestack/protobuf/Struct;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Ljava/util/Map$Entry;

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    check-cast v1, Lcom/explorestack/protobuf/Value;

    .line 49
    .line 50
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_1

    .line 55
    .line 56
    if-nez v1, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-static {v1}, Lfr/e;->t(Lcom/explorestack/protobuf/Value;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    if-nez v1, :cond_3

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_3
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_4
    return-object v0
.end method

.method public static t(Lcom/explorestack/protobuf/Value;)Ljava/lang/Object;
    .locals 3
    .param p0    # Lcom/explorestack/protobuf/Value;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lfr/e$a;->a:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getKindCase()Lcom/explorestack/protobuf/Value$KindCase;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    aget v1, v1, v2

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    if-eq v1, v2, :cond_5

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    if-eq v1, v2, :cond_4

    .line 22
    .line 23
    const/4 v2, 0x3

    .line 24
    if-eq v1, v2, :cond_3

    .line 25
    .line 26
    const/4 v2, 0x4

    .line 27
    if-eq v1, v2, :cond_2

    .line 28
    .line 29
    const/4 v2, 0x5

    .line 30
    if-eq v1, v2, :cond_1

    .line 31
    .line 32
    return-object v0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getListValue()Lcom/explorestack/protobuf/ListValue;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-static {p0}, Lfr/e;->q(Lcom/explorestack/protobuf/ListValue;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    return-object p0

    .line 42
    :cond_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getStructValue()Lcom/explorestack/protobuf/Struct;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Lfr/e;->s(Lcom/explorestack/protobuf/Struct;)Ljava/util/Map;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0

    .line 51
    :cond_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getBoolValue()Z

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    return-object p0

    .line 60
    :cond_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getStringValue()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    return-object p0

    .line 65
    :cond_5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->getNumberValue()D

    .line 66
    .line 67
    .line 68
    move-result-wide v0

    .line 69
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method

.method public static u(Ljava/util/Map;)Lcom/explorestack/protobuf/Struct$Builder;
    .locals 4
    .param p0    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lcom/explorestack/protobuf/Struct$Builder;"
        }
    .end annotation

    .line 1
    if-eqz p0, :cond_5

    .line 2
    .line 3
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_4

    .line 27
    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Ljava/util/Map$Entry;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-eqz v3, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v1}, Lfr/e;->v(Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v2, v1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_4
    return-object v0

    .line 72
    :cond_5
    :goto_1
    const/4 p0, 0x0

    .line 73
    return-object p0
.end method

.method public static v(Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;
    .locals 3
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p0, Lcom/explorestack/protobuf/Value;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p0, Lcom/explorestack/protobuf/Value;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value;->toBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_1
    instance-of v1, p0, Lcom/explorestack/protobuf/Value$Builder;

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    check-cast p0, Lcom/explorestack/protobuf/Value$Builder;

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_2
    instance-of v1, p0, Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v1, :cond_3

    .line 26
    .line 27
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast p0, Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    return-object p0

    .line 38
    :cond_3
    instance-of v1, p0, Ljava/lang/Number;

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast p0, Ljava/lang/Number;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 49
    .line 50
    .line 51
    move-result-wide v1

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/Value$Builder;->setNumberValue(D)Lcom/explorestack/protobuf/Value$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :cond_4
    instance-of v1, p0, Ljava/lang/Boolean;

    .line 58
    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast p0, Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Value$Builder;->setBoolValue(Z)Lcom/explorestack/protobuf/Value$Builder;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    return-object p0

    .line 76
    :cond_5
    instance-of v1, p0, Ljava/util/List;

    .line 77
    .line 78
    if-eqz v1, :cond_6

    .line 79
    .line 80
    check-cast p0, Ljava/util/List;

    .line 81
    .line 82
    invoke-static {p0}, Lfr/e;->r(Ljava/util/List;)Lcom/explorestack/protobuf/ListValue$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    if-eqz p0, :cond_7

    .line 87
    .line 88
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Value$Builder;->setListValue(Lcom/explorestack/protobuf/ListValue$Builder;)Lcom/explorestack/protobuf/Value$Builder;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    return-object p0

    .line 97
    :cond_6
    instance-of v1, p0, Ljava/util/Map;

    .line 98
    .line 99
    if-eqz v1, :cond_7

    .line 100
    .line 101
    check-cast p0, Ljava/util/Map;

    .line 102
    .line 103
    invoke-static {p0}, Lfr/e;->u(Ljava/util/Map;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    if-eqz p0, :cond_7

    .line 108
    .line 109
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/Value$Builder;->setStructValue(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/Value$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    return-object p0

    .line 118
    :cond_7
    return-object v0
.end method

.method public static w(Ljava/lang/Object;)Lcom/explorestack/protobuf/Value;
    .locals 2
    .param p0    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    instance-of v1, p0, Lcom/explorestack/protobuf/Value;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast p0, Lcom/explorestack/protobuf/Value;

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_1
    instance-of v1, p0, Lcom/explorestack/protobuf/Value$Builder;

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    check-cast p0, Lcom/explorestack/protobuf/Value$Builder;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_2
    invoke-static {p0}, Lfr/e;->v(Ljava/lang/Object;)Lcom/explorestack/protobuf/Value$Builder;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    if-eqz p0, :cond_3

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :cond_3
    return-object v0
.end method
