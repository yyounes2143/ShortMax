.class public final Ljk/r;
.super Ljava/lang/Object;
.source "RectExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Landroid/graphics/Rect;IIII)V
    .locals 1
    .param p0    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lfk/v;->a:Lfk/v;

    .line 7
    .line 8
    invoke-virtual {v0}, Lfk/v;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p3, p2, p1, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method
