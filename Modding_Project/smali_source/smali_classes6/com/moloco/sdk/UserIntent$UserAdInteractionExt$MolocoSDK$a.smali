.class public final Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK$a;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "UserIntent.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;",
        "Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK$a;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;->b()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/moloco/sdk/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;->a(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
