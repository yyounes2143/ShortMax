.class public final enum Lcom/moloco/sdk/internal/client_metrics_data/c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moloco/sdk/internal/client_metrics_data/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/moloco/sdk/internal/client_metrics_data/c;

.field public static final enum c:Lcom/moloco/sdk/internal/client_metrics_data/c;

.field public static final enum d:Lcom/moloco/sdk/internal/client_metrics_data/c;

.field public static final enum e:Lcom/moloco/sdk/internal/client_metrics_data/c;

.field public static final enum f:Lcom/moloco/sdk/internal/client_metrics_data/c;

.field public static final enum g:Lcom/moloco/sdk/internal/client_metrics_data/c;

.field public static final synthetic h:[Lcom/moloco/sdk/internal/client_metrics_data/c;

.field public static final synthetic i:Lss/a;


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "reason"

    .line 5
    .line 6
    const-string v3, "Reason"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lcom/moloco/sdk/internal/client_metrics_data/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 12
    .line 13
    new-instance v0, Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const-string v2, "ad_type"

    .line 17
    .line 18
    const-string v3, "AdType"

    .line 19
    .line 20
    invoke-direct {v0, v3, v1, v2}, Lcom/moloco/sdk/internal/client_metrics_data/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v0, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 24
    .line 25
    new-instance v0, Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    const-string v2, "result"

    .line 29
    .line 30
    const-string v3, "Result"

    .line 31
    .line 32
    invoke-direct {v0, v3, v1, v2}, Lcom/moloco/sdk/internal/client_metrics_data/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 36
    .line 37
    new-instance v0, Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 38
    .line 39
    const/4 v1, 0x3

    .line 40
    const-string v2, "country"

    .line 41
    .line 42
    const-string v3, "Country"

    .line 43
    .line 44
    invoke-direct {v0, v3, v1, v2}, Lcom/moloco/sdk/internal/client_metrics_data/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sput-object v0, Lcom/moloco/sdk/internal/client_metrics_data/c;->e:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 48
    .line 49
    new-instance v0, Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 50
    .line 51
    const/4 v1, 0x4

    .line 52
    const-string v2, "attempt"

    .line 53
    .line 54
    const-string v3, "RetryAttempt"

    .line 55
    .line 56
    invoke-direct {v0, v3, v1, v2}, Lcom/moloco/sdk/internal/client_metrics_data/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/moloco/sdk/internal/client_metrics_data/c;->f:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 60
    .line 61
    new-instance v0, Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 62
    .line 63
    const/4 v1, 0x5

    .line 64
    const-string/jumbo v2, "step"

    .line 65
    .line 66
    .line 67
    const-string v3, "Step"

    .line 68
    .line 69
    invoke-direct {v0, v3, v1, v2}, Lcom/moloco/sdk/internal/client_metrics_data/c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    .line 71
    .line 72
    sput-object v0, Lcom/moloco/sdk/internal/client_metrics_data/c;->g:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 73
    .line 74
    invoke-static {}, Lcom/moloco/sdk/internal/client_metrics_data/c;->a()[Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lcom/moloco/sdk/internal/client_metrics_data/c;->h:[Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 79
    .line 80
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sput-object v0, Lcom/moloco/sdk/internal/client_metrics_data/c;->i:Lss/a;

    .line 85
    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
    iput-object p3, p0, Lcom/moloco/sdk/internal/client_metrics_data/c;->a:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic a()[Lcom/moloco/sdk/internal/client_metrics_data/c;
    .locals 6

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/internal/client_metrics_data/c;->c:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 6
    .line 7
    sget-object v3, Lcom/moloco/sdk/internal/client_metrics_data/c;->e:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 8
    .line 9
    sget-object v4, Lcom/moloco/sdk/internal/client_metrics_data/c;->f:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 10
    .line 11
    sget-object v5, Lcom/moloco/sdk/internal/client_metrics_data/c;->g:Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 12
    .line 13
    filled-new-array/range {v0 .. v5}, [Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method public static b()Lss/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lss/a<",
            "Lcom/moloco/sdk/internal/client_metrics_data/c;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/client_metrics_data/c;->i:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moloco/sdk/internal/client_metrics_data/c;
    .locals 1

    .line 1
    const-class v0, Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/moloco/sdk/internal/client_metrics_data/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/client_metrics_data/c;->h:[Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/moloco/sdk/internal/client_metrics_data/c;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/client_metrics_data/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
