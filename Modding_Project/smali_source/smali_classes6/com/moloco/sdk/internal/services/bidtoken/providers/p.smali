.class public final Lcom/moloco/sdk/internal/services/bidtoken/providers/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/bidtoken/providers/j;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/services/bidtoken/providers/p$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moloco/sdk/internal/services/bidtoken/providers/j<",
        "Lcom/moloco/sdk/internal/services/bidtoken/providers/o;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lcom/moloco/sdk/internal/services/bidtoken/providers/p$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:I


# instance fields
.field public final b:Lcom/moloco/sdk/internal/services/j0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/services/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lcom/moloco/sdk/internal/services/bidtoken/providers/o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/p$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/p$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/p;->e:Lcom/moloco/sdk/internal/services/bidtoken/providers/p$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/p;->f:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/services/j0;Lcom/moloco/sdk/internal/services/f;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/services/j0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "deviceInfoService"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "screenInfoService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/p;->b:Lcom/moloco/sdk/internal/services/j0;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/p;->c:Lcom/moloco/sdk/internal/services/f;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/p;->e()Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/p;->d:Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/p;->e()Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/p;->d:Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 6
    .line 7
    return-void
.end method

.method public b()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/p;->e()Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/p;->d:Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    xor-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v4, "[CBT] DSP needsRefresh: "

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v4, ", with current: "

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", cached: "

    .line 37
    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/p;->d:Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 42
    .line 43
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const/4 v6, 0x4

    .line 51
    const/4 v7, 0x0

    .line 52
    const-string v3, "DSignalProvider"

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    invoke-static/range {v2 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return v1
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "DSignalProvider"

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/p;->f()Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final e()Lcom/moloco/sdk/internal/services/bidtoken/providers/o;
    .locals 14

    .line 1
    :try_start_0
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/p;->c:Lcom/moloco/sdk/internal/services/f;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/moloco/sdk/internal/services/f;->b()Lcom/moloco/sdk/internal/services/H;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/p;->b:Lcom/moloco/sdk/internal/services/j0;

    .line 10
    .line 11
    invoke-interface {v2}, Lcom/moloco/sdk/internal/services/j0;->c()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/p;->b:Lcom/moloco/sdk/internal/services/j0;

    .line 16
    .line 17
    invoke-interface {v3}, Lcom/moloco/sdk/internal/services/j0;->d()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-direct {v0, v1, v2, v3}, Lcom/moloco/sdk/internal/services/bidtoken/providers/o;-><init>(Lcom/moloco/sdk/internal/services/H;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    move-object v4, v0

    .line 27
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 28
    .line 29
    const/16 v6, 0x8

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    const-string v2, "DSignalProvider"

    .line 33
    .line 34
    const-string v3, "[CBT] DSP Error"

    .line 35
    .line 36
    const/4 v5, 0x0

    .line 37
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 41
    .line 42
    const/4 v12, 0x7

    .line 43
    const/4 v13, 0x0

    .line 44
    const/4 v9, 0x0

    .line 45
    const/4 v10, 0x0

    .line 46
    const/4 v11, 0x0

    .line 47
    move-object v8, v0

    .line 48
    invoke-direct/range {v8 .. v13}, Lcom/moloco/sdk/internal/services/bidtoken/providers/o;-><init>(Lcom/moloco/sdk/internal/services/H;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    .line 50
    .line 51
    return-object v0
.end method

.method public f()Lcom/moloco/sdk/internal/services/bidtoken/providers/o;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/p;->d:Lcom/moloco/sdk/internal/services/bidtoken/providers/o;

    .line 2
    .line 3
    return-object v0
.end method
