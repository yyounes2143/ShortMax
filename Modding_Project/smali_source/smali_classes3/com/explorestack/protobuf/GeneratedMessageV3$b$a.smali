.class Lcom/explorestack/protobuf/GeneratedMessageV3$b$a;
.super Ljava/lang/Object;
.source "GeneratedMessageV3.java"

# interfaces
.implements Lcom/explorestack/protobuf/GeneratedMessageV3$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/protobuf/GeneratedMessageV3$b;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$b$a;->a:Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/GeneratedMessageV3$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b$a;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    return-void
.end method


# virtual methods
.method public markDirty()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$b$a;->a:Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
