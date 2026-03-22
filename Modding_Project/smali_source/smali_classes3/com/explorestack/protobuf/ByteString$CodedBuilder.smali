.class final Lcom/explorestack/protobuf/ByteString$CodedBuilder;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CodedBuilder"
.end annotation


# instance fields
.field private final buffer:[B

.field private final output:Lcom/explorestack/protobuf/CodedOutputStream;


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/explorestack/protobuf/ByteString$CodedBuilder;->buffer:[B

    .line 4
    invoke-static {p1}, Lcom/explorestack/protobuf/CodedOutputStream;->j0([B)Lcom/explorestack/protobuf/CodedOutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/ByteString$CodedBuilder;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    return-void
.end method

.method synthetic constructor <init>(ILcom/explorestack/protobuf/ByteString$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/ByteString$CodedBuilder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public build()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$CodedBuilder;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/CodedOutputStream;->d()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/explorestack/protobuf/ByteString$LiteralByteString;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/explorestack/protobuf/ByteString$CodedBuilder;->buffer:[B

    .line 9
    .line 10
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/ByteString$LiteralByteString;-><init>([B)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public getCodedOutput()Lcom/explorestack/protobuf/CodedOutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/ByteString$CodedBuilder;->output:Lcom/explorestack/protobuf/CodedOutputStream;

    .line 2
    .line 3
    return-object v0
.end method
