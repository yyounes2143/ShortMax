.class public final Lcom/moloco/sdk/internal/services/bidtoken/providers/v;
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
        Lcom/moloco/sdk/internal/services/bidtoken/providers/v$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moloco/sdk/internal/services/bidtoken/providers/j<",
        "Lcom/moloco/sdk/internal/services/bidtoken/providers/u;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/moloco/sdk/internal/services/bidtoken/providers/v$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:I


# instance fields
.field public final b:Lcom/moloco/sdk/internal/services/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/moloco/sdk/internal/services/bidtoken/providers/u;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/v$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/v$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/v;->d:Lcom/moloco/sdk/internal/services/bidtoken/providers/v$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/v;->e:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/services/b;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/services/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "networkInfoService"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/v;->b:Lcom/moloco/sdk/internal/services/b;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/v;->e()Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/v;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/v;->e()Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/v;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 6
    .line 7
    return-void
.end method

.method public b()Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/v;->e()Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/v;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

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
    const-string v4, "[CBT] NIS needsRefresh: "

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
    const-string v4, ", with nis: "

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
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/v;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

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
    const-string v3, "NISignalProvider"

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
    const-string v0, "NISignalProvider"

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/v;->f()Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final e()Lcom/moloco/sdk/internal/services/bidtoken/providers/u;
    .locals 15

    .line 1
    :try_start_0
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/v;->b:Lcom/moloco/sdk/internal/services/b;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/moloco/sdk/internal/services/b;->d()Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/v;->b:Lcom/moloco/sdk/internal/services/b;

    .line 10
    .line 11
    invoke-interface {v2}, Lcom/moloco/sdk/internal/services/b;->b()Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/v;->b:Lcom/moloco/sdk/internal/services/b;

    .line 16
    .line 17
    invoke-interface {v3}, Lcom/moloco/sdk/internal/services/b;->a()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-object v4, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/v;->b:Lcom/moloco/sdk/internal/services/b;

    .line 26
    .line 27
    invoke-interface {v4}, Lcom/moloco/sdk/internal/services/b;->c()Lcom/moloco/sdk/internal/services/a;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/moloco/sdk/internal/services/bidtoken/providers/u;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/moloco/sdk/internal/services/a;)V

    .line 32
    .line 33
    .line 34
    sget-object v5, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 35
    .line 36
    const-string v6, "NISignalProvider"

    .line 37
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v2, "[CBT] NIS providing "

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    const/4 v9, 0x4

    .line 56
    const/4 v10, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    invoke-static/range {v5 .. v10}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    move-object v4, v0

    .line 64
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 65
    .line 66
    const/16 v6, 0x8

    .line 67
    .line 68
    const/4 v7, 0x0

    .line 69
    const-string v2, "NISignalProvider"

    .line 70
    .line 71
    const-string v3, "[CBT] NIS Error"

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 78
    .line 79
    const/16 v13, 0xf

    .line 80
    .line 81
    const/4 v14, 0x0

    .line 82
    const/4 v9, 0x0

    .line 83
    const/4 v10, 0x0

    .line 84
    const/4 v11, 0x0

    .line 85
    const/4 v12, 0x0

    .line 86
    move-object v8, v0

    .line 87
    invoke-direct/range {v8 .. v14}, Lcom/moloco/sdk/internal/services/bidtoken/providers/u;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Lcom/moloco/sdk/internal/services/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    return-object v0
.end method

.method public f()Lcom/moloco/sdk/internal/services/bidtoken/providers/u;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/v;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/u;

    .line 2
    .line 3
    return-object v0
.end method
