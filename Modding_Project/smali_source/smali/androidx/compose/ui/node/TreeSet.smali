.class public final Landroidx/compose/ui/node/TreeSet;
.super Ljava/util/TreeSet;
.source "JvmTreeSet.jvm.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TreeSet<",
        "TE;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 1
    .param p1    # Ljava/util/Comparator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "comparator"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public bridge getSize()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/util/TreeSet;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final bridge size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/TreeSet;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
