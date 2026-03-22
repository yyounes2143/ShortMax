.class public final enum Lio/bidmachine/rendering/model/GradientDirection;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lyq/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/GradientDirection$a;,
        Lio/bidmachine/rendering/model/GradientDirection$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/GradientDirection;",
        ">;",
        "Lyq/k;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final enum BottomTop:Lio/bidmachine/rendering/model/GradientDirection;

.field public static final Companion:Lio/bidmachine/rendering/model/GradientDirection$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum LeftRight:Lio/bidmachine/rendering/model/GradientDirection;

.field public static final enum RightLeft:Lio/bidmachine/rendering/model/GradientDirection;

.field public static final enum TopBottom:Lio/bidmachine/rendering/model/GradientDirection;

.field private static final synthetic b:[Lio/bidmachine/rendering/model/GradientDirection;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/GradientDirection;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "right"

    .line 5
    .line 6
    const-string v3, "LeftRight"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/GradientDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lio/bidmachine/rendering/model/GradientDirection;->LeftRight:Lio/bidmachine/rendering/model/GradientDirection;

    .line 12
    .line 13
    new-instance v0, Lio/bidmachine/rendering/model/GradientDirection;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "bottom"

    .line 17
    .line 18
    const-string v3, "TopBottom"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/GradientDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lio/bidmachine/rendering/model/GradientDirection;->TopBottom:Lio/bidmachine/rendering/model/GradientDirection;

    .line 24
    .line 25
    new-instance v0, Lio/bidmachine/rendering/model/GradientDirection;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "left"

    .line 29
    .line 30
    const-string v3, "RightLeft"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/GradientDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lio/bidmachine/rendering/model/GradientDirection;->RightLeft:Lio/bidmachine/rendering/model/GradientDirection;

    .line 36
    .line 37
    new-instance v0, Lio/bidmachine/rendering/model/GradientDirection;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "top"

    .line 41
    .line 42
    const-string v3, "BottomTop"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/GradientDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lio/bidmachine/rendering/model/GradientDirection;->BottomTop:Lio/bidmachine/rendering/model/GradientDirection;

    .line 48
    .line 49
    invoke-static {}, Lio/bidmachine/rendering/model/GradientDirection;->a()[Lio/bidmachine/rendering/model/GradientDirection;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    sput-object v0, Lio/bidmachine/rendering/model/GradientDirection;->b:[Lio/bidmachine/rendering/model/GradientDirection;

    .line 54
    .line 55
    new-instance v0, Lio/bidmachine/rendering/model/GradientDirection$a;

    .line 56
    .line 57
    const/4 v1, 0x0

    .line 58
    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/GradientDirection$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lio/bidmachine/rendering/model/GradientDirection;->Companion:Lio/bidmachine/rendering/model/GradientDirection$a;

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
    iput-object p3, p0, Lio/bidmachine/rendering/model/GradientDirection;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private static final synthetic a()[Lio/bidmachine/rendering/model/GradientDirection;
    .locals 4

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/GradientDirection;->LeftRight:Lio/bidmachine/rendering/model/GradientDirection;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/rendering/model/GradientDirection;->TopBottom:Lio/bidmachine/rendering/model/GradientDirection;

    .line 4
    .line 5
    sget-object v2, Lio/bidmachine/rendering/model/GradientDirection;->RightLeft:Lio/bidmachine/rendering/model/GradientDirection;

    .line 6
    .line 7
    sget-object v3, Lio/bidmachine/rendering/model/GradientDirection;->BottomTop:Lio/bidmachine/rendering/model/GradientDirection;

    .line 8
    .line 9
    filled-new-array {v0, v1, v2, v3}, [Lio/bidmachine/rendering/model/GradientDirection;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public static final get(Ljava/lang/String;)Lio/bidmachine/rendering/model/GradientDirection;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/GradientDirection;->Companion:Lio/bidmachine/rendering/model/GradientDirection$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lio/bidmachine/rendering/model/GradientDirection$a;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/GradientDirection;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/GradientDirection;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/rendering/model/GradientDirection;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/bidmachine/rendering/model/GradientDirection;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/GradientDirection;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/GradientDirection;->b:[Lio/bidmachine/rendering/model/GradientDirection;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/rendering/model/GradientDirection;

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
    iget-object v0, p0, Lio/bidmachine/rendering/model/GradientDirection;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final toDrawableGradientOrientation()Lio/bidmachine/rendering/internal/j$c;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/GradientDirection$b;->$EnumSwitchMapping$0:[I

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x3

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    .line 21
    sget-object v0, Lio/bidmachine/rendering/internal/j$c;->e:Lio/bidmachine/rendering/internal/j$c;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 25
    .line 26
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 27
    .line 28
    .line 29
    throw v0

    .line 30
    :cond_1
    sget-object v0, Lio/bidmachine/rendering/internal/j$c;->c:Lio/bidmachine/rendering/internal/j$c;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    sget-object v0, Lio/bidmachine/rendering/internal/j$c;->a:Lio/bidmachine/rendering/internal/j$c;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    sget-object v0, Lio/bidmachine/rendering/internal/j$c;->g:Lio/bidmachine/rendering/internal/j$c;

    .line 37
    .line 38
    :goto_0
    return-object v0
.end method
