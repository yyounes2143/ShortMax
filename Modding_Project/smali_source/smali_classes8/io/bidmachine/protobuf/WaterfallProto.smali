.class public final Lio/bidmachine/protobuf/WaterfallProto;
.super Ljava/lang/Object;
.source "WaterfallProto.java"


# static fields
.field private static descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field static final internal_static_bidmachine_protobuf_Waterfall_Configuration_AdUnit_CustomTargetingEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_Waterfall_Configuration_AdUnit_CustomTargetingEntry_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_Waterfall_Configuration_AdUnit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_Waterfall_Configuration_AdUnit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_Waterfall_Configuration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_Waterfall_Configuration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_Waterfall_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_Waterfall_Context_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_Waterfall_Result_AdUnit_Error_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_Waterfall_Result_AdUnit_Error_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_Waterfall_Result_AdUnit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_Waterfall_Result_AdUnit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_Waterfall_Result_CachedAdUnit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_Waterfall_Result_CachedAdUnit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_Waterfall_Result_EstimatedPrice_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_Waterfall_Result_EstimatedPrice_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_Waterfall_Result_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_Waterfall_Result_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_Waterfall_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_Waterfall_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    const-string v0, "\n#bidmachine/protobuf/waterfall.proto\u0012\u0013bidmachine.protobuf\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a$bidmachine/protobuf/extensions.proto\"\u00fc\u0012\n\tWaterfall\u00128\n\u0007request\u0018\u0001 \u0001(\u000b2%.bidmachine.protobuf.Waterfall.ResultH\u0000\u0012@\n\u0008response\u0018\u0002 \u0001(\u000b2,.bidmachine.protobuf.Waterfall.ConfigurationH\u0000\u001a\u00ff\u0006\n\rConfiguration\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006format\u0018\u0002 \u0001(\t\u00125\n\u000frefresh_timeout\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt64Value\u00121\n\u000brefresh_url\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.StringValue\u00120\n\nretry_base\u0018\u0005 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00126\n\u0010max_retry_degree\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00120\n\ncache_size\u0018\u0007 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012E\n\u0008ad_units\u0018\u0008 \u0003(\u000b23.bidmachine.protobuf.Waterfall.Configuration.AdUnit\u0012\u0014\n\u000cshould_break\u0018\t \u0001(\u0008\u00123\n\rserver_params\u0018\n \u0001(\u000b2\u001c.google.protobuf.StringValue\u001a\u00b9\u0003\n\u0006AdUnit\u0012\u001a\n\u0012override_callbacks\u0018\u0001 \u0001(\u0008\u0012\u0017\n\u000fexpiration_time\u0018\u0002 \u0001(\r\u0012\u0012\n\nad_unit_id\u0018\u0003 \u0001(\t\u0012\u0015\n\rrequest_agent\u0018\u0004 \u0001(\t\u0012\r\n\u0005price\u0018\u0005 \u0001(\u0001\u0012b\n\u0010custom_targeting\u0018\u0006 \u0003(\u000b2H.bidmachine.protobuf.Waterfall.Configuration.AdUnit.CustomTargetingEntry\u00127\n\u0011sleep_time_before\u0018\u0007 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00126\n\u0010sleep_time_after\u0018\u0008 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00123\n\rserver_params\u0018\t \u0001(\u000b2\u001c.google.protobuf.StringValue\u001a6\n\u0014CustomTargetingEntry\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t:\u00028\u0001\u001a\u00c8\t\n\u0006Result\u0012\u0014\n\u000cwaterfall_id\u0018\u0001 \u0001(\t\u0012$\n\u0003ext\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012,\n\u0006format\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012E\n\u000fad_unit_results\u0018\u0004 \u0003(\u000b2,.bidmachine.protobuf.Waterfall.Result.AdUnit\u0012K\n\u000fcached_ad_units\u0018\u0005 \u0003(\u000b22.bidmachine.protobuf.Waterfall.Result.CachedAdUnit\u00123\n\rserver_params\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.StringValue\u001a\u009e\u0001\n\u000eEstimatedPrice\u0012+\n\u0005value\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.DoubleValue\u0012/\n\tprecision\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012.\n\u0008currency\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.StringValue\u001a\u00ee\u0003\n\u0006AdUnit\u0012\u0012\n\nad_unit_id\u0018\u0001 \u0001(\t\u0012\r\n\u0005price\u0018\u0002 \u0001(\u0001\u0012M\n\u000festimated_price\u0018\u0003 \u0001(\u000b24.bidmachine.protobuf.Waterfall.Result.EstimatedPrice\u00121\n\u000bad_response\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012C\n\u0006status\u0018\u0005 \u0001(\u000e23.bidmachine.protobuf.Waterfall.Result.AdUnit.Status\u0012A\n\u0005error\u0018\u0006 \u0001(\u000b22.bidmachine.protobuf.Waterfall.Result.AdUnit.Error\u00123\n\rserver_params\u0018\u0007 \u0001(\u000b2\u001c.google.protobuf.StringValue\u001a*\n\u0005Error\u0012\u000c\n\u0004code\u0018\u0001 \u0001(\u0011\u0012\u0013\n\u000bdescription\u0018\u0002 \u0001(\t\"V\n\u0006Status\u0012\u0012\n\u000eSTATUS_INVALID\u0010\u0000\u0012\u0012\n\u000eSTATUS_SUCCESS\u0010\u0001\u0012\u0010\n\u000cSTATUS_ERROR\u0010\u0002\u0012\u0012\n\u000eSTATUS_SKIPPED\u0010\u0003\u001a\u00f8\u0001\n\u000cCachedAdUnit\u0012\u0012\n\nad_unit_id\u0018\u0001 \u0001(\t\u0012\r\n\u0005price\u0018\u0002 \u0001(\u0001\u0012M\n\u000festimated_price\u0018\u0003 \u0001(\u000b24.bidmachine.protobuf.Waterfall.Result.EstimatedPrice\u00121\n\u000bad_response\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012\u000e\n\u0006frozen\u0018\u0005 \u0001(\u0008\u00123\n\rserver_params\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.StringValue\u001a\u009a\u0001\n\u0007Context\u0012D\n\u000econfigurations\u0018\u0001 \u0003(\u000b2,.bidmachine.protobuf.Waterfall.Configuration\u0012I\n\u000cevent_config\u0018\u0002 \u0001(\u000b23.bidmachine.protobuf.AdExtension.EventConfigurationB\t\n\u0007payloadB0\n\u0016io.bidmachine.protobufB\u000eWaterfallProtoP\u0001\u00a2\u0002\u0003BDMb\u0006proto3"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/explorestack/protobuf/q2;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {}, Lcom/explorestack/protobuf/y1;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {}, Lio/bidmachine/protobuf/ExtensionsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    filled-new-array {v1, v2, v3}, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lio/bidmachine/protobuf/WaterfallProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 28
    .line 29
    invoke-static {}, Lio/bidmachine/protobuf/WaterfallProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v1, 0x0

    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 43
    .line 44
    sput-object v0, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 45
    .line 46
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 47
    .line 48
    const-string v3, "Response"

    .line 49
    .line 50
    const-string v4, "Payload"

    .line 51
    .line 52
    const-string v5, "Request"

    .line 53
    .line 54
    filled-new-array {v5, v3, v4}, [Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sput-object v2, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 72
    .line 73
    sput-object v2, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Configuration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 74
    .line 75
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 76
    .line 77
    const-string v12, "ShouldBreak"

    .line 78
    .line 79
    const-string v13, "ServerParams"

    .line 80
    .line 81
    const-string v4, "Id"

    .line 82
    .line 83
    const-string v5, "Format"

    .line 84
    .line 85
    const-string v6, "RefreshTimeout"

    .line 86
    .line 87
    const-string v7, "RefreshUrl"

    .line 88
    .line 89
    const-string v8, "RetryBase"

    .line 90
    .line 91
    const-string v9, "MaxRetryDegree"

    .line 92
    .line 93
    const-string v10, "CacheSize"

    .line 94
    .line 95
    const-string v11, "AdUnits"

    .line 96
    .line 97
    filled-new-array/range {v4 .. v13}, [Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    invoke-direct {v3, v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    sput-object v3, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Configuration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 105
    .line 106
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 115
    .line 116
    sput-object v2, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Configuration_AdUnit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 117
    .line 118
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 119
    .line 120
    const-string v11, "SleepTimeAfter"

    .line 121
    .line 122
    const-string v12, "ServerParams"

    .line 123
    .line 124
    const-string v4, "OverrideCallbacks"

    .line 125
    .line 126
    const-string v5, "ExpirationTime"

    .line 127
    .line 128
    const-string v6, "AdUnitId"

    .line 129
    .line 130
    const-string v7, "RequestAgent"

    .line 131
    .line 132
    const-string v8, "Price"

    .line 133
    .line 134
    const-string v9, "CustomTargeting"

    .line 135
    .line 136
    const-string v10, "SleepTimeBefore"

    .line 137
    .line 138
    filled-new-array/range {v4 .. v12}, [Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-direct {v3, v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    sput-object v3, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Configuration_AdUnit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 146
    .line 147
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    check-cast v2, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 156
    .line 157
    sput-object v2, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Configuration_AdUnit_CustomTargetingEntry_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 158
    .line 159
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 160
    .line 161
    const-string v4, "Key"

    .line 162
    .line 163
    const-string v5, "Value"

    .line 164
    .line 165
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v4

    .line 169
    invoke-direct {v3, v2, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    sput-object v3, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Configuration_AdUnit_CustomTargetingEntry_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    const/4 v3, 0x1

    .line 179
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    check-cast v2, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 184
    .line 185
    sput-object v2, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Result_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 186
    .line 187
    new-instance v4, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 188
    .line 189
    const-string v10, "CachedAdUnits"

    .line 190
    .line 191
    const-string v11, "ServerParams"

    .line 192
    .line 193
    const-string v6, "WaterfallId"

    .line 194
    .line 195
    const-string v7, "Ext"

    .line 196
    .line 197
    const-string v8, "Format"

    .line 198
    .line 199
    const-string v9, "AdUnitResults"

    .line 200
    .line 201
    filled-new-array/range {v6 .. v11}, [Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    invoke-direct {v4, v2, v6}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    sput-object v4, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Result_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 209
    .line 210
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v4

    .line 214
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    check-cast v4, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 219
    .line 220
    sput-object v4, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Result_EstimatedPrice_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 221
    .line 222
    new-instance v6, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 223
    .line 224
    const-string v7, "Precision"

    .line 225
    .line 226
    const-string v8, "Currency"

    .line 227
    .line 228
    filled-new-array {v5, v7, v8}, [Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v5

    .line 232
    invoke-direct {v6, v4, v5}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    sput-object v6, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Result_EstimatedPrice_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 236
    .line 237
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v4

    .line 241
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    check-cast v3, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 246
    .line 247
    sput-object v3, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Result_AdUnit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 248
    .line 249
    new-instance v4, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 250
    .line 251
    const-string v10, "Error"

    .line 252
    .line 253
    const-string v11, "ServerParams"

    .line 254
    .line 255
    const-string v5, "AdUnitId"

    .line 256
    .line 257
    const-string v6, "Price"

    .line 258
    .line 259
    const-string v7, "EstimatedPrice"

    .line 260
    .line 261
    const-string v8, "AdResponse"

    .line 262
    .line 263
    const-string v9, "Status"

    .line 264
    .line 265
    filled-new-array/range {v5 .. v11}, [Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    invoke-direct {v4, v3, v5}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    sput-object v4, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Result_AdUnit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 273
    .line 274
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    check-cast v1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 283
    .line 284
    sput-object v1, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Result_AdUnit_Error_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 285
    .line 286
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 287
    .line 288
    const-string v4, "Code"

    .line 289
    .line 290
    const-string v5, "Description"

    .line 291
    .line 292
    filled-new-array {v4, v5}, [Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    invoke-direct {v3, v1, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    sput-object v3, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Result_AdUnit_Error_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 300
    .line 301
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 302
    .line 303
    .line 304
    move-result-object v1

    .line 305
    const/4 v2, 0x2

    .line 306
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    check-cast v1, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 311
    .line 312
    sput-object v1, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Result_CachedAdUnit_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 313
    .line 314
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 315
    .line 316
    const-string v8, "Frozen"

    .line 317
    .line 318
    const-string v9, "ServerParams"

    .line 319
    .line 320
    const-string v4, "AdUnitId"

    .line 321
    .line 322
    const-string v5, "Price"

    .line 323
    .line 324
    const-string v6, "EstimatedPrice"

    .line 325
    .line 326
    const-string v7, "AdResponse"

    .line 327
    .line 328
    filled-new-array/range {v4 .. v9}, [Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v4

    .line 332
    invoke-direct {v3, v1, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    sput-object v3, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Result_CachedAdUnit_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 336
    .line 337
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 338
    .line 339
    .line 340
    move-result-object v0

    .line 341
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 342
    .line 343
    .line 344
    move-result-object v0

    .line 345
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 346
    .line 347
    sput-object v0, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 348
    .line 349
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 350
    .line 351
    const-string v2, "Configurations"

    .line 352
    .line 353
    const-string v3, "EventConfig"

    .line 354
    .line 355
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    sput-object v1, Lio/bidmachine/protobuf/WaterfallProto;->internal_static_bidmachine_protobuf_Waterfall_Context_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 363
    .line 364
    invoke-static {}, Lcom/explorestack/protobuf/q2;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 365
    .line 366
    .line 367
    invoke-static {}, Lcom/explorestack/protobuf/y1;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 368
    .line 369
    .line 370
    invoke-static {}, Lio/bidmachine/protobuf/ExtensionsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 371
    .line 372
    .line 373
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
    sget-object v0, Lio/bidmachine/protobuf/WaterfallProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/w;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lio/bidmachine/protobuf/WaterfallProto;->registerAllExtensions(Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/y;)V
    .locals 0

    .line 1
    return-void
.end method
