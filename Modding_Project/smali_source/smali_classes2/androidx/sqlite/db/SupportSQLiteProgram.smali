.class public interface abstract Landroidx/sqlite/db/SupportSQLiteProgram;
.super Ljava/lang/Object;
.source "SupportSQLiteProgram.android.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract bindBlob(I[B)V
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract bindDouble(ID)V
.end method

.method public abstract bindLong(IJ)V
.end method

.method public abstract bindNull(I)V
.end method

.method public abstract bindString(ILjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract clearBindings()V
.end method
