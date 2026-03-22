.class public final enum Lcom/facebook/login/widget/LoginButton$ToolTipMode;
.super Ljava/lang/Enum;
.source "LoginButton.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/login/widget/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToolTipMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/widget/LoginButton$ToolTipMode$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/login/widget/LoginButton$ToolTipMode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/facebook/login/widget/LoginButton$ToolTipMode;

.field public static final enum AUTOMATIC:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

.field public static final Companion:Lcom/facebook/login/widget/LoginButton$ToolTipMode$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DEFAULT:Lcom/facebook/login/widget/LoginButton$ToolTipMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum DISPLAY_ALWAYS:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

.field public static final enum NEVER_DISPLAY:Lcom/facebook/login/widget/LoginButton$ToolTipMode;


# instance fields
.field private final intValue:I

.field private final stringValue:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private static final synthetic $values()[Lcom/facebook/login/widget/LoginButton$ToolTipMode;
    .locals 3

    .line 1
    sget-object v0, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->AUTOMATIC:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 2
    .line 3
    sget-object v1, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->DISPLAY_ALWAYS:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 4
    .line 5
    sget-object v2, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->NEVER_DISPLAY:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "automatic"

    .line 5
    .line 6
    const-string v3, "AUTOMATIC"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2, v1}, Lcom/facebook/login/widget/LoginButton$ToolTipMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->AUTOMATIC:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 12
    .line 13
    new-instance v1, Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "display_always"

    .line 17
    .line 18
    const-string v4, "DISPLAY_ALWAYS"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2, v3, v2}, Lcom/facebook/login/widget/LoginButton$ToolTipMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->DISPLAY_ALWAYS:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 24
    .line 25
    new-instance v1, Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    const-string v3, "never_display"

    .line 29
    .line 30
    const-string v4, "NEVER_DISPLAY"

    .line 31
    .line 32
    invoke-direct {v1, v4, v2, v3, v2}, Lcom/facebook/login/widget/LoginButton$ToolTipMode;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 33
    .line 34
    .line 35
    sput-object v1, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->NEVER_DISPLAY:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 36
    .line 37
    invoke-static {}, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->$values()[Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sput-object v1, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->$VALUES:[Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 42
    .line 43
    new-instance v1, Lcom/facebook/login/widget/LoginButton$ToolTipMode$a;

    .line 44
    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-direct {v1, v2}, Lcom/facebook/login/widget/LoginButton$ToolTipMode$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    sput-object v1, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->Companion:Lcom/facebook/login/widget/LoginButton$ToolTipMode$a;

    .line 50
    .line 51
    sput-object v0, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->DEFAULT:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 52
    .line 53
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->stringValue:Ljava/lang/String;

    .line 5
    .line 6
    iput p4, p0, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->intValue:I

    .line 7
    .line 8
    return-void
.end method

.method public static final synthetic access$getDEFAULT$cp()Lcom/facebook/login/widget/LoginButton$ToolTipMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->DEFAULT:Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/login/widget/LoginButton$ToolTipMode;
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/facebook/login/widget/LoginButton$ToolTipMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->$VALUES:[Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/facebook/login/widget/LoginButton$ToolTipMode;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getIntValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->intValue:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/widget/LoginButton$ToolTipMode;->stringValue:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
