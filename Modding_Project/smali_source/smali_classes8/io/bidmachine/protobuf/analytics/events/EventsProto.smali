.class public final Lio/bidmachine/protobuf/analytics/events/EventsProto;
.super Ljava/lang/Object;
.source "EventsProto.java"


# static fields
.field private static descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field static final internal_static_bidmachine_protobuf_analytics_events_SDKEvent_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final internal_static_bidmachine_protobuf_analytics_events_SDKEvent_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    const-string v0, "\n*bidmachine/protobuf/analytics/events.proto\u0012$bidmachine.protobuf.analytics.events\u001a\u001egoogle/protobuf/wrappers.proto\u001a\u001fgoogle/protobuf/timestamp.proto\u001a\u001cgoogle/protobuf/struct.proto\u001a$bidmachine/protobuf/sdk/errors.proto\"\u00df\u0002\n\u0008SDKEvent\u0012\u000e\n\u0006action\u0018\u0001 \u0001(\r\u0012\u000f\n\u0007context\u0018\u0002 \u0001(\t\u0012-\n\u0007network\u0018\u0003 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012.\n\nstart_time\u0018\u0004 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012/\n\u000bfinish_time\u0018\u0005 \u0001(\u000b2\u001a.google.protobuf.Timestamp\u0012-\n\u0007ad_type\u0018\u0006 \u0001(\u000b2\u001c.google.protobuf.StringValue\u0012\r\n\u0005price\u0018\u0007 \u0001(\u0001\u00124\n\u0005error\u0018\u0008 \u0001(\u000b2%.bidmachine.protobuf.sdk.errors.Error\u0012.\n\rcustom_params\u0018\t \u0001(\u000b2\u0017.google.protobuf.StructB8\n\'io.bidmachine.protobuf.analytics.eventsB\u000bEventsProtoP\u0001b\u0006proto3"

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
    invoke-static {}, Lcom/explorestack/protobuf/d2;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-static {}, Lcom/explorestack/protobuf/y1;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

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
    sput-object v0, Lio/bidmachine/protobuf/analytics/events/EventsProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 32
    .line 33
    invoke-static {}, Lio/bidmachine/protobuf/analytics/events/EventsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

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
    sput-object v0, Lio/bidmachine/protobuf/analytics/events/EventsProto;->internal_static_bidmachine_protobuf_analytics_events_SDKEvent_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 49
    .line 50
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 51
    .line 52
    const-string v9, "Error"

    .line 53
    .line 54
    const-string v10, "CustomParams"

    .line 55
    .line 56
    const-string v2, "Action"

    .line 57
    .line 58
    const-string v3, "Context"

    .line 59
    .line 60
    const-string v4, "Network"

    .line 61
    .line 62
    const-string v5, "StartTime"

    .line 63
    .line 64
    const-string v6, "FinishTime"

    .line 65
    .line 66
    const-string v7, "AdType"

    .line 67
    .line 68
    const-string v8, "Price"

    .line 69
    .line 70
    filled-new-array/range {v2 .. v10}, [Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    sput-object v1, Lio/bidmachine/protobuf/analytics/events/EventsProto;->internal_static_bidmachine_protobuf_analytics_events_SDKEvent_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 78
    .line 79
    invoke-static {}, Lcom/explorestack/protobuf/q2;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/explorestack/protobuf/d2;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 83
    .line 84
    .line 85
    invoke-static {}, Lcom/explorestack/protobuf/y1;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 86
    .line 87
    .line 88
    invoke-static {}, Lio/bidmachine/protobuf/sdk/SDKErrorsProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 89
    .line 90
    .line 91
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
    sget-object v0, Lio/bidmachine/protobuf/analytics/events/EventsProto;->descriptor:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/w;)V
    .locals 0

    .line 2
    invoke-static {p0}, Lio/bidmachine/protobuf/analytics/events/EventsProto;->registerAllExtensions(Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method public static registerAllExtensions(Lcom/explorestack/protobuf/y;)V
    .locals 0

    .line 1
    return-void
.end method
