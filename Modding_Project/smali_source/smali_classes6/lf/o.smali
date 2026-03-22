.class public final synthetic Llf/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Llf/r;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Llf/r;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llf/o;->a:Llf/r;

    .line 5
    .line 6
    iput p2, p0, Llf/o;->b:I

    .line 7
    .line 8
    iput p3, p0, Llf/o;->c:I

    .line 9
    .line 10
    iput p4, p0, Llf/o;->d:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Llf/o;->a:Llf/r;

    .line 2
    .line 3
    iget v1, p0, Llf/o;->b:I

    .line 4
    .line 5
    iget v2, p0, Llf/o;->c:I

    .line 6
    .line 7
    iget v3, p0, Llf/o;->d:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Llf/r$a;->g(Llf/r;III)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
