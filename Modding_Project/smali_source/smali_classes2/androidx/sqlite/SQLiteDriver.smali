.class public interface abstract Landroidx/sqlite/SQLiteDriver;
.super Ljava/lang/Object;
.source "SQLiteDriver.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static synthetic hasConnectionPool$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public hasConnectionPool()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
