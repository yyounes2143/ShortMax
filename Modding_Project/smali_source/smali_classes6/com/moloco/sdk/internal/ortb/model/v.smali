.class public final enum Lcom/moloco/sdk/internal/ortb/model/v;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/ortb/model/v$a;,
        Lcom/moloco/sdk/internal/ortb/model/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moloco/sdk/internal/ortb/model/v;",
        ">;"
    }
.end annotation

.annotation runtime Lst/k;
.end annotation


# static fields
.field public static final Companion:Lcom/moloco/sdk/internal/ortb/model/v$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final a:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lkotlinx/serialization/KSerializer<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final enum b:Lcom/moloco/sdk/internal/ortb/model/v;

.field public static final enum c:Lcom/moloco/sdk/internal/ortb/model/v;

.field public static final enum d:Lcom/moloco/sdk/internal/ortb/model/v;

.field public static final synthetic e:[Lcom/moloco/sdk/internal/ortb/model/v;

.field public static final synthetic f:Lss/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/v;

    .line 2
    .line 3
    const-string v1, "Top"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/internal/ortb/model/v;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/v;->b:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 10
    .line 11
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/v;

    .line 12
    .line 13
    const-string v1, "Center"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/internal/ortb/model/v;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/v;->c:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 20
    .line 21
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/v;

    .line 22
    .line 23
    const-string v1, "Bottom"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/internal/ortb/model/v;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/v;->d:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 30
    .line 31
    invoke-static {}, Lcom/moloco/sdk/internal/ortb/model/v;->a()[Lcom/moloco/sdk/internal/ortb/model/v;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/v;->e:[Lcom/moloco/sdk/internal/ortb/model/v;

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/v;->f:Lss/a;

    .line 42
    .line 43
    new-instance v0, Lcom/moloco/sdk/internal/ortb/model/v$b;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/ortb/model/v$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/v;->Companion:Lcom/moloco/sdk/internal/ortb/model/v$b;

    .line 50
    .line 51
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 52
    .line 53
    new-instance v1, Lcom/moloco/sdk/internal/ortb/model/x;

    .line 54
    .line 55
    invoke-direct {v1}, Lcom/moloco/sdk/internal/ortb/model/x;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sput-object v0, Lcom/moloco/sdk/internal/ortb/model/v;->a:Lms/i;

    .line 63
    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a()[Lcom/moloco/sdk/internal/ortb/model/v;
    .locals 3

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/v;->b:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/internal/ortb/model/v;->c:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/internal/ortb/model/v;->d:Lcom/moloco/sdk/internal/ortb/model/v;

    .line 6
    .line 7
    filled-new-array {v0, v1, v2}, [Lcom/moloco/sdk/internal/ortb/model/v;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public static final synthetic b()Lkotlinx/serialization/KSerializer;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/v$a;->a:Lcom/moloco/sdk/internal/ortb/model/v$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic c()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/v;->a:Lms/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public static d()Lss/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lss/a<",
            "Lcom/moloco/sdk/internal/ortb/model/v;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/v;->f:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moloco/sdk/internal/ortb/model/v;
    .locals 1

    .line 1
    const-class v0, Lcom/moloco/sdk/internal/ortb/model/v;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/moloco/sdk/internal/ortb/model/v;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/moloco/sdk/internal/ortb/model/v;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/ortb/model/v;->e:[Lcom/moloco/sdk/internal/ortb/model/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/moloco/sdk/internal/ortb/model/v;

    .line 8
    .line 9
    return-object v0
.end method
