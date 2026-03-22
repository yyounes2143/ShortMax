.class public final Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
.super Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;
.source "PlaySpeed.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PLAY_SPEED_1:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PLAY_SPEED_2:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PLAY_SPEED_3:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PLAY_SPEED_4:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PLAY_SPEED_5:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final PLAY_SPEED_6:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final key:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final value:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed$Companion;

    .line 8
    .line 9
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 10
    .line 11
    const-string v1, "1.0X"

    .line 12
    .line 13
    const/high16 v2, 0x3f800000    # 1.0f

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;-><init>(Ljava/lang/String;F)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->PLAY_SPEED_1:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 19
    .line 20
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 21
    .line 22
    const-string v1, "1.25X"

    .line 23
    .line 24
    const/high16 v2, 0x3fa00000    # 1.25f

    .line 25
    .line 26
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;-><init>(Ljava/lang/String;F)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->PLAY_SPEED_2:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 30
    .line 31
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 32
    .line 33
    const-string v1, "1.5X"

    .line 34
    .line 35
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 36
    .line 37
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;-><init>(Ljava/lang/String;F)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->PLAY_SPEED_3:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 41
    .line 42
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 43
    .line 44
    const-string v1, "2.0X"

    .line 45
    .line 46
    const/high16 v2, 0x40000000    # 2.0f

    .line 47
    .line 48
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;-><init>(Ljava/lang/String;F)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->PLAY_SPEED_4:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 52
    .line 53
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 54
    .line 55
    const-string v1, "0.5X"

    .line 56
    .line 57
    const/high16 v2, 0x3f000000    # 0.5f

    .line 58
    .line 59
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;-><init>(Ljava/lang/String;F)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->PLAY_SPEED_5:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 63
    .line 64
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 65
    .line 66
    const-string v1, "0.75X"

    .line 67
    .line 68
    const/high16 v2, 0x3f400000    # 0.75f

    .line 69
    .line 70
    invoke-direct {v0, v1, v2}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;-><init>(Ljava/lang/String;F)V

    .line 71
    .line 72
    .line 73
    sput-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->PLAY_SPEED_6:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 74
    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->key:Ljava/lang/String;

    .line 10
    .line 11
    iput p2, p0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->value:F

    .line 12
    .line 13
    return-void
.end method

.method public static final synthetic access$getPLAY_SPEED_1$cp()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->PLAY_SPEED_1:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPLAY_SPEED_2$cp()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->PLAY_SPEED_2:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPLAY_SPEED_3$cp()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->PLAY_SPEED_3:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPLAY_SPEED_4$cp()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->PLAY_SPEED_4:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPLAY_SPEED_5$cp()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->PLAY_SPEED_5:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getPLAY_SPEED_6$cp()Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->PLAY_SPEED_6:Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;Ljava/lang/String;FILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->key:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->value:F

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->copy(Ljava/lang/String;F)Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->value:F

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Ljava/lang/String;F)Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 7
    .line 8
    invoke-direct {v0, p1, p2}, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;-><init>(Ljava/lang/String;F)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->key:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->key:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->value:F

    .line 25
    .line 26
    iget p1, p1, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->value:F

    .line 27
    .line 28
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->key:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSelectedColor(ZLandroid/content/Context;)I
    .locals 0
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "context"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    sget p1, Lcom/startshorts/androidplayer/R$color;->colorPrimary:I

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const p1, 0x106000b

    .line 16
    .line 17
    .line 18
    :goto_0
    invoke-static {p2, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public final getValue()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->value:F

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->key:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->value:F

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "PlaySpeed(key="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->key:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", value="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/PlaySpeed;->value:F

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x29

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
