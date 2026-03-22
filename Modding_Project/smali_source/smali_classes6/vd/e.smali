.class public final synthetic Lvd/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvd/e;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lvd/e;->b:Ljava/util/List;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lvd/e;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lvd/e;->b:Ljava/util/List;

    .line 4
    .line 5
    check-cast p1, Landroidx/sqlite/SQLiteConnection;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lvd/f;->g(Ljava/lang/String;Ljava/util/List;Landroidx/sqlite/SQLiteConnection;)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
