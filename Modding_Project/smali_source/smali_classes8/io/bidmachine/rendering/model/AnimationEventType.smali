.class public final enum Lio/bidmachine/rendering/model/AnimationEventType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lyq/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/AnimationEventType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/AnimationEventType;",
        ">;",
        "Lyq/k;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final enum Appear:Lio/bidmachine/rendering/model/AnimationEventType;

.field public static final Companion:Lio/bidmachine/rendering/model/AnimationEventType$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum Disappear:Lio/bidmachine/rendering/model/AnimationEventType;

.field private static final synthetic b:[Lio/bidmachine/rendering/model/AnimationEventType;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/AnimationEventType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "appear"

    .line 5
    .line 6
    const-string v3, "Appear"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/AnimationEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lio/bidmachine/rendering/model/AnimationEventType;->Appear:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 12
    .line 13
    new-instance v0, Lio/bidmachine/rendering/model/AnimationEventType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "disappear"

    .line 17
    .line 18
    const-string v3, "Disappear"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/AnimationEventType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lio/bidmachine/rendering/model/AnimationEventType;->Disappear:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 24
    .line 25
    invoke-static {}, Lio/bidmachine/rendering/model/AnimationEventType;->a()[Lio/bidmachine/rendering/model/AnimationEventType;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lio/bidmachine/rendering/model/AnimationEventType;->b:[Lio/bidmachine/rendering/model/AnimationEventType;

    .line 30
    .line 31
    new-instance v0, Lio/bidmachine/rendering/model/AnimationEventType$a;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/AnimationEventType$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lio/bidmachine/rendering/model/AnimationEventType;->Companion:Lio/bidmachine/rendering/model/AnimationEventType$a;

    .line 38
    .line 39
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
    iput-object p3, p0, Lio/bidmachine/rendering/model/AnimationEventType;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private static final synthetic a()[Lio/bidmachine/rendering/model/AnimationEventType;
    .locals 2

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/AnimationEventType;->Appear:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/rendering/model/AnimationEventType;->Disappear:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Lio/bidmachine/rendering/model/AnimationEventType;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static final get(Ljava/lang/String;)Lio/bidmachine/rendering/model/AnimationEventType;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/AnimationEventType;->Companion:Lio/bidmachine/rendering/model/AnimationEventType$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lio/bidmachine/rendering/model/AnimationEventType$a;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/AnimationEventType;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/AnimationEventType;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/rendering/model/AnimationEventType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/bidmachine/rendering/model/AnimationEventType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/AnimationEventType;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/AnimationEventType;->b:[Lio/bidmachine/rendering/model/AnimationEventType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/rendering/model/AnimationEventType;

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
    iget-object v0, p0, Lio/bidmachine/rendering/model/AnimationEventType;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
