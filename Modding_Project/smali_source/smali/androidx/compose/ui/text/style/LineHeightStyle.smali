.class public final Landroidx/compose/ui/text/style/LineHeightStyle;
.super Ljava/lang/Object;
.source "LineHeightStyle.kt"


# annotations
.annotation runtime Landroidx/compose/ui/text/ExperimentalTextApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/text/style/LineHeightStyle$Companion;,
        Landroidx/compose/ui/text/style/LineHeightStyle$Trim;,
        Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Default:Landroidx/compose/ui/text/style/LineHeightStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final alignment:I

.field private final trim:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/ui/text/style/LineHeightStyle$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/text/style/LineHeightStyle;->Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Companion;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 10
    .line 11
    sget-object v2, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment$Companion;->getProportional-PIaL0Z0()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sget-object v3, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->Companion:Landroidx/compose/ui/text/style/LineHeightStyle$Trim$Companion;

    .line 18
    .line 19
    invoke-virtual {v3}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim$Companion;->getBoth-EVpEnUU()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/ui/text/style/LineHeightStyle;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Landroidx/compose/ui/text/style/LineHeightStyle;->Default:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 27
    .line 28
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:I

    .line 4
    iput p2, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/text/style/LineHeightStyle;-><init>(II)V

    return-void
.end method

.method public static final synthetic access$getDefault$cp()Landroidx/compose/ui/text/style/LineHeightStyle;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/text/style/LineHeightStyle;->Default:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
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
    instance-of v1, p1, Landroidx/compose/ui/text/style/LineHeightStyle;

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
    iget v1, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:I

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 14
    .line 15
    iget v3, p1, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:I

    .line 16
    .line 17
    invoke-static {v1, v3}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->equals-impl0(II)Z

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
    iget v1, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    .line 25
    .line 26
    iget p1, p1, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    .line 27
    .line 28
    invoke-static {v1, p1}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->equals-impl0(II)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public final getAlignment-PIaL0Z0()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTrim-EVpEnUU()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:I

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->hashCode-impl(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    .line 10
    .line 11
    invoke-static {v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->hashCode-impl(I)I

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
    const-string v1, "LineHeightStyle(alignment="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->alignment:I

    .line 12
    .line 13
    invoke-static {v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Alignment;->toString-impl(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", trim="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v1, p0, Landroidx/compose/ui/text/style/LineHeightStyle;->trim:I

    .line 26
    .line 27
    invoke-static {v1}, Landroidx/compose/ui/text/style/LineHeightStyle$Trim;->toString-impl(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x29

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    return-object v0
.end method
