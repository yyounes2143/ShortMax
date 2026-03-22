.class public final Landroidx/datastore/core/FileMoves_androidKt;
.super Ljava/lang/Object;
.source "FileMoves.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final atomicMoveTo(Ljava/io/File;Ljava/io/File;)Z
    .locals 2
    .param p0    # Ljava/io/File;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/io/File;
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
    const-string/jumbo v0, "toFile"

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v1, 0x1a

    .line 15
    .line 16
    if-lt v0, v1, :cond_0

    .line 17
    .line 18
    sget-object v0, Landroidx/datastore/core/Api26Impl;->INSTANCE:Landroidx/datastore/core/Api26Impl;

    .line 19
    .line 20
    invoke-virtual {v0, p0, p1}, Landroidx/datastore/core/Api26Impl;->move(Ljava/io/File;Ljava/io/File;)Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    :goto_0
    return p0
.end method
