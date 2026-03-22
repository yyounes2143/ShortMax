.class public final synthetic Lk5/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lk5/m0$b;


# instance fields
.field public final synthetic a:Lk5/m0;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/util/Map;

.field public final synthetic d:Lf5/a$a;


# direct methods
.method public synthetic constructor <init>(Lk5/m0;Ljava/lang/String;Ljava/util/Map;Lf5/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk5/t;->a:Lk5/m0;

    .line 5
    .line 6
    iput-object p2, p0, Lk5/t;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lk5/t;->c:Ljava/util/Map;

    .line 9
    .line 10
    iput-object p4, p0, Lk5/t;->d:Lf5/a$a;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lk5/t;->a:Lk5/m0;

    .line 2
    .line 3
    iget-object v1, p0, Lk5/t;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lk5/t;->c:Ljava/util/Map;

    .line 6
    .line 7
    iget-object v3, p0, Lk5/t;->d:Lf5/a$a;

    .line 8
    .line 9
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lk5/m0;->a0(Lk5/m0;Ljava/lang/String;Ljava/util/Map;Lf5/a$a;Landroid/database/sqlite/SQLiteDatabase;)Lf5/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
