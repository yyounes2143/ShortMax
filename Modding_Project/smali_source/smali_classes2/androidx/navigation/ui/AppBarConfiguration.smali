.class public final Landroidx/navigation/ui/AppBarConfiguration;
.super Ljava/lang/Object;
.source "AppBarConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/navigation/ui/AppBarConfiguration$Builder;,
        Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;
    }
.end annotation


# instance fields
.field private final mFallbackOnNavigateUpListener:Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mOpenableLayout:Landroidx/customview/widget/Openable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mTopLevelDestinations:Ljava/util/Set;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/Set;Landroidx/customview/widget/Openable;Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;)V
    .locals 0
    .param p1    # Ljava/util/Set;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/customview/widget/Openable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/customview/widget/Openable;",
            "Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/navigation/ui/AppBarConfiguration;->mTopLevelDestinations:Ljava/util/Set;

    .line 4
    iput-object p2, p0, Landroidx/navigation/ui/AppBarConfiguration;->mOpenableLayout:Landroidx/customview/widget/Openable;

    .line 5
    iput-object p3, p0, Landroidx/navigation/ui/AppBarConfiguration;->mFallbackOnNavigateUpListener:Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/Set;Landroidx/customview/widget/Openable;Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;Landroidx/navigation/ui/AppBarConfiguration$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/navigation/ui/AppBarConfiguration;-><init>(Ljava/util/Set;Landroidx/customview/widget/Openable;Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;)V

    return-void
.end method


# virtual methods
.method public getDrawerLayout()Landroidx/drawerlayout/widget/DrawerLayout;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/ui/AppBarConfiguration;->mOpenableLayout:Landroidx/customview/widget/Openable;

    .line 2
    .line 3
    instance-of v1, v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getFallbackOnNavigateUpListener()Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/ui/AppBarConfiguration;->mFallbackOnNavigateUpListener:Landroidx/navigation/ui/AppBarConfiguration$OnNavigateUpListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getOpenableLayout()Landroidx/customview/widget/Openable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/ui/AppBarConfiguration;->mOpenableLayout:Landroidx/customview/widget/Openable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTopLevelDestinations()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/navigation/ui/AppBarConfiguration;->mTopLevelDestinations:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method
