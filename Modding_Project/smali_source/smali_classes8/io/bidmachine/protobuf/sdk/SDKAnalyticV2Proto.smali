.class public final Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;
.super Ljava/lang/Object;
.source "SDKAnalyticV2Proto.java"


# static fields
.field private static descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Configuration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Configuration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Event_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Event_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Record_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Record_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_OSLog_Record_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_OSLog_Record_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_OSLog_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_OSLog_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Configuration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Configuration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Record_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Record_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_GeneralRule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_GeneralRule_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_IOSLogRule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_IOSLogRule_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const-string v0, "\n*bidmachine/protobuf/sdk/analytics_v2.proto\u0012$bidmachine.protobuf.sdk.analytics_v2\u001a\u001fgoogle/protobuf/timestamp.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a\u001egoogle/protobuf/wrappers.proto\u001a$bidmachine/protobuf/sdk/errors.proto\"\u00f5\u0003\n\u0007Monitor\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012E\n\u0007records\u0018\u0002 \u0003(\u000b24.bidmachine.protobuf.sdk.analytics_v2.Monitor.Record\u001a\u00fb\u0001\n\rConfiguration\u0012*\n\u0004name\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012)\n\u0003url\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.StringValue\u00120\n\nbatch_size\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012.\n\u0008interval\u0018\u0004 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u00121\n\rshould_report\u0018\u0005 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u001a\u0096\u0001\n\u0006Record\u0012-\n\ttimestamp\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\'\n\u0006fields\u0018\u0002 \u0001(\u000b2\u0017.google.protobuf.Struct\u00124\n\u0005error\u0018\u0003 \u0001(\u000b2%.bidmachine.protobuf.sdk.errors.Error\"\u0090\u0008\n\u0006Reader\u0012\u000c\n\u0004name\u0018\u0001 \u0001(\t\u0012-\n\ttimestamp\u0018\u0002 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012D\n\u0007records\u0018\u0003 \u0003(\u000b23.bidmachine.protobuf.sdk.analytics_v2.Reader.Record\u001a\u0090\u0002\n\rConfiguration\u0012*\n\u0004name\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012)\n\u0003url\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.StringValue\u00125\n\u000fupdate_interval\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.UInt32Value\u0012/\n\u000bunique_only\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.BoolValue\u0012@\n\u0005rules\u0018\u0005 \u0003(\u000b21.bidmachine.protobuf.sdk.analytics_v2.Reader.Rule\u001a\u00be\u0003\n\u0004Rule\u0012U\n\u000cgeneral_rule\u0018\u0001 \u0001(\u000b2=.bidmachine.protobuf.sdk.analytics_v2.Reader.Rule.GeneralRuleH\u0000\u0012T\n\u000cios_log_rule\u0018\u0002 \u0001(\u000b2<.bidmachine.protobuf.sdk.analytics_v2.Reader.Rule.IOSLogRuleH\u0000\u001ad\n\u000bGeneralRule\u0012)\n\u0003tag\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012*\n\u0004path\u0018\u0002 \u0001(\u000b2\u001c.google.protobuf.StringValue\u001a\u0094\u0001\n\nIOSLogRule\u0012)\n\u0003tag\u0018\u0001 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012,\n\u0006levels\u0018\u0002 \u0003(\u000b2\u001c.google.protobuf.StringValue\u0012-\n\u0007sources\u0018\u0003 \u0003(\u000b2\u001c.google.protobuf.StringValueB\u000c\n\nrule_oneof\u001a\u00ae\u0001\n\u0006Record\u0012?\n\u0004rule\u0018\u0001 \u0001(\u000b21.bidmachine.protobuf.sdk.analytics_v2.Reader.Rule\u0012-\n\u0008raw_data\u0018\u0002 \u0001(\u000b2\u001b.google.protobuf.BytesValue\u00124\n\u0005error\u0018\u0003 \u0001(\u000b2%.bidmachine.protobuf.sdk.errors.Error\"\u00d6\u0001\n\rConfiguration\u0012M\n\u0008monitors\u0018\u0001 \u0003(\u000b2;.bidmachine.protobuf.sdk.analytics_v2.Monitor.Configuration\u0012K\n\u0007readers\u0018\u0002 \u0003(\u000b2:.bidmachine.protobuf.sdk.analytics_v2.Reader.Configuration\u0012)\n\u0003bpk\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.StringValue\"\u00c5\u0001\n\u0005Event\u0012@\n\u0007monitor\u0018\u0001 \u0001(\u000b2-.bidmachine.protobuf.sdk.analytics_v2.MonitorH\u0000\u0012>\n\u0006reader\u0018\u0002 \u0001(\u000b2,.bidmachine.protobuf.sdk.analytics_v2.ReaderH\u0000\u0012/\n\u000eextras_private\u0018\u0003 \u0001(\u000b2\u0017.google.protobuf.StructB\t\n\u0007payload\"\u00c2\u0001\n\u0005OSLog\u0012C\n\u0007records\u0018\u0001 \u0003(\u000b22.bidmachine.protobuf.sdk.analytics_v2.OSLog.Record\u001at\n\u0006Record\u0012-\n\ttimestamp\u0018\u0001 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\u000b\n\u0003tag\u0018\u0002 \u0001(\t\u0012\r\n\u0005level\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006source\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007message\u0018\u0005 \u0001(\tB8\n\u001aio.bidmachine.protobuf.sdkB\u0012SDKAnalyticV2ProtoP\u0001\u00a2\u0002\u0003BDMb\u0006proto3"

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
    invoke-static {}, Lcom/explorestack/protobuf/y1;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {}, Lcom/explorestack/protobuf/q2;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKErrorsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    filled-new-array {v1, v2, v3, v4}, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 32
    .line 33
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 47
    .line 48
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 49
    .line 50
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 51
    .line 52
    const-string v3, "Name"

    .line 53
    .line 54
    const-string v4, "Records"

    .line 55
    .line 56
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-direct {v2, v0, v5}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sput-object v2, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 74
    .line 75
    sput-object v2, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 76
    .line 77
    new-instance v5, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 78
    .line 79
    const-string v6, "Interval"

    .line 80
    .line 81
    const-string v7, "ShouldReport"

    .line 82
    .line 83
    const-string v8, "Url"

    .line 84
    .line 85
    const-string v9, "BatchSize"

    .line 86
    .line 87
    filled-new-array {v3, v8, v9, v6, v7}, [Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-direct {v5, v2, v6}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    sput-object v5, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Configuration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const/4 v2, 0x1

    .line 101
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 106
    .line 107
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Record_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 108
    .line 109
    new-instance v5, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 110
    .line 111
    const-string v6, "Timestamp"

    .line 112
    .line 113
    const-string v7, "Fields"

    .line 114
    .line 115
    const-string v9, "Error"

    .line 116
    .line 117
    filled-new-array {v6, v7, v9}, [Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    invoke-direct {v5, v0, v7}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    sput-object v5, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Monitor_Record_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 125
    .line 126
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 139
    .line 140
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 141
    .line 142
    new-instance v5, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 143
    .line 144
    filled-new-array {v3, v6, v4}, [Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v7

    .line 148
    invoke-direct {v5, v0, v7}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    sput-object v5, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 152
    .line 153
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    check-cast v5, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 162
    .line 163
    sput-object v5, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Configuration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 164
    .line 165
    new-instance v7, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 166
    .line 167
    const-string v10, "UniqueOnly"

    .line 168
    .line 169
    const-string v11, "Rules"

    .line 170
    .line 171
    const-string v12, "UpdateInterval"

    .line 172
    .line 173
    filled-new-array {v3, v8, v12, v10, v11}, [Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    invoke-direct {v7, v5, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    sput-object v7, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Configuration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    check-cast v3, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 191
    .line 192
    sput-object v3, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 193
    .line 194
    new-instance v5, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 195
    .line 196
    const-string v7, "IosLogRule"

    .line 197
    .line 198
    const-string v8, "RuleOneof"

    .line 199
    .line 200
    const-string v10, "GeneralRule"

    .line 201
    .line 202
    filled-new-array {v10, v7, v8}, [Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-direct {v5, v3, v7}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    sput-object v5, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 210
    .line 211
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v5

    .line 215
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v5

    .line 219
    check-cast v5, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 220
    .line 221
    sput-object v5, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_GeneralRule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 222
    .line 223
    new-instance v7, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 224
    .line 225
    const-string v8, "Path"

    .line 226
    .line 227
    const-string v10, "Tag"

    .line 228
    .line 229
    filled-new-array {v10, v8}, [Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v8

    .line 233
    invoke-direct {v7, v5, v8}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    sput-object v7, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_GeneralRule_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 237
    .line 238
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 239
    .line 240
    .line 241
    move-result-object v3

    .line 242
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    check-cast v2, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 247
    .line 248
    sput-object v2, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_IOSLogRule_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 249
    .line 250
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 251
    .line 252
    const-string v5, "Levels"

    .line 253
    .line 254
    const-string v7, "Sources"

    .line 255
    .line 256
    filled-new-array {v10, v5, v7}, [Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v5

    .line 260
    invoke-direct {v3, v2, v5}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    sput-object v3, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Rule_IOSLogRule_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 264
    .line 265
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    const/4 v2, 0x2

    .line 270
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 275
    .line 276
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Record_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 277
    .line 278
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 279
    .line 280
    const-string v5, "Rule"

    .line 281
    .line 282
    const-string v7, "RawData"

    .line 283
    .line 284
    filled-new-array {v5, v7, v9}, [Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v5

    .line 288
    invoke-direct {v3, v0, v5}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    sput-object v3, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Reader_Record_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 292
    .line 293
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 306
    .line 307
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Configuration_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 308
    .line 309
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 310
    .line 311
    const-string v3, "Readers"

    .line 312
    .line 313
    const-string v5, "Bpk"

    .line 314
    .line 315
    const-string v7, "Monitors"

    .line 316
    .line 317
    filled-new-array {v7, v3, v5}, [Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v3

    .line 321
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    sput-object v2, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Configuration_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 325
    .line 326
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 327
    .line 328
    .line 329
    move-result-object v0

    .line 330
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    const/4 v2, 0x3

    .line 335
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 340
    .line 341
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Event_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 342
    .line 343
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 344
    .line 345
    const-string v3, "ExtrasPrivate"

    .line 346
    .line 347
    const-string v5, "Payload"

    .line 348
    .line 349
    const-string v7, "Monitor"

    .line 350
    .line 351
    const-string v8, "Reader"

    .line 352
    .line 353
    filled-new-array {v7, v8, v3, v5}, [Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v3

    .line 357
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    sput-object v2, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_Event_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 361
    .line 362
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    const/4 v2, 0x4

    .line 371
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 376
    .line 377
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_OSLog_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 378
    .line 379
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 380
    .line 381
    filled-new-array {v4}, [Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v3

    .line 385
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    sput-object v2, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_OSLog_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 389
    .line 390
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 399
    .line 400
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_OSLog_Record_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 401
    .line 402
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 403
    .line 404
    const-string v2, "Source"

    .line 405
    .line 406
    const-string v3, "Message"

    .line 407
    .line 408
    const-string v4, "Level"

    .line 409
    .line 410
    filled-new-array {v6, v10, v4, v2, v3}, [Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v2

    .line 414
    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->internal_static_bidmachine_protobuf_sdk_analytics_v2_OSLog_Record_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 418
    .line 419
    invoke-static {}, Lcom/explorestack/protobuf/d2;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 420
    .line 421
    .line 422
    invoke-static {}, Lcom/explorestack/protobuf/y1;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 423
    .line 424
    .line 425
    invoke-static {}, Lcom/explorestack/protobuf/q2;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 426
    .line 427
    .line 428
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKErrorsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 429
    .line 430
    .line 431
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
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/w;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lio/bidmachine/protobuf/sdk/SDKAnalyticV2Proto;->registerAllExtensions(Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/y;)V
    .locals 0

    .line 1
    return-void
.end method
