.class public final Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$RenderTimeoutByType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/inmobi/media/me;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private audio:I

.field private banner:I

.field private int:I

.field private native:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/me;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/me;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$RenderTimeoutByType;->Companion:Lcom/inmobi/media/me;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$RenderTimeoutByType;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAudio$media_release()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$RenderTimeoutByType;->audio:I

    .line 2
    .line 3
    return v0
.end method

.method public final getBanner$media_release()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$RenderTimeoutByType;->banner:I

    .line 2
    .line 3
    return v0
.end method

.method public final getInt$media_release()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$RenderTimeoutByType;->int:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNative$media_release()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$RenderTimeoutByType;->native:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTimeoutByType$media_release(Ljava/lang/String;I)I
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const v1, -0x533a80d4

    .line 11
    .line 12
    .line 13
    if-eq v0, v1, :cond_6

    .line 14
    .line 15
    const v1, -0x3ebdafe9

    .line 16
    .line 17
    .line 18
    if-eq v0, v1, :cond_4

    .line 19
    .line 20
    const v1, 0x197ef

    .line 21
    .line 22
    .line 23
    if-eq v0, v1, :cond_2

    .line 24
    .line 25
    const v1, 0x58d9bd6

    .line 26
    .line 27
    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v0, "audio"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget p1, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$RenderTimeoutByType;->audio:I

    .line 41
    .line 42
    if-lez p1, :cond_8

    .line 43
    .line 44
    return p1

    .line 45
    :cond_2
    const-string v0, "int"

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_3
    iget p1, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$RenderTimeoutByType;->int:I

    .line 55
    .line 56
    if-lez p1, :cond_8

    .line 57
    .line 58
    return p1

    .line 59
    :cond_4
    const-string v0, "native"

    .line 60
    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_5

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    iget p1, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$RenderTimeoutByType;->native:I

    .line 69
    .line 70
    if-lez p1, :cond_8

    .line 71
    .line 72
    return p1

    .line 73
    :cond_6
    const-string v0, "banner"

    .line 74
    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_7

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_7
    iget p1, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$RenderTimeoutByType;->banner:I

    .line 83
    .line 84
    if-lez p1, :cond_8

    .line 85
    .line 86
    return p1

    .line 87
    :cond_8
    :goto_0
    return p2
.end method

.method public final setAudio$media_release(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$RenderTimeoutByType;->audio:I

    .line 2
    .line 3
    return-void
.end method

.method public final setBanner$media_release(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$RenderTimeoutByType;->banner:I

    .line 2
    .line 3
    return-void
.end method

.method public final setInt$media_release(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$RenderTimeoutByType;->int:I

    .line 2
    .line 3
    return-void
.end method

.method public final setNative$media_release(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$RenderTimeoutByType;->native:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTimeoutByType(Ljava/lang/String;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x5
    .end annotation

    .line 1
    const-string v0, "adType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const v1, -0x533a80d4

    .line 11
    .line 12
    .line 13
    if-eq v0, v1, :cond_6

    .line 14
    .line 15
    const v1, -0x3ebdafe9

    .line 16
    .line 17
    .line 18
    if-eq v0, v1, :cond_4

    .line 19
    .line 20
    const v1, 0x197ef

    .line 21
    .line 22
    .line 23
    if-eq v0, v1, :cond_2

    .line 24
    .line 25
    const v1, 0x58d9bd6

    .line 26
    .line 27
    .line 28
    if-eq v0, v1, :cond_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v0, "audio"

    .line 32
    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iput p2, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$RenderTimeoutByType;->audio:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-string v0, "int"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iput p2, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$RenderTimeoutByType;->int:I

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_4
    const-string v0, "native"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_5

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_5
    iput p2, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$RenderTimeoutByType;->native:I

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_6
    const-string v0, "banner"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-nez p1, :cond_7

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_7
    iput p2, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$RenderTimeoutByType;->banner:I

    .line 77
    .line 78
    :goto_0
    return-void
.end method
