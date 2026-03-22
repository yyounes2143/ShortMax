.class public abstract enum Lcom/hades/aar/admanager/core/AdFormat;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lca/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hades/aar/admanager/core/AdFormat;",
        ">;",
        "Lca/j;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hades/aar/admanager/core/AdFormat;

.field public static final enum ALL:Lcom/hades/aar/admanager/core/AdFormat;

.field public static final enum APP_OPEN:Lcom/hades/aar/admanager/core/AdFormat;

.field public static final enum BANNER:Lcom/hades/aar/admanager/core/AdFormat;

.field public static final enum INTERSTITIAL:Lcom/hades/aar/admanager/core/AdFormat;

.field public static final enum MEDIA_VIDEO:Lcom/hades/aar/admanager/core/AdFormat;

.field public static final enum NATIVE:Lcom/hades/aar/admanager/core/AdFormat;

.field public static final enum REWARDED_VIDEO:Lcom/hades/aar/admanager/core/AdFormat;


# direct methods
.method private static final synthetic $values()[Lcom/hades/aar/admanager/core/AdFormat;
    .locals 7

    .line 1
    sget-object v0, Lcom/hades/aar/admanager/core/AdFormat;->ALL:Lcom/hades/aar/admanager/core/AdFormat;

    .line 2
    .line 3
    sget-object v1, Lcom/hades/aar/admanager/core/AdFormat;->APP_OPEN:Lcom/hades/aar/admanager/core/AdFormat;

    .line 4
    .line 5
    sget-object v2, Lcom/hades/aar/admanager/core/AdFormat;->INTERSTITIAL:Lcom/hades/aar/admanager/core/AdFormat;

    .line 6
    .line 7
    sget-object v3, Lcom/hades/aar/admanager/core/AdFormat;->NATIVE:Lcom/hades/aar/admanager/core/AdFormat;

    .line 8
    .line 9
    sget-object v4, Lcom/hades/aar/admanager/core/AdFormat;->REWARDED_VIDEO:Lcom/hades/aar/admanager/core/AdFormat;

    .line 10
    .line 11
    sget-object v5, Lcom/hades/aar/admanager/core/AdFormat;->BANNER:Lcom/hades/aar/admanager/core/AdFormat;

    .line 12
    .line 13
    sget-object v6, Lcom/hades/aar/admanager/core/AdFormat;->MEDIA_VIDEO:Lcom/hades/aar/admanager/core/AdFormat;

    .line 14
    .line 15
    filled-new-array/range {v0 .. v6}, [Lcom/hades/aar/admanager/core/AdFormat;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lad-manager/b/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lad-manager/b/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hades/aar/admanager/core/AdFormat;->ALL:Lcom/hades/aar/admanager/core/AdFormat;

    .line 7
    .line 8
    new-instance v0, Lad-manager/b/d;

    .line 9
    .line 10
    invoke-direct {v0}, Lad-manager/b/d;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/hades/aar/admanager/core/AdFormat;->APP_OPEN:Lcom/hades/aar/admanager/core/AdFormat;

    .line 14
    .line 15
    new-instance v0, Lad-manager/b/f;

    .line 16
    .line 17
    invoke-direct {v0}, Lad-manager/b/f;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/hades/aar/admanager/core/AdFormat;->INTERSTITIAL:Lcom/hades/aar/admanager/core/AdFormat;

    .line 21
    .line 22
    new-instance v0, Lad-manager/b/h;

    .line 23
    .line 24
    invoke-direct {v0}, Lad-manager/b/h;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/hades/aar/admanager/core/AdFormat;->NATIVE:Lcom/hades/aar/admanager/core/AdFormat;

    .line 28
    .line 29
    new-instance v0, Lad-manager/b/i;

    .line 30
    .line 31
    invoke-direct {v0}, Lad-manager/b/i;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/hades/aar/admanager/core/AdFormat;->REWARDED_VIDEO:Lcom/hades/aar/admanager/core/AdFormat;

    .line 35
    .line 36
    new-instance v0, Lad-manager/b/e;

    .line 37
    .line 38
    invoke-direct {v0}, Lad-manager/b/e;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/hades/aar/admanager/core/AdFormat;->BANNER:Lcom/hades/aar/admanager/core/AdFormat;

    .line 42
    .line 43
    new-instance v0, Lad-manager/b/g;

    .line 44
    .line 45
    invoke-direct {v0}, Lad-manager/b/g;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lcom/hades/aar/admanager/core/AdFormat;->MEDIA_VIDEO:Lcom/hades/aar/admanager/core/AdFormat;

    .line 49
    .line 50
    invoke-static {}, Lcom/hades/aar/admanager/core/AdFormat;->$values()[Lcom/hades/aar/admanager/core/AdFormat;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lcom/hades/aar/admanager/core/AdFormat;->$VALUES:[Lcom/hades/aar/admanager/core/AdFormat;

    .line 55
    .line 56
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hades/aar/admanager/core/AdFormat;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hades/aar/admanager/core/AdFormat;
    .locals 1

    .line 1
    const-class v0, Lcom/hades/aar/admanager/core/AdFormat;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/hades/aar/admanager/core/AdFormat;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/hades/aar/admanager/core/AdFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/hades/aar/admanager/core/AdFormat;->$VALUES:[Lcom/hades/aar/admanager/core/AdFormat;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/hades/aar/admanager/core/AdFormat;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public abstract synthetic formatName()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
