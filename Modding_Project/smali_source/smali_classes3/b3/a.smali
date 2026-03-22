.class public final Lb3/a;
.super Lz2/a;
.source "ImageLoadingTimeControllerListener.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lz2/a<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final b:Lb3/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:J

.field private d:J


# direct methods
.method public constructor <init>(Lb3/b;)V
    .locals 2
    .param p1    # Lb3/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lz2/a;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lb3/a;->b:Lb3/b;

    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    iput-wide v0, p0, Lb3/a;->c:J

    .line 9
    .line 10
    iput-wide v0, p0, Lb3/a;->d:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "id"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    iput-wide p1, p0, Lb3/a;->c:J

    .line 11
    .line 12
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/Object;Landroid/graphics/drawable/Animatable;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "id"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide p1

    .line 10
    iput-wide p1, p0, Lb3/a;->d:J

    .line 11
    .line 12
    iget-object p3, p0, Lb3/a;->b:Lb3/b;

    .line 13
    .line 14
    if-eqz p3, :cond_0

    .line 15
    .line 16
    iget-wide v0, p0, Lb3/a;->c:J

    .line 17
    .line 18
    sub-long/2addr p1, v0

    .line 19
    invoke-interface {p3, p1, p2}, Lb3/b;->a(J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
