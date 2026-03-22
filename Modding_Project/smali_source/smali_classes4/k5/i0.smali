.class public final synthetic Lk5/i0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/m0$b;


# instance fields
.field public final synthetic a:Lk5/m0;

.field public final synthetic b:Lc5/i;

.field public final synthetic c:Lc5/p;


# direct methods
.method public synthetic constructor <init>(Lk5/m0;Lc5/i;Lc5/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk5/i0;->a:Lk5/m0;

    .line 5
    .line 6
    iput-object p2, p0, Lk5/i0;->b:Lc5/i;

    .line 7
    .line 8
    iput-object p3, p0, Lk5/i0;->c:Lc5/p;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lk5/i0;->a:Lk5/m0;

    .line 2
    .line 3
    iget-object v1, p0, Lk5/i0;->b:Lc5/i;

    .line 4
    .line 5
    iget-object v2, p0, Lk5/i0;->c:Lc5/p;

    .line 6
    .line 7
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lk5/m0;->w(Lk5/m0;Lc5/i;Lc5/p;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
