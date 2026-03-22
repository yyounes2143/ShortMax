.class public final Lyq/n;
.super Ljava/lang/Object;
.source "UiUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lyq/n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lcr/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyq/n;

    .line 2
    .line 3
    invoke-direct {v0}, Lyq/n;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lyq/n;->a:Lyq/n;

    .line 7
    .line 8
    new-instance v0, Ler/b;

    .line 9
    .line 10
    invoke-direct {v0}, Ler/b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lyq/n;->b:Lcr/c;

    .line 14
    .line 15
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

.method public static final a(Landroid/app/Activity;)V
    .locals 1
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0}, Lyq/p;->d(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static final b(Ljava/lang/Runnable;)Z
    .locals 1
    .param p0    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    sget-object v0, Lyq/n;->b:Lcr/c;

    .line 6
    .line 7
    invoke-interface {v0, p0}, Lcr/c;->b(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static final c(Landroid/view/Window;I)Lkotlin/Unit;
    .locals 0
    .param p0    # Landroid/view/Window;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lyq/p;->i(Landroid/view/Window;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
