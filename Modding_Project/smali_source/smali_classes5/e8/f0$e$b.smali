.class public abstract Le8/f0$e$b;
.super Ljava/lang/Object;
.source "CrashlyticsReport.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue$Builder;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le8/f0$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
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


# virtual methods
.method public abstract a()Le8/f0$e;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract b(Le8/f0$e$a;)Le8/f0$e$b;
    .param p1    # Le8/f0$e$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract c(Ljava/lang/String;)Le8/f0$e$b;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract d(Z)Le8/f0$e$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract e(Le8/f0$e$c;)Le8/f0$e$b;
    .param p1    # Le8/f0$e$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract f(Ljava/lang/Long;)Le8/f0$e$b;
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract g(Ljava/util/List;)Le8/f0$e$b;
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le8/f0$e$d;",
            ">;)",
            "Le8/f0$e$b;"
        }
    .end annotation
.end method

.method public abstract h(Ljava/lang/String;)Le8/f0$e$b;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract i(I)Le8/f0$e$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract j(Ljava/lang/String;)Le8/f0$e$b;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public k([B)Le8/f0$e$b;
    .locals 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {}, Le8/f0;->a()Ljava/nio/charset/Charset;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0, v0}, Le8/f0$e$b;->j(Ljava/lang/String;)Le8/f0$e$b;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public abstract l(Le8/f0$e$e;)Le8/f0$e$b;
    .param p1    # Le8/f0$e$e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract m(J)Le8/f0$e$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract n(Le8/f0$e$f;)Le8/f0$e$b;
    .param p1    # Le8/f0$e$f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
