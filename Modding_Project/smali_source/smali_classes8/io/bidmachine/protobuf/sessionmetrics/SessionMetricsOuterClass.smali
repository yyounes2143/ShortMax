.class public final Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;
.super Ljava/lang/Object;
.source "SessionMetricsOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdRequest;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdRequestOrBuilder;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserIdQuery;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserIdQueryOrBuilder;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$SessionMetrics;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$SessionMetricsOrBuilder;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdRequestMetrics;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdRequestMetricsOrBuilder;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$ImpressionMetrics;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$ImpressionMetricsOrBuilder;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$WindowMetrics;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$WindowMetricsOrBuilder;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdDomainTimestamps;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdDomainTimestampsOrBuilder;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$Timestamps;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$TimestampsOrBuilder;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSession;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserSessionOrBuilder;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserState;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$UserStateOrBuilder;,
        Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass$AdType;
    }
.end annotation


# static fields
.field private static descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private static final internal_static_sessionmetrics_AdDomainTimestamps_AdDomainsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_sessionmetrics_AdDomainTimestamps_AdDomainsEntry_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field private static final internal_static_sessionmetrics_AdDomainTimestamps_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_sessionmetrics_AdDomainTimestamps_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field private static final internal_static_sessionmetrics_AdRequestMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_sessionmetrics_AdRequestMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field private static final internal_static_sessionmetrics_AdRequest_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_sessionmetrics_AdRequest_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field private static final internal_static_sessionmetrics_ImpressionMetrics_DomainMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_sessionmetrics_ImpressionMetrics_DomainMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field private static final internal_static_sessionmetrics_ImpressionMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_sessionmetrics_ImpressionMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field private static final internal_static_sessionmetrics_SessionMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_sessionmetrics_SessionMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field private static final internal_static_sessionmetrics_Timestamps_DayBucket_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_sessionmetrics_Timestamps_DayBucket_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field private static final internal_static_sessionmetrics_Timestamps_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_sessionmetrics_Timestamps_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field private static final internal_static_sessionmetrics_UserIdQuery_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_sessionmetrics_UserIdQuery_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field private static final internal_static_sessionmetrics_UserSession_AdTypeMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_sessionmetrics_UserSession_AdTypeMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field private static final internal_static_sessionmetrics_UserSession_Auction_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_sessionmetrics_UserSession_Auction_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field private static final internal_static_sessionmetrics_UserSession_Ecpm_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_sessionmetrics_UserSession_Ecpm_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field private static final internal_static_sessionmetrics_UserSession_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_sessionmetrics_UserSession_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field private static final internal_static_sessionmetrics_UserState_AdRequestsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_sessionmetrics_UserState_AdRequestsEntry_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field private static final internal_static_sessionmetrics_UserState_ImpressionsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_sessionmetrics_UserState_ImpressionsEntry_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field private static final internal_static_sessionmetrics_UserState_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_sessionmetrics_UserState_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field private static final internal_static_sessionmetrics_WindowMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private static final internal_static_sessionmetrics_WindowMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    const-string v0, "\n)bidmachine/protobuf/session_metrics.proto\u0012\u000esessionmetrics\"\u00d5\u0002\n\tUserState\u0012 \n\u0018last_processed_timestamp\u0018\u0001 \u0001(\u0003\u0012?\n\u000bimpressions\u0018\u0002 \u0003(\u000b2*.sessionmetrics.UserState.ImpressionsEntry\u0012>\n\u000bad_requests\u0018\u0003 \u0003(\u000b2).sessionmetrics.UserState.AdRequestsEntry\u001aV\n\u0010ImpressionsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\u0005\u00121\n\u0005value\u0018\u0002 \u0001(\u000b2\".sessionmetrics.AdDomainTimestamps:\u00028\u0001\u001aM\n\u000fAdRequestsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\u0005\u0012)\n\u0005value\u0018\u0002 \u0001(\u000b2\u001a.sessionmetrics.Timestamps:\u00028\u0001\"\u0090\u0005\n\u000bUserSession\u0012\u0015\n\rlast_activity\u0018\u0001 \u0001(\u0003\u0012E\n\u0012metrics_by_ad_type\u0018\u0003 \u0003(\u000b2).sessionmetrics.UserSession.AdTypeMetrics\u0012\u0015\n\rsession_start\u0018\u0004 \u0001(\u0003\u001a@\n\u0004Ecpm\u0012\u0014\n\u000cfirst_prices\u0018\u0001 \u0003(\u0001\u0012\u0013\n\u000blast_prices\u0018\u0002 \u0003(\u0001\u0012\r\n\u0005count\u0018\u0003 \u0001(\u0005\u001aX\n\u0007Auction\u0012\u0019\n\u0011source_request_id\u0018\u0001 \u0001(\u000c\u0012\u0018\n\u0010winner_bidder_id\u0018\u0002 \u0001(\r\u0012\u0018\n\u0010losers_bidder_id\u0018\u0003 \u0003(\r\u001a\u00ef\u0002\n\rAdTypeMetrics\u0012\'\n\u0007ad_type\u0018\u0001 \u0001(\u000e2\u0016.sessionmetrics.AdType\u0012\u0013\n\u000bimpressions\u0018\u0002 \u0001(\u0005\u0012\u0013\n\u000bad_requests\u0018\u0003 \u0001(\u0005\u0012\u000c\n\u0004bids\u0018\u0004 \u0001(\u0005\u0012\u000c\n\u0004wins\u0018\u0005 \u0001(\u0005\u0012\u000e\n\u0006losses\u0018\u0006 \u0001(\u0005\u0012\r\n\u0005lurls\u0018\u0007 \u0001(\u0005\u0012\r\n\u0005nurls\u0018\u0008 \u0001(\u0005\u0012\u001c\n\u0014cumulative_bid_price\u0018\t \u0001(\u0002\u0012\u001d\n\u0015cumulative_lurl_price\u0018\n \u0001(\u0002\u0012\u001d\n\u0015cumulative_nurl_price\u0018\u000b \u0001(\u0002\u0012.\n\u0004ecpm\u0018\u000c \u0001(\u000b2 .sessionmetrics.UserSession.Ecpm\u00125\n\u0008auctions\u0018\r \u0003(\u000b2#.sessionmetrics.UserSession.Auction\"\u009f\u0001\n\nTimestamps\u0012\u0016\n\u000elast_timestamp\u0018\u0001 \u0001(\u0003\u0012\u000e\n\u0006deltas\u0018\u0002 \u0003(\r\u00129\n\u000bday_buckets\u0018\u0003 \u0003(\u000b2$.sessionmetrics.Timestamps.DayBucket\u001a.\n\tDayBucket\u0012\u0012\n\nstart_time\u0018\u0001 \u0001(\u0003\u0012\r\n\u0005count\u0018\u0002 \u0001(\u0005\"\u00a9\u0001\n\u0012AdDomainTimestamps\u0012E\n\nad_domains\u0018\u0001 \u0003(\u000b21.sessionmetrics.AdDomainTimestamps.AdDomainsEntry\u001aL\n\u000eAdDomainsEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012)\n\u0005value\u0018\u0002 \u0001(\u000b2\u001a.sessionmetrics.Timestamps:\u00028\u0001\"B\n\rWindowMetrics\u0012\u000f\n\u0007last_1h\u0018\u0001 \u0001(\u0005\u0012\u000f\n\u0007last_1d\u0018\u0002 \u0001(\u0005\u0012\u000f\n\u0007last_7d\u0018\u0003 \u0001(\u0005\"\u00d6\u0001\n\u0011ImpressionMetrics\u0012\'\n\u0007ad_type\u0018\u0001 \u0001(\u000e2\u0016.sessionmetrics.AdType\u0012@\n\u0007domains\u0018\u0002 \u0003(\u000b2/.sessionmetrics.ImpressionMetrics.DomainMetrics\u001aV\n\rDomainMetrics\u0012\u000e\n\u0006domain\u0018\u0001 \u0001(\t\u00125\n\u000ewindow_metrics\u0018\u0002 \u0001(\u000b2\u001d.sessionmetrics.WindowMetrics\"\u008b\u0001\n\u0010AdRequestMetrics\u0012\'\n\u0007ad_type\u0018\u0001 \u0001(\u000e2\u0016.sessionmetrics.AdType\u00125\n\u000ewindow_metrics\u0018\u0002 \u0001(\u000b2\u001d.sessionmetrics.WindowMetrics\u0012\u0017\n\u000flast_timestamps\u0018\u0003 \u0003(\u0003\"\u00b5\u0001\n\u000eSessionMetrics\u00126\n\u000bimpressions\u0018\u0001 \u0003(\u000b2!.sessionmetrics.ImpressionMetrics\u00125\n\u000bad_requests\u0018\u0002 \u0003(\u000b2 .sessionmetrics.AdRequestMetrics\u00124\n\u000fcurrent_session\u0018\u0003 \u0001(\u000b2\u001b.sessionmetrics.UserSession\"1\n\u000bUserIdQuery\u0012\u000f\n\u0007user_id\u0018\u0001 \u0001(\t\u0012\u0011\n\ttimestamp\u0018\u0002 \u0001(\u0003\"X\n\tAdRequest\u0012\u000f\n\u0007user_id\u0018\u0001 \u0001(\t\u0012\'\n\u0007ad_type\u0018\u0002 \u0001(\u000e2\u0016.sessionmetrics.AdType\u0012\u0011\n\ttimestamp\u0018\u0003 \u0001(\u0003*A\n\u0006AdType\u0012\u000b\n\u0007UNKNOWN\u0010\u0000\u0012\u0010\n\u000cINTERSTITIAL\u0010\u0001\u0012\u000c\n\u0008REWARDED\u0010\u0002\u0012\n\n\u0006BANNER\u0010\u00032\u00b2\u0001\n\u000eSessionService\u0012P\n\u0011GetSessionMetrics\u0012\u001b.sessionmetrics.UserIdQuery\u001a\u001e.sessionmetrics.SessionMetrics\u0012N\n\u0011RegisterAdRequest\u0012\u0019.sessionmetrics.AdRequest\u001a\u001e.sessionmetrics.SessionMetricsB\'\n%io.bidmachine.protobuf.sessionmetricsb\u0006proto3"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 9
    .line 10
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 15
    .line 16
    invoke-static {}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 29
    .line 30
    sput-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserState_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 31
    .line 32
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 33
    .line 34
    const-string v3, "LastProcessedTimestamp"

    .line 35
    .line 36
    const-string v4, "Impressions"

    .line 37
    .line 38
    const-string v5, "AdRequests"

    .line 39
    .line 40
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v2, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserState_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    check-cast v2, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 58
    .line 59
    sput-object v2, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserState_ImpressionsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 60
    .line 61
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 62
    .line 63
    const-string v6, "Key"

    .line 64
    .line 65
    const-string v7, "Value"

    .line 66
    .line 67
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v8

    .line 71
    invoke-direct {v3, v2, v8}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sput-object v3, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserState_ImpressionsEntry_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 86
    .line 87
    sput-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserState_AdRequestsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 88
    .line 89
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 90
    .line 91
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v8

    .line 95
    invoke-direct {v3, v0, v8}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    sput-object v3, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserState_AdRequestsEntry_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 99
    .line 100
    invoke-static {}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 113
    .line 114
    sput-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserSession_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 115
    .line 116
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 117
    .line 118
    const-string v8, "MetricsByAdType"

    .line 119
    .line 120
    const-string v9, "SessionStart"

    .line 121
    .line 122
    const-string v10, "LastActivity"

    .line 123
    .line 124
    filled-new-array {v10, v8, v9}, [Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    invoke-direct {v3, v0, v8}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    sput-object v3, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserSession_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 132
    .line 133
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    check-cast v3, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 142
    .line 143
    sput-object v3, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserSession_Ecpm_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 144
    .line 145
    new-instance v8, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 146
    .line 147
    const-string v9, "FirstPrices"

    .line 148
    .line 149
    const-string v10, "LastPrices"

    .line 150
    .line 151
    const-string v11, "Count"

    .line 152
    .line 153
    filled-new-array {v9, v10, v11}, [Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v9

    .line 157
    invoke-direct {v8, v3, v9}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    sput-object v8, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserSession_Ecpm_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 161
    .line 162
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    check-cast v2, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 171
    .line 172
    sput-object v2, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserSession_Auction_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 173
    .line 174
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 175
    .line 176
    const-string v8, "WinnerBidderId"

    .line 177
    .line 178
    const-string v9, "LosersBidderId"

    .line 179
    .line 180
    const-string v10, "SourceRequestId"

    .line 181
    .line 182
    filled-new-array {v10, v8, v9}, [Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    invoke-direct {v3, v2, v8}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    sput-object v3, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserSession_Auction_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 190
    .line 191
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    const/4 v2, 0x2

    .line 196
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 201
    .line 202
    sput-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserSession_AdTypeMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 203
    .line 204
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 205
    .line 206
    const-string v23, "Ecpm"

    .line 207
    .line 208
    const-string v24, "Auctions"

    .line 209
    .line 210
    const-string v12, "AdType"

    .line 211
    .line 212
    const-string v13, "Impressions"

    .line 213
    .line 214
    const-string v14, "AdRequests"

    .line 215
    .line 216
    const-string v15, "Bids"

    .line 217
    .line 218
    const-string v16, "Wins"

    .line 219
    .line 220
    const-string v17, "Losses"

    .line 221
    .line 222
    const-string v18, "Lurls"

    .line 223
    .line 224
    const-string v19, "Nurls"

    .line 225
    .line 226
    const-string v20, "CumulativeBidPrice"

    .line 227
    .line 228
    const-string v21, "CumulativeLurlPrice"

    .line 229
    .line 230
    const-string v22, "CumulativeNurlPrice"

    .line 231
    .line 232
    filled-new-array/range {v12 .. v24}, [Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    invoke-direct {v3, v0, v8}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    sput-object v3, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserSession_AdTypeMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 240
    .line 241
    invoke-static {}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 254
    .line 255
    sput-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_Timestamps_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 256
    .line 257
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 258
    .line 259
    const-string v3, "Deltas"

    .line 260
    .line 261
    const-string v8, "DayBuckets"

    .line 262
    .line 263
    const-string v9, "LastTimestamp"

    .line 264
    .line 265
    filled-new-array {v9, v3, v8}, [Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v3

    .line 269
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    sput-object v2, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_Timestamps_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 273
    .line 274
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 283
    .line 284
    sput-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_Timestamps_DayBucket_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 285
    .line 286
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 287
    .line 288
    const-string v3, "StartTime"

    .line 289
    .line 290
    filled-new-array {v3, v11}, [Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v3

    .line 294
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    sput-object v2, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_Timestamps_DayBucket_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 298
    .line 299
    invoke-static {}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    const/4 v2, 0x3

    .line 308
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 313
    .line 314
    sput-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_AdDomainTimestamps_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 315
    .line 316
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 317
    .line 318
    const-string v3, "AdDomains"

    .line 319
    .line 320
    filled-new-array {v3}, [Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v3

    .line 324
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    sput-object v2, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_AdDomainTimestamps_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 328
    .line 329
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 338
    .line 339
    sput-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_AdDomainTimestamps_AdDomainsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 340
    .line 341
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 342
    .line 343
    filled-new-array {v6, v7}, [Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 348
    .line 349
    .line 350
    sput-object v2, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_AdDomainTimestamps_AdDomainsEntry_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 351
    .line 352
    invoke-static {}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    const/4 v2, 0x4

    .line 361
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 366
    .line 367
    sput-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_WindowMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 368
    .line 369
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 370
    .line 371
    const-string v3, "Last1D"

    .line 372
    .line 373
    const-string v6, "Last7D"

    .line 374
    .line 375
    const-string v7, "Last1H"

    .line 376
    .line 377
    filled-new-array {v7, v3, v6}, [Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v3

    .line 381
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    sput-object v2, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_WindowMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 385
    .line 386
    invoke-static {}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    const/4 v2, 0x5

    .line 395
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 400
    .line 401
    sput-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_ImpressionMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 402
    .line 403
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 404
    .line 405
    const-string v3, "Domains"

    .line 406
    .line 407
    const-string v6, "AdType"

    .line 408
    .line 409
    filled-new-array {v6, v3}, [Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    sput-object v2, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_ImpressionMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 417
    .line 418
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 427
    .line 428
    sput-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_ImpressionMetrics_DomainMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 429
    .line 430
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 431
    .line 432
    const-string v2, "Domain"

    .line 433
    .line 434
    const-string v3, "WindowMetrics"

    .line 435
    .line 436
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v2

    .line 440
    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    sput-object v1, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_ImpressionMetrics_DomainMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 444
    .line 445
    invoke-static {}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    const/4 v1, 0x6

    .line 454
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 459
    .line 460
    sput-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_AdRequestMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 461
    .line 462
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 463
    .line 464
    const-string v2, "LastTimestamps"

    .line 465
    .line 466
    filled-new-array {v6, v3, v2}, [Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v2

    .line 470
    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    sput-object v1, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_AdRequestMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 474
    .line 475
    invoke-static {}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 476
    .line 477
    .line 478
    move-result-object v0

    .line 479
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 480
    .line 481
    .line 482
    move-result-object v0

    .line 483
    const/4 v1, 0x7

    .line 484
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v0

    .line 488
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 489
    .line 490
    sput-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_SessionMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 491
    .line 492
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 493
    .line 494
    const-string v2, "CurrentSession"

    .line 495
    .line 496
    filled-new-array {v4, v5, v2}, [Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v2

    .line 500
    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 501
    .line 502
    .line 503
    sput-object v1, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_SessionMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 504
    .line 505
    invoke-static {}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 510
    .line 511
    .line 512
    move-result-object v0

    .line 513
    const/16 v1, 0x8

    .line 514
    .line 515
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 520
    .line 521
    sput-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserIdQuery_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 522
    .line 523
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 524
    .line 525
    const-string v2, "UserId"

    .line 526
    .line 527
    const-string v3, "Timestamp"

    .line 528
    .line 529
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v4

    .line 533
    invoke-direct {v1, v0, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
    sput-object v1, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserIdQuery_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 537
    .line 538
    invoke-static {}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 539
    .line 540
    .line 541
    move-result-object v0

    .line 542
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    const/16 v1, 0x9

    .line 547
    .line 548
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 553
    .line 554
    sput-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_AdRequest_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 555
    .line 556
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 557
    .line 558
    filled-new-array {v2, v6, v3}, [Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v2

    .line 562
    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    sput-object v1, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_AdRequest_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 566
    .line 567
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserState_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$100()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserState_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$11600()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_AdDomainTimestamps_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$11700()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_AdDomainTimestamps_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$11800()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_AdDomainTimestamps_AdDomainsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$12800()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_WindowMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$12900()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_WindowMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$14000()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_ImpressionMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$14100()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_ImpressionMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$14200()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_ImpressionMetrics_DomainMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$14300()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_ImpressionMetrics_DomainMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1600()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserSession_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$16400()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_AdRequestMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$16500()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_AdRequestMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1700()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserSession_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1800()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserSession_Ecpm_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$18000()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_SessionMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$18100()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_SessionMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$1900()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserSession_Ecpm_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$19400()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserIdQuery_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$19500()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserIdQuery_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$200()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserState_ImpressionsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$20600()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_AdRequest_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$20700()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_AdRequest_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$300()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserState_AdRequestsEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$3800()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserSession_Auction_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$3900()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserSession_Auction_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$5400()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserSession_AdTypeMetrics_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$5500()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_UserSession_AdTypeMetrics_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$8800()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_Timestamps_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$8900()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_Timestamps_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$9000()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_Timestamps_DayBucket_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$9100()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->internal_static_sessionmetrics_Timestamps_DayBucket_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/w;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lio/bidmachine/protobuf/sessionmetrics/SessionMetricsOuterClass;->registerAllExtensions(Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/y;)V
    .locals 0

    .line 1
    return-void
.end method
