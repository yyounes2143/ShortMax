.class public final enum Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;
.super Ljava/lang/Enum;
.source "Reader.java"

# interfaces
.implements Lcom/explorestack/protobuf/i0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/sdk/Reader$Rule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RuleOneofCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;",
        ">;",
        "Lcom/explorestack/protobuf/i0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

.field public static final enum GENERAL_RULE:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

.field public static final enum IOS_LOG_RULE:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

.field public static final enum RULEONEOF_NOT_SET:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    .line 2
    .line 3
    const-string v1, "GENERAL_RULE"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->GENERAL_RULE:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    .line 11
    .line 12
    new-instance v1, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    .line 13
    .line 14
    const-string v4, "IOS_LOG_RULE"

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    invoke-direct {v1, v4, v3, v5}, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->IOS_LOG_RULE:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    .line 21
    .line 22
    new-instance v3, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    .line 23
    .line 24
    const-string v4, "RULEONEOF_NOT_SET"

    .line 25
    .line 26
    invoke-direct {v3, v4, v5, v2}, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->RULEONEOF_NOT_SET:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    .line 30
    .line 31
    filled-new-array {v0, v1, v3}, [Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->$VALUES:[Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    .line 36
    .line 37
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
    iput p3, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    sget-object p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->IOS_LOG_RULE:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_1
    sget-object p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->GENERAL_RULE:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_2
    sget-object p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->RULEONEOF_NOT_SET:Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    .line 18
    .line 19
    return-object p0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->forNumber(I)Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->$VALUES:[Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/sdk/Reader$Rule$RuleOneofCase;->value:I

    .line 2
    .line 3
    return v0
.end method
