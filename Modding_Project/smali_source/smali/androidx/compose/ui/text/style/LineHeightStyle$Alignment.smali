.class public final Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;
.super Ljava/lang/Object;
.source "LineHeightStyle.kt"


# annotations
.annotation runtime Landroidx/compose/ui/text/ExperimentalTextApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/text/style/LineHeightStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Alignment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final Bottom:I

.field private static final Center:I

.field public static final Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Proportional:I

.field private static final Top:I


# instance fields
.field private final topPercentage:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->constructor-impl(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Top:I

    .line 15
    .line 16
    const/16 v0, 0x32

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->constructor-impl(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Center:I

    .line 23
    .line 24
    const/4 v0, -0x1

    .line 25
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->constructor-impl(I)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Proportional:I

    .line 30
    .line 31
    const/16 v0, 0x64

    .line 32
    .line 33
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->constructor-impl(I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    sput v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Bottom:I

    .line 38
    .line 39
    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topPercentage:I

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic access$getBottom$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Bottom:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getCenter$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Center:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getProportional$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Proportional:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getTop$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Top:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static constructor-impl(I)I
    .locals 1

    .line 1
    if-ltz p0, :cond_0

    .line 2
    .line 3
    const/16 v0, 0x65

    .line 4
    .line 5
    if-ge p0, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, -0x1

    .line 9
    if-ne p0, v0, :cond_1

    .line 10
    .line 11
    :goto_0
    return p0

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v0, "topRatio should be in [0..100] range or -1"

    .line 15
    .line 16
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public static equals-impl(ILjava/lang/Object;)Z
    .locals 2

    .line 1
    instance-of v0, p1, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

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
    check-cast p1, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->unbox-impl()I

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

.method public static toString-impl(I)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Top:I

    .line 2
    .line 3
    if-ne p0, v0, :cond_0

    .line 4
    .line 5
    const-string p0, "LineHeightStyle.Alignment.Top"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Center:I

    .line 9
    .line 10
    if-ne p0, v0, :cond_1

    .line 11
    .line 12
    const-string p0, "LineHeightStyle.Alignment.Center"

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Proportional:I

    .line 16
    .line 17
    if-ne p0, v0, :cond_2

    .line 18
    .line 19
    const-string p0, "LineHeightStyle.Alignment.Proportional"

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    sget v0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Bottom:I

    .line 23
    .line 24
    if-ne p0, v0, :cond_3

    .line 25
    .line 26
    const-string p0, "LineHeightStyle.Alignment.Bottom"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "LineHeightStyle.Alignment(topPercentage = "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/16 p0, 0x29

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    :goto_0
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topPercentage:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->equals-impl(ILjava/lang/Object;)Z

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
    iget v0, p0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topPercentage:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->hashCode-impl(I)I

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
    iget v0, p0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topPercentage:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->toString-impl(I)Ljava/lang/String;

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
    iget v0, p0, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->topPercentage:I

    .line 2
    .line 3
    return v0
.end method
