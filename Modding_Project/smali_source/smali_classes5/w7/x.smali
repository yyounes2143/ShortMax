.class public final synthetic Lw7/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lw8/a$a;


# instance fields
.field public final synthetic a:Lw8/a$a;

.field public final synthetic b:Lw8/a$a;


# direct methods
.method public synthetic constructor <init>(Lw8/a$a;Lw8/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw7/x;->a:Lw8/a$a;

    .line 5
    .line 6
    iput-object p2, p0, Lw7/x;->b:Lw8/a$a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lw8/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lw7/x;->a:Lw8/a$a;

    .line 2
    .line 3
    iget-object v1, p0, Lw7/x;->b:Lw8/a$a;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lw7/y;->c(Lw8/a$a;Lw8/a$a;Lw8/b;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
