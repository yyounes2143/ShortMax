.class public final Lcom/moloco/sdk/internal/error/api/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/error/api/a;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/internal/services/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/a;
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

.method public constructor <init>(Lcom/moloco/sdk/internal/services/j;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/a;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/services/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "timeProviderService"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "httpClient"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/moloco/sdk/internal/error/api/b;->a:Lcom/moloco/sdk/internal/services/j;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/moloco/sdk/internal/error/api/b;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/a;

    .line 18
    .line 19
    const-string p1, "ErrorReportingApi"

    .line 20
    .line 21
    iput-object p1, p0, Lcom/moloco/sdk/internal/error/api/b;->c:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 8
    .param p1    # Ljava/lang/Throwable;
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
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/moloco/sdk/internal/error/api/b;->c:Ljava/lang/String;

    .line 9
    .line 10
    const/16 v6, 0x8

    .line 11
    .line 12
    const/4 v7, 0x0

    .line 13
    const-string v3, "SDK Crashed"

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    move-object v4, p1

    .line 17
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/internal/error/a;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/error/a;
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
    const-string/jumbo v0, "url"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "errorMetadata"

    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/moloco/sdk/internal/error/api/b;->a:Lcom/moloco/sdk/internal/services/j;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/moloco/sdk/internal/services/j;->invoke()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    invoke-static {p2, p1, v0, v1}, Lcom/moloco/sdk/internal/utils/d;->d(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-virtual {p3}, Lcom/moloco/sdk/internal/error/a;->a()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    invoke-static {p2, p3}, Lcom/moloco/sdk/internal/utils/d;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/moloco/sdk/internal/error/api/b;->c:Ljava/lang/String;

    .line 38
    .line 39
    new-instance p3, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    const-string v2, "Reporting error: "

    .line 45
    .line 46
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p1, " to url: "

    .line 53
    .line 54
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const/16 v5, 0xc

    .line 65
    .line 66
    const/4 v6, 0x0

    .line 67
    const/4 v3, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/moloco/sdk/internal/error/api/b;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/a;

    .line 73
    .line 74
    invoke-interface {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/f;->a(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method
