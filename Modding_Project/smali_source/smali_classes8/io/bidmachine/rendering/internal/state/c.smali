.class public final Lio/bidmachine/rendering/internal/state/c;
.super Lnq/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final n:Lio/bidmachine/rendering/internal/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final o:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/rendering/internal/h;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/internal/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "coroutineDispatchers"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1}, Lnq/b;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lio/bidmachine/rendering/internal/state/c;->n:Lio/bidmachine/rendering/internal/h;

    .line 15
    .line 16
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->PUBLICATION:Lkotlin/LazyThreadSafetyMode;

    .line 17
    .line 18
    new-instance p2, Lio/bidmachine/rendering/internal/state/c$a;

    .line 19
    .line 20
    invoke-direct {p2, p0}, Lio/bidmachine/rendering/internal/state/c$a;-><init>(Lio/bidmachine/rendering/internal/state/c;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1, p2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lio/bidmachine/rendering/internal/state/c;->o:Lms/i;

    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public final n()Lio/bidmachine/rendering/internal/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->n:Lio/bidmachine/rendering/internal/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public final o()Lnq/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/state/c;->o:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lnq/a;

    .line 8
    .line 9
    return-object v0
.end method
