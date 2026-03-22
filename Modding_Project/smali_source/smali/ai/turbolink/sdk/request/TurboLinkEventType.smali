.class public final enum Lai/turbolink/sdk/request/TurboLinkEventType;
.super Ljava/lang/Enum;
.source "ServerDefines.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/turbolink/sdk/request/TurboLinkEventType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/turbolink/sdk/request/TurboLinkEventType;

.field public static final enum CUSTOM:Lai/turbolink/sdk/request/TurboLinkEventType;

.field public static final enum DEFAULT:Lai/turbolink/sdk/request/TurboLinkEventType;


# instance fields
.field private handler:Lai/turbolink/sdk/events/TurboLinkEventExecute;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private type:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lai/turbolink/sdk/request/TurboLinkEventType;
    .locals 2

    .line 1
    sget-object v0, Lai/turbolink/sdk/request/TurboLinkEventType;->DEFAULT:Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 2
    .line 3
    sget-object v1, Lai/turbolink/sdk/request/TurboLinkEventType;->CUSTOM:Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 2
    .line 3
    const-string v1, "default"

    .line 4
    .line 5
    sget-object v2, Lai/turbolink/sdk/events/TurboLinkEventDefaultExecute;->INSTANCE:Lai/turbolink/sdk/events/TurboLinkEventDefaultExecute;

    .line 6
    .line 7
    const-string v3, "DEFAULT"

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-direct {v0, v3, v4, v1, v2}, Lai/turbolink/sdk/request/TurboLinkEventType;-><init>(Ljava/lang/String;ILjava/lang/String;Lai/turbolink/sdk/events/TurboLinkEventExecute;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lai/turbolink/sdk/request/TurboLinkEventType;->DEFAULT:Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 14
    .line 15
    new-instance v0, Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 16
    .line 17
    const-string v1, "custom"

    .line 18
    .line 19
    sget-object v2, Lai/turbolink/sdk/events/TurboLinkEventCustomExecute;->INSTANCE:Lai/turbolink/sdk/events/TurboLinkEventCustomExecute;

    .line 20
    .line 21
    const-string v3, "CUSTOM"

    .line 22
    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-direct {v0, v3, v4, v1, v2}, Lai/turbolink/sdk/request/TurboLinkEventType;-><init>(Ljava/lang/String;ILjava/lang/String;Lai/turbolink/sdk/events/TurboLinkEventExecute;)V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lai/turbolink/sdk/request/TurboLinkEventType;->CUSTOM:Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 28
    .line 29
    invoke-static {}, Lai/turbolink/sdk/request/TurboLinkEventType;->$values()[Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lai/turbolink/sdk/request/TurboLinkEventType;->$VALUES:[Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 34
    .line 35
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lai/turbolink/sdk/events/TurboLinkEventExecute;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lai/turbolink/sdk/events/TurboLinkEventExecute;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lai/turbolink/sdk/request/TurboLinkEventType;->type:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p4, p0, Lai/turbolink/sdk/request/TurboLinkEventType;->handler:Lai/turbolink/sdk/events/TurboLinkEventExecute;

    .line 7
    .line 8
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/turbolink/sdk/request/TurboLinkEventType;
    .locals 1

    .line 1
    const-class v0, Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lai/turbolink/sdk/request/TurboLinkEventType;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/request/TurboLinkEventType;->$VALUES:[Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lai/turbolink/sdk/request/TurboLinkEventType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getHandler()Lai/turbolink/sdk/events/TurboLinkEventExecute;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/TurboLinkEventType;->handler:Lai/turbolink/sdk/events/TurboLinkEventExecute;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/TurboLinkEventType;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setHandler(Lai/turbolink/sdk/events/TurboLinkEventExecute;)V
    .locals 1
    .param p1    # Lai/turbolink/sdk/events/TurboLinkEventExecute;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/request/TurboLinkEventType;->handler:Lai/turbolink/sdk/events/TurboLinkEventExecute;

    .line 7
    .line 8
    return-void
.end method

.method public final setType(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/request/TurboLinkEventType;->type:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
