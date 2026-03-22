.class public final Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IlrdRequest.java"

# interfaces
.implements Lcom/moloco/sdk/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$PlatformCase;,
        Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;",
        "Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$a;",
        ">;",
        "Lcom/moloco/sdk/h;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

.field public static final EVENT_ID_FIELD_NUMBER:I = 0x2

.field public static final LEVELPLAY_FIELD_NUMBER:I = 0x4

.field public static final MAX_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;",
            ">;"
        }
    .end annotation
.end field

.field public static final SESSION_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private eventId_:Ljava/lang/String;

.field private platformCase_:I

.field private platform_:Ljava/lang/Object;

.field private sessionId_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    .line 7
    .line 8
    const-class v1, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

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
    iput v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platformCase_:I

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->sessionId_:Ljava/lang/String;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->eventId_:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method static bridge synthetic a(Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->setEventId(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic b(Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;Lcom/moloco/sdk/IlrdRequest$LevelPlayImpression;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->setLevelplay(Lcom/moloco/sdk/IlrdRequest$LevelPlayImpression;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic c(Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;Lcom/moloco/sdk/IlrdRequest$MaxImpression;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->setMax(Lcom/moloco/sdk/IlrdRequest$MaxImpression;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private clearEventId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->getDefaultInstance()Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->getEventId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->eventId_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private clearLevelplay()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platformCase_:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platformCase_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platform_:Ljava/lang/Object;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private clearMax()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platformCase_:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platformCase_:I

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platform_:Ljava/lang/Object;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private clearPlatform()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platformCase_:I

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platform_:Ljava/lang/Object;

    .line 6
    .line 7
    return-void
.end method

.method private clearSessionId()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->getDefaultInstance()Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->getSessionId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->sessionId_:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method static bridge synthetic d(Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->setSessionId(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic e()Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDefaultInstance()Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    .line 2
    .line 3
    return-object v0
.end method

.method private mergeLevelplay(Lcom/moloco/sdk/IlrdRequest$LevelPlayImpression;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platformCase_:I

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platform_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {}, Lcom/moloco/sdk/IlrdRequest$LevelPlayImpression;->getDefaultInstance()Lcom/moloco/sdk/IlrdRequest$LevelPlayImpression;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platform_:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/moloco/sdk/IlrdRequest$LevelPlayImpression;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/moloco/sdk/IlrdRequest$LevelPlayImpression;->newBuilder(Lcom/moloco/sdk/IlrdRequest$LevelPlayImpression;)Lcom/moloco/sdk/IlrdRequest$LevelPlayImpression$a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/moloco/sdk/IlrdRequest$LevelPlayImpression$a;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platform_:Ljava/lang/Object;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platform_:Ljava/lang/Object;

    .line 39
    .line 40
    :goto_0
    iput v1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platformCase_:I

    .line 41
    .line 42
    return-void
.end method

.method private mergeMax(Lcom/moloco/sdk/IlrdRequest$MaxImpression;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platformCase_:I

    .line 5
    .line 6
    const/4 v1, 0x3

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platform_:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-static {}, Lcom/moloco/sdk/IlrdRequest$MaxImpression;->getDefaultInstance()Lcom/moloco/sdk/IlrdRequest$MaxImpression;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eq v0, v2, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platform_:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcom/moloco/sdk/IlrdRequest$MaxImpression;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/moloco/sdk/IlrdRequest$MaxImpression;->newBuilder(Lcom/moloco/sdk/IlrdRequest$MaxImpression;)Lcom/moloco/sdk/IlrdRequest$MaxImpression$a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/moloco/sdk/IlrdRequest$MaxImpression$a;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platform_:Ljava/lang/Object;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platform_:Ljava/lang/Object;

    .line 39
    .line 40
    :goto_0
    iput v1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platformCase_:I

    .line 41
    .line 42
    return-void
.end method

.method public static newBuilder()Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$a;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$a;

    return-object v0
.end method

.method public static newBuilder(Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$a;
    .locals 1

    .line 2
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$a;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

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

.method private setEventId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->eventId_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setEventIdBytes(Lcom/google/protobuf/ByteString;)V
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
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->eventId_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method

.method private setLevelplay(Lcom/moloco/sdk/IlrdRequest$LevelPlayImpression;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platform_:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    iput p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platformCase_:I

    .line 8
    .line 9
    return-void
.end method

.method private setMax(Lcom/moloco/sdk/IlrdRequest$MaxImpression;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platform_:Ljava/lang/Object;

    .line 5
    .line 6
    const/4 p1, 0x3

    .line 7
    iput p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platformCase_:I

    .line 8
    .line 9
    return-void
.end method

.method private setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->sessionId_:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private setSessionIdBytes(Lcom/google/protobuf/ByteString;)V
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
    iput-object p1, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->sessionId_:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    sget-object p2, Lcom/moloco/sdk/g;->a:[I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    aget p1, p2, p1

    .line 8
    .line 9
    const/4 p2, 0x0

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
    return-object p2

    .line 20
    :pswitch_1
    const/4 p1, 0x1

    .line 21
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :pswitch_2
    sget-object p1, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->PARSER:Lcom/google/protobuf/Parser;

    .line 27
    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    const-class p2, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    .line 31
    .line 32
    monitor-enter p2

    .line 33
    :try_start_0
    sget-object p1, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->PARSER:Lcom/google/protobuf/Parser;

    .line 34
    .line 35
    if-nez p1, :cond_0

    .line 36
    .line 37
    new-instance p1, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    .line 38
    .line 39
    sget-object p3, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    .line 40
    .line 41
    invoke-direct {p1, p3}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 42
    .line 43
    .line 44
    sput-object p1, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->PARSER:Lcom/google/protobuf/Parser;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_1

    .line 49
    :cond_0
    :goto_0
    monitor-exit p2

    .line 50
    goto :goto_2

    .line 51
    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p1

    .line 53
    :cond_1
    :goto_2
    return-object p1

    .line 54
    :pswitch_3
    sget-object p1, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    .line 55
    .line 56
    return-object p1

    .line 57
    :pswitch_4
    const-string v0, "platform_"

    .line 58
    .line 59
    const-string v1, "platformCase_"

    .line 60
    .line 61
    const-string v2, "sessionId_"

    .line 62
    .line 63
    const-string v3, "eventId_"

    .line 64
    .line 65
    const-class v4, Lcom/moloco/sdk/IlrdRequest$MaxImpression;

    .line 66
    .line 67
    const-class v5, Lcom/moloco/sdk/IlrdRequest$LevelPlayImpression;

    .line 68
    .line 69
    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    const-string p2, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003<\u0000\u0004<\u0000"

    .line 74
    .line 75
    sget-object p3, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->DEFAULT_INSTANCE:Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    .line 76
    .line 77
    invoke-static {p3, p2, p1}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :pswitch_5
    new-instance p1, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$a;

    .line 83
    .line 84
    invoke-direct {p1, p2}, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$a;-><init>(Lcom/moloco/sdk/i;)V

    .line 85
    .line 86
    .line 87
    return-object p1

    .line 88
    :pswitch_6
    new-instance p1, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;

    .line 89
    .line 90
    invoke-direct {p1}, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;-><init>()V

    .line 91
    .line 92
    .line 93
    return-object p1

    .line 94
    nop

    .line 95
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

.method public getEventId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->eventId_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getEventIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->eventId_:Ljava/lang/String;

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

.method public getLevelplay()Lcom/moloco/sdk/IlrdRequest$LevelPlayImpression;
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platformCase_:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platform_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/moloco/sdk/IlrdRequest$LevelPlayImpression;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Lcom/moloco/sdk/IlrdRequest$LevelPlayImpression;->getDefaultInstance()Lcom/moloco/sdk/IlrdRequest$LevelPlayImpression;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getMax()Lcom/moloco/sdk/IlrdRequest$MaxImpression;
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platformCase_:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platform_:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lcom/moloco/sdk/IlrdRequest$MaxImpression;

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-static {}, Lcom/moloco/sdk/IlrdRequest$MaxImpression;->getDefaultInstance()Lcom/moloco/sdk/IlrdRequest$MaxImpression;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public getPlatformCase()Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$PlatformCase;
    .locals 1

    .line 1
    iget v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platformCase_:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$PlatformCase;->forNumber(I)Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue$PlatformCase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->sessionId_:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSessionIdBytes()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->sessionId_:Ljava/lang/String;

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

.method public hasLevelplay()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platformCase_:I

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public hasMax()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/moloco/sdk/IlrdRequest$ImpressionLevelRevenue;->platformCase_:I

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method
