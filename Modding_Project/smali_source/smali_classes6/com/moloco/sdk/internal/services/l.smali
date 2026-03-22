.class public final Lcom/moloco/sdk/internal/services/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/l;->a:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/l;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/webkit/WebViewCompat;->getCurrentWebViewPackage(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Exception;

    .line 12
    .line 13
    const-string v1, "No current WebView package exists"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/l;->a:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v1, 0x2

    .line 40
    if-eq v0, v1, :cond_3

    .line 41
    .line 42
    const/4 v1, 0x3

    .line 43
    if-eq v0, v1, :cond_2

    .line 44
    .line 45
    const/4 v1, 0x4

    .line 46
    if-eq v0, v1, :cond_1

    .line 47
    .line 48
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 49
    .line 50
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 58
    .line 59
    new-instance v0, Ljava/lang/Exception;

    .line 60
    .line 61
    const-string v1, "WebView component is disabled until used"

    .line 62
    .line 63
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    goto :goto_0

    .line 75
    :cond_2
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 76
    .line 77
    new-instance v0, Ljava/lang/Exception;

    .line 78
    .line 79
    const-string v1, "WebView component is disabled by user"

    .line 80
    .line 81
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 94
    .line 95
    new-instance v0, Ljava/lang/Exception;

    .line 96
    .line 97
    const-string v1, "WebView component is disabled by system"

    .line 98
    .line 99
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :goto_0
    return-object v0
.end method
