.class public final Lcom/moloco/sdk/ConfigsOuterClass$Configs$a;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ConfigsOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/ConfigsOuterClass$Configs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/moloco/sdk/ConfigsOuterClass$Configs;",
        "Lcom/moloco/sdk/ConfigsOuterClass$Configs$a;",
        ">;",
        "Lcom/google/protobuf/MessageLiteOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->a()Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/moloco/sdk/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$a;-><init>()V

    return-void
.end method
