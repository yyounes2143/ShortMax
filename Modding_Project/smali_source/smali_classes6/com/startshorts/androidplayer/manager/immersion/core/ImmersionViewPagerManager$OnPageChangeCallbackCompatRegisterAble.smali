.class public abstract Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$OnPageChangeCallbackCompatRegisterAble;
.super Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;
.source "ImmersionViewPagerManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnPageChangeCallbackCompatRegisterAble"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private f:Z


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1
    .param p1    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "viewPager"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;-><init>(Landroidx/viewpager2/widget/ViewPager2;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$OnPageChangeCallbackCompatRegisterAble;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final g(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$OnPageChangeCallbackCompatRegisterAble;->f:Z

    .line 2
    .line 3
    return-void
.end method
