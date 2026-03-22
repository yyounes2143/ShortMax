.class final Lcom/explorestack/protobuf/g1;
.super Ljava/lang/Object;
.source "NewInstanceSchemaLite.java"

# interfaces
.implements Lcom/explorestack/protobuf/e1;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    sget-object v0, Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->d(Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
