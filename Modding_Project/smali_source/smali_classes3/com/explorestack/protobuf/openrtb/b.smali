.class public final Lcom/explorestack/protobuf/openrtb/b;
.super Ljava/lang/Object;
.source "OpenrtbProto.java"


# static fields
.field static final a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final b:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final c:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final d:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final e:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final f:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final g:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final h:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final i:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final j:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final k:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final l:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final m:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final n:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final o:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final p:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final q:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final r:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field static final s:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final t:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field private static u:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 25

    .line 1
    const-string v0, "\n)bidmachine/protobuf/openrtb/openrtb.proto\u0012\u001bbidmachine.protobuf.openrtb\u001a\u0019google/protobuf/any.proto\u001a\u001cgoogle/protobuf/struct.proto\"\u00bc\u0001\n\u0007Openrtb\u0012\u000b\n\u0003ver\u0018\u0001 \u0001(\t\u0012\u0012\n\ndomainspec\u0018\u0002 \u0001(\t\u0012\u0011\n\tdomainver\u0018\u0003 \u0001(\t\u00127\n\u0007request\u0018\u0004 \u0001(\u000b2$.bidmachine.protobuf.openrtb.RequestH\u0000\u00129\n\u0008response\u0018\u0005 \u0001(\u000b2%.bidmachine.protobuf.openrtb.ResponseH\u0000B\t\n\u0007payload\"\u00d0\t\n\u0007Request\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004test\u0018\u0002 \u0001(\u0008\u0012\u000c\n\u0004tmax\u0018\u0003 \u0001(\r\u0012\n\n\u0002at\u0018\u0004 \u0001(\r\u0012\u000b\n\u0003cur\u0018\u0005 \u0003(\t\u0012\u000c\n\u0004seat\u0018\u0006 \u0003(\t\u0012\r\n\u0005wseat\u0018\u0007 \u0001(\u0008\u0012\r\n\u0005cdata\u0018\u0008 \u0001(\t\u0012;\n\u0006source\u0018\t \u0001(\u000b2+.bidmachine.protobuf.openrtb.Request.Source\u00127\n\u0004item\u0018\n \u0003(\u000b2).bidmachine.protobuf.openrtb.Request.Item\u0012\u000f\n\u0007package\u0018\u000b \u0001(\r\u0012%\n\u0007context\u0018\u000c \u0001(\u000b2\u0014.google.protobuf.Any\u0012$\n\u0003ext\u0018\u000e \u0001(\u000b2\u0017.google.protobuf.Struct\u0012\'\n\text_proto\u0018\r \u0003(\u000b2\u0014.google.protobuf.Any\u001a\u00ae\u0001\n\u0006Source\u0012\u000b\n\u0003tid\u0018\u0001 \u0001(\t\u0012\n\n\u0002ds\u0018\u0002 \u0001(\t\u0012\u000e\n\u0006dsgver\u0018\u0003 \u0001(\r\u0012\u000e\n\u0006digest\u0018\u0004 \u0001(\t\u0012\u000c\n\u0004cert\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006pchain\u0018\u0006 \u0001(\t\u0012$\n\u0003ext\u0018\u0008 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012\'\n\text_proto\u0018\u0007 \u0003(\u000b2\u0014.google.protobuf.Any\u001a\u00a9\u0005\n\u0004Item\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u000b\n\u0003qty\u0018\u0002 \u0001(\r\u0012\u000b\n\u0003seq\u0018\u0003 \u0001(\r\u0012\u000b\n\u0003flr\u0018\u0004 \u0001(\u0001\u0012\u000e\n\u0006flrcur\u0018\u0006 \u0001(\t\u0012\u000b\n\u0003exp\u0018\u0007 \u0001(\r\u0012\n\n\u0002dt\u0018\u0008 \u0001(\t\u0012\u000c\n\u0004dlvy\u0018\t \u0001(\r\u0012@\n\u0006metric\u0018\n \u0003(\u000b20.bidmachine.protobuf.openrtb.Request.Item.Metric\u0012<\n\u0004deal\u0018\u000b \u0003(\u000b2..bidmachine.protobuf.openrtb.Request.Item.Deal\u0012\u000f\n\u0007private\u0018\u000c \u0001(\u0008\u0012\"\n\u0004spec\u0018\r \u0001(\u000b2\u0014.google.protobuf.Any\u0012$\n\u0003ext\u0018\u000f \u0001(\u000b2\u0017.google.protobuf.Struct\u0012\'\n\text_proto\u0018\u000e \u0003(\u000b2\u0014.google.protobuf.Any\u001a\u0084\u0001\n\u0006Metric\u0012\u000c\n\u0004type\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\u0002\u0012\u000e\n\u0006vendor\u0018\u0003 \u0001(\t\u0012$\n\u0003ext\u0018\u0005 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012\'\n\text_proto\u0018\u0004 \u0003(\u000b2\u0014.google.protobuf.Any\u001a\u00ab\u0001\n\u0004Deal\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u000b\n\u0003flr\u0018\u0002 \u0001(\u0001\u0012\u000e\n\u0006flrcur\u0018\u0003 \u0001(\t\u0012\n\n\u0002at\u0018\u0004 \u0001(\r\u0012\r\n\u0005wseat\u0018\u0005 \u0003(\t\u0012\u0010\n\u0008wadomain\u0018\u0006 \u0003(\t\u0012$\n\u0003ext\u0018\u0008 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012\'\n\text_proto\u0018\u0007 \u0003(\u000b2\u0014.google.protobuf.Any\"\u0091\u0007\n\u0008Response\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\r\n\u0005bidid\u0018\u0002 \u0001(\t\u00125\n\u0003nbr\u0018\u0003 \u0001(\u000e2(.bidmachine.protobuf.openrtb.NoBidReason\u0012\u000b\n\u0003cur\u0018\u0004 \u0001(\t\u0012\r\n\u0005cdata\u0018\u0005 \u0001(\t\u0012>\n\u0007seatbid\u0018\u0006 \u0003(\u000b2-.bidmachine.protobuf.openrtb.Response.Seatbid\u0012$\n\u0003ext\u0018\u0008 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012\'\n\text_proto\u0018\u0007 \u0003(\u000b2\u0014.google.protobuf.Any\u001a\u0087\u0005\n\u0007Seatbid\u0012\u000c\n\u0004seat\u0018\u0001 \u0001(\t\u0012\u000f\n\u0007package\u0018\u0002 \u0001(\u0008\u0012>\n\u0003bid\u0018\u0003 \u0003(\u000b21.bidmachine.protobuf.openrtb.Response.Seatbid.Bid\u0012$\n\u0003ext\u0018\u0005 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012\'\n\text_proto\u0018\u0004 \u0003(\u000b2\u0014.google.protobuf.Any\u001a\u00cd\u0003\n\u0003Bid\u0012\n\n\u0002id\u0018\u0001 \u0001(\t\u0012\u000c\n\u0004item\u0018\u0002 \u0001(\t\u0012\r\n\u0005price\u0018\u0003 \u0001(\u0001\u0012\u000c\n\u0004deal\u0018\u0004 \u0001(\t\u0012\u000b\n\u0003cid\u0018\u0005 \u0001(\t\u0012\u000e\n\u0006tactic\u0018\u0006 \u0001(\t\u0012\u000c\n\u0004purl\u0018\u0007 \u0001(\t\u0012\u000c\n\u0004burl\u0018\u0008 \u0001(\t\u0012\u000c\n\u0004lurl\u0018\t \u0001(\t\u0012\u000b\n\u0003exp\u0018\n \u0001(\r\u0012\u000b\n\u0003mid\u0018\u000b \u0001(\t\u0012F\n\u0005macro\u0018\u000c \u0003(\u000b27.bidmachine.protobuf.openrtb.Response.Seatbid.Bid.Macro\u0012#\n\u0005media\u0018\r \u0001(\u000b2\u0014.google.protobuf.Any\u0012$\n\u0003ext\u0018\u000f \u0001(\u000b2\u0017.google.protobuf.Struct\u0012\'\n\text_proto\u0018\u000e \u0003(\u000b2\u0014.google.protobuf.Any\u001ar\n\u0005Macro\u0012\u000b\n\u0003key\u0018\u0001 \u0001(\t\u0012\r\n\u0005value\u0018\u0002 \u0001(\t\u0012$\n\u0003ext\u0018\u0004 \u0001(\u000b2\u0017.google.protobuf.Struct\u0012\'\n\text_proto\u0018\u0003 \u0003(\u000b2\u0014.google.protobuf.Any*\u0086\u0005\n\u000bNoBidReason\u0012\u0019\n\u0015NO_BID_REASON_INVALID\u0010\u0000\u0012!\n\u001dNO_BID_REASON_TECHNICAL_ERROR\u0010\u0001\u0012!\n\u001dNO_BID_REASON_INVALID_REQUEST\u0010\u0002\u0012#\n\u001fNO_BID_REASON_KNOWN_WEB_CRAWLER\u0010\u0003\u0012#\n\u001fNO_BID_REASON_NON_HUMAN_TRAFFIC\u0010\u0004\u0012\u001a\n\u0016NO_BID_REASON_PROXY_IP\u0010\u0005\u0012$\n NO_BID_REASON_UNSUPPORTED_DEVICE\u0010\u0006\u0012\u0019\n\u0015NO_BID_REASON_BLOCKED\u0010\u0007\u0012 \n\u001cNO_BID_REASON_UNMATCHED_USER\u0010\u0008\u0012$\n NO_BID_REASON_DAILY_USER_CAP_MET\u0010\t\u0012&\n\"NO_BID_REASON_DAILY_DOMAIN_CAP_MET\u0010\n\u00123\n/NO_BID_REASON_ADS_TXT_AUTHORIZATION_UNAVAILABLE\u0010\u000b\u00121\n-NO_BID_REASON_ADS_TXT_AUTHORIZATION_VIOLATION\u0010\u000c\u00125\n1NO_BID_REASON_ADS_CERT_AUTHENTICATION_UNAVAILABLE\u0010\r\u00123\n/NO_BID_REASON_ADS_CERT_AUTHENTICATION_VIOLATION\u0010\u000e\u0012+\n\'NO_BID_REASON_INSUFFICIENT_AUCTION_TIME\u0010\u000f*\u0093\n\n\nLossReason\u0012\u0017\n\u0013LOSS_REASON_BID_WON\u0010\u0000\u0012\u001e\n\u001aLOSS_REASON_INTERNAL_ERROR\u0010\u0001\u0012.\n*LOSS_REASON_IMPRESSION_OPPORTUNITY_EXPIRED\u0010\u0002\u0012$\n LOSS_REASON_INVALID_BID_RESPONSE\u0010\u0003\u0012\u001f\n\u001bLOSS_REASON_INVALID_DEAL_ID\u0010\u0004\u0012\"\n\u001eLOSS_REASON_INVALID_AUCTION_ID\u0010\u0005\u0012)\n%LOSS_REASON_INVALID_ADVERTISER_DOMAIN\u0010\u0006\u0012\u001e\n\u001aLOSS_REASON_MISSING_MARKUP\u0010\u0007\u0012#\n\u001fLOSS_REASON_MISSING_CREATIVE_ID\u0010\u0008\u0012!\n\u001dLOSS_REASON_MISSING_BID_PRICE\u0010\t\u0012.\n*LOSS_REASON_MISSING_CREATIVE_APPROVAL_DATA\u0010\n\u0012#\n\u001fLOSS_REASON_BELOW_AUCTION_FLOOR\u0010d\u0012 \n\u001cLOSS_REASON_BELOW_DEAL_FLOOR\u0010e\u0012\"\n\u001eLOSS_REASON_LOST_TO_HIGHER_BID\u0010f\u0012\u001e\n\u001aLOSS_REASON_LOST_TO_A_DEAL\u0010g\u0012\u001c\n\u0018LOSS_REASON_SEAT_BLOCKED\u0010h\u0012*\n%LOSS_REASON_CREATIVE_FILTERED_GENERAL\u0010\u00c8\u0001\u00125\n0LOSS_REASON_CREATIVE_FILTERED_PENDING_PROCESSING\u0010\u00c9\u0001\u0012.\n)LOSS_REASON_CREATIVE_FILTERED_DISAPPROVED\u0010\u00ca\u0001\u00123\n.LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED\u0010\u00cb\u0001\u0012<\n7LOSS_REASON_CREATIVE_FILTERED_INCORRECT_CREATIVE_FORMAT\u0010\u00cc\u0001\u00128\n3LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS\u0010\u00cd\u0001\u0012-\n(LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE\u0010\u00ce\u0001\u00126\n1LOSS_REASON_CREATIVE_FILTERED_LANGUAGE_EXCLUSIONS\u0010\u00cf\u0001\u00126\n1LOSS_REASON_CREATIVE_FILTERED_CATEGORY_EXCLUSIONS\u0010\u00d0\u0001\u0012@\n;LOSS_REASON_CREATIVE_FILTERED_CREATIVE_ATTRIBUTE_EXCLUSIONS\u0010\u00d1\u0001\u00125\n0LOSS_REASON_CREATIVE_FILTERED_AD_TYPE_EXCLUSIONS\u0010\u00d2\u0001\u00125\n0LOSS_REASON_CREATIVE_FILTERED_ANIMATION_TOO_LONG\u0010\u00d3\u0001\u00126\n1LOSS_REASON_CREATIVE_FILTERED_NOT_ALLOWED_IN_DEAL\u0010\u00d4\u0001B:\n!com.explorestack.protobuf.openrtbB\u000cOpenrtbProtoP\u0001\u00a2\u0002\u0004ORTBb\u0006proto3"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {}, Lcom/explorestack/protobuf/f;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

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
    sput-object v0, Lcom/explorestack/protobuf/openrtb/b;->u:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 24
    .line 25
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/b;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

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
    sput-object v0, Lcom/explorestack/protobuf/openrtb/b;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 41
    .line 42
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 43
    .line 44
    const-string v7, "Response"

    .line 45
    .line 46
    const-string v8, "Payload"

    .line 47
    .line 48
    const-string v3, "Ver"

    .line 49
    .line 50
    const-string v4, "Domainspec"

    .line 51
    .line 52
    const-string v5, "Domainver"

    .line 53
    .line 54
    const-string v6, "Request"

    .line 55
    .line 56
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sput-object v2, Lcom/explorestack/protobuf/openrtb/b;->b:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 64
    .line 65
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/b;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/4 v2, 0x1

    .line 74
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 79
    .line 80
    sput-object v0, Lcom/explorestack/protobuf/openrtb/b;->c:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 81
    .line 82
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 83
    .line 84
    const-string v16, "Ext"

    .line 85
    .line 86
    const-string v17, "ExtProto"

    .line 87
    .line 88
    const-string v4, "Id"

    .line 89
    .line 90
    const-string v5, "Test"

    .line 91
    .line 92
    const-string v6, "Tmax"

    .line 93
    .line 94
    const-string v7, "At"

    .line 95
    .line 96
    const-string v8, "Cur"

    .line 97
    .line 98
    const-string v9, "Seat"

    .line 99
    .line 100
    const-string v10, "Wseat"

    .line 101
    .line 102
    const-string v11, "Cdata"

    .line 103
    .line 104
    const-string v12, "Source"

    .line 105
    .line 106
    const-string v13, "Item"

    .line 107
    .line 108
    const-string v14, "Package"

    .line 109
    .line 110
    const-string v15, "Context"

    .line 111
    .line 112
    filled-new-array/range {v4 .. v17}, [Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-direct {v3, v0, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sput-object v3, Lcom/explorestack/protobuf/openrtb/b;->d:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v3

    .line 129
    check-cast v3, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 130
    .line 131
    sput-object v3, Lcom/explorestack/protobuf/openrtb/b;->e:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 132
    .line 133
    new-instance v4, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 134
    .line 135
    const-string v11, "Ext"

    .line 136
    .line 137
    const-string v12, "ExtProto"

    .line 138
    .line 139
    const-string v5, "Tid"

    .line 140
    .line 141
    const-string v6, "Ds"

    .line 142
    .line 143
    const-string v7, "Dsgver"

    .line 144
    .line 145
    const-string v8, "Digest"

    .line 146
    .line 147
    const-string v9, "Cert"

    .line 148
    .line 149
    const-string v10, "Pchain"

    .line 150
    .line 151
    filled-new-array/range {v5 .. v12}, [Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    invoke-direct {v4, v3, v5}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    sput-object v4, Lcom/explorestack/protobuf/openrtb/b;->f:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 169
    .line 170
    sput-object v0, Lcom/explorestack/protobuf/openrtb/b;->g:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 171
    .line 172
    new-instance v3, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 173
    .line 174
    const-string v16, "Ext"

    .line 175
    .line 176
    const-string v17, "ExtProto"

    .line 177
    .line 178
    const-string v4, "Id"

    .line 179
    .line 180
    const-string v5, "Qty"

    .line 181
    .line 182
    const-string v6, "Seq"

    .line 183
    .line 184
    const-string v7, "Flr"

    .line 185
    .line 186
    const-string v8, "Flrcur"

    .line 187
    .line 188
    const-string v9, "Exp"

    .line 189
    .line 190
    const-string v10, "Dt"

    .line 191
    .line 192
    const-string v11, "Dlvy"

    .line 193
    .line 194
    const-string v12, "Metric"

    .line 195
    .line 196
    const-string v13, "Deal"

    .line 197
    .line 198
    const-string v14, "Private"

    .line 199
    .line 200
    const-string v15, "Spec"

    .line 201
    .line 202
    filled-new-array/range {v4 .. v17}, [Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v4

    .line 206
    invoke-direct {v3, v0, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    sput-object v3, Lcom/explorestack/protobuf/openrtb/b;->h:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 210
    .line 211
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v3

    .line 219
    check-cast v3, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 220
    .line 221
    sput-object v3, Lcom/explorestack/protobuf/openrtb/b;->i:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 222
    .line 223
    new-instance v4, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 224
    .line 225
    const-string v5, "Type"

    .line 226
    .line 227
    const-string v6, "Value"

    .line 228
    .line 229
    const-string v7, "Vendor"

    .line 230
    .line 231
    const-string v8, "Ext"

    .line 232
    .line 233
    const-string v9, "ExtProto"

    .line 234
    .line 235
    filled-new-array {v5, v6, v7, v8, v9}, [Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v5

    .line 239
    invoke-direct {v4, v3, v5}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    sput-object v4, Lcom/explorestack/protobuf/openrtb/b;->j:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 243
    .line 244
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 253
    .line 254
    sput-object v0, Lcom/explorestack/protobuf/openrtb/b;->k:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 255
    .line 256
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 257
    .line 258
    const-string v16, "Ext"

    .line 259
    .line 260
    const-string v17, "ExtProto"

    .line 261
    .line 262
    const-string v10, "Id"

    .line 263
    .line 264
    const-string v11, "Flr"

    .line 265
    .line 266
    const-string v12, "Flrcur"

    .line 267
    .line 268
    const-string v13, "At"

    .line 269
    .line 270
    const-string v14, "Wseat"

    .line 271
    .line 272
    const-string v15, "Wadomain"

    .line 273
    .line 274
    filled-new-array/range {v10 .. v17}, [Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    sput-object v2, Lcom/explorestack/protobuf/openrtb/b;->l:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 282
    .line 283
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/b;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    const/4 v2, 0x2

    .line 292
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 297
    .line 298
    sput-object v0, Lcom/explorestack/protobuf/openrtb/b;->m:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 299
    .line 300
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 301
    .line 302
    const-string v16, "Ext"

    .line 303
    .line 304
    const-string v17, "ExtProto"

    .line 305
    .line 306
    const-string v10, "Id"

    .line 307
    .line 308
    const-string v11, "Bidid"

    .line 309
    .line 310
    const-string v12, "Nbr"

    .line 311
    .line 312
    const-string v13, "Cur"

    .line 313
    .line 314
    const-string v14, "Cdata"

    .line 315
    .line 316
    const-string v15, "Seatbid"

    .line 317
    .line 318
    filled-new-array/range {v10 .. v17}, [Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v3

    .line 322
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    sput-object v2, Lcom/explorestack/protobuf/openrtb/b;->n:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 326
    .line 327
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 336
    .line 337
    sput-object v0, Lcom/explorestack/protobuf/openrtb/b;->o:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 338
    .line 339
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 340
    .line 341
    const-string v3, "Package"

    .line 342
    .line 343
    const-string v4, "Bid"

    .line 344
    .line 345
    const-string v5, "Seat"

    .line 346
    .line 347
    filled-new-array {v5, v3, v4, v8, v9}, [Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v3

    .line 351
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    sput-object v2, Lcom/explorestack/protobuf/openrtb/b;->p:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 355
    .line 356
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v0

    .line 364
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 365
    .line 366
    sput-object v0, Lcom/explorestack/protobuf/openrtb/b;->q:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 367
    .line 368
    new-instance v2, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 369
    .line 370
    const-string v23, "Ext"

    .line 371
    .line 372
    const-string v24, "ExtProto"

    .line 373
    .line 374
    const-string v10, "Id"

    .line 375
    .line 376
    const-string v11, "Item"

    .line 377
    .line 378
    const-string v12, "Price"

    .line 379
    .line 380
    const-string v13, "Deal"

    .line 381
    .line 382
    const-string v14, "Cid"

    .line 383
    .line 384
    const-string v15, "Tactic"

    .line 385
    .line 386
    const-string v16, "Purl"

    .line 387
    .line 388
    const-string v17, "Burl"

    .line 389
    .line 390
    const-string v18, "Lurl"

    .line 391
    .line 392
    const-string v19, "Exp"

    .line 393
    .line 394
    const-string v20, "Mid"

    .line 395
    .line 396
    const-string v21, "Macro"

    .line 397
    .line 398
    const-string v22, "Media"

    .line 399
    .line 400
    filled-new-array/range {v10 .. v24}, [Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    invoke-direct {v2, v0, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    sput-object v2, Lcom/explorestack/protobuf/openrtb/b;->r:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 408
    .line 409
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getNestedTypes()Ljava/util/List;

    .line 410
    .line 411
    .line 412
    move-result-object v0

    .line 413
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 418
    .line 419
    sput-object v0, Lcom/explorestack/protobuf/openrtb/b;->s:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 420
    .line 421
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 422
    .line 423
    const-string v2, "Key"

    .line 424
    .line 425
    filled-new-array {v2, v6, v8, v9}, [Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    sput-object v1, Lcom/explorestack/protobuf/openrtb/b;->t:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 433
    .line 434
    invoke-static {}, Lcom/explorestack/protobuf/f;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 435
    .line 436
    .line 437
    invoke-static {}, Lcom/explorestack/protobuf/y1;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 438
    .line 439
    .line 440
    return-void
.end method

.method public static a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/openrtb/b;->u:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method
