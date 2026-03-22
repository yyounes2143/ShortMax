.class public final enum Lio/bidmachine/rendering/model/AdElementType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lyq/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/AdElementType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/AdElementType;",
        ">;",
        "Lyq/k;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/rendering/model/AdElementType$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum Countdown:Lio/bidmachine/rendering/model/AdElementType;

.field public static final enum Image:Lio/bidmachine/rendering/model/AdElementType;

.field public static final enum Label:Lio/bidmachine/rendering/model/AdElementType;

.field public static final enum Mraid:Lio/bidmachine/rendering/model/AdElementType;

.field public static final enum Progress:Lio/bidmachine/rendering/model/AdElementType;

.field public static final enum Video:Lio/bidmachine/rendering/model/AdElementType;

.field private static final synthetic b:[Lio/bidmachine/rendering/model/AdElementType;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/AdElementType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mraid"

    .line 5
    .line 6
    const-string v3, "Mraid"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/AdElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lio/bidmachine/rendering/model/AdElementType;->Mraid:Lio/bidmachine/rendering/model/AdElementType;

    .line 12
    .line 13
    new-instance v0, Lio/bidmachine/rendering/model/AdElementType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "video"

    .line 17
    .line 18
    const-string v3, "Video"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/AdElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lio/bidmachine/rendering/model/AdElementType;->Video:Lio/bidmachine/rendering/model/AdElementType;

    .line 24
    .line 25
    new-instance v0, Lio/bidmachine/rendering/model/AdElementType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "image"

    .line 29
    .line 30
    const-string v3, "Image"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/AdElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lio/bidmachine/rendering/model/AdElementType;->Image:Lio/bidmachine/rendering/model/AdElementType;

    .line 36
    .line 37
    new-instance v0, Lio/bidmachine/rendering/model/AdElementType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "label"

    .line 41
    .line 42
    const-string v3, "Label"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/AdElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lio/bidmachine/rendering/model/AdElementType;->Label:Lio/bidmachine/rendering/model/AdElementType;

    .line 48
    .line 49
    new-instance v0, Lio/bidmachine/rendering/model/AdElementType;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "countdown"

    .line 53
    .line 54
    const-string v3, "Countdown"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/AdElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lio/bidmachine/rendering/model/AdElementType;->Countdown:Lio/bidmachine/rendering/model/AdElementType;

    .line 60
    .line 61
    new-instance v0, Lio/bidmachine/rendering/model/AdElementType;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string v2, "progress"

    .line 65
    .line 66
    const-string v3, "Progress"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/AdElementType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lio/bidmachine/rendering/model/AdElementType;->Progress:Lio/bidmachine/rendering/model/AdElementType;

    .line 72
    .line 73
    invoke-static {}, Lio/bidmachine/rendering/model/AdElementType;->a()[Lio/bidmachine/rendering/model/AdElementType;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    sput-object v0, Lio/bidmachine/rendering/model/AdElementType;->b:[Lio/bidmachine/rendering/model/AdElementType;

    .line 78
    .line 79
    new-instance v0, Lio/bidmachine/rendering/model/AdElementType$a;

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/AdElementType$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    .line 84
    .line 85
    sput-object v0, Lio/bidmachine/rendering/model/AdElementType;->Companion:Lio/bidmachine/rendering/model/AdElementType$a;

    .line 86
    .line 87
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
    iput-object p3, p0, Lio/bidmachine/rendering/model/AdElementType;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private static final synthetic a()[Lio/bidmachine/rendering/model/AdElementType;
    .locals 6

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/AdElementType;->Mraid:Lio/bidmachine/rendering/model/AdElementType;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/rendering/model/AdElementType;->Video:Lio/bidmachine/rendering/model/AdElementType;

    .line 4
    .line 5
    sget-object v2, Lio/bidmachine/rendering/model/AdElementType;->Image:Lio/bidmachine/rendering/model/AdElementType;

    .line 6
    .line 7
    sget-object v3, Lio/bidmachine/rendering/model/AdElementType;->Label:Lio/bidmachine/rendering/model/AdElementType;

    .line 8
    .line 9
    sget-object v4, Lio/bidmachine/rendering/model/AdElementType;->Countdown:Lio/bidmachine/rendering/model/AdElementType;

    .line 10
    .line 11
    sget-object v5, Lio/bidmachine/rendering/model/AdElementType;->Progress:Lio/bidmachine/rendering/model/AdElementType;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Lio/bidmachine/rendering/model/AdElementType;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public static final get(Ljava/lang/String;)Lio/bidmachine/rendering/model/AdElementType;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/AdElementType;->Companion:Lio/bidmachine/rendering/model/AdElementType$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lio/bidmachine/rendering/model/AdElementType$a;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/AdElementType;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/AdElementType;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/rendering/model/AdElementType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/bidmachine/rendering/model/AdElementType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/AdElementType;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/AdElementType;->b:[Lio/bidmachine/rendering/model/AdElementType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/rendering/model/AdElementType;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/AdElementType;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
