.class final Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter$b;
.super Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$SelectableViewHolder;
.source "LanguageAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter<",
        "Lcom/startshorts/androidplayer/bean/settings/AppLanguage;",
        ">.SelectableViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final h:Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic i:Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter;Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter$b;->i:Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$SelectableViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter$b;->h:Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic f(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter$b;->k(ILcom/startshorts/androidplayer/bean/settings/AppLanguage;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter$b;->h:Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/settings/AppLanguage;)V
    .locals 2
    .param p2    # Lcom/startshorts/androidplayer/bean/settings/AppLanguage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;->getLocalName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBinding;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/settings/AppLanguage;->getDescName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const-string p2, "selectedViewstub"

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 44
    .line 45
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_app_language_dialog_fragment_text_selected:I

    .line 46
    .line 47
    invoke-virtual {p1, v0}, Lfk/u;->a(I)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBinding;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBinding;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBinding;->c:Landroidx/databinding/ViewStubProxy;

    .line 65
    .line 66
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {p1}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBinding;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 78
    .line 79
    const/4 v0, -0x1

    .line 80
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/language/LanguageAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBinding;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemAppLanguageBinding;->c:Landroidx/databinding/ViewStubProxy;

    .line 88
    .line 89
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/4 p2, 0x1

    .line 93
    const/4 v0, 0x0

    .line 94
    const/4 v1, 0x0

    .line 95
    invoke-static {p1, v1, p2, v0}, Ljk/e0;->b(Landroidx/databinding/ViewStubProxy;IILjava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void
.end method
