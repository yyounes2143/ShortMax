.class final Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RegionAdapter2.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final c:Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:I

.field final synthetic e:Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;->e:Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;

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
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;->c:Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBinding;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    sget p2, Lcom/startshorts/androidplayer/R$color;->color_region_select_fragment_selected_bg:I

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-static {p1, p2, v0}, Landroidx/core/content/res/ResourcesCompat;->getColor(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;->d:I

    .line 33
    .line 34
    return-void
.end method

.method public static synthetic c(Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;->e(Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final e(Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->f(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->g(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final d(ILcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;)V
    .locals 3
    .param p2    # Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "item"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;->b()Lcom/startshorts/androidplayer/bean/region/Region;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v0, 0x0

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/region/Region;->getAreaCode()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object p1, v0

    .line 19
    :goto_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;->b()Lcom/startshorts/androidplayer/bean/region/Region;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    if-eqz p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/region/Region;->getCountryName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;->c:Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBinding;

    .line 30
    .line 31
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;->c:Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBinding;

    .line 37
    .line 38
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 39
    .line 40
    sget-object v1, Lfk/v;->a:Lfk/v;

    .line 41
    .line 42
    invoke-virtual {v1}, Lfk/v;->b()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    const v1, 0x800005

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_2
    const v1, 0x800003

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 56
    .line 57
    .line 58
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;->c:Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBinding;

    .line 59
    .line 60
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 61
    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const/16 v2, 0x2b

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;->e:Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;

    .line 83
    .line 84
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->b()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_3

    .line 93
    .line 94
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;->e:Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;

    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->c()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-eqz p2, :cond_3

    .line 105
    .line 106
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;->c:Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBinding;

    .line 107
    .line 108
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 109
    .line 110
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;->d:I

    .line 111
    .line 112
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_3
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;->c:Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBinding;

    .line 117
    .line 118
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 119
    .line 120
    const/4 v1, 0x0

    .line 121
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 122
    .line 123
    .line 124
    :goto_2
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;->c:Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBinding;

    .line 125
    .line 126
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemSelectRegionBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 127
    .line 128
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$b;->e:Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;

    .line 129
    .line 130
    new-instance v2, Lcom/startshorts/androidplayer/adapter/region/a;

    .line 131
    .line 132
    invoke-direct {v2, v1, p1, v0}, Lcom/startshorts/androidplayer/adapter/region/a;-><init>(Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method
