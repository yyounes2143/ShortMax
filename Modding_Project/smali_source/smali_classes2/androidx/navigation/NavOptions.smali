.class public final Landroidx/navigation/NavOptions;
.super Ljava/lang/Object;
.source "NavOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/NavOptions$Builder;
    }
.end annotation


# instance fields
.field private mEnterAnim:I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation
.end field

.field private mExitAnim:I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation
.end field

.field private mPopEnterAnim:I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation
.end field

.field private mPopExitAnim:I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation
.end field

.field private mPopUpTo:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field private mPopUpToInclusive:Z

.field private mSingleTop:Z


# direct methods
.method constructor <init>(ZIZIIII)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p6    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .param p7    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/navigation/NavOptions;->mSingleTop:Z

    .line 5
    .line 6
    iput p2, p0, Landroidx/navigation/NavOptions;->mPopUpTo:I

    .line 7
    .line 8
    iput-boolean p3, p0, Landroidx/navigation/NavOptions;->mPopUpToInclusive:Z

    .line 9
    .line 10
    iput p4, p0, Landroidx/navigation/NavOptions;->mEnterAnim:I

    .line 11
    .line 12
    iput p5, p0, Landroidx/navigation/NavOptions;->mExitAnim:I

    .line 13
    .line 14
    iput p6, p0, Landroidx/navigation/NavOptions;->mPopEnterAnim:I

    .line 15
    .line 16
    iput p7, p0, Landroidx/navigation/NavOptions;->mPopExitAnim:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Landroidx/navigation/NavOptions;

    .line 13
    .line 14
    if-eq v3, v2, :cond_1

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Landroidx/navigation/NavOptions;

    .line 18
    .line 19
    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->mSingleTop:Z

    .line 20
    .line 21
    iget-boolean v3, p1, Landroidx/navigation/NavOptions;->mSingleTop:Z

    .line 22
    .line 23
    if-ne v2, v3, :cond_2

    .line 24
    .line 25
    iget v2, p0, Landroidx/navigation/NavOptions;->mPopUpTo:I

    .line 26
    .line 27
    iget v3, p1, Landroidx/navigation/NavOptions;->mPopUpTo:I

    .line 28
    .line 29
    if-ne v2, v3, :cond_2

    .line 30
    .line 31
    iget-boolean v2, p0, Landroidx/navigation/NavOptions;->mPopUpToInclusive:Z

    .line 32
    .line 33
    iget-boolean v3, p1, Landroidx/navigation/NavOptions;->mPopUpToInclusive:Z

    .line 34
    .line 35
    if-ne v2, v3, :cond_2

    .line 36
    .line 37
    iget v2, p0, Landroidx/navigation/NavOptions;->mEnterAnim:I

    .line 38
    .line 39
    iget v3, p1, Landroidx/navigation/NavOptions;->mEnterAnim:I

    .line 40
    .line 41
    if-ne v2, v3, :cond_2

    .line 42
    .line 43
    iget v2, p0, Landroidx/navigation/NavOptions;->mExitAnim:I

    .line 44
    .line 45
    iget v3, p1, Landroidx/navigation/NavOptions;->mExitAnim:I

    .line 46
    .line 47
    if-ne v2, v3, :cond_2

    .line 48
    .line 49
    iget v2, p0, Landroidx/navigation/NavOptions;->mPopEnterAnim:I

    .line 50
    .line 51
    iget v3, p1, Landroidx/navigation/NavOptions;->mPopEnterAnim:I

    .line 52
    .line 53
    if-ne v2, v3, :cond_2

    .line 54
    .line 55
    iget v2, p0, Landroidx/navigation/NavOptions;->mPopExitAnim:I

    .line 56
    .line 57
    iget p1, p1, Landroidx/navigation/NavOptions;->mPopExitAnim:I

    .line 58
    .line 59
    if-ne v2, p1, :cond_2

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move v0, v1

    .line 63
    :goto_0
    return v0

    .line 64
    :cond_3
    :goto_1
    return v1
.end method

.method public getEnterAnim()I
    .locals 1
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/navigation/NavOptions;->mEnterAnim:I

    .line 2
    .line 3
    return v0
.end method

.method public getExitAnim()I
    .locals 1
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/navigation/NavOptions;->mExitAnim:I

    .line 2
    .line 3
    return v0
.end method

.method public getPopEnterAnim()I
    .locals 1
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/navigation/NavOptions;->mPopEnterAnim:I

    .line 2
    .line 3
    return v0
.end method

.method public getPopExitAnim()I
    .locals 1
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/navigation/NavOptions;->mPopExitAnim:I

    .line 2
    .line 3
    return v0
.end method

.method public getPopUpTo()I
    .locals 1
    .annotation build Landroidx/annotation/IdRes;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/navigation/NavOptions;->mPopUpTo:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->shouldLaunchSingleTop()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->getPopUpTo()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->isPopUpToInclusive()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/2addr v0, v1

    .line 19
    mul-int/lit8 v0, v0, 0x1f

    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->getEnterAnim()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    add-int/2addr v0, v1

    .line 26
    mul-int/lit8 v0, v0, 0x1f

    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->getExitAnim()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    add-int/2addr v0, v1

    .line 33
    mul-int/lit8 v0, v0, 0x1f

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->getPopEnterAnim()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    add-int/2addr v0, v1

    .line 40
    mul-int/lit8 v0, v0, 0x1f

    .line 41
    .line 42
    invoke-virtual {p0}, Landroidx/navigation/NavOptions;->getPopExitAnim()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    add-int/2addr v0, v1

    .line 47
    return v0
.end method

.method public isPopUpToInclusive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/navigation/NavOptions;->mPopUpToInclusive:Z

    .line 2
    .line 3
    return v0
.end method

.method public shouldLaunchSingleTop()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/navigation/NavOptions;->mSingleTop:Z

    .line 2
    .line 3
    return v0
.end method
