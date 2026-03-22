.class public final Lcom/moloco/sdk/internal/publisher/l$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/q;
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/publisher/l;->e(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;)Lcom/moloco/sdk/internal/publisher/l$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/l$c;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/l$c;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;

    invoke-interface {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;->a()V

    return-void
.end method

.method public a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)V
    .locals 1

    .line 2
    const-string v0, "internalShowError"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/l$c;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;

    invoke-interface {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/l$c;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;

    invoke-interface {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;->a(Z)V

    return-void
.end method
