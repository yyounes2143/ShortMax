.class public final synthetic Lp5/u0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lb7/p$a;


# instance fields
.field public final synthetic a:Lp5/b$a;

.field public final synthetic b:Z

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lp5/b$a;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp5/u0;->a:Lp5/b$a;

    .line 5
    .line 6
    iput-boolean p2, p0, Lp5/u0;->b:Z

    .line 7
    .line 8
    iput p3, p0, Lp5/u0;->c:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp5/u0;->a:Lp5/b$a;

    .line 2
    .line 3
    iget-boolean v1, p0, Lp5/u0;->b:Z

    .line 4
    .line 5
    iget v2, p0, Lp5/u0;->c:I

    .line 6
    .line 7
    check-cast p1, Lp5/b;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, p1}, Lp5/n1;->P0(Lp5/b$a;ZILp5/b;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
