.class public final enum Lio/bidmachine/rendering/model/AnimationFunctionType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lyq/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/AnimationFunctionType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/AnimationFunctionType;",
        ">;",
        "Lyq/k;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/rendering/model/AnimationFunctionType$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum EaseIn:Lio/bidmachine/rendering/model/AnimationFunctionType;

.field public static final enum EaseInOut:Lio/bidmachine/rendering/model/AnimationFunctionType;

.field public static final enum EaseOut:Lio/bidmachine/rendering/model/AnimationFunctionType;

.field public static final enum Linear:Lio/bidmachine/rendering/model/AnimationFunctionType;

.field private static final synthetic b:[Lio/bidmachine/rendering/model/AnimationFunctionType;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "linear"

    .line 5
    .line 6
    const-string v3, "Linear"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/AnimationFunctionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lio/bidmachine/rendering/model/AnimationFunctionType;->Linear:Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 12
    .line 13
    new-instance v0, Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "ease_in"

    .line 17
    .line 18
    const-string v3, "EaseIn"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/AnimationFunctionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lio/bidmachine/rendering/model/AnimationFunctionType;->EaseIn:Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 24
    .line 25
    new-instance v0, Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "ease_out"

    .line 29
    .line 30
    const-string v3, "EaseOut"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/AnimationFunctionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lio/bidmachine/rendering/model/AnimationFunctionType;->EaseOut:Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 36
    .line 37
    new-instance v0, Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "ease_in_out"

    .line 41
    .line 42
    const-string v3, "EaseInOut"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/AnimationFunctionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lio/bidmachine/rendering/model/AnimationFunctionType;->EaseInOut:Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 48
    .line 49
    invoke-static {}, Lio/bidmachine/rendering/model/AnimationFunctionType;->a()[Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lio/bidmachine/rendering/model/AnimationFunctionType;->b:[Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 54
    .line 55
    new-instance v0, Lio/bidmachine/rendering/model/AnimationFunctionType$a;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/AnimationFunctionType$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lio/bidmachine/rendering/model/AnimationFunctionType;->Companion:Lio/bidmachine/rendering/model/AnimationFunctionType$a;

    .line 62
    .line 63
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
    iput-object p3, p0, Lio/bidmachine/rendering/model/AnimationFunctionType;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private static final synthetic a()[Lio/bidmachine/rendering/model/AnimationFunctionType;
    .locals 4

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/AnimationFunctionType;->Linear:Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/rendering/model/AnimationFunctionType;->EaseIn:Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 4
    .line 5
    sget-object v2, Lio/bidmachine/rendering/model/AnimationFunctionType;->EaseOut:Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 6
    .line 7
    sget-object v3, Lio/bidmachine/rendering/model/AnimationFunctionType;->EaseInOut:Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public static final get(Ljava/lang/String;)Lio/bidmachine/rendering/model/AnimationFunctionType;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/AnimationFunctionType;->Companion:Lio/bidmachine/rendering/model/AnimationFunctionType$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lio/bidmachine/rendering/model/AnimationFunctionType$a;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/AnimationFunctionType;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/AnimationFunctionType;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/AnimationFunctionType;->b:[Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/rendering/model/AnimationFunctionType;

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
    iget-object v0, p0, Lio/bidmachine/rendering/model/AnimationFunctionType;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
