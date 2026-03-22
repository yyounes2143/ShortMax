.class public final Lwt/n;
.super Lwt/m;
.source "Composers.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final c:Z


# direct methods
.method public constructor <init>(Lwt/z;Z)V
    .locals 1
    .param p1    # Lwt/z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "writer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lwt/m;-><init>(Lwt/z;)V

    .line 7
    .line 8
    .line 9
    iput-boolean p2, p0, Lwt/n;->c:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public n(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lwt/n;->c:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-super {p0, p1}, Lwt/m;->n(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-super {p0, p1}, Lwt/m;->k(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method
