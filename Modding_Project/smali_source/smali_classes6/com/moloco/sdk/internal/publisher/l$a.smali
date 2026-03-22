.class public final synthetic Lcom/moloco/sdk/internal/publisher/l$a;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lat/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/l;->b(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Ljava/lang/String;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/internal/m;Lcom/moloco/sdk/internal/services/f0;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lat/s<",
        "Landroid/content/Context;",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;",
        "Lcom/moloco/sdk/internal/ortb/model/c;",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
        "Lcom/moloco/sdk/internal/a;",
        "Lcom/moloco/sdk/internal/services/f0;",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C<",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/q;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/internal/publisher/l$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/l$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/publisher/l$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/internal/publisher/l$a;->a:Lcom/moloco/sdk/internal/publisher/l$a;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const-string v4, "createXenossAggregatedBanner(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/CustomUserEventBuilderService;Lcom/moloco/sdk/internal/ortb/model/Bid;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ExternalLinkHandler;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/Watermark;Lcom/moloco/sdk/internal/ViewLifecycleOwner;Lcom/moloco/sdk/internal/services/ClickthroughService;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/ButtonTracker;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/XenossBannerView;"

    .line 2
    .line 3
    const/4 v5, 0x1

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    const-class v2, Lcom/moloco/sdk/internal/publisher/l;

    .line 7
    .line 8
    const-string v3, "createXenossAggregatedBanner"

    .line 9
    .line 10
    move-object v0, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/internal/ortb/model/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/internal/services/f0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;",
            "Lcom/moloco/sdk/internal/ortb/model/c;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
            "Lcom/moloco/sdk/internal/a;",
            "Lcom/moloco/sdk/internal/services/f0;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;",
            ")",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/q;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "p0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "p1"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "p2"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "p3"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "p4"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "p5"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "p6"

    .line 32
    .line 33
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "p7"

    .line 37
    .line 38
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static/range {p1 .. p8}, Lcom/moloco/sdk/internal/publisher/l;->c(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/internal/ortb/model/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/internal/services/f0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/content/Context;

    .line 2
    .line 3
    check-cast p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 4
    .line 5
    check-cast p3, Lcom/moloco/sdk/internal/ortb/model/c;

    .line 6
    .line 7
    check-cast p4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 8
    .line 9
    check-cast p5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;

    .line 10
    .line 11
    check-cast p6, Lcom/moloco/sdk/internal/a;

    .line 12
    .line 13
    check-cast p7, Lcom/moloco/sdk/internal/services/f0;

    .line 14
    .line 15
    check-cast p8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;

    .line 16
    .line 17
    invoke-virtual/range {p0 .. p8}, Lcom/moloco/sdk/internal/publisher/l$a;->b(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/internal/ortb/model/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/internal/services/f0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
