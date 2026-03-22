.class public final Lio/bidmachine/rendering/view/PrivacySheetDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/view/PrivacySheetDialog$d;,
        Lio/bidmachine/rendering/view/PrivacySheetDialog$e;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lio/bidmachine/rendering/view/PrivacySheetDialog$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/bidmachine/rendering/view/PrivacySheetDialog;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lio/bidmachine/rendering/model/PrivacySheetParams;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/rendering/view/PrivacySheetDialog$d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/rendering/view/PrivacySheetDialog$d;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->c:Lio/bidmachine/rendering/view/PrivacySheetDialog$d;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->d:Ljava/lang/ref/WeakReference;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 1

    .line 2
    sget v0, Lpp/e;->a:I

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 3
    iput-object p2, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->a:Lio/bidmachine/rendering/model/PrivacySheetParams;

    .line 4
    new-instance p2, Lio/bidmachine/rendering/view/PrivacySheetDialog$b;

    invoke-direct {p2, p1}, Lio/bidmachine/rendering/view/PrivacySheetDialog$b;-><init>(Landroid/content/Context;)V

    invoke-static {p2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->b:Lms/i;

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/Window;->requestFeature(I)Z

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lio/bidmachine/rendering/model/PrivacySheetParams;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/rendering/view/PrivacySheetDialog;-><init>(Landroid/content/Context;Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    return-void
.end method

.method private final a()Lio/bidmachine/rendering/internal/view/privacy/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/rendering/internal/view/privacy/b;

    .line 8
    .line 9
    return-object v0
.end method

.method private final b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "context"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lyq/s;->n(Landroid/content/Context;)Landroid/content/ClipboardManager;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v1, ""

    .line 20
    .line 21
    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    goto :goto_1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    :goto_1
    return-object p1
.end method

.method private final c(Landroid/view/Window;)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1e

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {p1, v0}, Lcom/applovin/adview/a;->a(Landroid/view/Window;Z)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    or-int/lit16 v0, v0, 0x700

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method private final d(Lio/bidmachine/rendering/model/PrivacySheetParams$a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/PrivacySheetParams$a;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/PrivacySheetParams$a;->d()Lio/bidmachine/rendering/model/PrivacySheetParams$ActionType;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v1, Lio/bidmachine/rendering/view/PrivacySheetDialog$e;->$EnumSwitchMapping$0:[I

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    aget p1, v1, p1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    if-eq p1, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x2

    .line 21
    if-eq p1, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-direct {p0, v0}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->b(Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-direct {p0, v0}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->j(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method private final e(Lio/bidmachine/rendering/model/PrivacySheetParams;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->a()Lio/bidmachine/rendering/internal/view/privacy/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/view/privacy/b;->d()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/PrivacySheetParams;->c()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/internal/view/privacy/b;->setTitle(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/PrivacySheetParams;->b()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/internal/view/privacy/b;->setSubtitle(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/PrivacySheetParams;->a()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lio/bidmachine/rendering/model/PrivacySheetParams$a;

    .line 41
    .line 42
    invoke-virtual {v1}, Lio/bidmachine/rendering/model/PrivacySheetParams$a;->b()Landroid/graphics/Bitmap;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_0
    const/4 v3, 0x0

    .line 59
    :goto_1
    invoke-virtual {v1}, Lio/bidmachine/rendering/model/PrivacySheetParams$a;->c()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v4, Lio/bidmachine/rendering/view/PrivacySheetDialog$c;

    .line 64
    .line 65
    invoke-direct {v4, p0, v1}, Lio/bidmachine/rendering/view/PrivacySheetDialog$c;-><init>(Lio/bidmachine/rendering/view/PrivacySheetDialog;Lio/bidmachine/rendering/model/PrivacySheetParams$a;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2, v3, v4}, Lio/bidmachine/rendering/internal/view/privacy/b;->f(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lkotlin/jvm/functions/Function0;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method

.method public static final synthetic f()Ljava/lang/ref/WeakReference;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->d:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic g(Lio/bidmachine/rendering/view/PrivacySheetDialog;)Lio/bidmachine/rendering/model/PrivacySheetParams;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->a:Lio/bidmachine/rendering/model/PrivacySheetParams;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic h(Lio/bidmachine/rendering/view/PrivacySheetDialog;Lio/bidmachine/rendering/model/PrivacySheetParams$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->d(Lio/bidmachine/rendering/model/PrivacySheetParams$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    sput-object p0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->d:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    return-void
.end method

.method private final j(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "context"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0, p1}, Lyq/j;->i(Landroid/content/Context;Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    :goto_0
    return-object p1
.end method

.method public static final k(Landroid/content/Context;Lio/bidmachine/rendering/model/PrivacySheetParams;)Lio/bidmachine/rendering/view/PrivacySheetDialog;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/rendering/model/PrivacySheetParams;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->c:Lio/bidmachine/rendering/view/PrivacySheetDialog$d;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lio/bidmachine/rendering/view/PrivacySheetDialog$d;->a(Landroid/content/Context;Lio/bidmachine/rendering/model/PrivacySheetParams;)Lio/bidmachine/rendering/view/PrivacySheetDialog;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->a()Lio/bidmachine/rendering/internal/view/privacy/b;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    new-instance v0, Lio/bidmachine/rendering/view/PrivacySheetDialog$a;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lio/bidmachine/rendering/view/PrivacySheetDialog$a;-><init>(Lio/bidmachine/rendering/view/PrivacySheetDialog;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lio/bidmachine/rendering/internal/view/privacy/b;->setOnCloseClickListener(Lkotlin/jvm/functions/Function0;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    const/high16 v0, -0x80000000

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 28
    .line 29
    .line 30
    const/4 v0, -0x1

    .line 31
    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setLayout(II)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->c(Landroid/view/Window;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lio/bidmachine/rendering/view/PrivacySheetDialog;->a:Lio/bidmachine/rendering/model/PrivacySheetParams;

    .line 38
    .line 39
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/view/PrivacySheetDialog;->e(Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method
