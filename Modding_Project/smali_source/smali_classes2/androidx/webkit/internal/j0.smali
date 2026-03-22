.class public final synthetic Landroidx/webkit/internal/j0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lorg/chromium/support_lib_boundary/WebViewBackForwardCacheSettingsBoundaryInterface;


# direct methods
.method public synthetic constructor <init>(Lorg/chromium/support_lib_boundary/WebViewBackForwardCacheSettingsBoundaryInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/j0;->a:Lorg/chromium/support_lib_boundary/WebViewBackForwardCacheSettingsBoundaryInterface;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/j0;->a:Lorg/chromium/support_lib_boundary/WebViewBackForwardCacheSettingsBoundaryInterface;

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/webkit/internal/WebSettingsAdapter;->a(Lorg/chromium/support_lib_boundary/WebViewBackForwardCacheSettingsBoundaryInterface;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
