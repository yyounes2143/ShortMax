.class public final synthetic Lcom/moloco/sdk/internal/publisher/l$b;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;",
        "Lcom/moloco/sdk/internal/publisher/l$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/internal/publisher/l$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/publisher/l$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/internal/publisher/l$b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/internal/publisher/l$b;->a:Lcom/moloco/sdk/internal/publisher/l$b;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 1
    const-string v4, "createXenossAggregatedAdShowListener(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/VastAdShowListener;)Lcom/moloco/sdk/internal/publisher/BannerKt$createXenossAggregatedAdShowListener$1;"

    .line 2
    .line 3
    const/4 v5, 0x1

    .line 4
    const/4 v1, 0x1

    .line 5
    const-class v2, Lcom/moloco/sdk/internal/publisher/l;

    .line 6
    .line 7
    const-string v3, "createXenossAggregatedAdShowListener"

    .line 8
    .line 9
    move-object v0, p0

    .line 10
    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;)Lcom/moloco/sdk/internal/publisher/l$c;
    .locals 1

    .line 1
    const-string v0, "p0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/moloco/sdk/internal/publisher/l;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;)Lcom/moloco/sdk/internal/publisher/l$c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/publisher/l$b;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;)Lcom/moloco/sdk/internal/publisher/l$c;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
