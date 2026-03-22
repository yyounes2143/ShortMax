.class final Lio/bidmachine/analytics/internal/i0$b;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/i0;->a(ZLjava/util/List;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic b:Landroid/content/ContentValues;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/i0$b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/i0$b;->b:Landroid/content/ContentValues;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/i0$b;->a:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/analytics/internal/i0$b;->b:Landroid/content/ContentValues;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    const-string v3, "id IN"

    .line 9
    .line 10
    invoke-static {p1, v3}, Lio/bidmachine/analytics/internal/q;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v3, v2

    .line 16
    :goto_0
    if-eqz p1, :cond_2

    .line 17
    .line 18
    new-instance v2, Ljava/util/ArrayList;

    .line 19
    .line 20
    const/16 v4, 0xa

    .line 21
    .line 22
    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Lio/bidmachine/analytics/internal/j0;

    .line 44
    .line 45
    invoke-virtual {v4}, Lio/bidmachine/analytics/internal/j0;->c()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-static {v2}, Lio/bidmachine/analytics/internal/q;->a(Ljava/util/List;)[Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    :cond_2
    const-string p1, "reader_record"

    .line 58
    .line 59
    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/i0$b;->a(Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method
