.class abstract Lcom/explorestack/protobuf/h;
.super Ljava/lang/Object;
.source "BinaryReader.java"

# interfaces
.implements Lcom/explorestack/protobuf/o1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/h$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/h$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/h;-><init>()V

    return-void
.end method

.method public static h(Ljava/nio/ByteBuffer;Z)Lcom/explorestack/protobuf/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->hasArray()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/explorestack/protobuf/h$b;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1}, Lcom/explorestack/protobuf/h$b;-><init>(Ljava/nio/ByteBuffer;Z)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string p1, "Direct buffers not yet supported"

    .line 16
    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    throw p0
.end method


# virtual methods
.method public shouldDiscardUnknownFields()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
