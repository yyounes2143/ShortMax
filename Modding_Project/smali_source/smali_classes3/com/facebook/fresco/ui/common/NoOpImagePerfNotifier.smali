.class public final Lcom/facebook/fresco/ui/common/NoOpImagePerfNotifier;
.super Ljava/lang/Object;
.source "NoOpImagePerfNotifier.kt"

# interfaces
.implements Lcom/facebook/fresco/ui/common/ImagePerfNotifier;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/fresco/ui/common/NoOpImagePerfNotifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/fresco/ui/common/NoOpImagePerfNotifier;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/fresco/ui/common/NoOpImagePerfNotifier;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/fresco/ui/common/NoOpImagePerfNotifier;->INSTANCE:Lcom/facebook/fresco/ui/common/NoOpImagePerfNotifier;

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


# virtual methods
.method public notifyStatusUpdated(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/ImageLoadStatus;)V
    .locals 1
    .param p1    # Lcom/facebook/fresco/ui/common/ImagePerfState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/ui/common/ImageLoadStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "imageLoadStatus"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public notifyVisibilityUpdated(Lcom/facebook/fresco/ui/common/ImagePerfState;Lcom/facebook/fresco/ui/common/VisibilityState;)V
    .locals 1
    .param p1    # Lcom/facebook/fresco/ui/common/ImagePerfState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/ui/common/VisibilityState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "visibilityState"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
