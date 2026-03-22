.class public final Lkotlin/time/a$a;
.super Ljava/lang/Object;
.source "TimeSource.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/time/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static a(Lkotlin/time/a;Lkotlin/time/a;)I
    .locals 2
    .param p0    # Lkotlin/time/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/time/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "other"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0, p1}, Lkotlin/time/a;->d(Lkotlin/time/a;)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    sget-object v0, Lkotlin/time/b;->b:Lkotlin/time/b$a;

    .line 11
    .line 12
    invoke-virtual {v0}, Lkotlin/time/b$a;->c()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-static {p0, p1, v0, v1}, Lkotlin/time/b;->i(JJ)I

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    return p0
.end method
