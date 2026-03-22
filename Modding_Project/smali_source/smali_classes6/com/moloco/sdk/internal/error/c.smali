.class public final Lcom/moloco/sdk/internal/error/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/error/b;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/internal/services/config/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/error/api/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/services/config/a;Lcom/moloco/sdk/internal/error/api/a;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/services/config/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/error/api/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "configService"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errorReportingApi"

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
    iput-object p1, p0, Lcom/moloco/sdk/internal/error/c;->a:Lcom/moloco/sdk/internal/services/config/a;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/moloco/sdk/internal/error/c;->b:Lcom/moloco/sdk/internal/error/api/a;

    .line 17
    .line 18
    const-string p1, "ErrorReportingServiceImpl"

    .line 19
    .line 20
    iput-object p1, p0, Lcom/moloco/sdk/internal/error/c;->c:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/moloco/sdk/internal/error/a;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/error/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errorMetadata"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/moloco/sdk/internal/error/c;->a:Lcom/moloco/sdk/internal/services/config/a;

    .line 12
    .line 13
    const-string v1, "ReportSDKError"

    .line 14
    .line 15
    invoke-interface {v0, v1}, Lcom/moloco/sdk/internal/services/config/a;->a(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/moloco/sdk/internal/error/c;->c:Ljava/lang/String;

    .line 24
    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v0, "Error reporting is disabled. Tried to report error: "

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    const/16 v7, 0xc

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/moloco/sdk/internal/error/c;->a:Lcom/moloco/sdk/internal/services/config/a;

    .line 52
    .line 53
    invoke-interface {v0, v1}, Lcom/moloco/sdk/internal/services/config/a;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 60
    .line 61
    iget-object v2, p0, Lcom/moloco/sdk/internal/error/c;->c:Ljava/lang/String;

    .line 62
    .line 63
    const/16 v6, 0xc

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    const-string v3, "Error reporting is enabled but with invalid url"

    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    const/4 v5, 0x0

    .line 70
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    iget-object v1, p0, Lcom/moloco/sdk/internal/error/c;->b:Lcom/moloco/sdk/internal/error/api/a;

    .line 75
    .line 76
    invoke-interface {v1, p1, v0, p2}, Lcom/moloco/sdk/internal/error/api/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/internal/error/a;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method
