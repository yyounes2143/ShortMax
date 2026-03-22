.class public final Landroidx/compose/ui/BiasAlignment$Horizontal;
.super Ljava/lang/Object;
.source "Alignment.kt"

# interfaces
.implements Landroidx/compose/ui/Alignment$Horizontal;


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/BiasAlignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Horizontal"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final bias:F


# direct methods
.method public constructor <init>(F)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroidx/compose/ui/BiasAlignment$Horizontal;->bias:F

    .line 5
    .line 6
    return-void
.end method

.method private final component1()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/BiasAlignment$Horizontal;->bias:F

    .line 2
    .line 3
    return v0
.end method

.method public static synthetic copy$default(Landroidx/compose/ui/BiasAlignment$Horizontal;FILjava/lang/Object;)Landroidx/compose/ui/BiasAlignment$Horizontal;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget p1, p0, Landroidx/compose/ui/BiasAlignment$Horizontal;->bias:F

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/BiasAlignment$Horizontal;->copy(F)Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public align(IILandroidx/compose/ui/unit/LayoutDirection;)I
    .locals 1
    .param p3    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutDirection"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sub-int/2addr p2, p1

    .line 7
    int-to-float p1, p2

    .line 8
    const/high16 p2, 0x40000000    # 2.0f

    .line 9
    .line 10
    div-float/2addr p1, p2

    .line 11
    sget-object p2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    .line 12
    .line 13
    if-ne p3, p2, :cond_0

    .line 14
    .line 15
    iget p2, p0, Landroidx/compose/ui/BiasAlignment$Horizontal;->bias:F

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p2, -0x1

    .line 19
    int-to-float p2, p2

    .line 20
    iget p3, p0, Landroidx/compose/ui/BiasAlignment$Horizontal;->bias:F

    .line 21
    .line 22
    mul-float/2addr p2, p3

    .line 23
    :goto_0
    const/4 p3, 0x1

    .line 24
    int-to-float p3, p3

    .line 25
    add-float/2addr p3, p2

    .line 26
    mul-float/2addr p1, p3

    .line 27
    invoke-static {p1}, Lbt/a;->c(F)I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    return p1
.end method

.method public final copy(F)Landroidx/compose/ui/BiasAlignment$Horizontal;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/ui/BiasAlignment$Horizontal;-><init>(F)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
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
    instance-of v1, p1, Landroidx/compose/ui/BiasAlignment$Horizontal;

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
    check-cast p1, Landroidx/compose/ui/BiasAlignment$Horizontal;

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/ui/BiasAlignment$Horizontal;->bias:F

    .line 14
    .line 15
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget p1, p1, Landroidx/compose/ui/BiasAlignment$Horizontal;->bias:F

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    return v2

    .line 32
    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/BiasAlignment$Horizontal;->bias:F

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->hashCode(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
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
    const-string v1, "Horizontal(bias="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Landroidx/compose/ui/BiasAlignment$Horizontal;->bias:F

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x29

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
