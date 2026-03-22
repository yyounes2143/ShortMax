.class public final Lio/bidmachine/protobuf/sdk/SDKContextProto;
.super Ljava/lang/Object;
.source "SDKContextProto.java"


# static fields
.field private static descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_App_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_App_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_context_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_Context_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_context_ContextualData_ImpressionData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_ContextualData_ImpressionData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_context_ContextualData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_ContextualData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_context_Device_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_Device_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_context_SDK_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_SDK_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_context_Session_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_Session_Context_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_context_Session_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_Session_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final internal_static_bidmachine_protobuf_sdk_context_User_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_sdk_context_User_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;


# direct methods
.method static constructor <clinit>()V
    .locals 36

    .line 1
    const-string v0, "\n%bidmachine/protobuf/sdk/context.proto\u0012\u001fbidmachine.protobuf.sdk.context\u001a\u001fgoogle/protobuf/timestamp.proto\u001a%bidmachine/protobuf/adcom/adcom.proto\"\u0095\u0002\n\u000eContextualData\u0012\u0011\n\tplacement\u0018\u0001 \u0001(\t\u0012\u0015\n\rmediator_name\u0018\u0002 \u0001(\t\u0012L\n\u0004data\u0018\u0003 \u0001(\u000b2>.bidmachine.protobuf.sdk.context.ContextualData.ImpressionData\u001a\u008a\u0001\n\u000eImpressionData\u0012\r\n\u0005imimd\u0018\u0001 \u0001(\r\u0012\u000b\n\u0003imd\u0018\u0002 \u0001(\r\u0012\u000c\n\u0004imwp\u0018\u0003 \u0001(\u0002\u0012\n\n\u0002wp\u0018\u0004 \u0001(\u0002\u0012\u0010\n\u0008imbundle\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006bundle\u0018\u0006 \u0001(\t\u0012\u0010\n\u0008imagency\u0018\u0007 \u0001(\t\u0012\u000e\n\u0006agency\u0018\u0008 \u0001(\t\"\u0082\u0002\n\u0007Session\u0012\u0012\n\nsession_id\u0018\u0001 \u0001(\t\u0012A\n\u0007context\u0018\u0002 \u0001(\u000b20.bidmachine.protobuf.sdk.context.Session.Context\u001a\u009f\u0001\n\u0007Context\u0012\u0017\n\u000fsessionduration\u0018\u0001 \u0001(\u0004\u0012\n\n\u0002sc\u0018\u0002 \u0001(\r\u0012\u0011\n\tretention\u0018\u0003 \u0001(\r\u0012=\n\u0004data\u0018\u0004 \u0003(\u000b2/.bidmachine.protobuf.sdk.context.ContextualData\u0012\u001d\n\u0015last_session_duration\u0018\u0005 \u0001(\u0004\"B\n\u0003SDK\u0012\u000b\n\u0003sdk\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006sdkver\u0018\u0002 \u0001(\t\u0012\u000e\n\u0006omidpn\u0018\u0003 \u0001(\t\u0012\u000e\n\u0006omidpv\u0018\u0004 \u0001(\t\"\u008a\u0002\n\u0003App\u0012\u0010\n\u0008app_name\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007app_ver\u0018\u0002 \u0001(\t\u0012?\n\u0007release\u0018\u0003 \u0001(\u000b2..bidmachine.protobuf.adcom.Context.App.Release\u00120\n\u000cinstall_time\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u00125\n\u0011first_launch_time\u0018\u0005 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012\u0010\n\u0008storecat\u0018\u0006 \u0001(\t\u0012\u0013\n\u000bstoresubcat\u0018\u0007 \u0003(\t\u0012\u000f\n\u0007fmwname\u0018\u0008 \u0001(\t\"`\n\u0004User\u0012\u000f\n\u0007consent\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004gdpr\u0018\u0002 \u0001(\u0008\u0012\u000c\n\u0004ccpa\u0018\u0003 \u0001(\t\u0012\u000b\n\u0003gpp\u0018\u0004 \u0001(\t\u0012\u000f\n\u0007gpp_sid\u0018\u0005 \u0003(\r\u0012\r\n\u0005coppa\u0018\u0006 \u0001(\u0008\"\u00ad\u0005\n\u0006Device\u0012\u000b\n\u0003ifv\u0018\u0001 \u0001(\t\u0012\u000e\n\u0006bm_ifv\u0018\u0002 \u0001(\t\u0012\u0015\n\rinputlanguage\u0018\u0003 \u0003(\t\u0012\u0011\n\tdiskspace\u0018\u0004 \u0001(\u0004\u0012\u0011\n\ttotaldisk\u0018\u0005 \u0001(\u0004\u0012\u0010\n\u0008ringmute\u0018\u0006 \u0001(\u0008\u0012\u0010\n\u0008charging\u0018\u0007 \u0001(\u0008\u0012\u000f\n\u0007headset\u0018\u0008 \u0001(\u0008\u0012\u0014\n\u000cbatterylevel\u0018\t \u0001(\u0002\u0012\u0014\n\u000cbatterysaver\u0018\n \u0001(\u0008\u0012\u0010\n\u0008darkmode\u0018\u000b \u0001(\u0008\u0012\u0010\n\u0008airplane\u0018\u000c \u0001(\u0008\u0012\u000b\n\u0003dnd\u0018\r \u0001(\u0008\u0012\u0012\n\ndevicename\u0018\u000e \u0001(\t\u0012\u000c\n\u0004time\u0018\u000f \u0001(\u0004\u0012\u0014\n\u000cscreenbright\u0018\u0010 \u0001(\u0002\u0012\u0011\n\tjailbreak\u0018\u0011 \u0001(\u0008\u0012\u0012\n\nlastbootup\u0018\u0012 \u0001(\u0004\u0012\u000e\n\u0006access\u0018\u0013 \u0001(\t\u0012\u0013\n\u000bheadsetname\u0018\u0014 \u0001(\t\u0012\u0010\n\u0008totalmem\u0018\u0015 \u0001(\u0004\u0012\u000c\n\u0004atts\u0018\u0016 \u0001(\r\u0012\u000f\n\u0007cpuname\u0018\u0019 \u0001(\t\u0012\u0011\n\tcpuvendor\u0018\u001a \u0001(\t\u0012\u000f\n\u0007gpuname\u0018\u001b \u0001(\t\u0012\u0011\n\tgpuvendor\u0018\u001c \u0001(\t\u0012\u0010\n\u0008timezone\u0018\u001d \u0001(\t\u0012\u000f\n\u0007freemem\u0018\u001e \u0001(\u0004\u0012\u0010\n\u0008apilevel\u0018\u001f \u0001(\r\u0012H\n\nconnection\u0018\u0017 \u0001(\u000b24.bidmachine.protobuf.adcom.Context.Device.Connection\u0012L\n\u000caudioContext\u0018\u0018 \u0001(\u000b26.bidmachine.protobuf.adcom.Context.Device.AudioContext\"\u0098\u0002\n\u0007Context\u00121\n\u0003sdk\u0018\u0001 \u0001(\u000b2$.bidmachine.protobuf.sdk.context.SDK\u00121\n\u0003app\u0018\u0002 \u0001(\u000b2$.bidmachine.protobuf.sdk.context.App\u00123\n\u0004user\u0018\u0003 \u0001(\u000b2%.bidmachine.protobuf.sdk.context.User\u00127\n\u0006device\u0018\u0004 \u0001(\u000b2\'.bidmachine.protobuf.sdk.context.Device\u00129\n\u0007session\u0018\u0005 \u0001(\u000b2(.bidmachine.protobuf.sdk.context.SessionB/\n\u001aio.bidmachine.protobuf.sdkB\u000fSDKContextProtoP\u0001b\u0006proto3"

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
    invoke-static {}, Lcom/explorestack/protobuf/adcom/b;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    filled-new-array {v1, v2}, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 24
    .line 25
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKContextProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 39
    .line 40
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_ContextualData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 41
    .line 42
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 43
    .line 44
    const-string v3, "Placement"

    .line 45
    .line 46
    const-string v4, "MediatorName"

    .line 47
    .line 48
    const-string v5, "Data"

    .line 49
    .line 50
    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    sput-object v2, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_ContextualData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 68
    .line 69
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_ContextualData_ImpressionData_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 70
    .line 71
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 72
    .line 73
    const-string v12, "Imagency"

    .line 74
    .line 75
    const-string v13, "Agency"

    .line 76
    .line 77
    const-string v6, "Imimd"

    .line 78
    .line 79
    const-string v7, "Imd"

    .line 80
    .line 81
    const-string v8, "Imwp"

    .line 82
    .line 83
    const-string v9, "Wp"

    .line 84
    .line 85
    const-string v10, "Imbundle"

    .line 86
    .line 87
    const-string v11, "Bundle"

    .line 88
    .line 89
    filled-new-array/range {v6 .. v13}, [Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sput-object v2, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_ContextualData_ImpressionData_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 97
    .line 98
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKContextProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const/4 v2, 0x1

    .line 107
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 112
    .line 113
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 114
    .line 115
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 116
    .line 117
    const-string v3, "SessionId"

    .line 118
    .line 119
    const-string v4, "Context"

    .line 120
    .line 121
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    sput-object v2, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 139
    .line 140
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 141
    .line 142
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 143
    .line 144
    const-string v2, "Retention"

    .line 145
    .line 146
    const-string v3, "LastSessionDuration"

    .line 147
    .line 148
    const-string v4, "Sessionduration"

    .line 149
    .line 150
    const-string v6, "Sc"

    .line 151
    .line 152
    filled-new-array {v4, v6, v2, v5, v3}, [Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Session_Context_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 160
    .line 161
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKContextProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const/4 v1, 0x2

    .line 170
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 175
    .line 176
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_SDK_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 177
    .line 178
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 179
    .line 180
    const-string v2, "Omidpn"

    .line 181
    .line 182
    const-string v3, "Omidpv"

    .line 183
    .line 184
    const-string v4, "Sdk"

    .line 185
    .line 186
    const-string v5, "Sdkver"

    .line 187
    .line 188
    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v2

    .line 192
    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_SDK_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 196
    .line 197
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKContextProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    const/4 v1, 0x3

    .line 206
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 211
    .line 212
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_App_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 213
    .line 214
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 215
    .line 216
    const-string v11, "Storesubcat"

    .line 217
    .line 218
    const-string v12, "Fmwname"

    .line 219
    .line 220
    const-string v5, "AppName"

    .line 221
    .line 222
    const-string v6, "AppVer"

    .line 223
    .line 224
    const-string v7, "Release"

    .line 225
    .line 226
    const-string v8, "InstallTime"

    .line 227
    .line 228
    const-string v9, "FirstLaunchTime"

    .line 229
    .line 230
    const-string v10, "Storecat"

    .line 231
    .line 232
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_App_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 240
    .line 241
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKContextProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

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
    const/4 v1, 0x4

    .line 250
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 255
    .line 256
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_User_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 257
    .line 258
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 259
    .line 260
    const-string v9, "GppSid"

    .line 261
    .line 262
    const-string v10, "Coppa"

    .line 263
    .line 264
    const-string v5, "Consent"

    .line 265
    .line 266
    const-string v6, "Gdpr"

    .line 267
    .line 268
    const-string v7, "Ccpa"

    .line 269
    .line 270
    const-string v8, "Gpp"

    .line 271
    .line 272
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_User_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 280
    .line 281
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKContextProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    const/4 v1, 0x5

    .line 290
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 295
    .line 296
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Device_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 297
    .line 298
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 299
    .line 300
    const-string v34, "Connection"

    .line 301
    .line 302
    const-string v35, "AudioContext"

    .line 303
    .line 304
    const-string v5, "Ifv"

    .line 305
    .line 306
    const-string v6, "BmIfv"

    .line 307
    .line 308
    const-string v7, "Inputlanguage"

    .line 309
    .line 310
    const-string v8, "Diskspace"

    .line 311
    .line 312
    const-string v9, "Totaldisk"

    .line 313
    .line 314
    const-string v10, "Ringmute"

    .line 315
    .line 316
    const-string v11, "Charging"

    .line 317
    .line 318
    const-string v12, "Headset"

    .line 319
    .line 320
    const-string v13, "Batterylevel"

    .line 321
    .line 322
    const-string v14, "Batterysaver"

    .line 323
    .line 324
    const-string v15, "Darkmode"

    .line 325
    .line 326
    const-string v16, "Airplane"

    .line 327
    .line 328
    const-string v17, "Dnd"

    .line 329
    .line 330
    const-string v18, "Devicename"

    .line 331
    .line 332
    const-string v19, "Time"

    .line 333
    .line 334
    const-string v20, "Screenbright"

    .line 335
    .line 336
    const-string v21, "Jailbreak"

    .line 337
    .line 338
    const-string v22, "Lastbootup"

    .line 339
    .line 340
    const-string v23, "Access"

    .line 341
    .line 342
    const-string v24, "Headsetname"

    .line 343
    .line 344
    const-string v25, "Totalmem"

    .line 345
    .line 346
    const-string v26, "Atts"

    .line 347
    .line 348
    const-string v27, "Cpuname"

    .line 349
    .line 350
    const-string v28, "Cpuvendor"

    .line 351
    .line 352
    const-string v29, "Gpuname"

    .line 353
    .line 354
    const-string v30, "Gpuvendor"

    .line 355
    .line 356
    const-string v31, "Timezone"

    .line 357
    .line 358
    const-string v32, "Freemem"

    .line 359
    .line 360
    const-string v33, "Apilevel"

    .line 361
    .line 362
    filled-new-array/range {v5 .. v35}, [Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v2

    .line 366
    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 367
    .line 368
    .line 369
    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Device_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 370
    .line 371
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKContextProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    const/4 v1, 0x6

    .line 380
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 381
    .line 382
    .line 383
    move-result-object v0

    .line 384
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 385
    .line 386
    sput-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Context_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 387
    .line 388
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 389
    .line 390
    const-string v2, "Device"

    .line 391
    .line 392
    const-string v3, "Session"

    .line 393
    .line 394
    const-string v5, "App"

    .line 395
    .line 396
    const-string v6, "User"

    .line 397
    .line 398
    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v2

    .line 402
    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    sput-object v1, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Context_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 406
    .line 407
    invoke-static {}, Lcom/explorestack/protobuf/d2;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 408
    .line 409
    .line 410
    invoke-static {}, Lcom/explorestack/protobuf/adcom/b;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 411
    .line 412
    .line 413
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
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/w;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lio/bidmachine/protobuf/sdk/SDKContextProto;->registerAllExtensions(Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/y;)V
    .locals 0

    .line 1
    return-void
.end method
