.class final Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$c;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RegionAdapter2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final c:Lcom/startshorts/androidplayer/databinding/ItemSelectRegionSectionBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic d:Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;Lcom/startshorts/androidplayer/databinding/ItemSelectRegionSectionBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemSelectRegionSectionBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$c;->d:Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$c;->c:Lcom/startshorts/androidplayer/databinding/ItemSelectRegionSectionBinding;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final c(Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$c;->c:Lcom/startshorts/androidplayer/databinding/ItemSelectRegionSectionBinding;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemSelectRegionSectionBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;->a()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
