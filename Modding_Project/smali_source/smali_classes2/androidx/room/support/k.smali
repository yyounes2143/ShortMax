.class public final synthetic Landroidx/room/support/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:I

.field public final synthetic c:Landroid/content/ContentValues;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/content/ContentValues;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/room/support/k;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Landroidx/room/support/k;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/room/support/k;->c:Landroid/content/ContentValues;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/support/k;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Landroidx/room/support/k;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/room/support/k;->c:Landroid/content/ContentValues;

    .line 6
    .line 7
    check-cast p1, Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Landroidx/room/support/AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase;->b(Ljava/lang/String;ILandroid/content/ContentValues;Landroidx/sqlite/db/SupportSQLiteDatabase;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
