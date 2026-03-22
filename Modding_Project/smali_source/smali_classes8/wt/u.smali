.class public final Lwt/u;
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
    iput-boolean p2, p0, Lwt/u;->c:Z

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public e(B)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lwt/u;->c:Z

    .line 2
    .line 3
    invoke-static {p1}, Lms/l;->b(B)B

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lms/l;->f(B)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lwt/m;->n(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lwt/m;->k(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public i(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lwt/u;->c:Z

    .line 2
    .line 3
    invoke-static {p1}, Lms/n;->b(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1}, Lwt/q;->a(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lwt/m;->n(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p1}, Lwt/r;->a(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lwt/m;->k(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public j(J)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lwt/u;->c:Z

    .line 2
    .line 3
    invoke-static {p1, p2}, Lms/p;->b(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p1, p2}, Lwt/o;->a(J)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lwt/m;->n(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p1, p2}, Lwt/p;->a(J)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p0, p1}, Lwt/m;->k(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public l(S)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lwt/u;->c:Z

    .line 2
    .line 3
    invoke-static {p1}, Lms/s;->b(S)S

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-static {p1}, Lms/s;->f(S)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lwt/m;->n(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lwt/m;->k(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method
