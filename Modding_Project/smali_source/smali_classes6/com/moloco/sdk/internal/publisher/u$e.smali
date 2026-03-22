.class public final Lcom/moloco/sdk/internal/publisher/u$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/u;->d(Lcom/moloco/sdk/internal/publisher/t0;)Lcom/moloco/sdk/internal/publisher/u$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/internal/publisher/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moloco/sdk/internal/publisher/u<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic b:Lcom/moloco/sdk/internal/publisher/t0;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/publisher/u;Lcom/moloco/sdk/internal/publisher/t0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/publisher/u<",
            "-TT;>;",
            "Lcom/moloco/sdk/internal/publisher/t0;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/u$e;->a:Lcom/moloco/sdk/internal/publisher/u;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/u$e;->b:Lcom/moloco/sdk/internal/publisher/t0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 7
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/u$e;->b:Lcom/moloco/sdk/internal/publisher/t0;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/u$e;->a:Lcom/moloco/sdk/internal/publisher/u;

    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/u;->s(Lcom/moloco/sdk/internal/publisher/u;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lcom/moloco/sdk/publisher/MolocoAdKt;->createAdInfo$default(Ljava/lang/String;Ljava/lang/Float;ILjava/lang/Object;)Lcom/moloco/sdk/publisher/MolocoAd;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/moloco/sdk/internal/publisher/t0;->onAdClicked(Lcom/moloco/sdk/publisher/MolocoAd;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)V
    .locals 3

    const-string v0, "internalShowError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/u$e;->a:Lcom/moloco/sdk/internal/publisher/u;

    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/u;->s(Lcom/moloco/sdk/internal/publisher/u;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;->AD_SHOW_ERROR:Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;

    invoke-static {v1, v2, p1}, Lcom/moloco/sdk/internal/d0;->a(Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$ErrorType;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)Lcom/moloco/sdk/internal/c0;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/moloco/sdk/internal/publisher/u;->g(Lcom/moloco/sdk/internal/publisher/u;Lcom/moloco/sdk/internal/c0;)V

    return-void
.end method

.method public a(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/u$e;->a:Lcom/moloco/sdk/internal/publisher/u;

    invoke-static {v0}, Lcom/moloco/sdk/internal/publisher/u;->w(Lcom/moloco/sdk/internal/publisher/u;)Lcom/moloco/sdk/internal/ortb/model/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/moloco/sdk/internal/publisher/u$e;->a:Lcom/moloco/sdk/internal/publisher/u;

    .line 2
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/a;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/a;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/ortb/model/a;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v1}, Lcom/moloco/sdk/internal/publisher/u;->A(Lcom/moloco/sdk/internal/publisher/u;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/f;->a(Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/u$e;->a:Lcom/moloco/sdk/internal/publisher/u;

    invoke-virtual {v0}, Lcom/moloco/sdk/internal/publisher/u;->t()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
