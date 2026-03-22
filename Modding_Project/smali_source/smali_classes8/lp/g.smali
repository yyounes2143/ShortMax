.class public abstract Llp/g;
.super Ljava/lang/Object;
.source "RequestParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType:",
        "Llp/g<",
        "TSelfType;>;>",
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

.method public static resolveParams(Llp/g;Llp/g;)Llp/g;
    .locals 0
    .param p0    # Llp/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Llp/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Llp/g<",
            "TT;>;>(TT;TT;)TT;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-object p1

    .line 4
    :cond_0
    if-eqz p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Llp/g;->merge(Llp/g;)V

    .line 7
    .line 8
    .line 9
    :cond_1
    return-object p0
.end method


# virtual methods
.method public abstract merge(Llp/g;)V
    .param p1    # Llp/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSelfType;)V"
        }
    .end annotation
.end method
