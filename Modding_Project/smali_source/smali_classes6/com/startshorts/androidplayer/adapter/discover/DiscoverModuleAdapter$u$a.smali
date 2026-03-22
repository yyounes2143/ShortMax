.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u$a;
.super Lyd/d;
.source "DiscoverModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u;->o(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

.field final synthetic f:I

.field final synthetic g:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

.field final synthetic h:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u$a;->e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u$a;->f:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u$a;->g:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u$a;->h:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    const/4 p2, 0x0

    .line 11
    const-wide/16 p3, 0x0

    .line 12
    .line 13
    invoke-direct {p0, p3, p4, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 6

    .line 1
    const-string/jumbo v0, "v"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->v1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u$a;->e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->k0()Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u$a;->f:I

    .line 38
    .line 39
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u$a;->g:Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 40
    .line 41
    sget-object p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 42
    .line 43
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u$a;->h:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->a(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iget-object v4, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$u$a;->h:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 54
    .line 55
    const-string v5, "discover"

    .line 56
    .line 57
    invoke-interface/range {v0 .. v5}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;->f(ILcom/startshorts/androidplayer/bean/shorts/ShortsLabel;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method
