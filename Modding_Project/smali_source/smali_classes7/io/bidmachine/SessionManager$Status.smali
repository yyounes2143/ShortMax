.class final enum Lio/bidmachine/SessionManager$Status;
.super Ljava/lang/Enum;
.source "SessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/SessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/SessionManager$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/bidmachine/SessionManager$Status;

.field public static final enum PAUSE:Lio/bidmachine/SessionManager$Status;

.field public static final enum RESUME:Lio/bidmachine/SessionManager$Status;

.field public static final enum START:Lio/bidmachine/SessionManager$Status;


# direct methods
.method private static synthetic $values()[Lio/bidmachine/SessionManager$Status;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/SessionManager$Status;->START:Lio/bidmachine/SessionManager$Status;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/SessionManager$Status;->RESUME:Lio/bidmachine/SessionManager$Status;

    .line 4
    .line 5
    sget-object v2, Lio/bidmachine/SessionManager$Status;->PAUSE:Lio/bidmachine/SessionManager$Status;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lio/bidmachine/SessionManager$Status;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/bidmachine/SessionManager$Status;

    .line 2
    .line 3
    const-string v1, "START"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lio/bidmachine/SessionManager$Status;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lio/bidmachine/SessionManager$Status;->START:Lio/bidmachine/SessionManager$Status;

    .line 10
    .line 11
    new-instance v0, Lio/bidmachine/SessionManager$Status;

    .line 12
    .line 13
    const-string v1, "RESUME"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lio/bidmachine/SessionManager$Status;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lio/bidmachine/SessionManager$Status;->RESUME:Lio/bidmachine/SessionManager$Status;

    .line 20
    .line 21
    new-instance v0, Lio/bidmachine/SessionManager$Status;

    .line 22
    .line 23
    const-string v1, "PAUSE"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lio/bidmachine/SessionManager$Status;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lio/bidmachine/SessionManager$Status;->PAUSE:Lio/bidmachine/SessionManager$Status;

    .line 30
    .line 31
    invoke-static {}, Lio/bidmachine/SessionManager$Status;->$values()[Lio/bidmachine/SessionManager$Status;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lio/bidmachine/SessionManager$Status;->$VALUES:[Lio/bidmachine/SessionManager$Status;

    .line 36
    .line 37
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

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/SessionManager$Status;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/SessionManager$Status;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/bidmachine/SessionManager$Status;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/bidmachine/SessionManager$Status;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/SessionManager$Status;->$VALUES:[Lio/bidmachine/SessionManager$Status;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lio/bidmachine/SessionManager$Status;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/SessionManager$Status;

    .line 8
    .line 9
    return-object v0
.end method
