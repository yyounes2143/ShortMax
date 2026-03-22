.class public final Lcom/explorestack/protobuf/d2;
.super Ljava/lang/Object;
.source "TimestampProto.java"


# static fields
.field static final a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field static final b:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

.field private static c:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "\n\u001fgoogle/protobuf/timestamp.proto\u0012\u000fgoogle.protobuf\"+\n\tTimestamp\u0012\u000f\n\u0007seconds\u0018\u0001 \u0001(\u0003\u0012\r\n\u0005nanos\u0018\u0002 \u0001(\u0005B\u0085\u0001\n\u0013com.google.protobufB\u000eTimestampProtoP\u0001Z2google.golang.org/protobuf/types/known/timestamppb\u00f8\u0001\u0001\u00a2\u0002\u0003GPB\u00aa\u0002\u001eGoogle.Protobuf.WellKnownTypesb\u0006proto3"

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    new-array v2, v1, [Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 9
    .line 10
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->internalBuildGeneratedFileFrom([Ljava/lang/String;[Lcom/explorestack/protobuf/Descriptors$FileDescriptor;)Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/explorestack/protobuf/d2;->c:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 15
    .line 16
    invoke-static {}, Lcom/explorestack/protobuf/d2;->a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 29
    .line 30
    sput-object v0, Lcom/explorestack/protobuf/d2;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 31
    .line 32
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 33
    .line 34
    const-string v2, "Seconds"

    .line 35
    .line 36
    const-string v3, "Nanos"

    .line 37
    .line 38
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-direct {v1, v0, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sput-object v1, Lcom/explorestack/protobuf/d2;->b:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 46
    .line 47
    return-void
.end method

.method public static a()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/d2;->c:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2
    .line 3
    return-object v0
.end method
