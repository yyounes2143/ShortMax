.class public interface abstract Landroidx/sqlite/db/SupportSQLiteQuery;
.super Ljava/lang/Object;
.source "SupportSQLiteQuery.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract bindTo(Landroidx/sqlite/db/SupportSQLiteProgram;)V
    .param p1    # Landroidx/sqlite/db/SupportSQLiteProgram;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getArgCount()I
.end method

.method public abstract getSql()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
