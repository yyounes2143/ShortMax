.class public final Landroidx/webkit/WebViewBuilder;
.super Ljava/lang/Object;
.source "WebViewBuilder.java"


# annotations
.annotation build Landroidx/webkit/WebViewBuilder$Experimental;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/WebViewBuilder$Preset;,
        Landroidx/webkit/WebViewBuilder$Experimental;
    }
.end annotation


# static fields
.field public static final PRESET_LEGACY:I


# instance fields
.field private final mAllowLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/webkit/RestrictionAllowlist;",
            ">;"
        }
    .end annotation
.end field

.field mBuilderStateBoundary:Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

.field private mProfileName:Ljava/lang/String;

.field private mRestrictJavascriptInterface:Z


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/webkit/WebViewBuilder;->mAllowLists:Ljava/util/List;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "Invalid preset: "

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0
.end method


# virtual methods
.method public addAllowlist(Landroidx/webkit/RestrictionAllowlist;)Landroidx/webkit/WebViewBuilder;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/WebViewBuilder;->mAllowLists:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public build(Landroid/content/Context;)Landroid/webkit/WebView;
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->WEBVIEW_BUILDER_V1:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/webkit/WebViewBuilder;->mBuilderStateBoundary:Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-static {}, Landroidx/webkit/internal/WebViewGlueCommunicator;->getFactory()Landroidx/webkit/internal/WebViewProviderFactory;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Landroidx/webkit/internal/WebViewProviderFactory;->getWebViewBuilder()Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Landroidx/webkit/WebViewBuilder;->mBuilderStateBoundary:Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    .line 22
    .line 23
    :cond_0
    new-instance v0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;

    .line 24
    .line 25
    invoke-direct {v0}, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;-><init>()V

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Landroidx/webkit/WebViewBuilder;->mRestrictJavascriptInterface:Z

    .line 29
    .line 30
    iput-boolean v1, v0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->restrictJavascriptInterface:Z

    .line 31
    .line 32
    iget-object v1, p0, Landroidx/webkit/WebViewBuilder;->mProfileName:Ljava/lang/String;

    .line 33
    .line 34
    iput-object v1, v0, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;->profileName:Ljava/lang/String;

    .line 35
    .line 36
    :try_start_0
    iget-object v1, p0, Landroidx/webkit/WebViewBuilder;->mAllowLists:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroidx/webkit/RestrictionAllowlist;

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Landroidx/webkit/RestrictionAllowlist;->configure(Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface$Config;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception p1

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    iget-object v1, p0, Landroidx/webkit/WebViewBuilder;->mBuilderStateBoundary:Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;

    .line 61
    .line 62
    invoke-interface {v1, p1, v0}, Lorg/chromium/support_lib_boundary/WebViewBuilderBoundaryInterface;->build(Landroid/content/Context;Ljava/util/function/Consumer;)Landroid/webkit/WebView;

    .line 63
    .line 64
    .line 65
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    return-object p1

    .line 67
    :goto_1
    new-instance v0, Landroidx/webkit/WebViewBuilderException;

    .line 68
    .line 69
    invoke-direct {v0, p1}, Landroidx/webkit/WebViewBuilderException;-><init>(Ljava/lang/Throwable;)V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_2
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    throw p1
.end method

.method public restrictJavaScriptInterfaces()Landroidx/webkit/WebViewBuilder;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/webkit/WebViewBuilder;->mRestrictJavascriptInterface:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public setProfile(Ljava/lang/String;)Landroidx/webkit/WebViewBuilder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/webkit/WebViewBuilder;->mProfileName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
