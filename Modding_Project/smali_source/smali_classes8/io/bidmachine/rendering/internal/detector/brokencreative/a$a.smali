.class final Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;
.super Lcr/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/detector/brokencreative/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final b:Liq/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;",
            "Lrq/l;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Liq/a;Landroid/graphics/Bitmap;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .param p1    # Liq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Liq/a;",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;",
            "-",
            "Lrq/l;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "algorithm"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "image"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "callback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcr/b;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;->b:Liq/a;

    .line 20
    .line 21
    iput-object p2, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;->c:Landroid/graphics/Bitmap;

    .line 22
    .line 23
    iput-object p3, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;->d:Lkotlin/jvm/functions/Function2;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public d()V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;->b:Liq/a;

    .line 6
    .line 7
    iget-object v3, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;->c:Landroid/graphics/Bitmap;

    .line 8
    .line 9
    invoke-virtual {v2, v3}, Liq/a;->g(Landroid/graphics/Bitmap;)Ljava/lang/Boolean;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    iget-object v3, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;->d:Lkotlin/jvm/functions/Function2;

    .line 16
    .line 17
    new-instance v4, Lrq/l;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget-object v5, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;->b:Liq/a;

    .line 24
    .line 25
    invoke-virtual {v5}, Liq/a;->d()Lrq/k;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 30
    .line 31
    .line 32
    move-result-wide v6

    .line 33
    sub-long/2addr v6, v0

    .line 34
    invoke-direct {v4, v2, v5, v6, v7}, Lrq/l;-><init>(ZLrq/k;J)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v3, p0, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/detector/brokencreative/a$a;->d:Lkotlin/jvm/functions/Function2;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-interface {v0, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void
.end method
