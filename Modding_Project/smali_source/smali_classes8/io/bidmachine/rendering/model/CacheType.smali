.class public final enum Lio/bidmachine/rendering/model/CacheType;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lyq/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/model/CacheType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/bidmachine/rendering/model/CacheType;",
        ">;",
        "Lyq/k;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lio/bidmachine/rendering/model/CacheType$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum FullLoad:Lio/bidmachine/rendering/model/CacheType;

.field public static final enum PartialLoad:Lio/bidmachine/rendering/model/CacheType;

.field public static final enum StreamLoad:Lio/bidmachine/rendering/model/CacheType;

.field private static final synthetic b:[Lio/bidmachine/rendering/model/CacheType;


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lio/bidmachine/rendering/model/CacheType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "full_load"

    .line 5
    .line 6
    const-string v3, "FullLoad"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lio/bidmachine/rendering/model/CacheType;->FullLoad:Lio/bidmachine/rendering/model/CacheType;

    .line 12
    .line 13
    new-instance v0, Lio/bidmachine/rendering/model/CacheType;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "partial_load"

    .line 17
    .line 18
    const-string v3, "PartialLoad"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lio/bidmachine/rendering/model/CacheType;->PartialLoad:Lio/bidmachine/rendering/model/CacheType;

    .line 24
    .line 25
    new-instance v0, Lio/bidmachine/rendering/model/CacheType;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "stream_load"

    .line 29
    .line 30
    const-string v3, "StreamLoad"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lio/bidmachine/rendering/model/CacheType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lio/bidmachine/rendering/model/CacheType;->StreamLoad:Lio/bidmachine/rendering/model/CacheType;

    .line 36
    .line 37
    invoke-static {}, Lio/bidmachine/rendering/model/CacheType;->a()[Lio/bidmachine/rendering/model/CacheType;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lio/bidmachine/rendering/model/CacheType;->b:[Lio/bidmachine/rendering/model/CacheType;

    .line 42
    .line 43
    new-instance v0, Lio/bidmachine/rendering/model/CacheType$a;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, v1}, Lio/bidmachine/rendering/model/CacheType$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lio/bidmachine/rendering/model/CacheType;->Companion:Lio/bidmachine/rendering/model/CacheType$a;

    .line 50
    .line 51
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
    iput-object p3, p0, Lio/bidmachine/rendering/model/CacheType;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method private static final synthetic a()[Lio/bidmachine/rendering/model/CacheType;
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/CacheType;->FullLoad:Lio/bidmachine/rendering/model/CacheType;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/rendering/model/CacheType;->PartialLoad:Lio/bidmachine/rendering/model/CacheType;

    .line 4
    .line 5
    sget-object v2, Lio/bidmachine/rendering/model/CacheType;->StreamLoad:Lio/bidmachine/rendering/model/CacheType;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lio/bidmachine/rendering/model/CacheType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static final get(Ljava/lang/String;)Lio/bidmachine/rendering/model/CacheType;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/CacheType;->Companion:Lio/bidmachine/rendering/model/CacheType$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lio/bidmachine/rendering/model/CacheType$a;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/CacheType;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lio/bidmachine/rendering/model/CacheType;
    .locals 1

    .line 1
    const-class v0, Lio/bidmachine/rendering/model/CacheType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lio/bidmachine/rendering/model/CacheType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lio/bidmachine/rendering/model/CacheType;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/model/CacheType;->b:[Lio/bidmachine/rendering/model/CacheType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lio/bidmachine/rendering/model/CacheType;

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
    iget-object v0, p0, Lio/bidmachine/rendering/model/CacheType;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
