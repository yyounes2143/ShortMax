.class public interface abstract Landroidx/sqlite/db/SupportSQLiteStatement;
.super Ljava/lang/Object;
.source "SupportSQLiteStatement.android.kt"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteProgram;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract execute()V
.end method

.method public abstract executeInsert()J
.end method

.method public abstract executeUpdateDelete()I
.end method

.method public abstract simpleQueryForLong()J
.end method

.method public abstract simpleQueryForString()Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
