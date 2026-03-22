.class public final enum Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;
.super Ljava/lang/Enum;
.source "LinkRedirectListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/turbolink/sdk/campaign/LinkRedirectListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RedirectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

.field public static final enum FREEDOM_COMPONENT:Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

.field public static final enum TARGET_CAMPAIGN_URL:Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

.field public static final enum USE_REWARD:Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;


# instance fields
.field private final v:I


# direct methods
.method private static final synthetic $values()[Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;
    .locals 3

    .line 1
    sget-object v0, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;->USE_REWARD:Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

    .line 2
    .line 3
    sget-object v1, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;->FREEDOM_COMPONENT:Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

    .line 4
    .line 5
    sget-object v2, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;->TARGET_CAMPAIGN_URL:Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

    .line 2
    .line 3
    const-string v1, "USE_REWARD"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, v3}, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;-><init>(Ljava/lang/String;II)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;->USE_REWARD:Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

    .line 11
    .line 12
    new-instance v0, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

    .line 13
    .line 14
    const-string v1, "FREEDOM_COMPONENT"

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v3, v2}, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;-><init>(Ljava/lang/String;II)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;->FREEDOM_COMPONENT:Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

    .line 21
    .line 22
    new-instance v0, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

    .line 23
    .line 24
    const-string v1, "TARGET_CAMPAIGN_URL"

    .line 25
    .line 26
    const/4 v3, 0x3

    .line 27
    invoke-direct {v0, v1, v2, v3}, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;-><init>(Ljava/lang/String;II)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;->TARGET_CAMPAIGN_URL:Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

    .line 31
    .line 32
    invoke-static {}, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;->$values()[Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sput-object v0, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;->$VALUES:[Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

    .line 37
    .line 38
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
    iput p3, p0, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;->v:I

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;
    .locals 1

    .line 1
    const-class v0, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;->$VALUES:[Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getV()I
    .locals 1

    .line 1
    iget v0, p0, Lai/turbolink/sdk/campaign/LinkRedirectListener$RedirectType;->v:I

    .line 2
    .line 3
    return v0
.end method
