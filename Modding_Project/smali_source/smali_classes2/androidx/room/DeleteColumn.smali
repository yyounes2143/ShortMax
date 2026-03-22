.class public interface abstract annotation Landroidx/room/DeleteColumn;
.super Ljava/lang/Object;
.source "DeleteColumn.jvm.kt"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/DeleteColumn$Entries;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Repeatable;
    value = Landroidx/room/DeleteColumn$Entries;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract columnName()Ljava/lang/String;
.end method

.method public abstract tableName()Ljava/lang/String;
.end method
