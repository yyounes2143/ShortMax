.class public final Landroidx/compose/material/Strings;
.super Ljava/lang/Object;
.source "Strings.kt"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/Strings$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final CloseDrawer:I

.field private static final CloseSheet:I

.field public static final Companion:Landroidx/compose/material/Strings$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DefaultErrorMessage:I

.field private static final ExposedDropdownMenu:I

.field private static final NavigationMenu:I

.field private static final SliderRangeEnd:I

.field private static final SliderRangeStart:I


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/material/Strings$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/material/Strings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/material/Strings;->Companion:Landroidx/compose/material/Strings$Companion;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Landroidx/compose/material/Strings;->NavigationMenu:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    sput v0, Landroidx/compose/material/Strings;->CloseDrawer:I

    .line 22
    .line 23
    const/4 v0, 0x2

    .line 24
    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    sput v0, Landroidx/compose/material/Strings;->CloseSheet:I

    .line 29
    .line 30
    const/4 v0, 0x3

    .line 31
    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    sput v0, Landroidx/compose/material/Strings;->DefaultErrorMessage:I

    .line 36
    .line 37
    const/4 v0, 0x4

    .line 38
    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    sput v0, Landroidx/compose/material/Strings;->ExposedDropdownMenu:I

    .line 43
    .line 44
    const/4 v0, 0x5

    .line 45
    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    sput v0, Landroidx/compose/material/Strings;->SliderRangeStart:I

    .line 50
    .line 51
    const/4 v0, 0x6

    .line 52
    invoke-static {v0}, Landroidx/compose/material/Strings;->constructor-impl(I)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    sput v0, Landroidx/compose/material/Strings;->SliderRangeEnd:I

    .line 57
    .line 58
    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/material/Strings;->value:I

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic access$getCloseDrawer$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/Strings;->CloseDrawer:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getCloseSheet$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/Strings;->CloseSheet:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getDefaultErrorMessage$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/Strings;->DefaultErrorMessage:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getExposedDropdownMenu$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/Strings;->ExposedDropdownMenu:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getNavigationMenu$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/Strings;->NavigationMenu:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getSliderRangeEnd$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/Strings;->SliderRangeEnd:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getSliderRangeStart$cp()I
    .locals 1

    .line 1
    sget v0, Landroidx/compose/material/Strings;->SliderRangeStart:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic box-impl(I)Landroidx/compose/material/Strings;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/Strings;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/material/Strings;-><init>(I)V

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
    instance-of v0, p1, Landroidx/compose/material/Strings;

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
    check-cast p1, Landroidx/compose/material/Strings;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroidx/compose/material/Strings;->unbox-impl()I

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

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Strings(value="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const/16 p0, 0x29

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/material/Strings;->value:I

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/compose/material/Strings;->equals-impl(ILjava/lang/Object;)Z

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
    iget v0, p0, Landroidx/compose/material/Strings;->value:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/material/Strings;->hashCode-impl(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/material/Strings;->value:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/material/Strings;->toString-impl(I)Ljava/lang/String;

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
    iget v0, p0, Landroidx/compose/material/Strings;->value:I

    .line 2
    .line 3
    return v0
.end method
