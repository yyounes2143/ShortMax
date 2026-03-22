.class final Lvr/b$a;
.super Lio/ktor/util/internal/d;
.source "Events.kt"

# interfaces
.implements Lgt/s0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lvr/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final d:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "*",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# virtual methods
.method public dispose()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/ktor/util/internal/d;->i()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final k()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "*",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lvr/b$a;->d:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method
