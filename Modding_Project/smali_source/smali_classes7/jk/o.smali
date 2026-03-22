.class public final Ljk/o;
.super Ljava/lang/Object;
.source "MutableLiveDataExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic a(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljk/o;->c(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V
    .locals 2
    .param p0    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/lifecycle/MutableLiveData<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation runtime Lms/c;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lfk/h0;->a:Lfk/h0;

    .line 7
    .line 8
    new-instance v1, Ljk/n;

    .line 9
    .line 10
    invoke-direct {v1, p0, p1}, Ljk/n;-><init>(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static final c(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
