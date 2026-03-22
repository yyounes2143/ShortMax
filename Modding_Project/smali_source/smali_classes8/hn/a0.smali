.class public final synthetic Lhn/a0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcn/q$a;


# instance fields
.field public final synthetic a:Lhn/b$a;

.field public final synthetic b:Lzm/q;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lhn/b$a;Lzm/q;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhn/a0;->a:Lhn/b$a;

    .line 5
    .line 6
    iput-object p2, p0, Lhn/a0;->b:Lzm/q;

    .line 7
    .line 8
    iput p3, p0, Lhn/a0;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lhn/a0;->a:Lhn/b$a;

    .line 2
    .line 3
    iget-object v1, p0, Lhn/a0;->b:Lzm/q;

    .line 4
    .line 5
    iget v2, p0, Lhn/a0;->c:I

    .line 6
    .line 7
    check-cast p1, Lhn/b;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lhn/r1;->y0(Lhn/b$a;Lzm/q;ILhn/b;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
