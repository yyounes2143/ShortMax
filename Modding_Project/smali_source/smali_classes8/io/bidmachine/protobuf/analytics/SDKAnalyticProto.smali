.class public final Lio/bidmachine/protobuf/analytics/SDKAnalyticProto;
.super Ljava/lang/Object;
.source "SDKAnalyticProto.java"


# static fields
.field private static descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field static final internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Dimension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Dimension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Error_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Error_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Measure_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Measure_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const-string v0, "\n\'bidmachine/protobuf/analytics/sdk.proto\u0012\u001dbidmachine.protobuf.analytics\u001a\u001fgoogle/protobuf/timestamp.proto\"\u00c4\u0005\n\u0012SDKAnalyticPayload\u0012I\n\u0007metrics\u0018\u0001 \u0003(\u000b28.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric\u001a\u00e2\u0004\n\u0006Metric\u0012\u000f\n\u0007context\u0018\u0001 \u0001(\t\u0012Q\n\u0004data\u0018\u0002 \u0003(\u000b2C.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData\u001a\u00f3\u0003\n\nMetricData\u0012\u0015\n\ttimestamp\u0018\u0001 \u0001(\tB\u0002\u0018\u0001\u0012\u000c\n\u0004name\u0018\u0002 \u0001(\t\u0012a\n\ndimensions\u0018\u0003 \u0003(\u000b2M.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Dimension\u0012]\n\u0008measures\u0018\u0004 \u0003(\u000b2K.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Measure\u0012X\n\u0005error\u0018\u0005 \u0001(\u000b2I.bidmachine.protobuf.analytics.SDKAnalyticPayload.Metric.MetricData.Error\u0012&\n\u0002ts\u0018\u0006 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u001a(\n\tDimension\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t\u001a&\n\u0007Measure\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\u0001\u001a*\n\u0005Error\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012\u0013\n\u000bdescription\u0018\u0002 \u0001(\tB<\n io.bidmachine.protobuf.analyticsB\u0010SDKAnalyticProtoP\u0001\u00a2\u0002\u0003BDMb\u0006proto3"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/explorestack/protobuf/d2;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    filled-new-array {v1}, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lio/bidmachine/protobuf/analytics/SDKAnalyticProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 20
    .line 21
    invoke-static {}, Lio/bidmachine/protobuf/analytics/SDKAnalyticProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 35
    .line 36
    sput-object v0, Lio/bidmachine/protobuf/analytics/SDKAnalyticProto;->internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 37
    .line 38
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 39
    .line 40
    const-string v3, "Metrics"

    .line 41
    .line 42
    filled-new-array {v3}, [Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v2, Lio/bidmachine/protobuf/analytics/SDKAnalyticProto;->internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 60
    .line 61
    sput-object v0, Lio/bidmachine/protobuf/analytics/SDKAnalyticProto;->internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 62
    .line 63
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 64
    .line 65
    const-string v3, "Context"

    .line 66
    .line 67
    const-string v4, "Data"

    .line 68
    .line 69
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    sput-object v2, Lio/bidmachine/protobuf/analytics/SDKAnalyticProto;->internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 87
    .line 88
    sput-object v0, Lio/bidmachine/protobuf/analytics/SDKAnalyticProto;->internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 89
    .line 90
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 91
    .line 92
    const-string v7, "Error"

    .line 93
    .line 94
    const-string v8, "Ts"

    .line 95
    .line 96
    const-string v3, "Timestamp"

    .line 97
    .line 98
    const-string v4, "Name"

    .line 99
    .line 100
    const-string v5, "Dimensions"

    .line 101
    .line 102
    const-string v6, "Measures"

    .line 103
    .line 104
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    sput-object v2, Lio/bidmachine/protobuf/analytics/SDKAnalyticProto;->internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 122
    .line 123
    sput-object v1, Lio/bidmachine/protobuf/analytics/SDKAnalyticProto;->internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Dimension_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 124
    .line 125
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 126
    .line 127
    const-string v3, "Name"

    .line 128
    .line 129
    const-string v4, "Value"

    .line 130
    .line 131
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    invoke-direct {v2, v1, v5}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    sput-object v2, Lio/bidmachine/protobuf/analytics/SDKAnalyticProto;->internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Dimension_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    const/4 v2, 0x1

    .line 145
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 150
    .line 151
    sput-object v1, Lio/bidmachine/protobuf/analytics/SDKAnalyticProto;->internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Measure_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 152
    .line 153
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 154
    .line 155
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    invoke-direct {v2, v1, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    sput-object v2, Lio/bidmachine/protobuf/analytics/SDKAnalyticProto;->internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Measure_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    const/4 v1, 0x2

    .line 169
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 174
    .line 175
    sput-object v0, Lio/bidmachine/protobuf/analytics/SDKAnalyticProto;->internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Error_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 176
    .line 177
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 178
    .line 179
    const-string v2, "Description"

    .line 180
    .line 181
    filled-new-array {v3, v2}, [Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    sput-object v1, Lio/bidmachine/protobuf/analytics/SDKAnalyticProto;->internal_static_bidmachine_protobuf_analytics_SDKAnalyticPayload_Metric_MetricData_Error_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 189
    .line 190
    invoke-static {}, Lcom/explorestack/protobuf/d2;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 191
    .line 192
    .line 193
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

.method public static getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/analytics/SDKAnalyticProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/w;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lio/bidmachine/protobuf/analytics/SDKAnalyticProto;->registerAllExtensions(Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/y;)V
    .locals 0

    .line 1
    return-void
.end method
