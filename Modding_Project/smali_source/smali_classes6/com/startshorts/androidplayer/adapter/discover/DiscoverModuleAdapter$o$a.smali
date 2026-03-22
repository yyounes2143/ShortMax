.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$o$a;
.super Lyd/d;
.source "DiscoverModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$o;->k(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$o$a;->e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 1

    .line 1
    const-string/jumbo v0, "v"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$o$a;->e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->k0()Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;->e()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
