.class public Lgr/a;
.super Ljava/lang/Object;
.source "CastDataConverter.java"

# interfaces
.implements Lgr/b;


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
.method public f(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object p2, p1

    .line 6
    check-cast p2, Ljava/lang/String;

    .line 7
    .line 8
    :cond_0
    return-object p2
.end method

.method public h(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object p2, p1

    .line 6
    check-cast p2, Ljava/lang/Boolean;

    .line 7
    .line 8
    :cond_0
    return-object p2
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object p2, p1

    .line 6
    check-cast p2, Ljava/lang/Integer;

    .line 7
    .line 8
    :cond_0
    return-object p2
.end method

.method public l(Ljava/lang/Object;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Float;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/Float;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object p2, p1

    .line 6
    check-cast p2, Ljava/lang/Float;

    .line 7
    .line 8
    :cond_0
    return-object p2
.end method

.method public m(Ljava/lang/Object;Ljava/lang/Double;)Ljava/lang/Double;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Ljava/lang/Double;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object p2, p1

    .line 6
    check-cast p2, Ljava/lang/Double;

    .line 7
    .line 8
    :cond_0
    return-object p2
.end method
