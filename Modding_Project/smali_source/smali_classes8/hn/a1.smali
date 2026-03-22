.class public final synthetic Lhn/a1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcn/q$a;


# instance fields
.field public final synthetic a:Lhn/b$a;

.field public final synthetic b:Lzm/k;


# direct methods
.method public synthetic constructor <init>(Lhn/b$a;Lzm/k;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhn/a1;->a:Lhn/b$a;

    .line 5
    .line 6
    iput-object p2, p0, Lhn/a1;->b:Lzm/k;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lhn/a1;->a:Lhn/b$a;

    .line 2
    .line 3
    iget-object v1, p0, Lhn/a1;->b:Lzm/k;

    .line 4
    .line 5
    check-cast p1, Lhn/b;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lhn/r1;->o0(Lhn/b$a;Lzm/k;Lhn/b;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
