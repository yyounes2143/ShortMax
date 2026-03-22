.class public final Lyr/d;
.super Ljava/lang/Object;
.source "AttributesJvm.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Z)Lyr/b;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Lyr/j;

    .line 4
    .line 5
    invoke-direct {p0}, Lyr/j;-><init>()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Lyr/m;

    .line 10
    .line 11
    invoke-direct {p0}, Lyr/m;-><init>()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-object p0
.end method
