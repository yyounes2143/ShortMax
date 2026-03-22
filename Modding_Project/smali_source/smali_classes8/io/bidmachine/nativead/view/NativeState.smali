.class public final enum Lio/bidmachine/nativead/view/NativeState;
.super Ljava/lang/Enum;
.source "NativeState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/nativead/view/NativeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/nativead/view/NativeState;

.field public static final enum Image:Lio/bidmachine/nativead/view/NativeState;

.field public static final enum Loading:Lio/bidmachine/nativead/view/NativeState;

.field public static final enum Paused:Lio/bidmachine/nativead/view/NativeState;

.field public static final enum Playing:Lio/bidmachine/nativead/view/NativeState;


# direct methods
.method private static synthetic $values()[Lio/bidmachine/nativead/view/NativeState;
    .locals 4

    .line 1
    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/nativead/view/NativeState;->Playing:Lio/bidmachine/nativead/view/NativeState;

    .line 4
    .line 5
    sget-object v2, Lio/bidmachine/nativead/view/NativeState;->Loading:Lio/bidmachine/nativead/view/NativeState;

    .line 6
    .line 7
    sget-object v3, Lio/bidmachine/nativead/view/NativeState;->Paused:Lio/bidmachine/nativead/view/NativeState;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/nativead/view/NativeState;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/bidmachine/nativead/view/NativeState;

    .line 2
    .line 3
    const-string v1, "Image"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lio/bidmachine/nativead/view/NativeState;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/bidmachine/nativead/view/NativeState;->Image:Lio/bidmachine/nativead/view/NativeState;

    .line 10
    .line 11
    new-instance v0, Lio/bidmachine/nativead/view/NativeState;

    .line 12
    .line 13
    const-string v1, "Playing"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lio/bidmachine/nativead/view/NativeState;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lio/bidmachine/nativead/view/NativeState;->Playing:Lio/bidmachine/nativead/view/NativeState;

    .line 20
    .line 21
    new-instance v0, Lio/bidmachine/nativead/view/NativeState;

    .line 22
    .line 23
    const-string v1, "Loading"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lio/bidmachine/nativead/view/NativeState;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lio/bidmachine/nativead/view/NativeState;->Loading:Lio/bidmachine/nativead/view/NativeState;

    .line 30
    .line 31
    new-instance v0, Lio/bidmachine/nativead/view/NativeState;

    .line 32
    .line 33
    const-string v1, "Paused"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lio/bidmachine/nativead/view/NativeState;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lio/bidmachine/nativead/view/NativeState;->Paused:Lio/bidmachine/nativead/view/NativeState;

    .line 40
    .line 41
    invoke-static {}, Lio/bidmachine/nativead/view/NativeState;->$values()[Lio/bidmachine/nativead/view/NativeState;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lio/bidmachine/nativead/view/NativeState;->$VALUES:[Lio/bidmachine/nativead/view/NativeState;

    .line 46
    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/nativead/view/NativeState;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/nativead/view/NativeState;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/bidmachine/nativead/view/NativeState;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/bidmachine/nativead/view/NativeState;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/nativead/view/NativeState;->$VALUES:[Lio/bidmachine/nativead/view/NativeState;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/bidmachine/nativead/view/NativeState;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/nativead/view/NativeState;

    .line 8
    .line 9
    return-object v0
.end method
