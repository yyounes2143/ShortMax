.class public final Lcom/moloco/sdk/internal/services/bidtoken/providers/t;
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
        Lcom/moloco/sdk/internal/services/bidtoken/providers/t$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moloco/sdk/internal/services/bidtoken/providers/j<",
        "Lcom/moloco/sdk/internal/services/bidtoken/providers/s;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMemorySignalProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MemorySignalProvider.kt\ncom/moloco/sdk/internal/services/bidtoken/providers/MemorySignalProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,63:1\n1#2:64\n*E\n"
    }
.end annotation


# static fields
.field public static final d:Lcom/moloco/sdk/internal/services/bidtoken/providers/t$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final e:I


# instance fields
.field public final b:Landroid/app/ActivityManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public c:Lcom/moloco/sdk/internal/services/bidtoken/providers/s;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/t$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/t$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/t;->d:Lcom/moloco/sdk/internal/services/bidtoken/providers/t$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/services/bidtoken/providers/t;->e:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManager;)V
    .locals 1
    .param p1    # Landroid/app/ActivityManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activityManager"

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
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/t;->b:Landroid/app/ActivityManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/t;->e()Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/t;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 2
    .line 3
    const/4 v4, 0x4

    .line 4
    const/4 v5, 0x0

    .line 5
    const-string v1, "MemorySignalProvider"

    .line 6
    .line 7
    const-string v2, "[CBT] Updating m state"

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/t;->e()Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/t;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    .line 18
    .line 19
    return-void
.end method

.method public b()Z
    .locals 10

    .line 4
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/t;->e()Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    move-result-object v0

    .line 5
    sget-object v7, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CBT] cached lm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/t;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    invoke-virtual {v2}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", t: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/t;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    invoke-virtual {v2}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", tm: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/t;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    invoke-virtual {v2}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "MemorySignalProvider"

    const/4 v4, 0x0

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CBT] current lm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;->a()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;->b()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;->c()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "MemorySignalProvider"

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/t;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    invoke-virtual {p0, v0, v1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/t;->b(Lcom/moloco/sdk/internal/services/bidtoken/providers/s;Lcom/moloco/sdk/internal/services/bidtoken/providers/s;)Z

    move-result v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CBT] m needsRefresh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v2, "MemorySignalProvider"

    move-object v1, v7

    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    return v0
.end method

.method public final b(Lcom/moloco/sdk/internal/services/bidtoken/providers/s;Lcom/moloco/sdk/internal/services/bidtoken/providers/s;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;->a()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;->a()Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;->b()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p2}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;->b()Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;->c()Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p2}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;->c()Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "MemorySignalProvider"

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/t;->f()Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final e()Lcom/moloco/sdk/internal/services/bidtoken/providers/s;
    .locals 14

    .line 1
    :try_start_0
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/t;->b:Landroid/app/ActivityManager;

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    .line 12
    .line 13
    iget-boolean v2, v0, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-wide v3, v0, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 20
    .line 21
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    iget-wide v4, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 26
    .line 27
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-direct {v1, v2, v3, v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;-><init>(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v0

    .line 36
    move-object v4, v0

    .line 37
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 38
    .line 39
    const/16 v6, 0x8

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    const-string v2, "MemorySignalProvider"

    .line 43
    .line 44
    const-string v3, "[CBT] MI Error"

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

    .line 51
    .line 52
    const/4 v12, 0x7

    .line 53
    const/4 v13, 0x0

    .line 54
    const/4 v9, 0x0

    .line 55
    const/4 v10, 0x0

    .line 56
    const/4 v11, 0x0

    .line 57
    move-object v8, v1

    .line 58
    invoke-direct/range {v8 .. v13}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;-><init>(Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-object v1
.end method

.method public f()Lcom/moloco/sdk/internal/services/bidtoken/providers/s;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/t;->c:Lcom/moloco/sdk/internal/services/bidtoken/providers/s;

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
    const-string v3, "[CBT] lm: "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;->a()Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v3, ", t: "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;->b()Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, ", tm: "

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/s;->c()Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    const/4 v5, 0x4

    .line 51
    const/4 v6, 0x0

    .line 52
    const-string v2, "MemorySignalProvider"

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-object v0
.end method
