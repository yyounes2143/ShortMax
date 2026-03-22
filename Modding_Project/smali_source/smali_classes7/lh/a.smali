.class public final Llh/a;
.super Ljava/lang/Object;
.source "UpdateLocalDS.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lcom/startshorts/androidplayer/bean/update/UpdateData;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->b2()Lcom/startshorts/androidplayer/bean/update/UpdateData;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final b(Lcom/startshorts/androidplayer/bean/update/UpdateData;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/update/UpdateData;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lud/b;->o5(Lcom/startshorts/androidplayer/bean/update/UpdateData;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
