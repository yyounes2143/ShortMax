.class public final enum Lai/turbolink/sdk/request/TurboLinkDefaultEvent;
.super Ljava/lang/Enum;
.source "ServerDefines.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/turbolink/sdk/request/TurboLinkDefaultEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

.field public static final enum ADDTOCART:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

.field public static final enum CLICK:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

.field public static final enum CODESEARCH:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

.field public static final enum INSTALL:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

.field public static final enum LOADURL:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

.field public static final enum LOGIN:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

.field public static final enum LOGOUT:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

.field public static final enum OPEN:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

.field public static final enum REGISTER:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

.field public static final enum REOPEN:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;


# instance fields
.field private final event:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lai/turbolink/sdk/request/TurboLinkDefaultEvent;
    .locals 10

    .line 1
    sget-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->INSTALL:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 2
    .line 3
    sget-object v1, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->OPEN:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 4
    .line 5
    sget-object v2, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->REOPEN:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 6
    .line 7
    sget-object v3, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->REGISTER:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 8
    .line 9
    sget-object v4, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->CLICK:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 10
    .line 11
    sget-object v5, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->LOGIN:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 12
    .line 13
    sget-object v6, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->LOGOUT:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 14
    .line 15
    sget-object v7, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->LOADURL:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 16
    .line 17
    sget-object v8, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->CODESEARCH:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 18
    .line 19
    sget-object v9, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->ADDTOCART:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 20
    .line 21
    filled-new-array/range {v0 .. v9}, [Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "install"

    .line 5
    .line 6
    const-string v3, "INSTALL"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->INSTALL:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 12
    .line 13
    new-instance v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "open"

    .line 17
    .line 18
    const-string v3, "OPEN"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->OPEN:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 24
    .line 25
    new-instance v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "reopen"

    .line 29
    .line 30
    const-string v3, "REOPEN"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->REOPEN:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 36
    .line 37
    new-instance v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "register"

    .line 41
    .line 42
    const-string v3, "REGISTER"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->REGISTER:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 48
    .line 49
    new-instance v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "click"

    .line 53
    .line 54
    const-string v3, "CLICK"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->CLICK:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 60
    .line 61
    new-instance v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "login"

    .line 65
    .line 66
    const-string v3, "LOGIN"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->LOGIN:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 72
    .line 73
    new-instance v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 74
    .line 75
    const/4 v1, 0x6

    .line 76
    const-string v2, "logout"

    .line 77
    .line 78
    const-string v3, "LOGOUT"

    .line 79
    .line 80
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sput-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->LOGOUT:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 84
    .line 85
    new-instance v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 86
    .line 87
    const/4 v1, 0x7

    .line 88
    const-string v2, "loadurl"

    .line 89
    .line 90
    const-string v3, "LOADURL"

    .line 91
    .line 92
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sput-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->LOADURL:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 96
    .line 97
    new-instance v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 98
    .line 99
    const/16 v1, 0x8

    .line 100
    .line 101
    const-string v2, "code_search"

    .line 102
    .line 103
    const-string v3, "CODESEARCH"

    .line 104
    .line 105
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sput-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->CODESEARCH:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 109
    .line 110
    new-instance v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 111
    .line 112
    const/16 v1, 0x9

    .line 113
    .line 114
    const-string v2, "tl_add_to_cart"

    .line 115
    .line 116
    const-string v3, "ADDTOCART"

    .line 117
    .line 118
    invoke-direct {v0, v3, v1, v2}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    sput-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->ADDTOCART:Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 122
    .line 123
    invoke-static {}, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->$values()[Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    sput-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->$VALUES:[Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 128
    .line 129
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->event:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/turbolink/sdk/request/TurboLinkDefaultEvent;
    .locals 1

    .line 1
    const-class v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lai/turbolink/sdk/request/TurboLinkDefaultEvent;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->$VALUES:[Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lai/turbolink/sdk/request/TurboLinkDefaultEvent;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getEvent()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/request/TurboLinkDefaultEvent;->event:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
