.class public final synthetic Lp5/s0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lb7/p$a;


# instance fields
.field public final synthetic a:Lp5/b$a;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lp5/b$a;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp5/s0;->a:Lp5/b$a;

    .line 5
    .line 6
    iput-object p2, p0, Lp5/s0;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lp5/s0;->a:Lp5/b$a;

    .line 2
    .line 3
    iget-object v1, p0, Lp5/s0;->b:Ljava/lang/String;

    .line 4
    .line 5
    check-cast p1, Lp5/b;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lp5/n1;->e1(Lp5/b$a;Ljava/lang/String;Lp5/b;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
