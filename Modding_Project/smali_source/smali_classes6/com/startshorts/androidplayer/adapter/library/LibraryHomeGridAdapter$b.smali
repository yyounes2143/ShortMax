.class final Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$b;
.super Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;
.source "LibraryHomeGridAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder<",
        "Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final i:Lcom/startshorts/androidplayer/databinding/PullUpLoadEndBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic j:Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;Lcom/startshorts/androidplayer/databinding/PullUpLoadEndBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/PullUpLoadEndBinding;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$b;->j:Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$b;->i:Lcom/startshorts/androidplayer/databinding/PullUpLoadEndBinding;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic e(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$b;->g(ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public g(ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;)V
    .locals 0
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
