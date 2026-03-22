.class Lio/bidmachine/a5;
.super Ljava/lang/Object;
.source "ProtoTransformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/a5$a;
    }
.end annotation


# direct methods
.method static a(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/NetworkAdUnitManager;Lcom/explorestack/protobuf/openrtb/Response;Lio/bidmachine/a5$a;)V
    .locals 9
    .param p0    # Lio/bidmachine/AdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/NetworkAdUnitManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/explorestack/protobuf/openrtb/Response;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/a5$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequestParameters;",
            "Lio/bidmachine/NetworkAdUnitManager;",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            "Lio/bidmachine/a5$a<",
            "Lio/bidmachine/u;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_8

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/explorestack/protobuf/openrtb/Response;->getSeatbidCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_3

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/openrtb/Response;->getSeatbid(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    if-eqz v5, :cond_7

    .line 17
    .line 18
    invoke-virtual {v5}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getBidCount()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    goto/16 :goto_2

    .line 25
    .line 26
    :cond_1
    invoke-virtual {v5, v0}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid;->getBid(I)Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;

    .line 27
    .line 28
    .line 29
    move-result-object v6

    .line 30
    if-nez v6, :cond_2

    .line 31
    .line 32
    const-string p0, "Bid"

    .line 33
    .line 34
    invoke-static {p0}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p3, p0}, Lio/bidmachine/a5$a;->a(Lfr/a;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    invoke-virtual {v6}, Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;->getMedia()Lcom/explorestack/protobuf/Any;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    const-string p0, "Media"

    .line 49
    .line 50
    invoke-static {p0}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-interface {p3, p0}, Lio/bidmachine/a5$a;->a(Lfr/a;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    const-class v1, Lcom/explorestack/protobuf/adcom/Ad;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Any;->is(Ljava/lang/Class;)Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-nez v2, :cond_4

    .line 65
    .line 66
    const-string p0, "Media not valid"

    .line 67
    .line 68
    invoke-static {p0}, Lfr/a;->h(Ljava/lang/String;)Lfr/a;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-interface {p3, p0}, Lio/bidmachine/a5$a;->a(Lfr/a;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/Any;->unpack(Ljava/lang/Class;)Lcom/explorestack/protobuf/Message;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    move-object v7, v0

    .line 81
    check-cast v7, Lcom/explorestack/protobuf/adcom/Ad;

    .line 82
    .line 83
    if-nez v7, :cond_5

    .line 84
    .line 85
    const-string p0, "Ad"

    .line 86
    .line 87
    invoke-static {p0}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    invoke-interface {p3, p0}, Lio/bidmachine/a5$a;->a(Lfr/a;)V

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :catchall_0
    move-exception p0

    .line 96
    goto :goto_0

    .line 97
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/AdRequestParameters;->getAdsType()Lio/bidmachine/AdsType;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {v0, v7}, Lio/bidmachine/AdsType;->findNetworkAdapter(Lcom/explorestack/protobuf/adcom/Ad;)Lio/bidmachine/NetworkAdapter;

    .line 102
    .line 103
    .line 104
    move-result-object v8

    .line 105
    if-nez v8, :cond_6

    .line 106
    .line 107
    const-string p0, "NetworkAdapter"

    .line 108
    .line 109
    invoke-static {p0}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 110
    .line 111
    .line 112
    move-result-object p0

    .line 113
    invoke-interface {p3, p0}, Lio/bidmachine/a5$a;->a(Lfr/a;)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_6
    new-instance v0, Lio/bidmachine/u;

    .line 118
    .line 119
    move-object v1, v0

    .line 120
    move-object v2, p0

    .line 121
    move-object v3, p1

    .line 122
    move-object v4, p2

    .line 123
    invoke-direct/range {v1 .. v8}, Lio/bidmachine/u;-><init>(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/NetworkAdUnitManager;Lcom/explorestack/protobuf/openrtb/Response;Lcom/explorestack/protobuf/openrtb/Response$Seatbid;Lcom/explorestack/protobuf/openrtb/Response$Seatbid$Bid;Lcom/explorestack/protobuf/adcom/Ad;Lio/bidmachine/NetworkAdapter;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p3, v0}, Lio/bidmachine/a5$a;->onSuccess(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :goto_0
    invoke-static {p0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    const-string p1, "Failed to process response"

    .line 134
    .line 135
    invoke-static {p1, p0}, Lfr/a;->l(Ljava/lang/String;Ljava/lang/Throwable;)Lfr/a;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-interface {p3, p0}, Lio/bidmachine/a5$a;->a(Lfr/a;)V

    .line 140
    .line 141
    .line 142
    :goto_1
    return-void

    .line 143
    :cond_7
    :goto_2
    const-string p0, "Seatbid"

    .line 144
    .line 145
    invoke-static {p0}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 146
    .line 147
    .line 148
    move-result-object p0

    .line 149
    invoke-interface {p3, p0}, Lio/bidmachine/a5$a;->a(Lfr/a;)V

    .line 150
    .line 151
    .line 152
    return-void

    .line 153
    :cond_8
    :goto_3
    const-string p0, "Response"

    .line 154
    .line 155
    invoke-static {p0}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-interface {p3, p0}, Lio/bidmachine/a5$a;->a(Lfr/a;)V

    .line 160
    .line 161
    .line 162
    return-void
.end method
