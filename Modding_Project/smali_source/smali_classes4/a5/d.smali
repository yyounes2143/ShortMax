.class public abstract La5/d;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static f(Ljava/lang/Object;)La5/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "La5/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, La5/a;

    .line 2
    .line 3
    sget-object v3, Lcom/google/android/datatransport/Priority;->DEFAULT:Lcom/google/android/datatransport/Priority;

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    move-object v0, v6

    .line 9
    move-object v2, p0

    .line 10
    invoke-direct/range {v0 .. v5}, La5/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lcom/google/android/datatransport/Priority;La5/f;La5/e;)V

    .line 11
    .line 12
    .line 13
    return-object v6
.end method

.method public static g(Ljava/lang/Object;La5/f;)La5/d;
    .locals 7
    .param p1    # La5/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "La5/f;",
            ")",
            "La5/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, La5/a;

    .line 2
    .line 3
    sget-object v3, Lcom/google/android/datatransport/Priority;->DEFAULT:Lcom/google/android/datatransport/Priority;

    .line 4
    .line 5
    const/4 v5, 0x0

    .line 6
    const/4 v1, 0x0

    .line 7
    move-object v0, v6

    .line 8
    move-object v2, p0

    .line 9
    move-object v4, p1

    .line 10
    invoke-direct/range {v0 .. v5}, La5/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lcom/google/android/datatransport/Priority;La5/f;La5/e;)V

    .line 11
    .line 12
    .line 13
    return-object v6
.end method

.method public static h(Ljava/lang/Object;)La5/d;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "La5/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, La5/a;

    .line 2
    .line 3
    sget-object v3, Lcom/google/android/datatransport/Priority;->HIGHEST:Lcom/google/android/datatransport/Priority;

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    const/4 v5, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    move-object v0, v6

    .line 9
    move-object v2, p0

    .line 10
    invoke-direct/range {v0 .. v5}, La5/a;-><init>(Ljava/lang/Integer;Ljava/lang/Object;Lcom/google/android/datatransport/Priority;La5/f;La5/e;)V

    .line 11
    .line 12
    .line 13
    return-object v6
.end method


# virtual methods
.method public abstract a()Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract b()La5/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract c()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract d()Lcom/google/android/datatransport/Priority;
.end method

.method public abstract e()La5/f;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method
