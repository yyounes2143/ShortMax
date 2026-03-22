.class public final Lkd/b;
.super Ljava/lang/Object;
.source "TextViewBindingAdapter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lkd/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkd/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lkd/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkd/b;->a:Lkd/b;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final a(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Ljava/lang/String;)V
    .locals 1
    .param p0    # Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/databinding/BindingAdapter;
        value = {
            "customTypeface"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "typefaceName"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-static {p0, p1}, Ljk/y;->n(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
