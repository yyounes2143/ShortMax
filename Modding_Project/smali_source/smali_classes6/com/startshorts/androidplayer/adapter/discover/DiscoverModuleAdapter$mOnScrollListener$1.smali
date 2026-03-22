.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$mOnScrollListener$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "DiscoverModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;-><init>(Ljava/lang/ref/WeakReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    if-eq p2, p1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-ne p2, v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$mOnScrollListener$1;->a:Z

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$mOnScrollListener$1;->a:Z

    .line 17
    .line 18
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 19
    .line 20
    invoke-virtual {p1}, Lkk/f;->r()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-nez p2, :cond_2

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$mOnScrollListener$1;->a:Z

    .line 28
    .line 29
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 30
    .line 31
    invoke-virtual {p1}, Lkk/f;->y()V

    .line 32
    .line 33
    .line 34
    :cond_2
    :goto_0
    return-void
.end method
