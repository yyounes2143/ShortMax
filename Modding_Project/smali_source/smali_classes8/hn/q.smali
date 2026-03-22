.class public final synthetic Lhn/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcn/q$a;


# instance fields
.field public final synthetic a:Lhn/b$a;

.field public final synthetic b:I

.field public final synthetic c:Lzm/w$e;

.field public final synthetic d:Lzm/w$e;


# direct methods
.method public synthetic constructor <init>(Lhn/b$a;ILzm/w$e;Lzm/w$e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhn/q;->a:Lhn/b$a;

    .line 5
    .line 6
    iput p2, p0, Lhn/q;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lhn/q;->c:Lzm/w$e;

    .line 9
    .line 10
    iput-object p4, p0, Lhn/q;->d:Lzm/w$e;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lhn/q;->a:Lhn/b$a;

    .line 2
    .line 3
    iget v1, p0, Lhn/q;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lhn/q;->c:Lzm/w$e;

    .line 6
    .line 7
    iget-object v3, p0, Lhn/q;->d:Lzm/w$e;

    .line 8
    .line 9
    check-cast p1, Lhn/b;

    .line 10
    .line 11
    invoke-static {v0, v1, v2, v3, p1}, Lhn/r1;->b1(Lhn/b$a;ILzm/w$e;Lzm/w$e;Lhn/b;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
