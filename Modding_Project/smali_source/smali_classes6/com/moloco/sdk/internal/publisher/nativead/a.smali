.class public final Lcom/moloco/sdk/internal/publisher/nativead/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/publisher/NativeAd$Assets;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/publisher/nativead/a$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nNativeAdAssetsProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NativeAdAssetsProvider.kt\ncom/moloco/sdk/internal/publisher/nativead/NativeAdAssetsProvider\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,140:1\n1#2:141\n*E\n"
    }
.end annotation


# static fields
.field public static final k:Lcom/moloco/sdk/internal/publisher/nativead/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final l:I


# instance fields
.field public final a:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public g:Lcom/moloco/sdk/internal/publisher/nativead/model/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final h:Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public i:Landroid/view/ViewGroup;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public j:Lcom/moloco/sdk/internal/publisher/nativead/ui/d;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/nativead/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/publisher/nativead/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/publisher/nativead/a;->k:Lcom/moloco/sdk/internal/publisher/nativead/a$a;

    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    sput v0, Lcom/moloco/sdk/internal/publisher/nativead/a;->l:I

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;",
            "Lcom/moloco/sdk/internal/a;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;",
            "+",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "viewVisibilityTracker"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string/jumbo v0, "viewLifecycleOwner"

    .line 13
    .line 14
    .line 15
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string/jumbo v0, "watermark"

    .line 19
    .line 20
    .line 21
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v0, "vastAdPlaylistController"

    .line 25
    .line 26
    .line 27
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->a:Landroid/content/Context;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;

    .line 36
    .line 37
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->c:Lcom/moloco/sdk/internal/a;

    .line 38
    .line 39
    iput-object p4, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;

    .line 40
    .line 41
    iput-object p5, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->e:Lkotlin/jvm/functions/Function1;

    .line 42
    .line 43
    iget-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->g:Lcom/moloco/sdk/internal/publisher/nativead/model/d;

    .line 44
    .line 45
    if-eqz p1, :cond_0

    .line 46
    .line 47
    const/4 p2, 0x1

    .line 48
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/publisher/nativead/model/d;->c(I)Landroid/net/Uri;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const/4 p1, 0x0

    .line 54
    :goto_0
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->h:Landroid/net/Uri;

    .line 55
    .line 56
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;)Landroid/view/ViewGroup;
    .locals 10

    .line 1
    new-instance v9, Lcom/moloco/sdk/internal/publisher/nativead/ui/c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->f:Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    const/16 v7, 0x30

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    const/4 v5, 0x0

    .line 13
    const/4 v6, 0x0

    .line 14
    move-object v0, v9

    .line 15
    move-object v2, p1

    .line 16
    invoke-direct/range {v0 .. v8}, Lcom/moloco/sdk/internal/publisher/nativead/ui/c;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    return-object v9
.end method

.method public final b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;)Lcom/moloco/sdk/internal/publisher/nativead/ui/d;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->e:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    move-object v2, p1

    .line 8
    check-cast v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;

    .line 9
    .line 10
    invoke-interface {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;->d()V

    .line 11
    .line 12
    .line 13
    new-instance p1, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->a:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->c:Lcom/moloco/sdk/internal/a;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;

    .line 22
    .line 23
    iget-object v6, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->f:Lkotlin/jvm/functions/Function0;

    .line 24
    .line 25
    move-object v0, p1

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;-><init>(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lkotlin/jvm/functions/Function0;)V

    .line 27
    .line 28
    .line 29
    return-object p1
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->j:Lcom/moloco/sdk/internal/publisher/nativead/ui/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/nativead/ui/d;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->j:Lcom/moloco/sdk/internal/publisher/nativead/ui/d;

    .line 10
    .line 11
    return-void
.end method

.method public final d(Landroid/view/ViewGroup;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Landroid/view/ViewGroup;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Landroid/view/ViewGroup;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v3, "Detaching view "

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, " from parent "

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const/16 v6, 0xc

    .line 59
    .line 60
    const/4 v7, 0x0

    .line 61
    const-string v2, "NativeAdAssetsProvider"

    .line 62
    .line 63
    const/4 v4, 0x0

    .line 64
    const/4 v5, 0x0

    .line 65
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method

.method public final e(Lcom/moloco/sdk/internal/publisher/nativead/model/d;)V
    .locals 0
    .param p1    # Lcom/moloco/sdk/internal/publisher/nativead/model/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->g:Lcom/moloco/sdk/internal/publisher/nativead/model/d;

    .line 2
    .line 3
    return-void
.end method

.method public final f(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->f:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final g()Lcom/moloco/sdk/internal/publisher/nativead/model/d;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->g:Lcom/moloco/sdk/internal/publisher/nativead/model/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCallToActionText()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->g:Lcom/moloco/sdk/internal/publisher/nativead/model/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x7

    .line 6
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/internal/publisher/nativead/model/d;->a(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->g:Lcom/moloco/sdk/internal/publisher/nativead/model/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x5

    .line 6
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/internal/publisher/nativead/model/d;->a(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return-object v0
.end method

.method public getIconUri()Landroid/net/Uri;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->g:Lcom/moloco/sdk/internal/publisher/nativead/model/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/internal/publisher/nativead/model/d;->c(I)Landroid/net/Uri;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return-object v0
.end method

.method public getMainImageUri()Landroid/net/Uri;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->h:Landroid/net/Uri;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMediaView()Landroid/view/View;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->j:Lcom/moloco/sdk/internal/publisher/nativead/ui/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 6
    .line 7
    const/16 v6, 0xc

    .line 8
    .line 9
    const/4 v7, 0x0

    .line 10
    const-string v2, "NativeAdAssetsProvider"

    .line 11
    .line 12
    const-string v3, "Using cached video view"

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/moloco/sdk/internal/publisher/nativead/a;->d(Landroid/view/ViewGroup;)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->g:Lcom/moloco/sdk/internal/publisher/nativead/model/d;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x2

    .line 28
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/internal/publisher/nativead/model/d;->e(I)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/moloco/sdk/internal/publisher/nativead/a;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;)Lcom/moloco/sdk/internal/publisher/nativead/ui/d;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->j:Lcom/moloco/sdk/internal/publisher/nativead/ui/d;

    .line 39
    .line 40
    return-object v0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->i:Landroid/view/ViewGroup;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 46
    .line 47
    const/16 v6, 0xc

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    const-string v2, "NativeAdAssetsProvider"

    .line 51
    .line 52
    const-string v3, "Using cached image view"

    .line 53
    .line 54
    const/4 v4, 0x0

    .line 55
    const/4 v5, 0x0

    .line 56
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/moloco/sdk/internal/publisher/nativead/a;->d(Landroid/view/ViewGroup;)V

    .line 60
    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->g:Lcom/moloco/sdk/internal/publisher/nativead/model/d;

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/internal/publisher/nativead/model/d;->c(I)Landroid/net/Uri;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {p0, v0}, Lcom/moloco/sdk/internal/publisher/nativead/a;->a(Landroid/net/Uri;)Landroid/view/ViewGroup;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->i:Landroid/view/ViewGroup;

    .line 79
    .line 80
    return-object v0

    .line 81
    :cond_3
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 82
    .line 83
    new-instance v4, Ljava/lang/Exception;

    .line 84
    .line 85
    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    .line 86
    .line 87
    .line 88
    const/16 v6, 0x8

    .line 89
    .line 90
    const/4 v7, 0x0

    .line 91
    const-string v2, "NativeAdAssetsProvider"

    .line 92
    .line 93
    const-string v3, "Missing video and image asset"

    .line 94
    .line 95
    const/4 v5, 0x0

    .line 96
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    const/4 v0, 0x0

    .line 100
    return-object v0
.end method

.method public getRating()Ljava/lang/Float;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->g:Lcom/moloco/sdk/internal/publisher/nativead/model/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x6

    .line 6
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/internal/publisher/nativead/model/d;->a(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/lang/Float;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return-object v0
.end method

.method public getSponsorText()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->g:Lcom/moloco/sdk/internal/publisher/nativead/model/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/internal/publisher/nativead/model/d;->a(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/nativead/a;->g:Lcom/moloco/sdk/internal/publisher/nativead/model/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x3

    .line 6
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/internal/publisher/nativead/model/d;->d(I)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return-object v0
.end method
