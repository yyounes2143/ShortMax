.class Lcom/facebook/drawee/controller/a$a;
.super Ljava/lang/Object;
.source "AbstractDraweeController.java"

# interfaces
.implements Lcom/facebook/fresco/ui/common/OnFadeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/drawee/controller/a;->f0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/drawee/controller/a;


# direct methods
.method constructor <init>(Lcom/facebook/drawee/controller/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/facebook/drawee/controller/a$a;->a:Lcom/facebook/drawee/controller/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFadeFinished()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a$a;->a:Lcom/facebook/drawee/controller/a;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/facebook/drawee/controller/a;->h:Lcom/facebook/fresco/ui/common/LegacyOnFadeListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lcom/facebook/drawee/controller/a;->g(Lcom/facebook/drawee/controller/a;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v1, v0}, Lcom/facebook/fresco/ui/common/LegacyOnFadeListener;->onFadeFinished(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onFadeStarted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/facebook/drawee/controller/a$a;->a:Lcom/facebook/drawee/controller/a;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/facebook/drawee/controller/a;->h:Lcom/facebook/fresco/ui/common/LegacyOnFadeListener;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lcom/facebook/drawee/controller/a;->g(Lcom/facebook/drawee/controller/a;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v1, v0}, Lcom/facebook/fresco/ui/common/LegacyOnFadeListener;->onFadeStarted(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public onShownImmediately()V
    .locals 0

    .line 1
    return-void
.end method
