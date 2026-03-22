.class public final Lcom/moloco/sdk/BidRequest$SdkBidRequest;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "BidRequest.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$App;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$User;,
        Lcom/moloco/sdk/BidRequest$SdkBidRequest$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest;",
        "Lcom/moloco/sdk/BidRequest$SdkBidRequest$a;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# static fields
.field public static final APP_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

.field public static final DEVICE_FIELD_NUMBER:I = 0x2

.field public static final IMP_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final REGS_FIELD_NUMBER:I = 0x4

.field public static final TMAX_FIELD_NUMBER:I = 0x5

.field public static final USER_FIELD_NUMBER:I = 0x6


# instance fields
.field private app_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$App;

.field private bitField0_:I

.field private device_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

.field private imp_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;

.field private memoizedIsInitialized:B

.field private regs_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs;

.field private tmax_:I

.field private user_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$User;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    .line 7
    .line 8
    const-class v1, Lcom/moloco/sdk/BidRequest$SdkBidRequest;

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
    const/4 v0, 0x2

    .line 5
    iput-byte v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->memoizedIsInitialized:B

    .line 6
    .line 7
    return-void
.end method

.method static bridge synthetic a()Lcom/moloco/sdk/BidRequest$SdkBidRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method private clearApp()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->app_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$App;

    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 5
    .line 6
    and-int/lit8 v0, v0, -0x2

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearDevice()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->device_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 5
    .line 6
    and-int/lit8 v0, v0, -0x3

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearImp()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->imp_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;

    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 5
    .line 6
    and-int/lit8 v0, v0, -0x5

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearRegs()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->regs_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs;

    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 5
    .line 6
    and-int/lit8 v0, v0, -0x9

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearTmax()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, -0x11

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->tmax_:I

    .line 9
    .line 10
    return-void
.end method

.method private clearUser()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->user_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$User;

    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 5
    .line 6
    and-int/lit8 v0, v0, -0x21

    .line 7
    .line 8
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 9
    .line 10
    return-void
.end method

.method public static getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method private mergeApp(Lcom/moloco/sdk/BidRequest$SdkBidRequest$App;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->app_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$App;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$App;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$App;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->app_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$App;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$App;->newBuilder(Lcom/moloco/sdk/BidRequest$SdkBidRequest$App;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$App$a;

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
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$App$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$App;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->app_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$App;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->app_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$App;

    .line 36
    .line 37
    :goto_0
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 38
    .line 39
    or-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 42
    .line 43
    return-void
.end method

.method private mergeDevice(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->device_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->device_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->newBuilder(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$a;

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
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->device_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->device_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 36
    .line 37
    :goto_0
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 38
    .line 39
    or-int/lit8 p1, p1, 0x2

    .line 40
    .line 41
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 42
    .line 43
    return-void
.end method

.method private mergeImp(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->imp_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->imp_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;->newBuilder(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$b;

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
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp$b;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite$ExtendableMessage;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->imp_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->imp_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;

    .line 36
    .line 37
    :goto_0
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 38
    .line 39
    or-int/lit8 p1, p1, 0x4

    .line 40
    .line 41
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 42
    .line 43
    return-void
.end method

.method private mergeRegs(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->regs_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->regs_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs;->newBuilder(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs$a;

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
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->regs_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->regs_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs;

    .line 36
    .line 37
    :goto_0
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 38
    .line 39
    or-int/lit8 p1, p1, 0x8

    .line 40
    .line 41
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 42
    .line 43
    return-void
.end method

.method private mergeUser(Lcom/moloco/sdk/BidRequest$SdkBidRequest$User;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->user_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$User;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$User;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$User;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->user_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$User;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$User;->newBuilder(Lcom/moloco/sdk/BidRequest$SdkBidRequest$User;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$User$a;

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
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$User$a;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$User;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->user_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$User;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->user_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$User;

    .line 36
    .line 37
    :goto_0
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 38
    .line 39
    or-int/lit8 p1, p1, 0x20

    .line 40
    .line 41
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 42
    .line 43
    return-void
.end method

.method public static newBuilder()Lcom/moloco/sdk/BidRequest$SdkBidRequest$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/moloco/sdk/BidRequest$SdkBidRequest;)Lcom/moloco/sdk/BidRequest$SdkBidRequest$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/BidRequest$SdkBidRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/BidRequest$SdkBidRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/moloco/sdk/BidRequest$SdkBidRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/moloco/sdk/BidRequest$SdkBidRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/BidRequest$SdkBidRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/BidRequest$SdkBidRequest;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

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

.method private setApp(Lcom/moloco/sdk/BidRequest$SdkBidRequest$App;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->app_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$App;

    .line 5
    .line 6
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 11
    .line 12
    return-void
.end method

.method private setDevice(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->device_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 5
    .line 6
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x2

    .line 9
    .line 10
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 11
    .line 12
    return-void
.end method

.method private setImp(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->imp_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;

    .line 5
    .line 6
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x4

    .line 9
    .line 10
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 11
    .line 12
    return-void
.end method

.method private setRegs(Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->regs_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs;

    .line 5
    .line 6
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x8

    .line 9
    .line 10
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 11
    .line 12
    return-void
.end method

.method private setTmax(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 6
    .line 7
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->tmax_:I

    .line 8
    .line 9
    return-void
.end method

.method private setUser(Lcom/moloco/sdk/BidRequest$SdkBidRequest$User;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->user_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$User;

    .line 5
    .line 6
    iget p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 7
    .line 8
    or-int/lit8 p1, p1, 0x20

    .line 9
    .line 10
    iput p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object p3, Lcom/moloco/sdk/a;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, p3, p1

    .line 8
    .line 9
    const/4 p3, 0x0

    .line 10
    packed-switch p1, :pswitch_data_0

    .line 11
    .line 12
    .line 13
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw p1

    .line 19
    :pswitch_0
    if-nez p2, :cond_0

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x1

    .line 24
    :goto_0
    int-to-byte p1, p1

    .line 25
    iput-byte p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->memoizedIsInitialized:B

    .line 26
    .line 27
    return-object p3

    .line 28
    :pswitch_1
    iget-byte p1, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->memoizedIsInitialized:B

    .line 29
    .line 30
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :pswitch_2
    sget-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 36
    .line 37
    if-nez p1, :cond_2

    .line 38
    .line 39
    const-class p2, Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    .line 40
    .line 41
    monitor-enter p2

    .line 42
    :try_start_0
    sget-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 43
    .line 44
    if-nez p1, :cond_1

    .line 45
    .line 46
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 47
    .line 48
    sget-object p3, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    .line 49
    .line 50
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 51
    .line 52
    .line 53
    sput-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->PARSER:Lcom/google/protobuf/Parser;

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto :goto_2

    .line 58
    :cond_1
    :goto_1
    monitor-exit p2

    .line 59
    goto :goto_3

    .line 60
    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw p1

    .line 62
    :cond_2
    :goto_3
    return-object p1

    .line 63
    :pswitch_3
    sget-object p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    .line 64
    .line 65
    return-object p1

    .line 66
    :pswitch_4
    const-string v0, "bitField0_"

    .line 67
    .line 68
    const-string v1, "app_"

    .line 69
    .line 70
    const-string v2, "device_"

    .line 71
    .line 72
    const-string v3, "imp_"

    .line 73
    .line 74
    const-string v4, "regs_"

    .line 75
    .line 76
    const-string/jumbo v5, "tmax_"

    .line 77
    .line 78
    .line 79
    const-string/jumbo v6, "user_"

    .line 80
    .line 81
    .line 82
    filled-new-array/range {v0 .. v6}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    const-string p2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0005\u0001\u1509\u0000\u0002\u1509\u0001\u0003\u1509\u0002\u0004\u1409\u0003\u0005\u1004\u0004\u0006\u1409\u0005"

    .line 87
    .line 88
    sget-object p3, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->DEFAULT_INSTANCE:Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    .line 89
    .line 90
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    return-object p1

    .line 95
    :pswitch_5
    new-instance p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest$a;

    .line 96
    .line 97
    invoke-direct {p1, p3}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$a;-><init>(Lcom/moloco/sdk/b;)V

    .line 98
    .line 99
    .line 100
    return-object p1

    .line 101
    :pswitch_6
    new-instance p1, Lcom/moloco/sdk/BidRequest$SdkBidRequest;

    .line 102
    .line 103
    invoke-direct {p1}, Lcom/moloco/sdk/BidRequest$SdkBidRequest;-><init>()V

    .line 104
    .line 105
    .line 106
    return-object p1

    .line 107
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

.method public getApp()Lcom/moloco/sdk/BidRequest$SdkBidRequest$App;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->app_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$App;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$App;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$App;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getDevice()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->device_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Device;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getImp()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->imp_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Imp;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getRegs()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->regs_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$Regs;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public getTmax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->tmax_:I

    .line 2
    .line 3
    return v0
.end method

.method public getUser()Lcom/moloco/sdk/BidRequest$SdkBidRequest$User;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->user_:Lcom/moloco/sdk/BidRequest$SdkBidRequest$User;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/BidRequest$SdkBidRequest$User;->getDefaultInstance()Lcom/moloco/sdk/BidRequest$SdkBidRequest$User;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    return-object v0
.end method

.method public hasApp()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    and-int/2addr v0, v1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    return v1
.end method

.method public hasDevice()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-eqz v0, :cond_0

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

.method public hasImp()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_0

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

.method public hasRegs()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    if-eqz v0, :cond_0

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

.method public hasTmax()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    if-eqz v0, :cond_0

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

.method public hasUser()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/BidRequest$SdkBidRequest;->bitField0_:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    if-eqz v0, :cond_0

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
