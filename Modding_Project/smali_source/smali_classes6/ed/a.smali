.class public final Led/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Led/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Led/a;

    .line 2
    .line 3
    invoke-direct {v0}, Led/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Led/a;->a:Led/a;

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

.method public static synthetic c(Led/a;Landroid/app/Activity;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Led/a;->b(Landroid/app/Activity;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 1

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    or-int/lit16 v0, v0, 0x2000

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public final b(Landroid/app/Activity;Z)V
    .locals 2

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/high16 v0, -0x80000000

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 13
    .line 14
    .line 15
    const/high16 v0, 0x4000000

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const/16 v0, 0x500

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 44
    .line 45
    .line 46
    :goto_0
    const p2, 0x1020002

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroid/view/ViewGroup;

    .line 54
    .line 55
    if-eqz p1, :cond_1

    .line 56
    .line 57
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->requestApplyInsets()V

    .line 67
    .line 68
    .line 69
    :cond_1
    return-void
.end method
