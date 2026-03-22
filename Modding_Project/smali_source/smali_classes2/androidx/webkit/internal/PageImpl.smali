.class public Landroidx/webkit/internal/PageImpl;
.super Ljava/lang/Object;
.source "PageImpl.java"

# interfaces
.implements Landroidx/webkit/Page;


# annotations
.annotation build Landroidx/webkit/WebNavigationClient$ExperimentalNavigationCallback;
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mPageBoundaryInterface:Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/webkit/internal/PageImpl;->mPageBoundaryInterface:Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/webkit/internal/PageImpl;->lambda$forInvocationHandler$0(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static forInvocationHandler(Ljava/lang/reflect/InvocationHandler;)Landroidx/webkit/Page;
    .locals 1

    .line 1
    const-class v0, Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lzt/a;->a(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;

    .line 8
    .line 9
    new-instance v0, Landroidx/webkit/internal/i0;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Landroidx/webkit/internal/i0;-><init>(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p0, v0}, Lorg/chromium/support_lib_boundary/IsomorphicObjectBoundaryInterface;->getOrCreatePeer(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    check-cast p0, Landroidx/webkit/Page;

    .line 22
    .line 23
    return-object p0
.end method

.method private static synthetic lambda$forInvocationHandler$0(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/webkit/internal/PageImpl;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/webkit/internal/PageImpl;-><init>(Lorg/chromium/support_lib_boundary/WebViewPageBoundaryInterface;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
