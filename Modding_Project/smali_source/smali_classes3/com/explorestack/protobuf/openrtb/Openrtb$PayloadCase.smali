.class public final enum Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
.super Ljava/lang/Enum;
.source "Openrtb.java"

# interfaces
.implements Lcom/explorestack/protobuf/i0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/openrtb/Openrtb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayloadCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;",
        ">;",
        "Lcom/explorestack/protobuf/i0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

.field public static final enum PAYLOAD_NOT_SET:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

.field public static final enum REQUEST:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

.field public static final enum RESPONSE:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    const-string v2, "REQUEST"

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    invoke-direct {v0, v2, v3, v1}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->REQUEST:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 11
    .line 12
    new-instance v1, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    const/4 v4, 0x5

    .line 16
    const-string v5, "RESPONSE"

    .line 17
    .line 18
    invoke-direct {v1, v5, v2, v4}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;-><init>(Ljava/lang/String;II)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->RESPONSE:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 22
    .line 23
    new-instance v2, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 24
    .line 25
    const-string v4, "PAYLOAD_NOT_SET"

    .line 26
    .line 27
    const/4 v5, 0x2

    .line 28
    invoke-direct {v2, v4, v5, v3}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;-><init>(Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    sput-object v2, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->PAYLOAD_NOT_SET:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 32
    .line 33
    filled-new-array {v0, v1, v2}, [Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->$VALUES:[Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 38
    .line 39
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput p3, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x4

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    sget-object p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->RESPONSE:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    sget-object p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->REQUEST:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_2
    sget-object p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->PAYLOAD_NOT_SET:Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 18
    .line 19
    return-object p0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->forNumber(I)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .locals 1

    .line 1
    const-class v0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->$VALUES:[Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/openrtb/Openrtb$PayloadCase;->value:I

    .line 2
    .line 3
    return v0
.end method
