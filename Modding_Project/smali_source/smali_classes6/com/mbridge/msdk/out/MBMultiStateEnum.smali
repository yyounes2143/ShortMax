.class public final enum Lcom/mbridge/msdk/out/MBMultiStateEnum;
.super Ljava/lang/Enum;
.source "MBMultiStateEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mbridge/msdk/out/MBMultiStateEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mbridge/msdk/out/MBMultiStateEnum;

.field public static final enum negative:Lcom/mbridge/msdk/out/MBMultiStateEnum;

.field public static final enum positive:Lcom/mbridge/msdk/out/MBMultiStateEnum;

.field public static final enum undefined:Lcom/mbridge/msdk/out/MBMultiStateEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/mbridge/msdk/out/MBMultiStateEnum;

    .line 2
    .line 3
    const-string/jumbo v1, "undefined"

    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-direct {v0, v1, v2}, Lcom/mbridge/msdk/out/MBMultiStateEnum;-><init>(Ljava/lang/String;I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/mbridge/msdk/out/MBMultiStateEnum;->undefined:Lcom/mbridge/msdk/out/MBMultiStateEnum;

    .line 11
    .line 12
    new-instance v1, Lcom/mbridge/msdk/out/MBMultiStateEnum;

    .line 13
    .line 14
    const-string v2, "positive"

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-direct {v1, v2, v3}, Lcom/mbridge/msdk/out/MBMultiStateEnum;-><init>(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    sput-object v1, Lcom/mbridge/msdk/out/MBMultiStateEnum;->positive:Lcom/mbridge/msdk/out/MBMultiStateEnum;

    .line 21
    .line 22
    new-instance v2, Lcom/mbridge/msdk/out/MBMultiStateEnum;

    .line 23
    .line 24
    const-string v3, "negative"

    .line 25
    .line 26
    const/4 v4, 0x2

    .line 27
    invoke-direct {v2, v3, v4}, Lcom/mbridge/msdk/out/MBMultiStateEnum;-><init>(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    sput-object v2, Lcom/mbridge/msdk/out/MBMultiStateEnum;->negative:Lcom/mbridge/msdk/out/MBMultiStateEnum;

    .line 31
    .line 32
    filled-new-array {v0, v1, v2}, [Lcom/mbridge/msdk/out/MBMultiStateEnum;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lcom/mbridge/msdk/out/MBMultiStateEnum;->$VALUES:[Lcom/mbridge/msdk/out/MBMultiStateEnum;

    .line 37
    .line 38
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

.method public static valueOf(Ljava/lang/String;)Lcom/mbridge/msdk/out/MBMultiStateEnum;
    .locals 1

    .line 1
    const-class v0, Lcom/mbridge/msdk/out/MBMultiStateEnum;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/mbridge/msdk/out/MBMultiStateEnum;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/mbridge/msdk/out/MBMultiStateEnum;
    .locals 1

    .line 1
    sget-object v0, Lcom/mbridge/msdk/out/MBMultiStateEnum;->$VALUES:[Lcom/mbridge/msdk/out/MBMultiStateEnum;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/mbridge/msdk/out/MBMultiStateEnum;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/mbridge/msdk/out/MBMultiStateEnum;

    .line 8
    .line 9
    return-object v0
.end method
