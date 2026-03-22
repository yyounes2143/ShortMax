.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$a;
.super Ljava/lang/Object;
.source "DiscoverModuleAdapter.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder;->k(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

.field final synthetic b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$a;->a:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$a;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$a;->b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)V
    .locals 9

    .line 1
    const-string/jumbo v0, "v"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string p1, "d"

    .line 8
    .line 9
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$a;->a:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->a(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    const-string p1, "coming_soon"

    .line 25
    .line 26
    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$a;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->k0()Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    iget-object v5, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$SingleRowViewHolder$a;->a:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 41
    .line 42
    const/16 v7, 0x10

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v6, 0x0

    .line 46
    move v2, p3

    .line 47
    move-object v3, p2

    .line 48
    invoke-static/range {v1 .. v8}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n$a;->a(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;ILjava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method
