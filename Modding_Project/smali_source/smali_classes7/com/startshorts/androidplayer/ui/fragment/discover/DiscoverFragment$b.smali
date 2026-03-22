.class final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;
.super Ljava/lang/Object;
.source "DiscoverFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$ScrollVerticalScrollOffsetHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1645:1\n1#2:1646\n*E\n"
    }
.end annotation


# instance fields
.field private a:F

.field private b:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Float;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic c:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;->c:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/discover/w;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/w;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;->b:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;F)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;->b(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;F)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final b(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;F)Lkotlin/Unit;
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;->a:F

    .line 2
    .line 3
    add-float/2addr v0, p1

    .line 4
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;->a:F

    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method


# virtual methods
.method public final c()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;->c:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->g0()Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    int-to-float v0, v0

    .line 14
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;->a:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;->c:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "computeScrollTotalDy onScrolled Exception -> "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->g(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    :goto_0
    return-void
.end method

.method public final d()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;->a:F

    .line 2
    .line 3
    return v0
.end method

.method public final e(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;->b:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;->c:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->z1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;->c:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->A1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;->a:F

    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    invoke-interface {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;->c(FZ)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
