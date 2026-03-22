.class public final Lcom/inmobi/media/Ea;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/N2;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/Fa;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Fa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Ea;->a:Lcom/inmobi/media/Fa;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/commons/core/configs/Config;)V
    .locals 2

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getPingsV2Config()Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iget-object v0, p0, Lcom/inmobi/media/Ea;->a:Lcom/inmobi/media/Fa;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    const-string v1, "<set-?>"

    .line 22
    .line 23
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, v0, Lcom/inmobi/media/Fa;->f:Lcom/inmobi/commons/core/configs/AdConfig$PingsV2Config;

    .line 27
    .line 28
    :cond_0
    return-void
.end method
