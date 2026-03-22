.class public final Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView$b;
.super Lz2/a;
.source "BaseImmersionAdapterView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->H(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/a<",
        "Ly3/m;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic b:Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView$b;->b:Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 2
    .line 3
    invoke-direct {p0}, Lz2/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic g(Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView$b;->i(Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final i(Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->C()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 1
    check-cast p2, Ly3/m;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView$b;->h(Ljava/lang/String;Ly3/m;Landroid/graphics/drawable/Animatable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(Ljava/lang/String;Ly3/m;Landroid/graphics/drawable/Animatable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView$b;->b:Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 2
    .line 3
    const/4 p2, 0x1

    .line 4
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;->v(Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;Z)V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 8
    .line 9
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView$b;->b:Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;

    .line 10
    .line 11
    new-instance p3, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/b;

    .line 12
    .line 13
    invoke-direct {p3, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/adapter/b;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/adapter/BaseImmersionAdapterView;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, p3}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
