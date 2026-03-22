.class public final synthetic Lp5/u;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lb7/p$a;


# instance fields
.field public final synthetic a:Lp5/b$a;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lp5/b$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp5/u;->a:Lp5/b$a;

    .line 5
    .line 6
    iput p2, p0, Lp5/u;->b:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp5/u;->a:Lp5/b$a;

    .line 2
    .line 3
    iget v1, p0, Lp5/u;->b:I

    .line 4
    .line 5
    check-cast p1, Lp5/b;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lp5/n1;->i0(Lp5/b$a;ILp5/b;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
