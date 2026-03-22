.class public final enum Lio/bidmachine/rendering/model/HorizontalGravity;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lyq/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/HorizontalGravity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/HorizontalGravity;",
        ">;",
        "Lyq/k;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final enum Center:Lio/bidmachine/rendering/model/HorizontalGravity;

.field public static final Companion:Lio/bidmachine/rendering/model/HorizontalGravity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum Left:Lio/bidmachine/rendering/model/HorizontalGravity;

.field public static final enum Right:Lio/bidmachine/rendering/model/HorizontalGravity;

.field private static final synthetic c:[Lio/bidmachine/rendering/model/HorizontalGravity;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 2
    .line 3
    const-string v1, "left"

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const-string v3, "Left"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-direct {v0, v3, v4, v1, v2}, Lio/bidmachine/rendering/model/HorizontalGravity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lio/bidmachine/rendering/model/HorizontalGravity;->Left:Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 13
    .line 14
    new-instance v0, Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    const-string v2, "center"

    .line 18
    .line 19
    const-string v3, "Center"

    .line 20
    .line 21
    invoke-direct {v0, v3, v1, v2, v1}, Lio/bidmachine/rendering/model/HorizontalGravity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lio/bidmachine/rendering/model/HorizontalGravity;->Center:Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 25
    .line 26
    new-instance v0, Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 27
    .line 28
    const-string v1, "right"

    .line 29
    .line 30
    const/4 v2, 0x5

    .line 31
    const-string v3, "Right"

    .line 32
    .line 33
    const/4 v4, 0x2

    .line 34
    invoke-direct {v0, v3, v4, v1, v2}, Lio/bidmachine/rendering/model/HorizontalGravity;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lio/bidmachine/rendering/model/HorizontalGravity;->Right:Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 38
    .line 39
    invoke-static {}, Lio/bidmachine/rendering/model/HorizontalGravity;->a()[Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lio/bidmachine/rendering/model/HorizontalGravity;->c:[Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 44
    .line 45
    new-instance v0, Lio/bidmachine/rendering/model/HorizontalGravity$a;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/HorizontalGravity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lio/bidmachine/rendering/model/HorizontalGravity;->Companion:Lio/bidmachine/rendering/model/HorizontalGravity$a;

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
    iput-object p3, p0, Lio/bidmachine/rendering/model/HorizontalGravity;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p4, p0, Lio/bidmachine/rendering/model/HorizontalGravity;->b:I

    .line 7
    .line 8
    return-void
.end method

.method private static final synthetic a()[Lio/bidmachine/rendering/model/HorizontalGravity;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/HorizontalGravity;->Left:Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/rendering/model/HorizontalGravity;->Center:Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 4
    .line 5
    sget-object v2, Lio/bidmachine/rendering/model/HorizontalGravity;->Right:Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static final get(Ljava/lang/String;)Lio/bidmachine/rendering/model/HorizontalGravity;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/HorizontalGravity;->Companion:Lio/bidmachine/rendering/model/HorizontalGravity$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lio/bidmachine/rendering/model/HorizontalGravity$a;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/HorizontalGravity;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/HorizontalGravity;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/HorizontalGravity;->c:[Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/rendering/model/HorizontalGravity;

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
    iget-object v0, p0, Lio/bidmachine/rendering/model/HorizontalGravity;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/HorizontalGravity;->b:I

    .line 2
    .line 3
    return v0
.end method
