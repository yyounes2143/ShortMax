.class public final synthetic Landroidx/webkit/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;


# instance fields
.field public final synthetic a:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;


# direct methods
.method public synthetic constructor <init>(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/g;->a:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onSuccess(Landroidx/webkit/WebViewStartUpResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/g;->a:Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;

    .line 2
    .line 3
    invoke-static {v0, p1}, Landroidx/webkit/WebViewCompat;->c(Landroidx/webkit/WebViewCompat$WebViewStartUpCallback;Landroidx/webkit/WebViewStartUpResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
