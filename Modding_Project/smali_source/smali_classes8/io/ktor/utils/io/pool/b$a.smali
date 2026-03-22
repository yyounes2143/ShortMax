.class public final Lio/ktor/utils/io/pool/b$a;
.super Ljava/lang/Object;
.source "Pool.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/ktor/utils/io/pool/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static a(Lio/ktor/utils/io/pool/b;)V
    .locals 0
    .param p0    # Lio/ktor/utils/io/pool/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/ktor/utils/io/pool/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lio/ktor/utils/io/pool/b;->dispose()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
