.class public final synthetic Lhn/t0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcn/q$a;


# instance fields
.field public final synthetic a:Lhn/b$a;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Lhn/b$a;Ljava/lang/Object;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhn/t0;->a:Lhn/b$a;

    .line 5
    .line 6
    iput-object p2, p0, Lhn/t0;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iput-wide p3, p0, Lhn/t0;->c:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lhn/t0;->a:Lhn/b$a;

    .line 2
    .line 3
    iget-object v1, p0, Lhn/t0;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iget-wide v2, p0, Lhn/t0;->c:J

    .line 6
    .line 7
    check-cast p1, Lhn/b;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, p1}, Lhn/r1;->u1(Lhn/b$a;Ljava/lang/Object;JLhn/b;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
