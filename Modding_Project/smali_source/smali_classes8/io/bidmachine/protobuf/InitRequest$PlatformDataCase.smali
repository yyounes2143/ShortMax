.class public final enum Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;
.super Ljava/lang/Enum;
.source "InitRequest.java"

# interfaces
.implements Lcom/explorestack/protobuf/i0$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/InitRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlatformDataCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;",
        ">;",
        "Lcom/explorestack/protobuf/i0$c;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

.field public static final enum ANDROID:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

.field public static final enum IOS:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

.field public static final enum PLATFORMDATA_NOT_SET:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    .line 2
    .line 3
    const/16 v1, 0x14

    .line 4
    .line 5
    const-string v2, "ANDROID"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-direct {v0, v2, v3, v1}, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;-><init>(Ljava/lang/String;II)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->ANDROID:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    .line 12
    .line 13
    new-instance v1, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const/16 v4, 0x15

    .line 17
    .line 18
    const-string v5, "IOS"

    .line 19
    .line 20
    invoke-direct {v1, v5, v2, v4}, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;-><init>(Ljava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->IOS:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    .line 24
    .line 25
    new-instance v2, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    .line 26
    .line 27
    const-string v4, "PLATFORMDATA_NOT_SET"

    .line 28
    .line 29
    const/4 v5, 0x2

    .line 30
    invoke-direct {v2, v4, v5, v3}, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;-><init>(Ljava/lang/String;II)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->PLATFORMDATA_NOT_SET:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    .line 34
    .line 35
    filled-new-array {v0, v1, v2}, [Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->$VALUES:[Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    .line 40
    .line 41
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
    iput p3, p0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static forNumber(I)Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/16 v0, 0x14

    .line 4
    .line 5
    if-eq p0, v0, :cond_1

    .line 6
    .line 7
    const/16 v0, 0x15

    .line 8
    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x0

    .line 12
    return-object p0

    .line 13
    :cond_0
    sget-object p0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->IOS:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    .line 14
    .line 15
    return-object p0

    .line 16
    :cond_1
    sget-object p0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->ANDROID:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_2
    sget-object p0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->PLATFORMDATA_NOT_SET:Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    .line 20
    .line 21
    return-object p0
.end method

.method public static valueOf(I)Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->forNumber(I)Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    return-object p0
.end method

.method public static values()[Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->$VALUES:[Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/protobuf/InitRequest$PlatformDataCase;->value:I

    .line 2
    .line 3
    return v0
.end method
