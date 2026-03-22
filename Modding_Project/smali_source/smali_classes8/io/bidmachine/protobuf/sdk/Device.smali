.class public final Lio/bidmachine/protobuf/sdk/Device;
.super Lcom/explorestack/protobuf/GeneratedMessageV3;
.source "Device.java"

# interfaces
.implements Lio/bidmachine/protobuf/sdk/DeviceOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/protobuf/sdk/Device$Builder;
    }
.end annotation


# static fields
.field public static final ACCESS_FIELD_NUMBER:I = 0x13

.field public static final AIRPLANE_FIELD_NUMBER:I = 0xc

.field public static final APILEVEL_FIELD_NUMBER:I = 0x1f

.field public static final ATTS_FIELD_NUMBER:I = 0x16

.field public static final AUDIOCONTEXT_FIELD_NUMBER:I = 0x18

.field public static final BATTERYLEVEL_FIELD_NUMBER:I = 0x9

.field public static final BATTERYSAVER_FIELD_NUMBER:I = 0xa

.field public static final BM_IFV_FIELD_NUMBER:I = 0x2

.field public static final CHARGING_FIELD_NUMBER:I = 0x7

.field public static final CONNECTION_FIELD_NUMBER:I = 0x17

.field public static final CPUNAME_FIELD_NUMBER:I = 0x19

.field public static final CPUVENDOR_FIELD_NUMBER:I = 0x1a

.field public static final DARKMODE_FIELD_NUMBER:I = 0xb

.field private static final DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Device;

.field public static final DEVICENAME_FIELD_NUMBER:I = 0xe

.field public static final DISKSPACE_FIELD_NUMBER:I = 0x4

.field public static final DND_FIELD_NUMBER:I = 0xd

.field public static final FREEMEM_FIELD_NUMBER:I = 0x1e

.field public static final GPUNAME_FIELD_NUMBER:I = 0x1b

.field public static final GPUVENDOR_FIELD_NUMBER:I = 0x1c

.field public static final HEADSETNAME_FIELD_NUMBER:I = 0x14

.field public static final HEADSET_FIELD_NUMBER:I = 0x8

.field public static final IFV_FIELD_NUMBER:I = 0x1

.field public static final INPUTLANGUAGE_FIELD_NUMBER:I = 0x3

.field public static final JAILBREAK_FIELD_NUMBER:I = 0x11

.field public static final LASTBOOTUP_FIELD_NUMBER:I = 0x12

.field private static final PARSER:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/sdk/Device;",
            ">;"
        }
    .end annotation
.end field

.field public static final RINGMUTE_FIELD_NUMBER:I = 0x6

.field public static final SCREENBRIGHT_FIELD_NUMBER:I = 0x10

.field public static final TIMEZONE_FIELD_NUMBER:I = 0x1d

.field public static final TIME_FIELD_NUMBER:I = 0xf

.field public static final TOTALDISK_FIELD_NUMBER:I = 0x5

.field public static final TOTALMEM_FIELD_NUMBER:I = 0x15

.field private static final serialVersionUID:J


# instance fields
.field private volatile access_:Ljava/lang/Object;

.field private airplane_:Z

.field private apilevel_:I

.field private atts_:I

.field private audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

.field private batterylevel_:F

.field private batterysaver_:Z

.field private volatile bmIfv_:Ljava/lang/Object;

.field private charging_:Z

.field private connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

.field private volatile cpuname_:Ljava/lang/Object;

.field private volatile cpuvendor_:Ljava/lang/Object;

.field private darkmode_:Z

.field private volatile devicename_:Ljava/lang/Object;

.field private diskspace_:J

.field private dnd_:Z

.field private freemem_:J

.field private volatile gpuname_:Ljava/lang/Object;

.field private volatile gpuvendor_:Ljava/lang/Object;

.field private headset_:Z

.field private volatile headsetname_:Ljava/lang/Object;

.field private volatile ifv_:Ljava/lang/Object;

.field private inputlanguage_:Lcom/explorestack/protobuf/n0;

.field private jailbreak_:Z

.field private lastbootup_:J

.field private memoizedIsInitialized:B

.field private ringmute_:Z

.field private screenbright_:F

.field private time_:J

.field private volatile timezone_:Ljava/lang/Object;

.field private totaldisk_:J

.field private totalmem_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/protobuf/sdk/Device;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Device;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/protobuf/sdk/Device;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Device;

    .line 7
    .line 8
    new-instance v0, Lio/bidmachine/protobuf/sdk/Device$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lio/bidmachine/protobuf/sdk/Device$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>()V

    const/4 v0, -0x1

    .line 6
    iput-byte v0, p0, Lio/bidmachine/protobuf/sdk/Device;->memoizedIsInitialized:B

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;

    .line 8
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    .line 9
    sget-object v1, Lcom/explorestack/protobuf/m0;->d:Lcom/explorestack/protobuf/n0;

    iput-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 10
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    .line 15
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    .line 17
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    const/4 p1, -0x1

    .line 4
    iput-byte p1, p0, Lio/bidmachine/protobuf/sdk/Device;->memoizedIsInitialized:B

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lio/bidmachine/protobuf/sdk/Device$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/sdk/Device;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Lio/bidmachine/protobuf/sdk/Device;-><init>()V

    .line 19
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_5

    .line 21
    :try_start_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->K()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v3, :sswitch_data_0

    .line 22
    invoke-virtual {p0, p1, v0, p2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseUnknownField(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/j2$b;Lcom/explorestack/protobuf/y;I)Z

    move-result v3

    if-nez v3, :cond_0

    :sswitch_0
    move v1, v5

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto/16 :goto_1

    :catch_1
    move-exception p1

    goto/16 :goto_2

    .line 23
    :sswitch_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sdk/Device;->apilevel_:I

    goto :goto_0

    .line 24
    :sswitch_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->M()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/protobuf/sdk/Device;->freemem_:J

    goto :goto_0

    .line 25
    :sswitch_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 26
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    goto :goto_0

    .line 27
    :sswitch_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 28
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    goto :goto_0

    .line 29
    :sswitch_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 30
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    goto :goto_0

    .line 31
    :sswitch_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 32
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    goto :goto_0

    .line 33
    :sswitch_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 34
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    goto :goto_0

    .line 35
    :sswitch_8
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    if-eqz v3, :cond_1

    .line 36
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;

    move-result-object v4

    .line 37
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    if-eqz v4, :cond_0

    .line 38
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;

    .line 39
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    goto :goto_0

    .line 40
    :sswitch_9
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    if-eqz v3, :cond_2

    .line 41
    invoke-virtual {v3}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;->toBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;

    move-result-object v4

    .line 42
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;->parser()Lcom/explorestack/protobuf/j1;

    move-result-object v3

    invoke-virtual {p1, v3, p2}, Lcom/explorestack/protobuf/n;->A(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    if-eqz v4, :cond_0

    .line 43
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Context$Device$Connection;)Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;

    .line 44
    invoke-virtual {v4}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    move-result-object v3

    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    goto/16 :goto_0

    .line 45
    :sswitch_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->L()I

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sdk/Device;->atts_:I

    goto/16 :goto_0

    .line 46
    :sswitch_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->M()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/protobuf/sdk/Device;->totalmem_:J

    goto/16 :goto_0

    .line 47
    :sswitch_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 48
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 49
    :sswitch_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 50
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 51
    :sswitch_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->M()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootup_:J

    goto/16 :goto_0

    .line 52
    :sswitch_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device;->jailbreak_:Z

    goto/16 :goto_0

    .line 53
    :sswitch_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->w()F

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sdk/Device;->screenbright_:F

    goto/16 :goto_0

    .line 54
    :sswitch_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->M()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/protobuf/sdk/Device;->time_:J

    goto/16 :goto_0

    .line 55
    :sswitch_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 56
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 57
    :sswitch_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device;->dnd_:Z

    goto/16 :goto_0

    .line 58
    :sswitch_14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device;->airplane_:Z

    goto/16 :goto_0

    .line 59
    :sswitch_15
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device;->darkmode_:Z

    goto/16 :goto_0

    .line 60
    :sswitch_16
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device;->batterysaver_:Z

    goto/16 :goto_0

    .line 61
    :sswitch_17
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->w()F

    move-result v3

    iput v3, p0, Lio/bidmachine/protobuf/sdk/Device;->batterylevel_:F

    goto/16 :goto_0

    .line 62
    :sswitch_18
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device;->headset_:Z

    goto/16 :goto_0

    .line 63
    :sswitch_19
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device;->charging_:Z

    goto/16 :goto_0

    .line 64
    :sswitch_1a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->q()Z

    move-result v3

    iput-boolean v3, p0, Lio/bidmachine/protobuf/sdk/Device;->ringmute_:Z

    goto/16 :goto_0

    .line 65
    :sswitch_1b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->M()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/protobuf/sdk/Device;->totaldisk_:J

    goto/16 :goto_0

    .line 66
    :sswitch_1c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->M()J

    move-result-wide v3

    iput-wide v3, p0, Lio/bidmachine/protobuf/sdk/Device;->diskspace_:J

    goto/16 :goto_0

    .line 67
    :sswitch_1d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_3

    .line 68
    new-instance v4, Lcom/explorestack/protobuf/m0;

    invoke-direct {v4}, Lcom/explorestack/protobuf/m0;-><init>()V

    iput-object v4, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    move v2, v5

    .line 69
    :cond_3
    iget-object v4, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 70
    :sswitch_1e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 71
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 72
    :sswitch_1f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/n;->J()Ljava/lang/String;

    move-result-object v3

    .line 73
    iput-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 74
    :goto_1
    :try_start_1
    new-instance p2, Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    invoke-direct {p2, p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;-><init>(Ljava/io/IOException;)V

    .line 75
    invoke-virtual {p2, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 76
    :goto_2
    invoke-virtual {p1, p0}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v2, :cond_4

    .line 77
    iget-object p2, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p2}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p2

    iput-object p2, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 78
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p2

    iput-object p2, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 79
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    .line 80
    throw p1

    :cond_5
    if-eqz v2, :cond_6

    .line 81
    iget-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    invoke-interface {p1}, Lcom/explorestack/protobuf/n0;->getUnmodifiableView()Lcom/explorestack/protobuf/n0;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 82
    :cond_6
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 83
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->makeExtensionsImmutable()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1f
        0x12 -> :sswitch_1e
        0x1a -> :sswitch_1d
        0x20 -> :sswitch_1c
        0x28 -> :sswitch_1b
        0x30 -> :sswitch_1a
        0x38 -> :sswitch_19
        0x40 -> :sswitch_18
        0x4d -> :sswitch_17
        0x50 -> :sswitch_16
        0x58 -> :sswitch_15
        0x60 -> :sswitch_14
        0x68 -> :sswitch_13
        0x72 -> :sswitch_12
        0x78 -> :sswitch_11
        0x85 -> :sswitch_10
        0x88 -> :sswitch_f
        0x90 -> :sswitch_e
        0x9a -> :sswitch_d
        0xa2 -> :sswitch_c
        0xa8 -> :sswitch_b
        0xb0 -> :sswitch_a
        0xba -> :sswitch_9
        0xc2 -> :sswitch_8
        0xca -> :sswitch_7
        0xd2 -> :sswitch_6
        0xda -> :sswitch_5
        0xe2 -> :sswitch_4
        0xea -> :sswitch_3
        0xf0 -> :sswitch_2
        0xf8 -> :sswitch_1
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;Lio/bidmachine/protobuf/sdk/Device$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/protobuf/sdk/Device;-><init>(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)V

    return-void
.end method

.method static synthetic access$1002(Lio/bidmachine/protobuf/sdk/Device;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device;->charging_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1102(Lio/bidmachine/protobuf/sdk/Device;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device;->headset_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1202(Lio/bidmachine/protobuf/sdk/Device;F)F
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Device;->batterylevel_:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1302(Lio/bidmachine/protobuf/sdk/Device;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device;->batterysaver_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1402(Lio/bidmachine/protobuf/sdk/Device;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device;->darkmode_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1502(Lio/bidmachine/protobuf/sdk/Device;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device;->airplane_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1602(Lio/bidmachine/protobuf/sdk/Device;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device;->dnd_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$1700(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1702(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$1802(Lio/bidmachine/protobuf/sdk/Device;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device;->time_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$1902(Lio/bidmachine/protobuf/sdk/Device;F)F
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Device;->screenbright_:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    return v0
.end method

.method static synthetic access$2002(Lio/bidmachine/protobuf/sdk/Device;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device;->jailbreak_:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2102(Lio/bidmachine/protobuf/sdk/Device;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootup_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$2200(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2202(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2300(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2302(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2402(Lio/bidmachine/protobuf/sdk/Device;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device;->totalmem_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$2502(Lio/bidmachine/protobuf/sdk/Device;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Device;->atts_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$2600(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2602(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2700(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2702(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2800(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2802(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$2900(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$2902(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3000(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3002(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3102(Lio/bidmachine/protobuf/sdk/Device;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device;->freemem_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$3202(Lio/bidmachine/protobuf/sdk/Device;I)I
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/protobuf/sdk/Device;->apilevel_:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$3302(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/adcom/Context$Device$Connection;)Lcom/explorestack/protobuf/adcom/Context$Device$Connection;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3402(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;)Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$3500(Lio/bidmachine/protobuf/sdk/Device;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$3600()Lcom/explorestack/protobuf/j1;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$3700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/a;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3800(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/a;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$3900(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/a;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$4000(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/a;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$402(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$4100(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/a;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4200(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/a;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4300(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/a;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4400(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/a;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4500(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/a;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4600(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/a;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$4700(Lcom/explorestack/protobuf/ByteString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/explorestack/protobuf/a;->checkByteStringIsUtf8(Lcom/explorestack/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lio/bidmachine/protobuf/sdk/Device;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$502(Lio/bidmachine/protobuf/sdk/Device;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$600(Lio/bidmachine/protobuf/sdk/Device;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lio/bidmachine/protobuf/sdk/Device;Lcom/explorestack/protobuf/n0;)Lcom/explorestack/protobuf/n0;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$702(Lio/bidmachine/protobuf/sdk/Device;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device;->diskspace_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$802(Lio/bidmachine/protobuf/sdk/Device;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/protobuf/sdk/Device;->totaldisk_:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic access$902(Lio/bidmachine/protobuf/sdk/Device;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/protobuf/sdk/Device;->ringmute_:Z

    .line 2
    .line 3
    return p1
.end method

.method public static getDefaultInstance()Lio/bidmachine/protobuf/sdk/Device;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Device;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Device_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public static newBuilder()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Device;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->toBuilder()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Device;

    invoke-virtual {v0}, Lio/bidmachine/protobuf/sdk/Device;->toBuilder()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 4
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseDelimitedWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/sdk/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Lcom/explorestack/protobuf/ByteString;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;)Lio/bidmachine/protobuf/sdk/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 12
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 14
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lio/bidmachine/protobuf/sdk/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 8
    invoke-static {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 10
    invoke-static {v0, p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->parseWithIOException(Lcom/explorestack/protobuf/j1;Ljava/io/InputStream;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lio/bidmachine/protobuf/sdk/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom(Ljava/nio/ByteBuffer;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom([B)Lio/bidmachine/protobuf/sdk/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/j1;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parseFrom([BLcom/explorestack/protobuf/y;)Lio/bidmachine/protobuf/sdk/Device;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/j1;

    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/j1;->parseFrom([BLcom/explorestack/protobuf/y;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Device;

    return-object p0
.end method

.method public static parser()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/sdk/Device;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lio/bidmachine/protobuf/sdk/Device;

    .line 6
    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1

    .line 14
    :cond_1
    check-cast p1, Lio/bidmachine/protobuf/sdk/Device;

    .line 15
    .line 16
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getIfv()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getIfv()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x0

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getBmIfv()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getBmIfv()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_3

    .line 45
    .line 46
    return v2

    .line 47
    :cond_3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getInputlanguageList()Lcom/explorestack/protobuf/m1;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getInputlanguageList()Lcom/explorestack/protobuf/m1;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-nez v1, :cond_4

    .line 60
    .line 61
    return v2

    .line 62
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDiskspace()J

    .line 63
    .line 64
    .line 65
    move-result-wide v3

    .line 66
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDiskspace()J

    .line 67
    .line 68
    .line 69
    move-result-wide v5

    .line 70
    cmp-long v1, v3, v5

    .line 71
    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    return v2

    .line 75
    :cond_5
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTotaldisk()J

    .line 76
    .line 77
    .line 78
    move-result-wide v3

    .line 79
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTotaldisk()J

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    cmp-long v1, v3, v5

    .line 84
    .line 85
    if-eqz v1, :cond_6

    .line 86
    .line 87
    return v2

    .line 88
    :cond_6
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getRingmute()Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getRingmute()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eq v1, v3, :cond_7

    .line 97
    .line 98
    return v2

    .line 99
    :cond_7
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCharging()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getCharging()Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eq v1, v3, :cond_8

    .line 108
    .line 109
    return v2

    .line 110
    :cond_8
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getHeadset()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getHeadset()Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-eq v1, v3, :cond_9

    .line 119
    .line 120
    return v2

    .line 121
    :cond_9
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getBatterylevel()F

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getBatterylevel()F

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    if-eq v1, v3, :cond_a

    .line 138
    .line 139
    return v2

    .line 140
    :cond_a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getBatterysaver()Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getBatterysaver()Z

    .line 145
    .line 146
    .line 147
    move-result v3

    .line 148
    if-eq v1, v3, :cond_b

    .line 149
    .line 150
    return v2

    .line 151
    :cond_b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDarkmode()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDarkmode()Z

    .line 156
    .line 157
    .line 158
    move-result v3

    .line 159
    if-eq v1, v3, :cond_c

    .line 160
    .line 161
    return v2

    .line 162
    :cond_c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAirplane()Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAirplane()Z

    .line 167
    .line 168
    .line 169
    move-result v3

    .line 170
    if-eq v1, v3, :cond_d

    .line 171
    .line 172
    return v2

    .line 173
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDnd()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDnd()Z

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    if-eq v1, v3, :cond_e

    .line 182
    .line 183
    return v2

    .line 184
    :cond_e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDevicename()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getDevicename()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-nez v1, :cond_f

    .line 197
    .line 198
    return v2

    .line 199
    :cond_f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTime()J

    .line 200
    .line 201
    .line 202
    move-result-wide v3

    .line 203
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTime()J

    .line 204
    .line 205
    .line 206
    move-result-wide v5

    .line 207
    cmp-long v1, v3, v5

    .line 208
    .line 209
    if-eqz v1, :cond_10

    .line 210
    .line 211
    return v2

    .line 212
    :cond_10
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getScreenbright()F

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getScreenbright()F

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 225
    .line 226
    .line 227
    move-result v3

    .line 228
    if-eq v1, v3, :cond_11

    .line 229
    .line 230
    return v2

    .line 231
    :cond_11
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getJailbreak()Z

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getJailbreak()Z

    .line 236
    .line 237
    .line 238
    move-result v3

    .line 239
    if-eq v1, v3, :cond_12

    .line 240
    .line 241
    return v2

    .line 242
    :cond_12
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootup()J

    .line 243
    .line 244
    .line 245
    move-result-wide v3

    .line 246
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootup()J

    .line 247
    .line 248
    .line 249
    move-result-wide v5

    .line 250
    cmp-long v1, v3, v5

    .line 251
    .line 252
    if-eqz v1, :cond_13

    .line 253
    .line 254
    return v2

    .line 255
    :cond_13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAccess()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAccess()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result v1

    .line 267
    if-nez v1, :cond_14

    .line 268
    .line 269
    return v2

    .line 270
    :cond_14
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getHeadsetname()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v1

    .line 274
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getHeadsetname()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-nez v1, :cond_15

    .line 283
    .line 284
    return v2

    .line 285
    :cond_15
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTotalmem()J

    .line 286
    .line 287
    .line 288
    move-result-wide v3

    .line 289
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTotalmem()J

    .line 290
    .line 291
    .line 292
    move-result-wide v5

    .line 293
    cmp-long v1, v3, v5

    .line 294
    .line 295
    if-eqz v1, :cond_16

    .line 296
    .line 297
    return v2

    .line 298
    :cond_16
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAtts()I

    .line 299
    .line 300
    .line 301
    move-result v1

    .line 302
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAtts()I

    .line 303
    .line 304
    .line 305
    move-result v3

    .line 306
    if-eq v1, v3, :cond_17

    .line 307
    .line 308
    return v2

    .line 309
    :cond_17
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCpuname()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getCpuname()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    .line 319
    .line 320
    move-result v1

    .line 321
    if-nez v1, :cond_18

    .line 322
    .line 323
    return v2

    .line 324
    :cond_18
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCpuvendor()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getCpuvendor()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    if-nez v1, :cond_19

    .line 337
    .line 338
    return v2

    .line 339
    :cond_19
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getGpuname()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getGpuname()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v3

    .line 347
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    if-nez v1, :cond_1a

    .line 352
    .line 353
    return v2

    .line 354
    :cond_1a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getGpuvendor()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getGpuvendor()Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v3

    .line 362
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    if-nez v1, :cond_1b

    .line 367
    .line 368
    return v2

    .line 369
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTimezone()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v1

    .line 373
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getTimezone()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-nez v1, :cond_1c

    .line 382
    .line 383
    return v2

    .line 384
    :cond_1c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getFreemem()J

    .line 385
    .line 386
    .line 387
    move-result-wide v3

    .line 388
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getFreemem()J

    .line 389
    .line 390
    .line 391
    move-result-wide v5

    .line 392
    cmp-long v1, v3, v5

    .line 393
    .line 394
    if-eqz v1, :cond_1d

    .line 395
    .line 396
    return v2

    .line 397
    :cond_1d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getApilevel()I

    .line 398
    .line 399
    .line 400
    move-result v1

    .line 401
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getApilevel()I

    .line 402
    .line 403
    .line 404
    move-result v3

    .line 405
    if-eq v1, v3, :cond_1e

    .line 406
    .line 407
    return v2

    .line 408
    :cond_1e
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasConnection()Z

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->hasConnection()Z

    .line 413
    .line 414
    .line 415
    move-result v3

    .line 416
    if-eq v1, v3, :cond_1f

    .line 417
    .line 418
    return v2

    .line 419
    :cond_1f
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasConnection()Z

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    if-eqz v1, :cond_20

    .line 424
    .line 425
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 430
    .line 431
    .line 432
    move-result-object v3

    .line 433
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;->equals(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    move-result v1

    .line 437
    if-nez v1, :cond_20

    .line 438
    .line 439
    return v2

    .line 440
    :cond_20
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasAudioContext()Z

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->hasAudioContext()Z

    .line 445
    .line 446
    .line 447
    move-result v3

    .line 448
    if-eq v1, v3, :cond_21

    .line 449
    .line 450
    return v2

    .line 451
    :cond_21
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasAudioContext()Z

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    if-eqz v1, :cond_22

    .line 456
    .line 457
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-virtual {p1}, Lio/bidmachine/protobuf/sdk/Device;->getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 462
    .line 463
    .line 464
    move-result-object v3

    .line 465
    invoke-virtual {v1, v3}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;->equals(Ljava/lang/Object;)Z

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    if-nez v1, :cond_22

    .line 470
    .line 471
    return v2

    .line 472
    :cond_22
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 473
    .line 474
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 475
    .line 476
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/j2;->equals(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result p1

    .line 480
    if-nez p1, :cond_23

    .line 481
    .line 482
    return v2

    .line 483
    :cond_23
    return v0
.end method

.method public getAccess()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getAccessBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getAirplane()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->airplane_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getApilevel()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device;->apilevel_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAtts()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device;->atts_:I

    .line 2
    .line 3
    return v0
.end method

.method public getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getAudioContextOrBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContextOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getBatterylevel()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device;->batterylevel_:F

    .line 2
    .line 3
    return v0
.end method

.method public getBatterysaver()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->batterysaver_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getBmIfv()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getCharging()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->charging_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getConnectionOrBuilder()Lcom/explorestack/protobuf/adcom/Context$Device$ConnectionOrBuilder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getCpuname()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getCpunameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getCpuvendor()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getCpuvendorBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getDarkmode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->darkmode_:Z

    .line 2
    .line 3
    return v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Device;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/sdk/Device;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Device;

    return-object v0
.end method

.method public getDevicename()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getDevicenameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getDiskspace()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device;->diskspace_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDnd()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->dnd_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getFreemem()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device;->freemem_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getGpuname()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getGpunameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getGpuvendor()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getGpuvendorBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getHeadset()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->headset_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getHeadsetname()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getHeadsetnameBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getIfv()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getIfvBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getInputlanguage(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Ljava/lang/String;

    .line 8
    .line 9
    return-object p1
.end method

.method public getInputlanguageBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/n0;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getInputlanguageCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getInputlanguageList()Lcom/explorestack/protobuf/m1;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    return-object v0
.end method

.method public bridge synthetic getInputlanguageList()Ljava/util/List;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getInputlanguageList()Lcom/explorestack/protobuf/m1;

    move-result-object v0

    return-object v0
.end method

.method public getJailbreak()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->jailbreak_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getLastbootup()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootup_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "Lio/bidmachine/protobuf/sdk/Device;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->PARSER:Lcom/explorestack/protobuf/j1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRingmute()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->ringmute_:Z

    .line 2
    .line 3
    return v0
.end method

.method public getScreenbright()F
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device;->screenbright_:F

    .line 2
    .line 3
    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getIfvBytes()Lcom/explorestack/protobuf/ByteString;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-static {v2, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v0, v1

    .line 27
    :goto_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v2}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_2

    .line 36
    .line 37
    const/4 v2, 0x2

    .line 38
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    add-int/2addr v0, v2

    .line 45
    :cond_2
    move v2, v1

    .line 46
    :goto_1
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 47
    .line 48
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-ge v1, v3, :cond_3

    .line 53
    .line 54
    iget-object v3, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 55
    .line 56
    invoke-interface {v3, v1}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSizeNoTag(Ljava/lang/Object;)I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    add-int/2addr v2, v3

    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    add-int/2addr v0, v2

    .line 69
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getInputlanguageList()Lcom/explorestack/protobuf/m1;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    add-int/2addr v0, v1

    .line 78
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device;->diskspace_:J

    .line 79
    .line 80
    const-wide/16 v3, 0x0

    .line 81
    .line 82
    cmp-long v5, v1, v3

    .line 83
    .line 84
    if-eqz v5, :cond_4

    .line 85
    .line 86
    const/4 v5, 0x4

    .line 87
    invoke-static {v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->a0(IJ)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    add-int/2addr v0, v1

    .line 92
    :cond_4
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device;->totaldisk_:J

    .line 93
    .line 94
    cmp-long v5, v1, v3

    .line 95
    .line 96
    if-eqz v5, :cond_5

    .line 97
    .line 98
    const/4 v5, 0x5

    .line 99
    invoke-static {v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->a0(IJ)I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    add-int/2addr v0, v1

    .line 104
    :cond_5
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device;->ringmute_:Z

    .line 105
    .line 106
    if-eqz v1, :cond_6

    .line 107
    .line 108
    const/4 v2, 0x6

    .line 109
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    add-int/2addr v0, v1

    .line 114
    :cond_6
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device;->charging_:Z

    .line 115
    .line 116
    if-eqz v1, :cond_7

    .line 117
    .line 118
    const/4 v2, 0x7

    .line 119
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    add-int/2addr v0, v1

    .line 124
    :cond_7
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device;->headset_:Z

    .line 125
    .line 126
    if-eqz v1, :cond_8

    .line 127
    .line 128
    const/16 v2, 0x8

    .line 129
    .line 130
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    add-int/2addr v0, v1

    .line 135
    :cond_8
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device;->batterylevel_:F

    .line 136
    .line 137
    const/4 v2, 0x0

    .line 138
    cmpl-float v5, v1, v2

    .line 139
    .line 140
    if-eqz v5, :cond_9

    .line 141
    .line 142
    const/16 v5, 0x9

    .line 143
    .line 144
    invoke-static {v5, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->r(IF)I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    add-int/2addr v0, v1

    .line 149
    :cond_9
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device;->batterysaver_:Z

    .line 150
    .line 151
    if-eqz v1, :cond_a

    .line 152
    .line 153
    const/16 v5, 0xa

    .line 154
    .line 155
    invoke-static {v5, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    add-int/2addr v0, v1

    .line 160
    :cond_a
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device;->darkmode_:Z

    .line 161
    .line 162
    if-eqz v1, :cond_b

    .line 163
    .line 164
    const/16 v5, 0xb

    .line 165
    .line 166
    invoke-static {v5, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    add-int/2addr v0, v1

    .line 171
    :cond_b
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device;->airplane_:Z

    .line 172
    .line 173
    if-eqz v1, :cond_c

    .line 174
    .line 175
    const/16 v5, 0xc

    .line 176
    .line 177
    invoke-static {v5, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    add-int/2addr v0, v1

    .line 182
    :cond_c
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device;->dnd_:Z

    .line 183
    .line 184
    if-eqz v1, :cond_d

    .line 185
    .line 186
    const/16 v5, 0xd

    .line 187
    .line 188
    invoke-static {v5, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    add-int/2addr v0, v1

    .line 193
    :cond_d
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDevicenameBytes()Lcom/explorestack/protobuf/ByteString;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-nez v1, :cond_e

    .line 202
    .line 203
    const/16 v1, 0xe

    .line 204
    .line 205
    iget-object v5, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    .line 206
    .line 207
    invoke-static {v1, v5}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 208
    .line 209
    .line 210
    move-result v1

    .line 211
    add-int/2addr v0, v1

    .line 212
    :cond_e
    iget-wide v5, p0, Lio/bidmachine/protobuf/sdk/Device;->time_:J

    .line 213
    .line 214
    cmp-long v1, v5, v3

    .line 215
    .line 216
    if-eqz v1, :cond_f

    .line 217
    .line 218
    const/16 v1, 0xf

    .line 219
    .line 220
    invoke-static {v1, v5, v6}, Lcom/explorestack/protobuf/CodedOutputStream;->a0(IJ)I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    add-int/2addr v0, v1

    .line 225
    :cond_f
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device;->screenbright_:F

    .line 226
    .line 227
    cmpl-float v2, v1, v2

    .line 228
    .line 229
    if-eqz v2, :cond_10

    .line 230
    .line 231
    const/16 v2, 0x10

    .line 232
    .line 233
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->r(IF)I

    .line 234
    .line 235
    .line 236
    move-result v1

    .line 237
    add-int/2addr v0, v1

    .line 238
    :cond_10
    iget-boolean v1, p0, Lio/bidmachine/protobuf/sdk/Device;->jailbreak_:Z

    .line 239
    .line 240
    if-eqz v1, :cond_11

    .line 241
    .line 242
    const/16 v2, 0x11

    .line 243
    .line 244
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e(IZ)I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    add-int/2addr v0, v1

    .line 249
    :cond_11
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootup_:J

    .line 250
    .line 251
    cmp-long v5, v1, v3

    .line 252
    .line 253
    if-eqz v5, :cond_12

    .line 254
    .line 255
    const/16 v5, 0x12

    .line 256
    .line 257
    invoke-static {v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->a0(IJ)I

    .line 258
    .line 259
    .line 260
    move-result v1

    .line 261
    add-int/2addr v0, v1

    .line 262
    :cond_12
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAccessBytes()Lcom/explorestack/protobuf/ByteString;

    .line 263
    .line 264
    .line 265
    move-result-object v1

    .line 266
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    if-nez v1, :cond_13

    .line 271
    .line 272
    const/16 v1, 0x13

    .line 273
    .line 274
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    .line 275
    .line 276
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    add-int/2addr v0, v1

    .line 281
    :cond_13
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getHeadsetnameBytes()Lcom/explorestack/protobuf/ByteString;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 286
    .line 287
    .line 288
    move-result v1

    .line 289
    if-nez v1, :cond_14

    .line 290
    .line 291
    const/16 v1, 0x14

    .line 292
    .line 293
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    .line 294
    .line 295
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    add-int/2addr v0, v1

    .line 300
    :cond_14
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device;->totalmem_:J

    .line 301
    .line 302
    cmp-long v5, v1, v3

    .line 303
    .line 304
    if-eqz v5, :cond_15

    .line 305
    .line 306
    const/16 v5, 0x15

    .line 307
    .line 308
    invoke-static {v5, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->a0(IJ)I

    .line 309
    .line 310
    .line 311
    move-result v1

    .line 312
    add-int/2addr v0, v1

    .line 313
    :cond_15
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device;->atts_:I

    .line 314
    .line 315
    if-eqz v1, :cond_16

    .line 316
    .line 317
    const/16 v2, 0x16

    .line 318
    .line 319
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 320
    .line 321
    .line 322
    move-result v1

    .line 323
    add-int/2addr v0, v1

    .line 324
    :cond_16
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 325
    .line 326
    if-eqz v1, :cond_17

    .line 327
    .line 328
    const/16 v1, 0x17

    .line 329
    .line 330
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 331
    .line 332
    .line 333
    move-result-object v2

    .line 334
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 335
    .line 336
    .line 337
    move-result v1

    .line 338
    add-int/2addr v0, v1

    .line 339
    :cond_17
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 340
    .line 341
    if-eqz v1, :cond_18

    .line 342
    .line 343
    const/16 v1, 0x18

    .line 344
    .line 345
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 346
    .line 347
    .line 348
    move-result-object v2

    .line 349
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->G(ILcom/explorestack/protobuf/MessageLite;)I

    .line 350
    .line 351
    .line 352
    move-result v1

    .line 353
    add-int/2addr v0, v1

    .line 354
    :cond_18
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCpunameBytes()Lcom/explorestack/protobuf/ByteString;

    .line 355
    .line 356
    .line 357
    move-result-object v1

    .line 358
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    if-nez v1, :cond_19

    .line 363
    .line 364
    const/16 v1, 0x19

    .line 365
    .line 366
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    .line 367
    .line 368
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    add-int/2addr v0, v1

    .line 373
    :cond_19
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCpuvendorBytes()Lcom/explorestack/protobuf/ByteString;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-nez v1, :cond_1a

    .line 382
    .line 383
    const/16 v1, 0x1a

    .line 384
    .line 385
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    .line 386
    .line 387
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    add-int/2addr v0, v1

    .line 392
    :cond_1a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getGpunameBytes()Lcom/explorestack/protobuf/ByteString;

    .line 393
    .line 394
    .line 395
    move-result-object v1

    .line 396
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 397
    .line 398
    .line 399
    move-result v1

    .line 400
    if-nez v1, :cond_1b

    .line 401
    .line 402
    const/16 v1, 0x1b

    .line 403
    .line 404
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    .line 405
    .line 406
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 407
    .line 408
    .line 409
    move-result v1

    .line 410
    add-int/2addr v0, v1

    .line 411
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getGpuvendorBytes()Lcom/explorestack/protobuf/ByteString;

    .line 412
    .line 413
    .line 414
    move-result-object v1

    .line 415
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 416
    .line 417
    .line 418
    move-result v1

    .line 419
    if-nez v1, :cond_1c

    .line 420
    .line 421
    const/16 v1, 0x1c

    .line 422
    .line 423
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    .line 424
    .line 425
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 426
    .line 427
    .line 428
    move-result v1

    .line 429
    add-int/2addr v0, v1

    .line 430
    :cond_1c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTimezoneBytes()Lcom/explorestack/protobuf/ByteString;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    invoke-virtual {v1}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 435
    .line 436
    .line 437
    move-result v1

    .line 438
    if-nez v1, :cond_1d

    .line 439
    .line 440
    const/16 v1, 0x1d

    .line 441
    .line 442
    iget-object v2, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    .line 443
    .line 444
    invoke-static {v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->computeStringSize(ILjava/lang/Object;)I

    .line 445
    .line 446
    .line 447
    move-result v1

    .line 448
    add-int/2addr v0, v1

    .line 449
    :cond_1d
    iget-wide v1, p0, Lio/bidmachine/protobuf/sdk/Device;->freemem_:J

    .line 450
    .line 451
    cmp-long v3, v1, v3

    .line 452
    .line 453
    if-eqz v3, :cond_1e

    .line 454
    .line 455
    const/16 v3, 0x1e

    .line 456
    .line 457
    invoke-static {v3, v1, v2}, Lcom/explorestack/protobuf/CodedOutputStream;->a0(IJ)I

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    add-int/2addr v0, v1

    .line 462
    :cond_1e
    iget v1, p0, Lio/bidmachine/protobuf/sdk/Device;->apilevel_:I

    .line 463
    .line 464
    if-eqz v1, :cond_1f

    .line 465
    .line 466
    const/16 v2, 0x1f

    .line 467
    .line 468
    invoke-static {v2, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->Y(II)I

    .line 469
    .line 470
    .line 471
    move-result v1

    .line 472
    add-int/2addr v0, v1

    .line 473
    :cond_1f
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 474
    .line 475
    invoke-virtual {v1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 476
    .line 477
    .line 478
    move-result v1

    .line 479
    add-int/2addr v0, v1

    .line 480
    iput v0, p0, Lcom/explorestack/protobuf/AbstractMessage;->memoizedSize:I

    .line 481
    .line 482
    return v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device;->time_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTimezone()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v0
.end method

.method public getTimezoneBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    .line 2
    .line 3
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 17
    .line 18
    return-object v0
.end method

.method public getTotaldisk()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device;->totaldisk_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getTotalmem()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device;->totalmem_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getUnknownFields()Lcom/explorestack/protobuf/j2;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasAudioContext()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hasConnection()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/16 v1, 0x30b

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    mul-int/lit8 v1, v1, 0x25

    .line 18
    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 20
    .line 21
    mul-int/lit8 v1, v1, 0x35

    .line 22
    .line 23
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getIfv()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x25

    .line 33
    .line 34
    add-int/lit8 v1, v1, 0x2

    .line 35
    .line 36
    mul-int/lit8 v1, v1, 0x35

    .line 37
    .line 38
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getBmIfv()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    add-int/2addr v1, v0

    .line 47
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getInputlanguageCount()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-lez v0, :cond_1

    .line 52
    .line 53
    mul-int/lit8 v1, v1, 0x25

    .line 54
    .line 55
    add-int/lit8 v1, v1, 0x3

    .line 56
    .line 57
    mul-int/lit8 v1, v1, 0x35

    .line 58
    .line 59
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getInputlanguageList()Lcom/explorestack/protobuf/m1;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    add-int/2addr v1, v0

    .line 68
    :cond_1
    mul-int/lit8 v1, v1, 0x25

    .line 69
    .line 70
    add-int/lit8 v1, v1, 0x4

    .line 71
    .line 72
    mul-int/lit8 v1, v1, 0x35

    .line 73
    .line 74
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDiskspace()J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/i0;->i(J)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    add-int/2addr v1, v0

    .line 83
    mul-int/lit8 v1, v1, 0x25

    .line 84
    .line 85
    add-int/lit8 v1, v1, 0x5

    .line 86
    .line 87
    mul-int/lit8 v1, v1, 0x35

    .line 88
    .line 89
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTotaldisk()J

    .line 90
    .line 91
    .line 92
    move-result-wide v2

    .line 93
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/i0;->i(J)I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    add-int/2addr v1, v0

    .line 98
    mul-int/lit8 v1, v1, 0x25

    .line 99
    .line 100
    add-int/lit8 v1, v1, 0x6

    .line 101
    .line 102
    mul-int/lit8 v1, v1, 0x35

    .line 103
    .line 104
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getRingmute()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    add-int/2addr v1, v0

    .line 113
    mul-int/lit8 v1, v1, 0x25

    .line 114
    .line 115
    add-int/lit8 v1, v1, 0x7

    .line 116
    .line 117
    mul-int/lit8 v1, v1, 0x35

    .line 118
    .line 119
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCharging()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    add-int/2addr v1, v0

    .line 128
    mul-int/lit8 v1, v1, 0x25

    .line 129
    .line 130
    add-int/lit8 v1, v1, 0x8

    .line 131
    .line 132
    mul-int/lit8 v1, v1, 0x35

    .line 133
    .line 134
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getHeadset()Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    add-int/2addr v1, v0

    .line 143
    mul-int/lit8 v1, v1, 0x25

    .line 144
    .line 145
    add-int/lit8 v1, v1, 0x9

    .line 146
    .line 147
    mul-int/lit8 v1, v1, 0x35

    .line 148
    .line 149
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getBatterylevel()F

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    add-int/2addr v1, v0

    .line 158
    mul-int/lit8 v1, v1, 0x25

    .line 159
    .line 160
    add-int/lit8 v1, v1, 0xa

    .line 161
    .line 162
    mul-int/lit8 v1, v1, 0x35

    .line 163
    .line 164
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getBatterysaver()Z

    .line 165
    .line 166
    .line 167
    move-result v0

    .line 168
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    add-int/2addr v1, v0

    .line 173
    mul-int/lit8 v1, v1, 0x25

    .line 174
    .line 175
    add-int/lit8 v1, v1, 0xb

    .line 176
    .line 177
    mul-int/lit8 v1, v1, 0x35

    .line 178
    .line 179
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDarkmode()Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    add-int/2addr v1, v0

    .line 188
    mul-int/lit8 v1, v1, 0x25

    .line 189
    .line 190
    add-int/lit8 v1, v1, 0xc

    .line 191
    .line 192
    mul-int/lit8 v1, v1, 0x35

    .line 193
    .line 194
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAirplane()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    add-int/2addr v1, v0

    .line 203
    mul-int/lit8 v1, v1, 0x25

    .line 204
    .line 205
    add-int/lit8 v1, v1, 0xd

    .line 206
    .line 207
    mul-int/lit8 v1, v1, 0x35

    .line 208
    .line 209
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDnd()Z

    .line 210
    .line 211
    .line 212
    move-result v0

    .line 213
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    add-int/2addr v1, v0

    .line 218
    mul-int/lit8 v1, v1, 0x25

    .line 219
    .line 220
    add-int/lit8 v1, v1, 0xe

    .line 221
    .line 222
    mul-int/lit8 v1, v1, 0x35

    .line 223
    .line 224
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDevicename()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v0

    .line 228
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    add-int/2addr v1, v0

    .line 233
    mul-int/lit8 v1, v1, 0x25

    .line 234
    .line 235
    add-int/lit8 v1, v1, 0xf

    .line 236
    .line 237
    mul-int/lit8 v1, v1, 0x35

    .line 238
    .line 239
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTime()J

    .line 240
    .line 241
    .line 242
    move-result-wide v2

    .line 243
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/i0;->i(J)I

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    add-int/2addr v1, v0

    .line 248
    mul-int/lit8 v1, v1, 0x25

    .line 249
    .line 250
    add-int/lit8 v1, v1, 0x10

    .line 251
    .line 252
    mul-int/lit8 v1, v1, 0x35

    .line 253
    .line 254
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getScreenbright()F

    .line 255
    .line 256
    .line 257
    move-result v0

    .line 258
    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    add-int/2addr v1, v0

    .line 263
    mul-int/lit8 v1, v1, 0x25

    .line 264
    .line 265
    add-int/lit8 v1, v1, 0x11

    .line 266
    .line 267
    mul-int/lit8 v1, v1, 0x35

    .line 268
    .line 269
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getJailbreak()Z

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    invoke-static {v0}, Lcom/explorestack/protobuf/i0;->d(Z)I

    .line 274
    .line 275
    .line 276
    move-result v0

    .line 277
    add-int/2addr v1, v0

    .line 278
    mul-int/lit8 v1, v1, 0x25

    .line 279
    .line 280
    add-int/lit8 v1, v1, 0x12

    .line 281
    .line 282
    mul-int/lit8 v1, v1, 0x35

    .line 283
    .line 284
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getLastbootup()J

    .line 285
    .line 286
    .line 287
    move-result-wide v2

    .line 288
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/i0;->i(J)I

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    add-int/2addr v1, v0

    .line 293
    mul-int/lit8 v1, v1, 0x25

    .line 294
    .line 295
    add-int/lit8 v1, v1, 0x13

    .line 296
    .line 297
    mul-int/lit8 v1, v1, 0x35

    .line 298
    .line 299
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAccess()Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    add-int/2addr v1, v0

    .line 308
    mul-int/lit8 v1, v1, 0x25

    .line 309
    .line 310
    add-int/lit8 v1, v1, 0x14

    .line 311
    .line 312
    mul-int/lit8 v1, v1, 0x35

    .line 313
    .line 314
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getHeadsetname()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v0

    .line 318
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 319
    .line 320
    .line 321
    move-result v0

    .line 322
    add-int/2addr v1, v0

    .line 323
    mul-int/lit8 v1, v1, 0x25

    .line 324
    .line 325
    add-int/lit8 v1, v1, 0x15

    .line 326
    .line 327
    mul-int/lit8 v1, v1, 0x35

    .line 328
    .line 329
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTotalmem()J

    .line 330
    .line 331
    .line 332
    move-result-wide v2

    .line 333
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/i0;->i(J)I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    add-int/2addr v1, v0

    .line 338
    mul-int/lit8 v1, v1, 0x25

    .line 339
    .line 340
    add-int/lit8 v1, v1, 0x16

    .line 341
    .line 342
    mul-int/lit8 v1, v1, 0x35

    .line 343
    .line 344
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAtts()I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    add-int/2addr v1, v0

    .line 349
    mul-int/lit8 v1, v1, 0x25

    .line 350
    .line 351
    add-int/lit8 v1, v1, 0x19

    .line 352
    .line 353
    mul-int/lit8 v1, v1, 0x35

    .line 354
    .line 355
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCpuname()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    add-int/2addr v1, v0

    .line 364
    mul-int/lit8 v1, v1, 0x25

    .line 365
    .line 366
    add-int/lit8 v1, v1, 0x1a

    .line 367
    .line 368
    mul-int/lit8 v1, v1, 0x35

    .line 369
    .line 370
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCpuvendor()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    add-int/2addr v1, v0

    .line 379
    mul-int/lit8 v1, v1, 0x25

    .line 380
    .line 381
    add-int/lit8 v1, v1, 0x1b

    .line 382
    .line 383
    mul-int/lit8 v1, v1, 0x35

    .line 384
    .line 385
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getGpuname()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    add-int/2addr v1, v0

    .line 394
    mul-int/lit8 v1, v1, 0x25

    .line 395
    .line 396
    add-int/lit8 v1, v1, 0x1c

    .line 397
    .line 398
    mul-int/lit8 v1, v1, 0x35

    .line 399
    .line 400
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getGpuvendor()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 405
    .line 406
    .line 407
    move-result v0

    .line 408
    add-int/2addr v1, v0

    .line 409
    mul-int/lit8 v1, v1, 0x25

    .line 410
    .line 411
    add-int/lit8 v1, v1, 0x1d

    .line 412
    .line 413
    mul-int/lit8 v1, v1, 0x35

    .line 414
    .line 415
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTimezone()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    add-int/2addr v1, v0

    .line 424
    mul-int/lit8 v1, v1, 0x25

    .line 425
    .line 426
    add-int/lit8 v1, v1, 0x1e

    .line 427
    .line 428
    mul-int/lit8 v1, v1, 0x35

    .line 429
    .line 430
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getFreemem()J

    .line 431
    .line 432
    .line 433
    move-result-wide v2

    .line 434
    invoke-static {v2, v3}, Lcom/explorestack/protobuf/i0;->i(J)I

    .line 435
    .line 436
    .line 437
    move-result v0

    .line 438
    add-int/2addr v1, v0

    .line 439
    mul-int/lit8 v1, v1, 0x25

    .line 440
    .line 441
    add-int/lit8 v1, v1, 0x1f

    .line 442
    .line 443
    mul-int/lit8 v1, v1, 0x35

    .line 444
    .line 445
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getApilevel()I

    .line 446
    .line 447
    .line 448
    move-result v0

    .line 449
    add-int/2addr v1, v0

    .line 450
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasConnection()Z

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    if-eqz v0, :cond_2

    .line 455
    .line 456
    mul-int/lit8 v1, v1, 0x25

    .line 457
    .line 458
    add-int/lit8 v1, v1, 0x17

    .line 459
    .line 460
    mul-int/lit8 v1, v1, 0x35

    .line 461
    .line 462
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 463
    .line 464
    .line 465
    move-result-object v0

    .line 466
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device$Connection;->hashCode()I

    .line 467
    .line 468
    .line 469
    move-result v0

    .line 470
    add-int/2addr v1, v0

    .line 471
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->hasAudioContext()Z

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    if-eqz v0, :cond_3

    .line 476
    .line 477
    mul-int/lit8 v1, v1, 0x25

    .line 478
    .line 479
    add-int/lit8 v1, v1, 0x18

    .line 480
    .line 481
    mul-int/lit8 v1, v1, 0x35

    .line 482
    .line 483
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;->hashCode()I

    .line 488
    .line 489
    .line 490
    move-result v0

    .line 491
    add-int/2addr v1, v0

    .line 492
    :cond_3
    mul-int/lit8 v1, v1, 0x1d

    .line 493
    .line 494
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 495
    .line 496
    invoke-virtual {v0}, Lcom/explorestack/protobuf/j2;->hashCode()I

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    add-int/2addr v1, v0

    .line 501
    iput v1, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 502
    .line 503
    return v1
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/SDKContextProto;->internal_static_bidmachine_protobuf_sdk_context_Device_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lio/bidmachine/protobuf/sdk/Device;

    .line 4
    .line 5
    const-class v2, Lio/bidmachine/protobuf/sdk/Device$Builder;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-byte v0, p0, Lio/bidmachine/protobuf/sdk/Device;->memoizedIsInitialized:B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :cond_1
    iput-byte v1, p0, Lio/bidmachine/protobuf/sdk/Device;->memoizedIsInitialized:B

    .line 12
    .line 13
    return v1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/sdk/Device;->newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->newBuilderForType()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public newBuilderForType()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 1

    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/sdk/Device;->newBuilder()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected newBuilderForType(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 2

    .line 5
    new-instance v0, Lio/bidmachine/protobuf/sdk/Device$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lio/bidmachine/protobuf/sdk/Device$1;)V

    return-object v0
.end method

.method protected newInstance(Lcom/explorestack/protobuf/GeneratedMessageV3$f;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Lio/bidmachine/protobuf/sdk/Device;

    .line 2
    .line 3
    invoke-direct {p1}, Lio/bidmachine/protobuf/sdk/Device;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->toBuilder()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->toBuilder()Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    return-object v0
.end method

.method public toBuilder()Lio/bidmachine/protobuf/sdk/Device$Builder;
    .locals 2

    .line 3
    sget-object v0, Lio/bidmachine/protobuf/sdk/Device;->DEFAULT_INSTANCE:Lio/bidmachine/protobuf/sdk/Device;

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    .line 4
    new-instance v0, Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Device$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/protobuf/sdk/Device$Builder;

    invoke-direct {v0, v1}, Lio/bidmachine/protobuf/sdk/Device$Builder;-><init>(Lio/bidmachine/protobuf/sdk/Device$1;)V

    invoke-virtual {v0, p0}, Lio/bidmachine/protobuf/sdk/Device$Builder;->mergeFrom(Lio/bidmachine/protobuf/sdk/Device;)Lio/bidmachine/protobuf/sdk/Device$Builder;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getIfvBytes()Lcom/explorestack/protobuf/ByteString;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->ifv_:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-static {p1, v1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getBmIfvBytes()Lcom/explorestack/protobuf/ByteString;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const/4 v0, 0x2

    .line 28
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->bmIfv_:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    :goto_0
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-ge v0, v1, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->inputlanguage_:Lcom/explorestack/protobuf/n0;

    .line 43
    .line 44
    invoke-interface {v1, v0}, Lcom/explorestack/protobuf/n0;->getRaw(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/4 v2, 0x3

    .line 49
    invoke-static {p1, v2, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device;->diskspace_:J

    .line 56
    .line 57
    const-wide/16 v2, 0x0

    .line 58
    .line 59
    cmp-long v4, v0, v2

    .line 60
    .line 61
    if-eqz v4, :cond_3

    .line 62
    .line 63
    const/4 v4, 0x4

    .line 64
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e1(IJ)V

    .line 65
    .line 66
    .line 67
    :cond_3
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device;->totaldisk_:J

    .line 68
    .line 69
    cmp-long v4, v0, v2

    .line 70
    .line 71
    if-eqz v4, :cond_4

    .line 72
    .line 73
    const/4 v4, 0x5

    .line 74
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e1(IJ)V

    .line 75
    .line 76
    .line 77
    :cond_4
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->ringmute_:Z

    .line 78
    .line 79
    if-eqz v0, :cond_5

    .line 80
    .line 81
    const/4 v1, 0x6

    .line 82
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 83
    .line 84
    .line 85
    :cond_5
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->charging_:Z

    .line 86
    .line 87
    if-eqz v0, :cond_6

    .line 88
    .line 89
    const/4 v1, 0x7

    .line 90
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 91
    .line 92
    .line 93
    :cond_6
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->headset_:Z

    .line 94
    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    const/16 v1, 0x8

    .line 98
    .line 99
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 100
    .line 101
    .line 102
    :cond_7
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device;->batterylevel_:F

    .line 103
    .line 104
    const/4 v1, 0x0

    .line 105
    cmpl-float v4, v0, v1

    .line 106
    .line 107
    if-eqz v4, :cond_8

    .line 108
    .line 109
    const/16 v4, 0x9

    .line 110
    .line 111
    invoke-virtual {p1, v4, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->B0(IF)V

    .line 112
    .line 113
    .line 114
    :cond_8
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->batterysaver_:Z

    .line 115
    .line 116
    if-eqz v0, :cond_9

    .line 117
    .line 118
    const/16 v4, 0xa

    .line 119
    .line 120
    invoke-virtual {p1, v4, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 121
    .line 122
    .line 123
    :cond_9
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->darkmode_:Z

    .line 124
    .line 125
    if-eqz v0, :cond_a

    .line 126
    .line 127
    const/16 v4, 0xb

    .line 128
    .line 129
    invoke-virtual {p1, v4, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 130
    .line 131
    .line 132
    :cond_a
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->airplane_:Z

    .line 133
    .line 134
    if-eqz v0, :cond_b

    .line 135
    .line 136
    const/16 v4, 0xc

    .line 137
    .line 138
    invoke-virtual {p1, v4, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 139
    .line 140
    .line 141
    :cond_b
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->dnd_:Z

    .line 142
    .line 143
    if-eqz v0, :cond_c

    .line 144
    .line 145
    const/16 v4, 0xd

    .line 146
    .line 147
    invoke-virtual {p1, v4, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 148
    .line 149
    .line 150
    :cond_c
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getDevicenameBytes()Lcom/explorestack/protobuf/ByteString;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    if-nez v0, :cond_d

    .line 159
    .line 160
    const/16 v0, 0xe

    .line 161
    .line 162
    iget-object v4, p0, Lio/bidmachine/protobuf/sdk/Device;->devicename_:Ljava/lang/Object;

    .line 163
    .line 164
    invoke-static {p1, v0, v4}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    :cond_d
    iget-wide v4, p0, Lio/bidmachine/protobuf/sdk/Device;->time_:J

    .line 168
    .line 169
    cmp-long v0, v4, v2

    .line 170
    .line 171
    if-eqz v0, :cond_e

    .line 172
    .line 173
    const/16 v0, 0xf

    .line 174
    .line 175
    invoke-virtual {p1, v0, v4, v5}, Lcom/explorestack/protobuf/CodedOutputStream;->e1(IJ)V

    .line 176
    .line 177
    .line 178
    :cond_e
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device;->screenbright_:F

    .line 179
    .line 180
    cmpl-float v1, v0, v1

    .line 181
    .line 182
    if-eqz v1, :cond_f

    .line 183
    .line 184
    const/16 v1, 0x10

    .line 185
    .line 186
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->B0(IF)V

    .line 187
    .line 188
    .line 189
    :cond_f
    iget-boolean v0, p0, Lio/bidmachine/protobuf/sdk/Device;->jailbreak_:Z

    .line 190
    .line 191
    if-eqz v0, :cond_10

    .line 192
    .line 193
    const/16 v1, 0x11

    .line 194
    .line 195
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->n0(IZ)V

    .line 196
    .line 197
    .line 198
    :cond_10
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device;->lastbootup_:J

    .line 199
    .line 200
    cmp-long v4, v0, v2

    .line 201
    .line 202
    if-eqz v4, :cond_11

    .line 203
    .line 204
    const/16 v4, 0x12

    .line 205
    .line 206
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e1(IJ)V

    .line 207
    .line 208
    .line 209
    :cond_11
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAccessBytes()Lcom/explorestack/protobuf/ByteString;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-nez v0, :cond_12

    .line 218
    .line 219
    const/16 v0, 0x13

    .line 220
    .line 221
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->access_:Ljava/lang/Object;

    .line 222
    .line 223
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    :cond_12
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getHeadsetnameBytes()Lcom/explorestack/protobuf/ByteString;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    if-nez v0, :cond_13

    .line 235
    .line 236
    const/16 v0, 0x14

    .line 237
    .line 238
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->headsetname_:Ljava/lang/Object;

    .line 239
    .line 240
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    :cond_13
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device;->totalmem_:J

    .line 244
    .line 245
    cmp-long v4, v0, v2

    .line 246
    .line 247
    if-eqz v4, :cond_14

    .line 248
    .line 249
    const/16 v4, 0x15

    .line 250
    .line 251
    invoke-virtual {p1, v4, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e1(IJ)V

    .line 252
    .line 253
    .line 254
    :cond_14
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device;->atts_:I

    .line 255
    .line 256
    if-eqz v0, :cond_15

    .line 257
    .line 258
    const/16 v1, 0x16

    .line 259
    .line 260
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 261
    .line 262
    .line 263
    :cond_15
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->connection_:Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 264
    .line 265
    if-eqz v0, :cond_16

    .line 266
    .line 267
    const/16 v0, 0x17

    .line 268
    .line 269
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getConnection()Lcom/explorestack/protobuf/adcom/Context$Device$Connection;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 274
    .line 275
    .line 276
    :cond_16
    iget-object v0, p0, Lio/bidmachine/protobuf/sdk/Device;->audioContext_:Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 277
    .line 278
    if-eqz v0, :cond_17

    .line 279
    .line 280
    const/16 v0, 0x18

    .line 281
    .line 282
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getAudioContext()Lcom/explorestack/protobuf/adcom/Context$Device$AudioContext;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {p1, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->L0(ILcom/explorestack/protobuf/MessageLite;)V

    .line 287
    .line 288
    .line 289
    :cond_17
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCpunameBytes()Lcom/explorestack/protobuf/ByteString;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    if-nez v0, :cond_18

    .line 298
    .line 299
    const/16 v0, 0x19

    .line 300
    .line 301
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuname_:Ljava/lang/Object;

    .line 302
    .line 303
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 304
    .line 305
    .line 306
    :cond_18
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getCpuvendorBytes()Lcom/explorestack/protobuf/ByteString;

    .line 307
    .line 308
    .line 309
    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-nez v0, :cond_19

    .line 315
    .line 316
    const/16 v0, 0x1a

    .line 317
    .line 318
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->cpuvendor_:Ljava/lang/Object;

    .line 319
    .line 320
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    :cond_19
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getGpunameBytes()Lcom/explorestack/protobuf/ByteString;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 328
    .line 329
    .line 330
    move-result v0

    .line 331
    if-nez v0, :cond_1a

    .line 332
    .line 333
    const/16 v0, 0x1b

    .line 334
    .line 335
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuname_:Ljava/lang/Object;

    .line 336
    .line 337
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    :cond_1a
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getGpuvendorBytes()Lcom/explorestack/protobuf/ByteString;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-nez v0, :cond_1b

    .line 349
    .line 350
    const/16 v0, 0x1c

    .line 351
    .line 352
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->gpuvendor_:Ljava/lang/Object;

    .line 353
    .line 354
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 355
    .line 356
    .line 357
    :cond_1b
    invoke-virtual {p0}, Lio/bidmachine/protobuf/sdk/Device;->getTimezoneBytes()Lcom/explorestack/protobuf/ByteString;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->isEmpty()Z

    .line 362
    .line 363
    .line 364
    move-result v0

    .line 365
    if-nez v0, :cond_1c

    .line 366
    .line 367
    const/16 v0, 0x1d

    .line 368
    .line 369
    iget-object v1, p0, Lio/bidmachine/protobuf/sdk/Device;->timezone_:Ljava/lang/Object;

    .line 370
    .line 371
    invoke-static {p1, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->writeString(Lcom/explorestack/protobuf/CodedOutputStream;ILjava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    :cond_1c
    iget-wide v0, p0, Lio/bidmachine/protobuf/sdk/Device;->freemem_:J

    .line 375
    .line 376
    cmp-long v2, v0, v2

    .line 377
    .line 378
    if-eqz v2, :cond_1d

    .line 379
    .line 380
    const/16 v2, 0x1e

    .line 381
    .line 382
    invoke-virtual {p1, v2, v0, v1}, Lcom/explorestack/protobuf/CodedOutputStream;->e1(IJ)V

    .line 383
    .line 384
    .line 385
    :cond_1d
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Device;->apilevel_:I

    .line 386
    .line 387
    if-eqz v0, :cond_1e

    .line 388
    .line 389
    const/16 v1, 0x1f

    .line 390
    .line 391
    invoke-virtual {p1, v1, v0}, Lcom/explorestack/protobuf/CodedOutputStream;->c1(II)V

    .line 392
    .line 393
    .line 394
    :cond_1e
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 395
    .line 396
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/j2;->writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V

    .line 397
    .line 398
    .line 399
    return-void
.end method
