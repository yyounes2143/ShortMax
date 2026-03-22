.class public final Landroidx/compose/foundation/layout/WindowInsetsSides;
.super Ljava/lang/Object;
.source "WindowInsets.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final AllowLeftInLtr:I

.field private static final AllowLeftInRtl:I

.field private static final AllowRightInLtr:I

.field private static final AllowRightInRtl:I

.field private static final Bottom:I

.field public static final Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final End:I

.field private static final Horizontal:I

.field private static final Left:I

.field private static final Right:I

.field private static final Start:I

.field private static final Top:I

.field private static final Vertical:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Companion:Landroidx/compose/foundation/layout/WindowInsetsSides$Companion;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    invoke-static {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->constructor-impl(I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    sput v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowLeftInLtr:I

    .line 16
    .line 17
    const/4 v1, 0x4

    .line 18
    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->constructor-impl(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    sput v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowRightInLtr:I

    .line 23
    .line 24
    const/4 v2, 0x2

    .line 25
    invoke-static {v2}, Landroidx/compose/foundation/layout/WindowInsetsSides;->constructor-impl(I)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    sput v2, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowLeftInRtl:I

    .line 30
    .line 31
    const/4 v3, 0x1

    .line 32
    invoke-static {v3}, Landroidx/compose/foundation/layout/WindowInsetsSides;->constructor-impl(I)I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    sput v3, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowRightInRtl:I

    .line 37
    .line 38
    invoke-static {v0, v3}, Landroidx/compose/foundation/layout/WindowInsetsSides;->plus-gK_yJZ4(II)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    sput v4, Landroidx/compose/foundation/layout/WindowInsetsSides;->Start:I

    .line 43
    .line 44
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/WindowInsetsSides;->plus-gK_yJZ4(II)I

    .line 45
    .line 46
    .line 47
    move-result v4

    .line 48
    sput v4, Landroidx/compose/foundation/layout/WindowInsetsSides;->End:I

    .line 49
    .line 50
    const/16 v4, 0x10

    .line 51
    .line 52
    invoke-static {v4}, Landroidx/compose/foundation/layout/WindowInsetsSides;->constructor-impl(I)I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    sput v4, Landroidx/compose/foundation/layout/WindowInsetsSides;->Top:I

    .line 57
    .line 58
    const/16 v5, 0x20

    .line 59
    .line 60
    invoke-static {v5}, Landroidx/compose/foundation/layout/WindowInsetsSides;->constructor-impl(I)I

    .line 61
    .line 62
    .line 63
    move-result v5

    .line 64
    sput v5, Landroidx/compose/foundation/layout/WindowInsetsSides;->Bottom:I

    .line 65
    .line 66
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/WindowInsetsSides;->plus-gK_yJZ4(II)I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    sput v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Left:I

    .line 71
    .line 72
    invoke-static {v1, v3}, Landroidx/compose/foundation/layout/WindowInsetsSides;->plus-gK_yJZ4(II)I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    sput v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Right:I

    .line 77
    .line 78
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->plus-gK_yJZ4(II)I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    sput v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Horizontal:I

    .line 83
    .line 84
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/WindowInsetsSides;->plus-gK_yJZ4(II)I

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    sput v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Vertical:I

    .line 89
    .line 90
    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic access$getAllowLeftInLtr$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowLeftInLtr:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getAllowLeftInRtl$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowLeftInRtl:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getAllowRightInLtr$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowRightInLtr:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getAllowRightInRtl$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->AllowRightInRtl:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getBottom$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Bottom:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getEnd$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->End:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getHorizontal$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Horizontal:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getLeft$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Left:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getRight$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Right:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getStart$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Start:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getTop$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Top:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getVertical$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/foundation/layout/WindowInsetsSides;->Vertical:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/foundation/layout/WindowInsetsSides;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/layout/WindowInsetsSides;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static constructor-impl(I)I
    .locals 0

    .line 1
    return p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/foundation/layout/WindowInsetsSides;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroidx/compose/foundation/layout/WindowInsetsSides;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->unbox-impl()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eq p0, p1, :cond_1

    .line 14
    .line 15
    return v1

    .line 16
    :cond_1
    const/4 p0, 0x1

    .line 17
    return p0
.end method

.method public static final equals-impl0(II)Z
    .locals 0

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    return p0
.end method

.method public static final hasAny-bkgdKaI$foundation_layout_release(II)Z
    .locals 0

    .line 1
    and-int/2addr p0, p1

    .line 2
    if-eqz p0, :cond_0

    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    :goto_0
    return p0
.end method

.method public static hashCode-impl(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final plus-gK_yJZ4(II)I
    .locals 0

    .line 1
    or-int/2addr p0, p1

    .line 2
    invoke-static {p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->constructor-impl(I)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static toString-impl(I)Ljava/lang/String;
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
    const-string v1, "WindowInsetsSides("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString-impl(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 p0, 0x29

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method private static final valueToString-impl(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Start:I

    .line 7
    .line 8
    and-int v2, p0, v1

    .line 9
    .line 10
    if-ne v2, v1, :cond_0

    .line 11
    .line 12
    const-string v1, "Start"

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString_impl$lambda-0$appendPlus(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Left:I

    .line 18
    .line 19
    and-int v2, p0, v1

    .line 20
    .line 21
    if-ne v2, v1, :cond_1

    .line 22
    .line 23
    const-string v1, "Left"

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString_impl$lambda-0$appendPlus(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Top:I

    .line 29
    .line 30
    and-int v2, p0, v1

    .line 31
    .line 32
    if-ne v2, v1, :cond_2

    .line 33
    .line 34
    const-string v1, "Top"

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString_impl$lambda-0$appendPlus(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_2
    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->End:I

    .line 40
    .line 41
    and-int v2, p0, v1

    .line 42
    .line 43
    if-ne v2, v1, :cond_3

    .line 44
    .line 45
    const-string v1, "End"

    .line 46
    .line 47
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString_impl$lambda-0$appendPlus(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Right:I

    .line 51
    .line 52
    and-int v2, p0, v1

    .line 53
    .line 54
    if-ne v2, v1, :cond_4

    .line 55
    .line 56
    const-string v1, "Right"

    .line 57
    .line 58
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString_impl$lambda-0$appendPlus(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_4
    sget v1, Landroidx/compose/foundation/layout/WindowInsetsSides;->Bottom:I

    .line 62
    .line 63
    and-int/2addr p0, v1

    .line 64
    if-ne p0, v1, :cond_5

    .line 65
    .line 66
    const-string p0, "Bottom"

    .line 67
    .line 68
    invoke-static {v0, p0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->valueToString_impl$lambda-0$appendPlus(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    const-string v0, "StringBuilder().apply(builderAction).toString()"

    .line 76
    .line 77
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-object p0
.end method

.method private static final valueToString_impl$lambda-0$appendPlus(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x2b

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->value:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/foundation/layout/WindowInsetsSides;->equals-impl(ILjava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->value:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->hashCode-impl(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->value:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/foundation/layout/WindowInsetsSides;->toString-impl(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic unbox-impl()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/layout/WindowInsetsSides;->value:I

    .line 2
    .line 3
    return v0
.end method
