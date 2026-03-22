.class public final Lcom/moloco/sdk/internal/services/bidtoken/providers/e;
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
        Lcom/moloco/sdk/internal/services/bidtoken/providers/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moloco/sdk/internal/services/bidtoken/providers/j<",
        "Lcom/moloco/sdk/internal/services/bidtoken/providers/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final d:Lcom/moloco/sdk/internal/services/bidtoken/providers/e$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:I


# instance fields
.field public final b:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/moloco/sdk/internal/services/bidtoken/providers/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/e$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/e$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/e;->d:Lcom/moloco/sdk/internal/services/bidtoken/providers/e$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/e;->e:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

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
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/e;->b:Landroid/content/Context;

    .line 10
    .line 11
    new-instance p1, Lcom/moloco/sdk/internal/services/bidtoken/providers/d;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/e;->e()Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p1, v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/d;-><init>(Ljava/lang/Long;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/e;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/d;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/d;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/e;->e()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/d;-><init>(Ljava/lang/Long;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/e;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/d;

    .line 11
    .line 12
    return-void
.end method

.method public b()Z
    .locals 8

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/d;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/e;->e()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/d;-><init>(Ljava/lang/Long;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/e;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/d;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    xor-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 19
    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v4, "[CBT] ADI needsRefresh: "

    .line 26
    .line 27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v4, ", with adi: "

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/d;->a()Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const/4 v6, 0x4

    .line 50
    const/4 v7, 0x0

    .line 51
    const-string v3, "ADISignalProvider"

    .line 52
    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-static/range {v2 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return v1
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ADISignalProvider"

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/e;->f()Lcom/moloco/sdk/internal/services/bidtoken/providers/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final e()Ljava/lang/Long;
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/e;->b:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->getTotalSpace()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    move-object v4, v0

    .line 18
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 19
    .line 20
    const/16 v6, 0x8

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    const-string v2, "ADISignalProvider"

    .line 24
    .line 25
    const-string v3, "ADI Error"

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    :goto_0
    return-object v0
.end method

.method public f()Lcom/moloco/sdk/internal/services/bidtoken/providers/d;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/e;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/d;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "[CBT] ADI providing "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/d;->a()Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    const/4 v5, 0x4

    .line 27
    const/4 v6, 0x0

    .line 28
    const-string v2, "ADISignalProvider"

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method
