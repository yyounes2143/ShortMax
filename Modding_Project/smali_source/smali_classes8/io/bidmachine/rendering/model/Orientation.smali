.class public final enum Lio/bidmachine/rendering/model/Orientation;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lyq/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/Orientation$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/Orientation;",
        ">;",
        "Lyq/k;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/rendering/model/Orientation$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum Landscape:Lio/bidmachine/rendering/model/Orientation;

.field public static final enum Portrait:Lio/bidmachine/rendering/model/Orientation;

.field private static final synthetic c:[Lio/bidmachine/rendering/model/Orientation;


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
    new-instance v0, Lio/bidmachine/rendering/model/Orientation;

    .line 2
    .line 3
    const-string v1, "portrait"

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    const-string v3, "Portrait"

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    invoke-direct {v0, v3, v4, v1, v2}, Lio/bidmachine/rendering/model/Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lio/bidmachine/rendering/model/Orientation;->Portrait:Lio/bidmachine/rendering/model/Orientation;

    .line 13
    .line 14
    new-instance v0, Lio/bidmachine/rendering/model/Orientation;

    .line 15
    .line 16
    const-string v1, "landscape"

    .line 17
    .line 18
    const/4 v2, 0x6

    .line 19
    const-string v3, "Landscape"

    .line 20
    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-direct {v0, v3, v4, v1, v2}, Lio/bidmachine/rendering/model/Orientation;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lio/bidmachine/rendering/model/Orientation;->Landscape:Lio/bidmachine/rendering/model/Orientation;

    .line 26
    .line 27
    invoke-static {}, Lio/bidmachine/rendering/model/Orientation;->a()[Lio/bidmachine/rendering/model/Orientation;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lio/bidmachine/rendering/model/Orientation;->c:[Lio/bidmachine/rendering/model/Orientation;

    .line 32
    .line 33
    new-instance v0, Lio/bidmachine/rendering/model/Orientation$a;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/Orientation$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lio/bidmachine/rendering/model/Orientation;->Companion:Lio/bidmachine/rendering/model/Orientation$a;

    .line 40
    .line 41
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
    iput-object p3, p0, Lio/bidmachine/rendering/model/Orientation;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p4, p0, Lio/bidmachine/rendering/model/Orientation;->b:I

    .line 7
    .line 8
    return-void
.end method

.method private static final synthetic a()[Lio/bidmachine/rendering/model/Orientation;
    .locals 2

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/Orientation;->Portrait:Lio/bidmachine/rendering/model/Orientation;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/rendering/model/Orientation;->Landscape:Lio/bidmachine/rendering/model/Orientation;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lio/bidmachine/rendering/model/Orientation;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static final get(Ljava/lang/String;)Lio/bidmachine/rendering/model/Orientation;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/Orientation;->Companion:Lio/bidmachine/rendering/model/Orientation$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lio/bidmachine/rendering/model/Orientation$a;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/Orientation;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/Orientation;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/rendering/model/Orientation;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/bidmachine/rendering/model/Orientation;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/Orientation;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/Orientation;->c:[Lio/bidmachine/rendering/model/Orientation;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/rendering/model/Orientation;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final getActivityOrientation()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/model/Orientation;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/model/Orientation;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
