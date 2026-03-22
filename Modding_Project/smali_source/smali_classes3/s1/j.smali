.class public final synthetic Ls1/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ls1/l;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ls1/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls1/j;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Ls1/j;->b:Ls1/l;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/j;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Ls1/j;->b:Ls1/l;

    .line 4
    .line 5
    invoke-static {v0, v1}, Ls1/l;->a(Ljava/lang/String;Ls1/l;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
