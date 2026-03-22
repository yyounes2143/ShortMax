.class public final Landroidx/navigation/NavOptions$Builder;
.super Ljava/lang/Object;
.source "NavOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mEnterAnim:I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation
.end field

.field mExitAnim:I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation
.end field

.field mPopEnterAnim:I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation
.end field

.field mPopExitAnim:I
    .annotation build Landroidx/annotation/AnimRes;
    .end annotation

    .annotation build Landroidx/annotation/AnimatorRes;
    .end annotation
.end field

.field mPopUpTo:I
    .annotation build Landroidx/annotation/IdRes;
    .end annotation
.end field

.field mPopUpToInclusive:Z

.field mSingleTop:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->mPopUpTo:I

    .line 6
    .line 7
    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->mEnterAnim:I

    .line 8
    .line 9
    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->mExitAnim:I

    .line 10
    .line 11
    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->mPopEnterAnim:I

    .line 12
    .line 13
    iput v0, p0, Landroidx/navigation/NavOptions$Builder;->mPopExitAnim:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public build()Landroidx/navigation/NavOptions;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v8, Landroidx/navigation/NavOptions;

    .line 2
    .line 3
    iget-boolean v1, p0, Landroidx/navigation/NavOptions$Builder;->mSingleTop:Z

    .line 4
    .line 5
    iget v2, p0, Landroidx/navigation/NavOptions$Builder;->mPopUpTo:I

    .line 6
    .line 7
    iget-boolean v3, p0, Landroidx/navigation/NavOptions$Builder;->mPopUpToInclusive:Z

    .line 8
    .line 9
    iget v4, p0, Landroidx/navigation/NavOptions$Builder;->mEnterAnim:I

    .line 10
    .line 11
    iget v5, p0, Landroidx/navigation/NavOptions$Builder;->mExitAnim:I

    .line 12
    .line 13
    iget v6, p0, Landroidx/navigation/NavOptions$Builder;->mPopEnterAnim:I

    .line 14
    .line 15
    iget v7, p0, Landroidx/navigation/NavOptions$Builder;->mPopExitAnim:I

    .line 16
    .line 17
    move-object v0, v8

    .line 18
    invoke-direct/range {v0 .. v7}, Landroidx/navigation/NavOptions;-><init>(ZIZIIII)V

    .line 19
    .line 20
    .line 21
    return-object v8
.end method

.method public setEnterAnim(I)Landroidx/navigation/NavOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/navigation/NavOptions$Builder;->mEnterAnim:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setExitAnim(I)Landroidx/navigation/NavOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/navigation/NavOptions$Builder;->mExitAnim:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setLaunchSingleTop(Z)Landroidx/navigation/NavOptions$Builder;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/navigation/NavOptions$Builder;->mSingleTop:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setPopEnterAnim(I)Landroidx/navigation/NavOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/navigation/NavOptions$Builder;->mPopEnterAnim:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setPopExitAnim(I)Landroidx/navigation/NavOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/AnimRes;
        .end annotation

        .annotation build Landroidx/annotation/AnimatorRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/navigation/NavOptions$Builder;->mPopExitAnim:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setPopUpTo(IZ)Landroidx/navigation/NavOptions$Builder;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Landroidx/navigation/NavOptions$Builder;->mPopUpTo:I

    .line 2
    .line 3
    iput-boolean p2, p0, Landroidx/navigation/NavOptions$Builder;->mPopUpToInclusive:Z

    .line 4
    .line 5
    return-object p0
.end method
