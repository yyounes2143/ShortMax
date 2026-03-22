.class public final enum Lcom/moloco/sdk/internal/o;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moloco/sdk/internal/o;",
        ">;",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/moloco/sdk/internal/o;

.field public static final enum b:Lcom/moloco/sdk/internal/o;

.field public static final enum c:Lcom/moloco/sdk/internal/o;

.field public static final enum d:Lcom/moloco/sdk/internal/o;

.field public static final enum e:Lcom/moloco/sdk/internal/o;

.field public static final synthetic f:[Lcom/moloco/sdk/internal/o;

.field public static final synthetic g:Lss/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/o;

    .line 2
    .line 3
    const-string v1, "AD_LOAD_LIMIT_REACHED"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/internal/o;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/moloco/sdk/internal/o;->a:Lcom/moloco/sdk/internal/o;

    .line 10
    .line 11
    new-instance v0, Lcom/moloco/sdk/internal/o;

    .line 12
    .line 13
    const-string v1, "BID_LOAD_ERROR_CANNOT_PROCESS_BID_RESPONSE"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/internal/o;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/moloco/sdk/internal/o;->b:Lcom/moloco/sdk/internal/o;

    .line 20
    .line 21
    new-instance v0, Lcom/moloco/sdk/internal/o;

    .line 22
    .line 23
    const-string v1, "BID_LOAD_ERROR_CANNOT_PARSE_BID_RESPONSE"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/internal/o;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/moloco/sdk/internal/o;->c:Lcom/moloco/sdk/internal/o;

    .line 30
    .line 31
    new-instance v0, Lcom/moloco/sdk/internal/o;

    .line 32
    .line 33
    const-string v1, "AD_SHOW_ERROR_NOT_LOADED"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/internal/o;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/moloco/sdk/internal/o;->d:Lcom/moloco/sdk/internal/o;

    .line 40
    .line 41
    new-instance v0, Lcom/moloco/sdk/internal/o;

    .line 42
    .line 43
    const-string v1, "AD_SHOW_ERROR_ALREADY_DISPLAYING"

    .line 44
    .line 45
    const/4 v2, 0x4

    .line 46
    invoke-direct {v0, v1, v2}, Lcom/moloco/sdk/internal/o;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    sput-object v0, Lcom/moloco/sdk/internal/o;->e:Lcom/moloco/sdk/internal/o;

    .line 50
    .line 51
    invoke-static {}, Lcom/moloco/sdk/internal/o;->b()[Lcom/moloco/sdk/internal/o;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/moloco/sdk/internal/o;->f:[Lcom/moloco/sdk/internal/o;

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/enums/a;->a([Ljava/lang/Enum;)Lss/a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    sput-object v0, Lcom/moloco/sdk/internal/o;->g:Lss/a;

    .line 62
    .line 63
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

.method public static final synthetic b()[Lcom/moloco/sdk/internal/o;
    .locals 5

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/o;->a:Lcom/moloco/sdk/internal/o;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/internal/o;->b:Lcom/moloco/sdk/internal/o;

    .line 4
    .line 5
    sget-object v2, Lcom/moloco/sdk/internal/o;->c:Lcom/moloco/sdk/internal/o;

    .line 6
    .line 7
    sget-object v3, Lcom/moloco/sdk/internal/o;->d:Lcom/moloco/sdk/internal/o;

    .line 8
    .line 9
    sget-object v4, Lcom/moloco/sdk/internal/o;->e:Lcom/moloco/sdk/internal/o;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/moloco/sdk/internal/o;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static c()Lss/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lss/a<",
            "Lcom/moloco/sdk/internal/o;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/o;->g:Lss/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moloco/sdk/internal/o;
    .locals 1

    .line 1
    const-class v0, Lcom/moloco/sdk/internal/o;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/moloco/sdk/internal/o;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/moloco/sdk/internal/o;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/o;->f:[Lcom/moloco/sdk/internal/o;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/moloco/sdk/internal/o;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
