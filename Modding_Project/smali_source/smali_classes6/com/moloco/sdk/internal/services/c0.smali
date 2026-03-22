.class public final Lcom/moloco/sdk/internal/services/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/b0;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public final a:Landroid/media/AudioManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
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
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-class v0, Landroid/media/AudioManager;

    .line 14
    .line 15
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    move-object v3, p1

    .line 24
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 25
    .line 26
    const/16 v5, 0x8

    .line 27
    .line 28
    const/4 v6, 0x0

    .line 29
    const-string v1, "AudioService"

    .line 30
    .line 31
    const-string v2, "couldn\'t get android.media.AudioManager service"

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    const/4 p1, 0x0

    .line 38
    :goto_0
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/c0;->a:Landroid/media/AudioManager;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public a()Lcom/moloco/sdk/internal/services/z;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/c0;->a:Landroid/media/AudioManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-nez v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    sget-object v0, Lcom/moloco/sdk/internal/services/z;->a:Lcom/moloco/sdk/internal/services/z;

    .line 25
    .line 26
    goto :goto_4

    .line 27
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    const/4 v2, 0x1

    .line 35
    if-ne v1, v2, :cond_4

    .line 36
    .line 37
    sget-object v0, Lcom/moloco/sdk/internal/services/z;->b:Lcom/moloco/sdk/internal/services/z;

    .line 38
    .line 39
    goto :goto_4

    .line 40
    :cond_4
    :goto_2
    if-nez v0, :cond_5

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/4 v1, 0x2

    .line 48
    if-ne v0, v1, :cond_6

    .line 49
    .line 50
    sget-object v0, Lcom/moloco/sdk/internal/services/z;->c:Lcom/moloco/sdk/internal/services/z;

    .line 51
    .line 52
    goto :goto_4

    .line 53
    :cond_6
    :goto_3
    sget-object v0, Lcom/moloco/sdk/internal/services/z;->c:Lcom/moloco/sdk/internal/services/z;

    .line 54
    .line 55
    :goto_4
    return-object v0
.end method

.method public b()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/c0;->a:Landroid/media/AudioManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method
