.class public final synthetic Lp5/v;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lb7/p$a;


# instance fields
.field public final synthetic a:Lp5/b$a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lp5/b$a;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp5/v;->a:Lp5/b$a;

    .line 5
    .line 6
    iput-object p2, p0, Lp5/v;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-wide p3, p0, Lp5/v;->c:J

    .line 9
    .line 10
    iput-wide p5, p0, Lp5/v;->d:J

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lp5/v;->a:Lp5/b$a;

    .line 2
    .line 3
    iget-object v1, p0, Lp5/v;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v2, p0, Lp5/v;->c:J

    .line 6
    .line 7
    iget-wide v4, p0, Lp5/v;->d:J

    .line 8
    .line 9
    move-object v6, p1

    .line 10
    check-cast v6, Lp5/b;

    .line 11
    .line 12
    invoke-static/range {v0 .. v6}, Lp5/n1;->j1(Lp5/b$a;Ljava/lang/String;JJLp5/b;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
