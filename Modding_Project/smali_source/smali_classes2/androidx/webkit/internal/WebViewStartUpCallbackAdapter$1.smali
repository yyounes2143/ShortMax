.class Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$1;
.super Ljava/lang/Object;
.source "WebViewStartUpCallbackAdapter.java"

# interfaces
.implements Landroidx/webkit/WebViewStartUpResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;->webViewStartUpResultFromBoundaryInterface(Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;)Landroidx/webkit/WebViewStartUpResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mAsyncStartUpLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/webkit/StartUpLocation;",
            ">;"
        }
    .end annotation
.end field

.field private final mBlockingStartUpLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/webkit/StartUpLocation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;

.field final synthetic val$asyncStartUpLocations:Ljava/util/List;

.field final synthetic val$blockingStartUpLocations:Ljava/util/List;

.field final synthetic val$result:Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;


# direct methods
.method constructor <init>(Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;Ljava/util/List;Ljava/util/List;Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$1;->this$0:Landroidx/webkit/internal/WebViewStartUpCallbackAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$1;->val$blockingStartUpLocations:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$1;->val$asyncStartUpLocations:Ljava/util/List;

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$1;->val$result:Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$1;->mBlockingStartUpLocations:Ljava/util/List;

    .line 13
    .line 14
    iput-object p3, p0, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$1;->mAsyncStartUpLocations:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public getMaxTimePerTaskInUiThreadMillis()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$1;->val$result:Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;->getMaxTimePerTaskInUiThreadMillis()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNonUiThreadBlockingStartUpLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/webkit/StartUpLocation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$1;->mAsyncStartUpLocations:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTotalTimeInUiThreadMillis()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$1;->val$result:Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;

    .line 2
    .line 3
    invoke-interface {v0}, Lorg/chromium/support_lib_boundary/WebViewStartUpResultBoundaryInterface;->getTotalTimeInUiThreadMillis()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getUiThreadBlockingStartUpLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/webkit/StartUpLocation;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/webkit/internal/WebViewStartUpCallbackAdapter$1;->mBlockingStartUpLocations:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
