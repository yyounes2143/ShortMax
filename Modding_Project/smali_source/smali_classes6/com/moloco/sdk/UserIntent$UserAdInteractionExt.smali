.class public final Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "UserIntent.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$InfoExtCase;,
        Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;,
        Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;,
        Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;,
        Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;,
        Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction;,
        Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;,
        Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction;,
        Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction;,
        Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;,
        Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button;,
        Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$b;,
        Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;,
        Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;",
        "Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# static fields
.field public static final ADVERTISING_ID_FIELD_NUMBER:I = 0x3

.field public static final APP_BACKGROUNDING_INTERACTION_FIELD_NUMBER:I = 0x67

.field public static final APP_FIELD_NUMBER:I = 0x5

.field public static final APP_FOREGROUNDING_INTERACTION_FIELD_NUMBER:I = 0x66

.field public static final CLICK_INTERACTION_FIELD_NUMBER:I = 0x65

.field public static final CLIENT_TIMESTAMP_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

.field public static final DEVICE_FIELD_NUMBER:I = 0x4

.field public static final IMP_INTERACTION_FIELD_NUMBER:I = 0x64

.field public static final MREF_FIELD_NUMBER:I = 0x1

.field public static final NETWORK_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;",
            ">;"
        }
    .end annotation
.end field

.field public static final SDK_FIELD_NUMBER:I = 0x7


# instance fields
.field private advertisingId_:Ljava/lang/String;

.field private app_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;

.field private clientTimestamp_:J

.field private device_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;

.field private infoExtCase_:I

.field private infoExt_:Ljava/lang/Object;

.field private mref_:Ljava/lang/String;

.field private network_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;

.field private sdk_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    .line 7
    .line 8
    const-class v1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    .line 9
    .line 10
    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->mref_:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->advertisingId_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method static bridge synthetic a(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->setAdvertisingId(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic b(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->setApp(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic c(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->setAppBackgroundingInteraction(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearAdvertisingId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->getAdvertisingId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->advertisingId_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearApp()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->app_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;

    .line 3
    .line 4
    return-void
.end method

.method private clearAppBackgroundingInteraction()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 2
    .line 3
    const/16 v1, 0x67

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private clearAppForegroundingInteraction()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 2
    .line 3
    const/16 v1, 0x66

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private clearClickInteraction()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 2
    .line 3
    const/16 v1, 0x65

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private clearClientTimestamp()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->clientTimestamp_:J

    .line 4
    .line 5
    return-void
.end method

.method private clearDevice()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->device_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;

    .line 3
    .line 4
    return-void
.end method

.method private clearImpInteraction()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private clearInfoExt()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method

.method private clearMref()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->getMref()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->mref_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearNetwork()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->network_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;

    .line 3
    .line 4
    return-void
.end method

.method private clearSdk()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->sdk_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;

    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic d(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->setAppForegroundingInteraction(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic e(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->setClickInteraction(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic f(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->setClientTimestamp(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic g(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->setDevice(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    .line 2
    .line 3
    return-object v0
.end method

.method static bridge synthetic h(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->setImpInteraction(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic i(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->setMref(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic j(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->setNetwork(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic k(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->setSdk(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic l()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    .line 2
    .line 3
    return-object v0
.end method

.method private mergeApp(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->app_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->app_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;->newBuilder(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->app_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->app_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;

    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method private mergeAppBackgroundingInteraction(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 5
    .line 6
    const/16 v1, 0x67

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction;->newBuilder(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction$a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction$a;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 40
    .line 41
    :goto_0
    iput v1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 42
    .line 43
    return-void
.end method

.method private mergeAppForegroundingInteraction(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 5
    .line 6
    const/16 v1, 0x66

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction;->newBuilder(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction$a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction$a;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 40
    .line 41
    :goto_0
    iput v1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 42
    .line 43
    return-void
.end method

.method private mergeClickInteraction(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 5
    .line 6
    const/16 v1, 0x65

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->newBuilder(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 40
    .line 41
    :goto_0
    iput v1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 42
    .line 43
    return-void
.end method

.method private mergeDevice(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->device_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->device_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;->newBuilder(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->device_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->device_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;

    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method private mergeImpInteraction(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 5
    .line 6
    const/16 v1, 0x64

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 19
    .line 20
    check-cast v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction;->newBuilder(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction$a;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction$a;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 40
    .line 41
    :goto_0
    iput v1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 42
    .line 43
    return-void
.end method

.method private mergeNetwork(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->network_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->network_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;->newBuilder(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->network_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->network_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;

    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method private mergeSdk(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->sdk_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->sdk_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;->newBuilder(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK$a;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->sdk_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->sdk_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;

    .line 36
    .line 37
    :goto_0
    return-void
.end method

.method public static newBuilder()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method private setAdvertisingId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->advertisingId_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setAdvertisingIdBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->advertisingId_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setApp(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->app_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;

    .line 5
    .line 6
    return-void
.end method

.method private setAppBackgroundingInteraction(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 5
    .line 6
    const/16 p1, 0x67

    .line 7
    .line 8
    iput p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 9
    .line 10
    return-void
.end method

.method private setAppForegroundingInteraction(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 5
    .line 6
    const/16 p1, 0x66

    .line 7
    .line 8
    iput p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 9
    .line 10
    return-void
.end method

.method private setClickInteraction(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 5
    .line 6
    const/16 p1, 0x65

    .line 7
    .line 8
    iput p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 9
    .line 10
    return-void
.end method

.method private setClientTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->clientTimestamp_:J

    .line 2
    .line 3
    return-void
.end method

.method private setDevice(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->device_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;

    .line 5
    .line 6
    return-void
.end method

.method private setImpInteraction(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 5
    .line 6
    const/16 p1, 0x64

    .line 7
    .line 8
    iput p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 9
    .line 10
    return-void
.end method

.method private setMref(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->mref_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setMrefBytes(Lcom/google/protobuf/ByteString;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->mref_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setNetwork(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->network_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;

    .line 5
    .line 6
    return-void
.end method

.method private setSdk(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->sdk_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    sget-object v0, Lcom/moloco/sdk/r;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    packed-switch v0, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw v0

    .line 19
    :pswitch_0
    return-object v1

    .line 20
    :pswitch_1
    const/4 v0, 0x1

    .line 21
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :pswitch_2
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->PARSER:Lcom/google/protobuf/Parser;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const-class v1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    .line 31
    .line 32
    monitor-enter v1

    .line 33
    :try_start_0
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->PARSER:Lcom/google/protobuf/Parser;

    .line 34
    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 38
    .line 39
    sget-object v2, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    .line 40
    .line 41
    invoke-direct {v0, v2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->PARSER:Lcom/google/protobuf/Parser;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit v1

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw v0

    .line 53
    :cond_1
    :goto_2
    return-object v0

    .line 54
    :pswitch_3
    sget-object v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    .line 55
    .line 56
    return-object v0

    .line 57
    :pswitch_4
    const-string v1, "infoExt_"

    .line 58
    .line 59
    const-string v2, "infoExtCase_"

    .line 60
    .line 61
    const-string v3, "mref_"

    .line 62
    .line 63
    const-string v4, "clientTimestamp_"

    .line 64
    .line 65
    const-string v5, "advertisingId_"

    .line 66
    .line 67
    const-string v6, "device_"

    .line 68
    .line 69
    const-string v7, "app_"

    .line 70
    .line 71
    const-string v8, "network_"

    .line 72
    .line 73
    const-string v9, "sdk_"

    .line 74
    .line 75
    const-class v10, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction;

    .line 76
    .line 77
    const-class v11, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    .line 78
    .line 79
    const-class v12, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction;

    .line 80
    .line 81
    const-class v13, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction;

    .line 82
    .line 83
    filled-new-array/range {v1 .. v13}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    const-string v1, "\u0000\u000b\u0001\u0000\u0001g\u000b\u0000\u0000\u0000\u0001\u0208\u0002\u0002\u0003\u0208\u0004\t\u0005\t\u0006\t\u0007\td<\u0000e<\u0000f<\u0000g<\u0000"

    .line 88
    .line 89
    sget-object v2, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->DEFAULT_INSTANCE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    .line 90
    .line 91
    invoke-static {v2, v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0

    .line 96
    :pswitch_5
    new-instance v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 97
    .line 98
    invoke-direct {v0, v1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;-><init>(Lcom/moloco/sdk/s;)V

    .line 99
    .line 100
    .line 101
    return-object v0

    .line 102
    :pswitch_6
    new-instance v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    .line 103
    .line 104
    invoke-direct {v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;-><init>()V

    .line 105
    .line 106
    .line 107
    return-object v0

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAdvertisingId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->advertisingId_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdvertisingIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->advertisingId_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getApp()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->app_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getAppBackgroundingInteraction()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction;
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 2
    .line 3
    const/16 v1, 0x67

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getAppForegroundingInteraction()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction;
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 2
    .line 3
    const/16 v1, 0x66

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getClickInteraction()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 2
    .line 3
    const/16 v1, 0x65

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getClientTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->clientTimestamp_:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getDevice()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->device_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getImpInteraction()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction;
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExt_:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public getInfoExtCase()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$InfoExtCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$InfoExtCase;->forNumber(I)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$InfoExtCase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMref()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->mref_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMrefBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->mref_:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNetwork()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->network_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getSdk()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->sdk_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;->getDefaultInstance()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public hasApp()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->app_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;

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

.method public hasAppBackgroundingInteraction()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 2
    .line 3
    const/16 v1, 0x67

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public hasAppForegroundingInteraction()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 2
    .line 3
    const/16 v1, 0x66

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public hasClickInteraction()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 2
    .line 3
    const/16 v1, 0x65

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public hasDevice()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->device_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;

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

.method public hasImpInteraction()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->infoExtCase_:I

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public hasNetwork()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->network_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;

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

.method public hasSdk()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->sdk_:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;

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
