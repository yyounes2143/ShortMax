.class public final synthetic Lcom/moloco/sdk/internal/b$a;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/b;->f(Landroid/content/Context;Lcom/moloco/sdk/internal/services/r;Lcom/moloco/sdk/internal/services/b0;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;Lcom/moloco/sdk/internal/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/publisher/w;Lcom/moloco/sdk/internal/services/j;Lcom/moloco/sdk/internal/services/l;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/publisher/NativeAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/internal/b;

.field public final synthetic b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Landroid/content/Context;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/b$a;->a:Lcom/moloco/sdk/internal/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/b$a;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/b$a;->c:Landroid/content/Context;

    .line 6
    .line 7
    const-string v4, "createNativeAd$createVastController(Lcom/moloco/sdk/internal/AdFactoryImpl;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ExternalLinkHandler;Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/Ad;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/AdController;"

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    const/4 v1, 0x1

    .line 11
    const-class v2, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    .line 12
    .line 13
    const-string v3, "createVastController"

    .line 14
    .line 15
    move-object v0, p0

    .line 16
    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;
    .locals 3

    .line 1
    const-string v0, "p0"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/b$a;->a:Lcom/moloco/sdk/internal/b;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/moloco/sdk/internal/b$a;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/moloco/sdk/internal/b$a;->c:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v0, v1, v2, p1}, Lcom/moloco/sdk/internal/b;->g(Lcom/moloco/sdk/internal/b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/b$a;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
