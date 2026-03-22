.class public final synthetic Lt3/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lt3/s0;


# direct methods
.method public synthetic constructor <init>(Lt3/s0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lt3/a0;->a:Lt3/s0;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lt3/a0;->a:Lt3/s0;

    .line 2
    .line 3
    invoke-static {v0}, Lt3/s0;->e(Lt3/s0;)Lcom/facebook/imagepipeline/producers/h1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
